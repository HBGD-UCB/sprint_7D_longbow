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

agecat        studyid                    country     fhtcm           ever_stunted   n_cell       n
------------  -------------------------  ----------  -------------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      137     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1      273     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       50     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1      180     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       69     907
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1      198     907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       23     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       83     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       15     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1      148     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       23     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1      107     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0      598    1929
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      647    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0       52    1929
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       80    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      207    1929
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1      345    1929
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0     9839   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1     1905   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0      119   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1       49   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      474   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1      151   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       16     496
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1       48     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0       24     496
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1      269     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       24     496
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1      115     496
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      255     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1      155     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0      117     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1      112     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0      147     905
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1      119     905
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       79     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       27     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       81     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       81     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       82     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1       47     397
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   0      780    1723
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   1      333    1723
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    0       84    1723
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    1       40    1723
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               0      322    1723
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               1      164    1723
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   0    10624   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   1     1120   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    0      136   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    1       32   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               0      553   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               1       72   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       36     337
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   1       13     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    0      112     337
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    1       84     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       66     337
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               1       26     337
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      126     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1      118     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       37     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1       68     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       59     487
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       79     487
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       22     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1       56     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       12     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1       67     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       21     238
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1       60     238
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0      561    1345
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      314    1345
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0       52    1345
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       40    1345
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      197    1345
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1      181    1345
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0     9833   11306
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1      785   11306
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0      119   11306
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1       17   11306
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      473   11306
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1       79   11306
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       16     372
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1       35     372
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0       23     372
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1      185     372
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       24     372
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1       89     372


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



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/5a2759f6-9516-4a27-ba2f-d28f351e3f83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5a2759f6-9516-4a27-ba2f-d28f351e3f83/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.6817544   0.6348948   0.7286140
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.7036727   0.6255867   0.7817588
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.4794380   0.4512692   0.5076069
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.1638570   0.1457418   0.1819723
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.7475836   0.6600182   0.8351490
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.3930962   0.3420192   0.4441732
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.2608926   0.1807371   0.3410482
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                0.2586582   0.2311098   0.2862067
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                0.0824719   0.0695483   0.0953955
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                0.2334325   0.1159022   0.3509629
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.4901820   0.4415843   0.5387797
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.5907089   0.4832822   0.6981357
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.3174735   0.2865380   0.3484090
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.0718165   0.0584039   0.0852291
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.7070520   0.6045002   0.8096037


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.7155202   0.6729219   0.7581185
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.8473037   0.8119482   0.8826592
0-24 months   ki1101329-Keneba           GAMBIA      observed             NA                0.5578045   0.5356251   0.5799839
0-24 months   ki1119695-PROBIT           BELARUS     observed             NA                0.1668277   0.1481468   0.1855086
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             NA                0.8709777   0.8414455   0.9005099
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.4237493   0.3896137   0.4578849
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.3901365   0.3420876   0.4381854
0-6 months    ki1101329-Keneba           GAMBIA      observed             NA                0.3133219   0.2914455   0.3351983
0-6 months    ki1119695-PROBIT           BELARUS     observed             NA                0.0979142   0.0846096   0.1112187
0-6 months    ki1135781-COHORTS          GUATEMALA   observed             NA                0.3658293   0.3143529   0.4173057
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.5432500   0.5014364   0.5850636
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.7702539   0.7165873   0.8239204
6-24 months   ki1101329-Keneba           GAMBIA      observed             NA                0.4010925   0.3749260   0.4272590
6-24 months   ki1119695-PROBIT           BELARUS     observed             NA                0.0773532   0.0634602   0.0912463
6-24 months   ki1135781-COHORTS          GUATEMALA   observed             NA                0.8312126   0.7930474   0.8693778


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              observed          0.9528094   0.9079158   0.9999229
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          0.8304847   0.7612900   0.9059686
0-24 months   ki1101329-Keneba           GAMBIA      optimal              observed          0.8595091   0.8260734   0.8942981
0-24 months   ki1119695-PROBIT           BELARUS     optimal              observed          0.9821930   0.9682098   0.9963781
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          0.8583269   0.7704753   0.9561956
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              observed          0.9276621   0.8480506   1.0147471
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          0.6687215   0.5099130   0.8769897
0-6 months    ki1101329-Keneba           GAMBIA      optimal              observed          0.8255350   0.7644252   0.8915300
0-6 months    ki1119695-PROBIT           BELARUS     optimal              observed          0.8422875   0.7859647   0.9026465
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              observed          0.6380914   0.3971444   1.0252207
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              observed          0.9023139   0.8465770   0.9617203
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              observed          0.7669016   0.6658905   0.8832354
6-24 months   ki1101329-Keneba           GAMBIA      optimal              observed          0.7915218   0.7396122   0.8470748
6-24 months   ki1119695-PROBIT           BELARUS     optimal              observed          0.9284230   0.8919987   0.9663348
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              observed          0.8506271   0.7458935   0.9700667
