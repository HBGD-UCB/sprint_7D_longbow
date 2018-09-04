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

agecat      studyid                    country     fhtcm           stunted   n_cell       n
----------  -------------------------  ----------  -------------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0       38     102
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       12     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0       17     102
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1        6     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0       20     102
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1        9     102
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      735    1165
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1       37    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       82    1165
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        5    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      290    1165
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1       16    1165
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              0    11714   12533
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              1       26   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm               0      168   12533
Birth       ki1119695-PROBIT           BELARUS     <162 cm               1        0   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          0      622   12533
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          1        3   12533
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              0       26     206
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              1        3     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               0      111     206
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               1       10     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       54     206
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     206
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      281     807
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       88     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      129     807
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       65     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      168     807
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       76     807
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       64     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       38     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       72     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       76     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0      849    1511
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1      130    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm               0       98    1511
6 months    ki1101329-Keneba           GAMBIA      <162 cm               1       15    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      355    1511
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1       64    1511
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    10535   11895
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1      611   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      131   11895
6 months    ki1119695-PROBIT           BELARUS     <162 cm               1       25   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      529   11895
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1       64   11895
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       31     336
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1       14     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0       88     336
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1      109     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       61     336
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       33     336
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      569    1297
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      252    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm               0       63    1297
24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       34    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      216    1297
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      163    1297
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0     3161    3670
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1      284    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm               0       42    3670
24 months   ki1119695-PROBIT           BELARUS     <162 cm               1       11    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      149    3670
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1       23    3670
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       25     528
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1       47     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0       53     528
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1      254     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       40     528
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1      109     528


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
![](/tmp/f4a29123-b719-43aa-9346-ebbe4c1cc50e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4a29123-b719-43aa-9346-ebbe4c1cc50e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4a29123-b719-43aa-9346-ebbe4c1cc50e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4a29123-b719-43aa-9346-ebbe4c1cc50e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2400000    0.1335281   0.3464719
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2608696    0.0876979   0.4340412
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3103448    0.0805885   0.5401011
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0479275    0.0328526   0.0630023
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0574713    0.0085444   0.1063982
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.0522876    0.0273352   0.0772399
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1997831    0.1668447   0.2327216
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1946576    0.1339365   0.2553787
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2083681    0.1455167   0.2712194
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3748483    0.2842636   0.4654329
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5035395    0.4246159   0.5824632
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3786926    0.2945377   0.4628475
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1344464    0.1132157   0.1556772
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1300761    0.0697556   0.1903965
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1474375    0.1136640   0.1812111
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0558089    0.0437600   0.0678577
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1281164    0.1046305   0.1516023
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0966686    0.0653666   0.1279707
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3276716    0.2015985   0.4537447
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.5608486    0.4925476   0.6291495
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.3714549    0.2796511   0.4632587
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3127465    0.2822334   0.3432596
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3787852    0.3158036   0.4417668
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4472203    0.4036712   0.4907693
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0840432    0.0515664   0.1165199
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.0836852   -0.0271615   0.1945320
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.0986678    0.0355467   0.1617890
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7132621    0.6518955   0.7746287
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8273895    0.7889470   0.8658320
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7573842    0.7058472   0.8089212


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2647059   0.1675094   0.3619023
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                0.0497854   0.0372905   0.0622803
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0588483   0.0462144   0.0714821
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3461835   0.3202819   0.3720851
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0866485   0.0534930   0.1198040
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7765152   0.7409486   0.8120817


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0869565   0.4854442   2.433801
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2931034   0.6762338   2.472690
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1991302   0.4838511   2.971809
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0909733   0.6160200   1.932117
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          0.9743447   0.7586524   1.251361
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.0429713   0.7269002   1.496477
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3433157   1.0107280   1.785344
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.0102557   0.7305492   1.397054
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9674936   0.5928101   1.578994
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0966266   0.8306569   1.447758
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.2956289   1.7520140   3.007917
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.7321382   1.2756563   2.351968
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7116180   1.1431515   2.562772
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1336195   0.7188268   1.787765
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.2111574   1.0000071   1.466892
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.4299769   1.2481206   1.638330
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          0.9957408   0.3139098   3.158550
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.1740140   0.6203145   2.221952
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.1600076   1.0546160   1.275931
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.0618595   0.9550888   1.180566


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0247059   -0.0254771   0.0748889
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0018579   -0.0072081   0.0109240
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0839839    0.0577545   0.1102133
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0525711   -0.0245721   0.1297143
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0038726   -0.0091108   0.0168559
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0030394    0.0012603   0.0048185
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1366141    0.0175565   0.2556718
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0334370    0.0140654   0.0528087
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0026053   -0.0003824   0.0055930
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0632530    0.0081547   0.1183514


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0933333   -0.1186151   0.2651231
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0373191   -0.1628844   0.2030553
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2959608    0.2103020   0.3723281
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1229965   -0.0774773   0.2861705
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0279974   -0.0704418   0.1173839
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0516482    0.0234073   0.0790723
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2942458   -0.0138437   0.5087123
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0965876    0.0392470   0.1505058
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0300679   -0.0037829   0.0627771
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0814576    0.0081344   0.1493603
