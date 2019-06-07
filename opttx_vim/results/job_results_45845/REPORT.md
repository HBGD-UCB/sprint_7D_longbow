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
![](/tmp/54ccccd5-0f84-44a9-9c89-0c022b8fab6a/9864b85a-f0cb-4756-9264-a590670a251e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54ccccd5-0f84-44a9-9c89-0c022b8fab6a/9864b85a-f0cb-4756-9264-a590670a251e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.6844789   0.6360191   0.7329388
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.7945229   0.7173573   0.8716886
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.5173819   0.4770125   0.5577514
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.1654117   0.1469755   0.1838480
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.7125877   0.6091094   0.8160659
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.3964468   0.3427979   0.4500956
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.2664334   0.1844450   0.3484218
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                0.2981726   0.2449229   0.3514224
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                0.1012819   0.0770980   0.1254658
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                0.2149446   0.1127610   0.3171283
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                0.4916908   0.4426075   0.5407740
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                0.6838917   0.5760196   0.7917638
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                0.3778686   0.3299380   0.4257991
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                0.0791277   0.0590236   0.0992317
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                0.7189645   0.5889691   0.8489599


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


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.0486091   0.9965384   1.103401
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.0661968   0.9841816   1.155047
0-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.0741163   1.0069063   1.145812
0-24 months   ki1119695-PROBIT           BELARUS     observed             optimal           1.0150611   0.9831486   1.048010
0-24 months   ki1135781-COHORTS          GUATEMALA   observed             optimal           1.2222605   1.0700410   1.396134
0-6 months    ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.0758553   0.9771300   1.184555
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.4653876   1.1167261   1.922907
0-6 months    ki1101329-Keneba           GAMBIA      observed             optimal           1.0452525   0.8874148   1.231164
0-6 months    ki1119695-PROBIT           BELARUS     observed             optimal           0.9639531   0.8112123   1.145453
0-6 months    ki1135781-COHORTS          GUATEMALA   observed             optimal           1.6980428   1.0898840   2.645556
6-24 months   ki1000304b-SAS-CompFeed    INDIA       observed             optimal           1.1066871   1.0346031   1.183793
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       observed             optimal           1.1243119   0.9923813   1.273782
6-24 months   ki1101329-Keneba           GAMBIA      observed             optimal           1.0526662   0.9471537   1.169933
6-24 months   ki1119695-PROBIT           BELARUS     observed             optimal           0.9847785   0.8694361   1.115423
6-24 months   ki1135781-COHORTS          GUATEMALA   observed             optimal           1.1553354   0.9790636   1.363343


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0332719   -0.0020042   0.0685481
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0525949   -0.0106159   0.1158056
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0383464    0.0049754   0.0717174
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                 0.0024913   -0.0028377   0.0078203
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1583801    0.0647957   0.2519645
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0300726   -0.0077475   0.0678927
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.1239948    0.0512971   0.1966925
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.0134931   -0.0353204   0.0623065
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                -0.0036509   -0.0212220   0.0139202
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1500405    0.0539942   0.2460869
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0524571    0.0189122   0.0860019
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0850159    0.0009651   0.1690667
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0199009   -0.0199739   0.0597758
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0012044   -0.0111469   0.0087380
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1116806   -0.0063794   0.2297407


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0463558   -0.0034737   0.0937109
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.0620868   -0.0160727   0.1342341
0-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0690021    0.0068589   0.1272568
0-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                 0.0148377   -0.0171402   0.0458102
0-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1818438    0.0654563   0.2837364
0-6 months    ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0705070   -0.0234053   0.1558014
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.3175867    0.1045252   0.4799542
0-6 months    ki1101329-Keneba           GAMBIA      optimal              NA                 0.0432933   -0.1268688   0.1877602
0-6 months    ki1119695-PROBIT           BELARUS     optimal              NA                -0.0373949   -0.2327229   0.1269829
0-6 months    ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.4110867    0.0824712   0.6220076
6-24 months   ki1000304b-SAS-CompFeed    INDIA       optimal              NA                 0.0964022    0.0334458   0.1552580
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       optimal              NA                 0.1105671   -0.0076772   0.2149362
6-24 months   ki1101329-Keneba           GAMBIA      optimal              NA                 0.0500313   -0.0557949   0.1452501
6-24 months   ki1119695-PROBIT           BELARUS     optimal              NA                -0.0154568   -0.1501708   0.1034788
6-24 months   ki1135781-COHORTS          GUATEMALA   optimal              NA                 0.1344505   -0.0213841   0.2665090
