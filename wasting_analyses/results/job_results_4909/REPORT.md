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
![](/tmp/59ff6e2a-f2d8-4eab-aefd-084b3dd89380/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59ff6e2a-f2d8-4eab-aefd-084b3dd89380/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59ff6e2a-f2d8-4eab-aefd-084b3dd89380/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59ff6e2a-f2d8-4eab-aefd-084b3dd89380/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.4141018   0.3457267   0.4824769
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3848740   0.2855957   0.4841523
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.3712554   0.2961790   0.4463319
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.5383648   0.5001130   0.5766167
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.6319120   0.5622640   0.7015600
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5857168   0.5259921   0.6454414
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8751866   0.8640642   0.8863090
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8163265   0.7153722   0.9172808
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9243243   0.8863804   0.9622683
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.5675419   0.4512724   0.6838114
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.4746409   0.3173348   0.6319471
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.5271916   0.4063473   0.6480359
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.6553864   0.5896784   0.7210944
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              NA                0.7959717   0.7044870   0.8874564
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.7315845   0.6277464   0.8354226
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8979845   0.8874533   0.9085156
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8510638   0.7480411   0.9540866
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9500000   0.9177878   0.9822122
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.3310822   0.2487661   0.4133982
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3314807   0.2158559   0.4471055
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.2645879   0.1694965   0.3596793
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.4961968   0.4520768   0.5403168
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5731925   0.4944283   0.6519568
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5373238   0.4721879   0.6024597


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
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9294187   0.6871878   1.257035
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.8965318   0.6940916   1.158016
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.1737616   1.0306659   1.336724
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0879551   0.9612928   1.231307
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9327457   0.8237043   1.056222
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0561454   1.0117213   1.102520
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.8363100   0.5668086   1.233952
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9289035   0.6836158   1.262203
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.2145075   1.0429385   1.414300
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.1162644   0.9385034   1.327695
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9477489   0.8392185   1.070315
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0579247   1.0206409   1.096570
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.0012037   0.6528165   1.535514
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.7991608   0.5169126   1.235524
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.1551718   0.9823012   1.358465
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0828845   0.9325168   1.257499


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0210133   -0.0716370   0.0296105
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0085965   -0.0149019   0.0320949
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0017322   -0.0008017   0.0042660
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0357500   -0.1237271   0.0522271
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0091279   -0.0487942   0.0305384
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0020734   -0.0002613   0.0044081
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0207373   -0.0818437   0.0403690
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0139042   -0.0130408   0.0408493


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0534569   -0.1907371   0.0679963
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0157168   -0.0281186   0.0576832
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0019753   -0.0009199   0.0048621
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0672255   -0.2463010   0.0861194
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0141242   -0.0774707   0.0454980
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0023037   -0.0002958   0.0048964
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0668203   -0.2834998   0.1132795
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0272578   -0.0268875   0.0785481
