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
![](/tmp/ac694881-3689-4ccf-a704-a714a5ec5c89/c7c06a11-a128-4ba9-9dcd-3045849bcc28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac694881-3689-4ccf-a704-a714a5ec5c89/c7c06a11-a128-4ba9-9dcd-3045849bcc28/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.6844789   0.6360191   0.7329388
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.7942820   0.7168562   0.8717079
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.5297954   0.4976973   0.5618935
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.1864960   0.1566630   0.2163291
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.7218297   0.6132834   0.8303760
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.3964468   0.3427979   0.4500956
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.2631692   0.1813401   0.3449982
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                0.2886756   0.2443080   0.3330433
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                0.1059071   0.0803052   0.1315089
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                0.2084854   0.1087722   0.3081985
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.4916908   0.4426075   0.5407740
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.7793146   0.6909766   0.8676526
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.3720794   0.3307379   0.4134210
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.0782081   0.0569954   0.0994208
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.7073733   0.5873760   0.8273707


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.7177508   0.6751525   0.7603491
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.8471178   0.8117623   0.8824733
0-24 months   ki1101329-Keneba           GAMBIA      observed             NA                0.5557284   0.5335489   0.5779078
0-24 months   ki1119695-PROBIT           BELARUS     observed             NA                0.1679030   0.1492221   0.1865839
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             NA                0.8709677   0.8414356   0.9004999
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.4265193   0.3923837   0.4606550
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.3904282   0.3423793   0.4384771
0-6 months    ki1101329-Keneba           GAMBIA      observed             NA                0.3116657   0.2897893   0.3335421
0-6 months    ki1119695-PROBIT           BELARUS     observed             NA                0.0976310   0.0843265   0.1109356
0-6 months    ki1135781-COHORTS          GUATEMALA   observed             NA                0.3649852   0.3135088   0.4164615
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             NA                0.5441478   0.5023342   0.5859615
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             NA                0.7689076   0.7152410   0.8225741
6-24 months   ki1101329-Keneba           GAMBIA      observed             NA                0.3977695   0.3716030   0.4239360
6-24 months   ki1119695-PROBIT           BELARUS     observed             NA                0.0779232   0.0640302   0.0918162
6-24 months   ki1135781-COHORTS          GUATEMALA   observed             NA                0.8306452   0.7924799   0.8688104


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.0486091   0.9965384   1.1034006
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.0665202   0.9840391   1.1559147
0-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.0489490   1.0033031   1.0966717
0-24 months   ki1119695-PROBIT           BELARUS     observed             optimal           0.9003034   0.8116867   0.9985949
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             optimal           1.2066111   1.0502053   1.3863103
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.0758553   0.9771300   1.1845554
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.4835637   1.1273959   1.9522522
0-6 months    ki1101329-Keneba           GAMBIA      observed             optimal           1.0796398   0.9409945   1.2387129
0-6 months    ki1119695-PROBIT           BELARUS     observed             optimal           0.9218552   0.7728500   1.0995886
0-6 months    ki1135781-COHORTS          GUATEMALA   observed             optimal           1.7506511   1.1178799   2.7415996
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.1066871   1.0346031   1.1837934
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           0.9866459   0.8964533   1.0859128
6-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.0690446   0.9780071   1.1685564
6-24 months   ki1119695-PROBIT           BELARUS     observed             optimal           0.9963578   0.8664158   1.1457881
6-24 months   ki1135781-COHORTS          GUATEMALA   observed             optimal           1.1742670   1.0058650   1.3708630


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0332719   -0.0020042   0.0685481
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0528358   -0.0107129   0.1163845
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0259330    0.0023677   0.0494982
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0185930   -0.0382471   0.0010611
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1491380    0.0499805   0.2482956
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0300726   -0.0077475   0.0678927
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.1272590    0.0547416   0.1997765
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.0229901   -0.0167363   0.0627164
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                -0.0082761   -0.0271866   0.0106344
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1564998    0.0617218   0.2512777
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0524571    0.0189122   0.0860019
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                -0.0104071   -0.0850537   0.0642396
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0256901   -0.0074556   0.0588358
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0002848   -0.0112365   0.0106668
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1232719    0.0147073   0.2318364


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0463558   -0.0034737    0.0937109
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0623712   -0.0162198    0.1348843
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0466648    0.0032922    0.0881500
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.1107367   -0.2320025   -0.0014071
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1712326    0.0478053    0.2786607
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0705070   -0.0234053    0.1558014
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.3259474    0.1130002    0.4877711
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.0737651   -0.0627055    0.1927104
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                -0.0847690   -0.2939121    0.0905690
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.4287840    0.1054496    0.6352494
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0964022    0.0334458    0.1552580
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                -0.0135349   -0.1155071    0.0791157
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0645854   -0.0224875    0.1442433
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0036555   -0.1541802    0.1272383
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1484049    0.0058308    0.2705325
