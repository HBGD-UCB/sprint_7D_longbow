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

unadjusted

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
![](/tmp/5c6e49bf-15cb-441d-87eb-6b39c83ab27d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c6e49bf-15cb-441d-87eb-6b39c83ab27d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c6e49bf-15cb-441d-87eb-6b39c83ab27d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c6e49bf-15cb-441d-87eb-6b39c83ab27d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.4179104   0.3474856   0.4883353
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3818182   0.2793354   0.4843010
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.3684211   0.2906814   0.4461607
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.5397727   0.5002388   0.5793066
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5125000   0.4003549   0.6246451
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5728477   0.5082199   0.6374754
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8751866   0.8640642   0.8863090
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8163265   0.7153722   0.9172808
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9243243   0.8863804   0.9622683
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.5694444   0.4527096   0.6861793
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.4750000   0.3170488   0.6329512
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.5245902   0.4031575   0.6460228
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.6461538   0.5797019   0.7126058
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5384615   0.3573826   0.7195405
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.6849315   0.5759682   0.7938948
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.8979845   0.8874533   0.9085156
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              NA                0.8510638   0.7480411   0.9540866
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.9500000   0.9177878   0.9822122
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.3333333   0.2505168   0.4161499
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3285714   0.2131238   0.4440191
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.2637363   0.1681527   0.3593198
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.4990177   0.4529680   0.5450673
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5000000   0.3685451   0.6314549
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5371179   0.4652021   0.6090337


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
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9136364   0.6654870   1.254317
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.8815789   0.6729674   1.154857
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          0.9494737   0.7538220   1.195906
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0612757   0.9276968   1.214089
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9327457   0.8237043   1.056222
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0561454   1.0117213   1.102520
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.8341463   0.5644033   1.232807
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9212315   0.6762121   1.255032
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          0.8333333   0.5862619   1.184529
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0600130   0.8770763   1.281106
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.9477489   0.8392185   1.070315
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          1.0579247   1.0206409   1.096570
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.9857143   0.6410644   1.515655
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.7912088   0.5098227   1.227900
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.0019685   0.7582760   1.323978
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0763504   0.9147876   1.266447


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0248219   -0.0780926   0.0284488
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0071886   -0.0170022   0.0313794
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0017322   -0.0008017   0.0042660
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0376525   -0.1262124   0.0509074
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0001047   -0.0387471   0.0389564
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0020734   -0.0002613   0.0044081
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0229885   -0.0845554   0.0385784
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0110833   -0.0169159   0.0390826


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0631458   -0.2080309   0.0643625
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0131428   -0.0320609   0.0563666
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0019753   -0.0009199   0.0048621
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0708031   -0.2511294   0.0835325
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0001619   -0.0618000   0.0585080
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                 0.0023037   -0.0002958   0.0048964
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0740741   -0.2924332   0.1073928
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0217277   -0.0347121   0.0750889
