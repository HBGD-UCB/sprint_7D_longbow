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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8762d6d4-594f-4597-822b-ccd57e93eed1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8762d6d4-594f-4597-822b-ccd57e93eed1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8762d6d4-594f-4597-822b-ccd57e93eed1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8762d6d4-594f-4597-822b-ccd57e93eed1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.6757903   0.6287886   0.7227921
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.7466898   0.6791012   0.8142784
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.7252424   0.6566715   0.7938133
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7898262   0.7156967   0.8639556
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.9072960   0.8649613   0.9496307
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8249771   0.7610722   0.8888821
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.5273915   0.5006665   0.5541165
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.5998025   0.5458546   0.6537503
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.6271476   0.5917121   0.6625831
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.1646622   0.1465579   0.1827665
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.3785168   0.3322661   0.4247675
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2686462   0.2343086   0.3029838
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7506749   0.6651090   0.8362408
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.9143055   0.8820144   0.9465967
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8227767   0.7625774   0.8829761
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3794008   0.3285484   0.4302531
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4380701   0.3805495   0.4955906
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4174816   0.3598915   0.4750717
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2629721   0.1828757   0.3430686
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.4819126   0.4064264   0.5573987
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3781538   0.2962969   0.4600108
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2995541   0.2734394   0.3256687
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3301950   0.2765114   0.3838785
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3460141   0.3083596   0.3836685
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0966110   0.0836833   0.1095387
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1028617   0.0839202   0.1218031
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0951235   0.0683471   0.1218999
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2671584   0.1448458   0.3894710
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.4276726   0.3585956   0.4967495
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2828657   0.1918823   0.3738492
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.4734427   0.4240810   0.5228045
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.5572875   0.4439524   0.6706226
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.5176087   0.4628972   0.5723203
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7121872   0.6210279   0.8033466
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.8594097   0.7940447   0.9247747
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.7372970   0.6485327   0.8260613
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3684951   0.3379623   0.3990279
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4771380   0.4154660   0.5388100
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4789800   0.4369055   0.5210545
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0751446   0.0616448   0.0886444
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1860705   0.1044142   0.2677268
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1620106   0.1114561   0.2125651
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7251252   0.6233472   0.8269032
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8882853   0.8457144   0.9308562
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7866537   0.7144706   0.8588368


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.7177508   0.6751525   0.7603491
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.8471178   0.8117623   0.8824733
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.5557284   0.5335489   0.5779078
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1679030   0.1492221   0.1865839
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8709677   0.8414356   0.9004999
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4265193   0.3923837   0.4606550
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3904282   0.3423793   0.4384771
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.3116657   0.2897893   0.3335421
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0976310   0.0843265   0.1109356
0-6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3649852   0.3135088   0.4164615
6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.5441478   0.5023342   0.5859615
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.7689076   0.7152410   0.8225741
6-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3977695   0.3716030   0.4239360
6-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0779232   0.0640302   0.0918162
6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8306452   0.7924799   0.8688104


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1049134   1.0185204   1.198634
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.0731766   0.9555170   1.205324
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.1487287   1.0351489   1.274771
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0445047   0.9262241   1.177890
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1373002   1.0266739   1.259847
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1891501   1.1036792   1.281240
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.2987474   1.9464563   2.714800
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.6314990   1.4514604   1.833870
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2179780   1.0811618   1.372108
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.0960493   0.9577037   1.254380
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1546367   0.9577494   1.391999
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1003709   0.9160782   1.321739
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.8325613   1.3061317   2.571166
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.4379997   0.9940429   2.080235
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1022883   0.9176392   1.324093
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1550973   1.0061998   1.326029
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0646995   0.8946991   1.267001
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          0.9846031   0.7778603   1.246295
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.6008202   0.9847787   2.602235
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.0587940   0.6055418   1.851309
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1770958   0.9794864   1.414573
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.0932868   0.9253979   1.291635
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.2067188   1.0410127   1.398802
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0352573   0.8701264   1.231726
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.2948286   1.1123308   1.507268
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.2998272   1.1547386   1.463146
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.4761652   1.5301306   4.007105
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          2.1559841   1.6479115   2.820702
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.2250096   1.0565301   1.420356
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.0848523   0.9181275   1.281853


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0419605    0.0087109   0.0752100
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0572916   -0.0027956   0.1173789
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0283369    0.0128205   0.0438532
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0032408    0.0008327   0.0056489
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1202928    0.0422909   0.1982948
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0471186    0.0122968   0.0819403
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1274561    0.0563909   0.1985212
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0121116   -0.0036414   0.0278646
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0010200   -0.0004313   0.0024713
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0978268   -0.0170270   0.2126806
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0707051    0.0379540   0.1034562
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0567203   -0.0150349   0.1284756
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0292744    0.0108279   0.0477209
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0027786    0.0007309   0.0048263
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1055200    0.0138149   0.1972250


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0584611    0.0117622   0.1029532
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0676313   -0.0065820   0.1363729
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0509905    0.0226348   0.0785235
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0193016    0.0053534   0.0330542
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1381140    0.0431916   0.2236194
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1104723    0.0236027   0.1896131
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3264520    0.1189324   0.4850942
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0388610   -0.0129269   0.0880011
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0104477   -0.0041453   0.0248287
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2680294   -0.1242861   0.5234479
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1299373    0.0682358   0.1875529
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0737674   -0.0247811   0.1628391
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0735964    0.0262647   0.1186273
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0356583    0.0099631   0.0606865
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1270337    0.0087069   0.2312363
