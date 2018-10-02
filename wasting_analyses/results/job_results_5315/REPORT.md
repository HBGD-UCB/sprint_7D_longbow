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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country     fhtcm           wast_rec90d   n_cell      n
------------  -------------------------  ----------  -------------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      117    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       84    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       68    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       42    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       96    463
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       56    463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       61    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        3    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       97    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        5    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       52    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        5    223
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      324   1086
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      380   1086
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       39   1086
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       41   1086
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      129   1086
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      173   1086
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0      418   3583
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     2931   3583
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0        9   3583
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       40   3583
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0       14   3583
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1      171   3583
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        8    128
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4    128
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       62    128
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       16    128
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       30    128
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        8    128
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       31    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       41    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       21    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       19    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       29    173
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       32    173
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       21     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        0     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       33     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        0     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       18     72
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        0     72
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0       69    294
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      126    294
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0       12    294
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       14    294
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0       23    294
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1       50    294
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0      329   3452
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     2896   3452
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0        7   3452
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       40   3452
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0        9   3452
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1      171   3452
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        0     44
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4     44
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0        9     44
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1       16     44
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0        7     44
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        8     44
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       86    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       43    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       47    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       23    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       67    290
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       24    290
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       40    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        3    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       64    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        5    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       34    151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        5    151
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      255    792
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      254    792
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       27    792
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       27    792
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      106    792
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      123    792
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0       89    131
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1       35    131
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0        2    131
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        0    131
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0        5    131
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        0    131
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        8     84
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        0     84
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       53     84
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1        0     84
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       23     84
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        0     84


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

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1eb800ba-2883-4b12-8965-8a00d5e061f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1eb800ba-2883-4b12-8965-8a00d5e061f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1eb800ba-2883-4b12-8965-8a00d5e061f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1eb800ba-2883-4b12-8965-8a00d5e061f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.4132331   0.3457726   0.4806936
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3859955   0.2882884   0.4837025
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.3716559   0.2977035   0.4456082
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.5382589   0.5001488   0.5763690
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.6443003   0.5780440   0.7105565
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5856232   0.5263654   0.6448809
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8751866   0.8640642   0.8863090
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8163265   0.7153722   0.9172808
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9243243   0.8863804   0.9622683
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.5665255   0.4504214   0.6826296
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.4744412   0.3173926   0.6314898
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.5286570   0.4080516   0.6492625
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.6553554   0.5895841   0.7211268
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              NA                0.8000764   0.7099175   0.8902354
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.7306850   0.6263254   0.8350445
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8979845   0.8874533   0.9085156
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8510638   0.7480411   0.9540866
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9500000   0.9177878   0.9822122
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.3312825   0.2493889   0.4131760
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3315256   0.2166441   0.4464071
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.2644811   0.1700173   0.3589448
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.4960543   0.4519768   0.5401318
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5859515   0.5106348   0.6612682
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5371639   0.4721169   0.6022109


### Parameter: E(Y)


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.3930886   0.3463071   0.4398700
0-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.5469613   0.5145713   0.5793513
0-24 months   ki1119695-PROBIT          BELARUS   NA                   NA                0.8769188   0.8662437   0.8875939
0-6 months    ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.5317919   0.4572362   0.6063476
0-6 months    ki1101329-Keneba          GAMBIA    NA                   NA                0.6462585   0.5919377   0.7005793
0-6 months    ki1119695-PROBIT          BELARUS   NA                   NA                0.9000579   0.8899697   0.9101462
6-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.3103448   0.2551537   0.3655360
6-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.5101010   0.4728139   0.5473881


### Parameter: RR


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9340866   0.6955991   1.254340
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.8993855   0.7004760   1.154778
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.1970080   1.0577458   1.354605
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0879953   0.9620928   1.230374
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9327457   0.8237043   1.056222
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0561454   1.0117213   1.102520
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.8374578   0.5678911   1.234983
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9331566   0.6874660   1.266654
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.2208282   1.0500945   1.419321
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.1149445   0.9367004   1.327107
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9477489   0.8392185   1.070315
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0579247   1.0206409   1.096570
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.0007340   0.6549029   1.529186
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.7983552   0.5183432   1.229631
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.1812245   1.0116002   1.379291
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0828731   0.9324519   1.257560


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0201445   -0.0695641   0.0292750
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0087024   -0.0147480   0.0321528
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0017322   -0.0008017   0.0042660
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0347336   -0.1225056   0.0530384
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0090969   -0.0488856   0.0306918
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0020734   -0.0002613   0.0044081
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0209376   -0.0815316   0.0396563
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0140467   -0.0129967   0.0410901


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0512468   -0.1850797   0.0674721
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0159104   -0.0278270   0.0577867
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0019753   -0.0009199   0.0048621
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0653142   -0.2439548   0.0876723
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0140763   -0.0776240   0.0457240
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0023037   -0.0002958   0.0048964
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0674657   -0.2821754   0.1112892
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0275371   -0.0268021   0.0790006
