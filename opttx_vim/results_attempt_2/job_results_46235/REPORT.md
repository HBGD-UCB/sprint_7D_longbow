---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

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

agecat      studyid                    country     fhtcm           n_cell      n
----------  -------------------------  ----------  -------------  -------  -----
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm            16     36
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              9     36
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        11     36
Birth       ki1101329-Keneba           GAMBIA      >=167 cm           710   1079
Birth       ki1101329-Keneba           GAMBIA      <162 cm             81   1079
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm       288   1079
Birth       ki1119695-PROBIT           BELARUS     >=167 cm          5796   6208
Birth       ki1119695-PROBIT           BELARUS     <162 cm             83   6208
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm       329   6208
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm            10     86
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm             44     86
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm        32     86
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm            98    219
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm             51    219
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        70    219
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            21     94
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             34     94
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        39     94
6 months    ki1101329-Keneba           GAMBIA      >=167 cm           979   1510
6 months    ki1101329-Keneba           GAMBIA      <162 cm            113   1510
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm       418   1510
6 months    ki1119695-PROBIT           BELARUS     >=167 cm          5615   6014
6 months    ki1119695-PROBIT           BELARUS     <162 cm             80   6014
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm       319   6014
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            19    151
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm             83    151
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        49    151
24 months   ki1101329-Keneba           GAMBIA      >=167 cm           823   1298
24 months   ki1101329-Keneba           GAMBIA      <162 cm             96   1298
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       379   1298
24 months   ki1119695-PROBIT           BELARUS     >=167 cm          1409   1496
24 months   ki1119695-PROBIT           BELARUS     <162 cm             21   1496
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm        66   1496
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            28    242
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            132    242
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        82    242


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
![](/tmp/c609bd39-564b-419f-a05f-7b44dff08285/0d2aea61-46a2-4dca-9caa-05e87d15f16a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -0.5003725   -0.8072047   -0.1935403
Birth       ki1101329-Keneba           GAMBIA      optimal              observed           2.0331089    1.6736599    2.3925579
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -1.1619828   -1.4923273   -0.8316384
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed          -1.7162457   -2.3032960   -1.1291953
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          -1.2415538   -1.6392933   -0.8438142
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.7953908   -1.2330555   -0.3577262
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.1673470   -0.3217238   -0.0129703
6 months    ki1119695-PROBIT           BELARUS     optimal              observed           0.7281974    0.6594972    0.7968976
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed           0.3949046   -0.1679870    0.9577963
24 months   ki1101329-Keneba           GAMBIA      optimal              observed          -0.8791784   -0.9684968   -0.7898599
24 months   ki1119695-PROBIT           BELARUS     optimal              observed           1.3262415    0.7419259    1.9105570
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.3861072   -0.6034658   -0.1687486


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.3272222   -0.8589108    0.2044664
Birth       ki1101329-Keneba           GAMBIA      observed             observed           1.7064875    1.6129215    1.8000534
Birth       ki1119695-PROBIT           BELARUS     observed             observed          -1.1869878   -1.5196648   -0.8543107
Birth       ki1135781-COHORTS          GUATEMALA   observed             observed          -0.9645349   -1.2747161   -0.6543537
6 months    ki1000304b-SAS-CompFeed    INDIA       observed             observed          -0.9419178   -1.1969133   -0.6869223
6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             observed          -1.1186170   -1.3500089   -0.8872251
6 months    ki1101329-Keneba           GAMBIA      observed             observed          -0.2272250   -0.2854487   -0.1690012
6 months    ki1119695-PROBIT           BELARUS     observed             observed           0.5781244    0.5049068    0.6513420
6 months    ki1135781-COHORTS          GUATEMALA   observed             observed          -0.1388742   -0.3337686    0.0560202
24 months   ki1101329-Keneba           GAMBIA      observed             observed          -0.7963776   -0.8498028   -0.7429525
24 months   ki1119695-PROBIT           BELARUS     observed             observed           0.8158478    0.6746021    0.9570935
24 months   ki1135781-COHORTS          GUATEMALA   observed             observed          -0.5800000   -0.6966670   -0.4633330


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA       optimal              observed           0.1731503   -0.4550695    0.8013701
Birth       ki1101329-Keneba           GAMBIA      optimal              observed          -0.3266214   -0.6716257    0.0183829
Birth       ki1119695-PROBIT           BELARUS     optimal              observed          -0.0250049   -0.1531703    0.1031605
Birth       ki1135781-COHORTS          GUATEMALA   optimal              observed           0.7517108    0.1958392    1.3075824
6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed           0.2996360   -0.1332821    0.7325540
6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          -0.3232262   -0.7200944    0.0736420
6 months    ki1101329-Keneba           GAMBIA      optimal              observed          -0.0598779   -0.2018402    0.0820843
6 months    ki1119695-PROBIT           BELARUS     optimal              observed          -0.1500730   -0.2232353   -0.0769108
6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.5337788   -1.0498460   -0.0177116
24 months   ki1101329-Keneba           GAMBIA      optimal              observed           0.0828007    0.0031490    0.1624525
24 months   ki1119695-PROBIT           BELARUS     optimal              observed          -0.5103937   -1.0116417   -0.0091456
24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          -0.1938928   -0.3893992    0.0016137
