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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        fage       n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     150
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     150
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     150
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38           27      68
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32            16      68
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        25      68
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38           29     133
0-3 months     ki0047075b-MAL-ED          INDIA                          <32            45     133
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)        59     133
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38           14      63
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32            10      63
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        39      63
0-3 months     ki0047075b-MAL-ED          PERU                           >=38           27      80
0-3 months     ki0047075b-MAL-ED          PERU                           <32            27      80
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)        26      80
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           52      75
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      75
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      75
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           42      91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        34      91
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           35    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32           970    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       160    1165
0-3 months     ki1119695-PROBIT           BELARUS                        >=38          557   12294
0-3 months     ki1119695-PROBIT           BELARUS                        <32          9846   12294
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)      1891   12294
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38          214     706
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32           316     706
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       176     706
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38           68     148
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32            30     148
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     148
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32            18      79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38           34     156
3-6 months     ki0047075b-MAL-ED          INDIA                          <32            53     156
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)        69     156
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38           17      79
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32            15      79
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
3-6 months     ki0047075b-MAL-ED          PERU                           >=38           27      83
3-6 months     ki0047075b-MAL-ED          PERU                           <32            28      83
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)        28      83
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      86
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      86
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      86
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38           37    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32           935    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)       149    1121
3-6 months     ki1119695-PROBIT           BELARUS                        >=38          594   12816
3-6 months     ki1119695-PROBIT           BELARUS                        <32         10269   12816
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)      1953   12816
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38          228     779
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32           348     779
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)       203     779
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           68     145
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     145
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        47     145
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38           34     156
6-12 months    ki0047075b-MAL-ED          INDIA                          <32            52     156
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)        70     156
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
6-12 months    ki0047075b-MAL-ED          PERU                           >=38           27      81
6-12 months    ki0047075b-MAL-ED          PERU                           <32            26      81
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      81
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           63      85
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      85
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      85
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      97
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      97
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           41    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32           951    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       142    1134
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           37     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           222     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        73     332
6-12 months    ki1119695-PROBIT           BELARUS                        >=38          590   12439
6-12 months    ki1119695-PROBIT           BELARUS                        <32          9963   12439
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)      1886   12439
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38          240     832
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32           381     832
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       211     832
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38          271    2347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32          1628    2347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       448    2347
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38           14      53
6-12 months    ki1148112-LCNI-5           MALAWI                         <32            29      53
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)        10      53
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           67     146
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     146
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        49     146
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     159
12-24 months   ki0047075b-MAL-ED          INDIA                          <32            52     159
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        71     159
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
12-24 months   ki0047075b-MAL-ED          PERU                           >=38           26      77
12-24 months   ki0047075b-MAL-ED          PERU                           <32            25      77
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      77
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      87
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             7      87
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      87
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           46      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        36      97
12-24 months   ki1119695-PROBIT           BELARUS                        >=38          122    2462
12-24 months   ki1119695-PROBIT           BELARUS                        <32          1968    2462
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)       372    2462
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38          241     844
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32           399     844
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       204     844
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          252    2189
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1527    2189
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       410    2189
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38           11      42
12-24 months   ki1148112-LCNI-5           MALAWI                         <32            23      42
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)         8      42


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI



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
![](/tmp/145ad4d3-87b3-4c67-be11-04839c8be28d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/145ad4d3-87b3-4c67-be11-04839c8be28d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                3.9515891   3.8595579   4.0436204
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                4.5066218   4.3962021   4.6170414
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                4.2321780   4.1247922   4.3395638
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                4.1707689   3.9847125   4.3568253
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                3.8615108   3.5875053   4.1355162
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                4.0576733   3.8620800   4.2532665
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                3.0251653   2.9374814   3.1128492
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                3.5230634   3.4564401   3.5896867
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                3.8461533   3.7339506   3.9583560
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                3.7521524   3.4845369   4.0197678
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                3.6863818   3.4592841   3.9134795
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                3.7404163   3.6096750   3.8711575
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                3.0585184   2.9483163   3.1687204
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                3.4958945   3.3908921   3.6008968
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                3.4365965   3.2887454   3.5844476
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                3.5644983   3.3703538   3.7586429
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                3.5939390   3.0690023   4.1188758
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                3.4570720   3.1243122   3.7898318
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                3.5305786   3.3863862   3.6747709
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                3.8705072   3.6434862   4.0975282
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                3.3726904   3.1746837   3.5706972
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                2.9819596   2.9138778   3.0500413
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                3.6339884   3.6034971   3.6644797
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                3.4499803   3.3665798   3.5333807
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.9265607   2.8245309   3.0285905
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.8315614   2.7220766   2.9410461
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.8609719   2.7799491   2.9419946
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                2.5177784   2.4691582   2.5663986
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                2.6194224   2.5742642   2.6645807
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                2.5405780   2.4830159   2.5981401
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.9978602   1.9350346   2.0606859
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                2.0420997   1.9887626   2.0954369
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.9474535   1.8899628   2.0049442
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                2.1534470   1.9838230   2.3230709
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                2.4430357   2.2266019   2.6594695
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                2.1685227   2.0077781   2.3292673
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                2.6351262   2.5622969   2.7079556
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                2.3476531   2.2628731   2.4324331
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                2.0864876   2.0067746   2.1662005
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.8847825   1.6686047   2.1009603
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.8827702   1.6642744   2.1012659
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.8870384   1.7688002   2.0052766
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                2.6781459   2.5023781   2.8539137
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                2.4405815   2.2651987   2.6159644
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                2.4366885   2.2774053   2.5959717
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.8776511   1.7397320   2.0155703
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.7785856   1.2709920   2.2861792
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.9390510   1.6953330   2.1827689
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.8426070   1.7403994   1.9448146
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.9265808   1.8049123   2.0482494
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.9082100   1.7794897   2.0369302
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.9137644   1.8350901   1.9924388
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.9422348   1.9032230   1.9812467
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.9760913   1.8821280   2.0700546
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.2683717   2.2297121   2.3070313
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.0976773   2.0589909   2.1363637
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.0909221   2.0607593   2.1210849
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.6990068   1.6596819   1.7383317
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.7590197   1.7286661   1.7893733
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                1.7113723   1.6743003   1.7484442
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.0097106   0.9777593   1.0416619
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.0738418   1.0419752   1.1057084
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.0241096   0.9893080   1.0589111
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.4465363   1.3711976   1.5218750
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.5312671   1.4283457   1.6341885
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.4565351   1.3813408   1.5317294
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.0141699   0.9831973   1.0451424
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.9674532   0.9319522   1.0029542
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.0075586   0.9748841   1.0402331
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.2435440   1.1541564   1.3329317
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.1629730   1.0961471   1.2297988
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.1747481   1.1236805   1.2258157
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                1.1953915   1.1418947   1.2488883
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                1.2127500   1.1523257   1.2731742
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.2703521   1.1863738   1.3543304
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.1797492   1.0937157   1.2657828
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.2196533   1.0964290   1.3428776
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.2539484   1.1510285   1.3568683
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.0317134   0.9696408   1.0937859
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.7992153   0.6949917   0.9034389
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.9288708   0.8627030   0.9950387
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.3629462   1.3132354   1.4126570
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.1032506   1.0975061   1.1089951
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.1209985   1.0867079   1.1552891
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4526228   0.4065707   0.4986749
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8638503   0.7922712   0.9354294
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.7297805   0.6666818   0.7928791
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                1.4924522   1.4606591   1.5242453
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                1.4716802   1.4330387   1.5103216
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.4993023   1.4644555   1.5341492
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.0214947   1.0001496   1.0428398
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.0053732   0.9869190   1.0238274
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.9488382   0.9289348   0.9687416
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                1.0971887   1.0718424   1.1225350
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                1.0808910   1.0662072   1.0955748
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                1.0800291   1.0552893   1.1047690
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                1.3177115   1.2208242   1.4145988
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                1.2889233   1.1751641   1.4026825
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                1.2622169   1.1755987   1.3488351
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.7628705   0.7377638   0.7879771
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.6685952   0.6434926   0.6936978
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.7180342   0.6935156   0.7425529
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.9991519   0.9398041   1.0584997
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.9516213   0.8926709   1.0105717
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.9792637   0.9105720   1.0479554
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.9167653   0.8843503   0.9491802
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8936539   0.8603269   0.9269810
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.8838554   0.8525515   0.9151593
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.8493627   0.7929679   0.9057576
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.8668690   0.8096350   0.9241030
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.8481371   0.8210626   0.8752117
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8152477   0.7861751   0.8443202
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.8635987   0.8200054   0.9071919
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.8422596   0.7974781   0.8870411
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8590992   0.8154141   0.9027843
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.0524012   0.8696898   1.2351125
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9255398   0.8371710   1.0139085
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7634071   0.7327277   0.7940865
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.7235501   0.6772925   0.7698078
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.7436300   0.6925731   0.7946870
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.8871635   0.8505234   0.9238036
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.8479829   0.7892715   0.9066943
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.9310454   0.9054226   0.9566682
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7643348   0.7516180   0.7770517
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7358645   0.7237117   0.7480173
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.6999013   0.6841704   0.7156322
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.7079869   0.6938176   0.7221563
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.7160221   0.7075957   0.7244484
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.7790200   0.7633979   0.7946422
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.8263488   0.7548245   0.8978731
12-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.8299612   0.7633874   0.8965349
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.8821090   0.7831750   0.9810430


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5888777   3.5145520   3.6632034
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0174735   3.8724552   4.1624917
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5417592   3.4462250   3.6372934
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.7328856   3.6136585   3.8521128
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3338033   3.2200376   3.4475690
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.5461534   3.3855590   3.7067478
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4237855   3.3028715   3.5446996
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6022342   3.5739584   3.6305100
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8363715   2.7230464   2.9496966
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6164613   2.5719057   2.6610169
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9151881   1.8526222   1.9777540
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.2327938   2.1063773   2.3592103
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8947526   1.8209541   1.9685511
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.8860484   1.7866718   1.9854250
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0391824   1.9190819   2.1592828
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.8791450   1.7594987   1.9987914
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8134766   1.7288377   1.8981155
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9401040   1.8974682   1.9827398
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0923463   2.0510631   2.1336294
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7566595   1.7253717   1.7879472
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1000336   1.0701340   1.1299332
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4353544   1.3688864   1.5018224
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1109048   1.0763586   1.1454510
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.1874519   1.1469747   1.2279292
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.1884198   1.1307634   1.2460762
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1961294   1.1287713   1.2634875
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0144150   0.9638471   1.0649828
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0994077   1.0886490   1.1101664
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4697464   1.4316817   1.5078110
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0185687   1.0012009   1.0359366
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0672226   1.0548911   1.0795541
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2956565   1.2080181   1.3832950
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8462936   0.8276071   0.8649800
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9909722   0.9454302   1.0365141
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8823034   0.8610811   0.9035257
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8519576   0.8288134   0.8751019
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8718312   0.8362517   0.9074107
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8868712   0.8462624   0.9274799
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7581583   0.7259000   0.7904165
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8606477   0.8070689   0.9142264
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7806173   0.7696290   0.7916055
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7056723   0.6982628   0.7130818
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8389480   0.7933802   0.8845158


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.5550326    0.4068945    0.7031708
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.2805888    0.1298924    0.4312853
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.3092581   -0.6378084    0.0192922
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1130957   -0.3849231    0.1587318
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.4978981    0.3877363    0.6080600
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.8209880    0.6757669    0.9662092
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0657705   -0.4010386    0.2694975
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0117361   -0.3071705    0.2836983
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.4373761    0.2869697    0.5877825
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.3780781    0.1942407    0.5619155
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0294407   -0.5302473    0.5891287
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.1074264   -0.4926811    0.2778283
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.3399286    0.0749852    0.6048721
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1578881   -0.4025285    0.0867522
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.6520288    0.5994375    0.7046202
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.4680207    0.3603161    0.5757253
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0949994   -0.1821980   -0.0078007
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0655889   -0.1415439    0.0103662
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1016440    0.0382957    0.1649923
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0227996   -0.0497679    0.0953670
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0442395   -0.0241332    0.1126122
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0504068   -0.1203188    0.0195053
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.2895887    0.0217102    0.5574673
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0150757   -0.2111442    0.2412957
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2874731   -0.4134763   -0.1614699
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.5486387   -0.6594450   -0.4378324
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0020123   -0.3057867    0.3017621
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0022559   -0.2403359    0.2448477
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.2375644   -0.4976002    0.0224715
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.2414574   -0.4933663    0.0104514
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0990655   -0.6250626    0.4269315
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0613998   -0.2186361    0.3414358
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0839738   -0.0713610    0.2393086
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0656030   -0.0940213    0.2252272
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0284704   -0.0495618    0.1065026
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0623268   -0.0473719    0.1720256
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1706944   -0.2102545   -0.1311344
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1774496   -0.2203797   -0.1345196
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0600129    0.0134895    0.1065363
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0123655   -0.0387760    0.0635069
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0641313    0.0198610    0.1084015
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0143990   -0.0330354    0.0618333
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0847308   -0.0344848    0.2039465
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0099988   -0.0923656    0.1123632
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0467166   -0.0949815    0.0015482
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0066113   -0.0505415    0.0373190
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0805711   -0.1904000    0.0292578
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0687959   -0.1710203    0.0334284
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0173585   -0.0632073    0.0979243
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0749606   -0.0242423    0.1741635
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0399041   -0.1103823    0.1901905
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0741992   -0.0599436    0.2083419
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2324981   -0.3525523   -0.1124440
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1028425   -0.1934384   -0.0122466
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.2596956   -0.3043987   -0.2149924
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.2419477   -0.2949223   -0.1889731
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.4112275    0.3204253    0.5020297
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.2771577    0.2033268    0.3509885
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0207720   -0.0588461    0.0173021
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0068501   -0.0389936    0.0526938
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0161216   -0.0430577    0.0108146
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0726565   -0.1008318   -0.0444812
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0162977   -0.0454275    0.0128321
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0171596   -0.0523501    0.0180310
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0287883   -0.1530663    0.0954897
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0554946   -0.1565008    0.0455115
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0942752   -0.1319426   -0.0566079
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0448362   -0.0832589   -0.0064136
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0475306   -0.1299909    0.0349297
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0198882   -0.1061458    0.0663694
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0231113   -0.0694140    0.0231913
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0329099   -0.0776185    0.0117987
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0175063   -0.0625116    0.0975241
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0012256   -0.0636402    0.0611891
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0483510   -0.0040047    0.1007066
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0270119   -0.0267632    0.0807871
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1933020    0.0054408    0.3811631
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0664406   -0.0321364    0.1650176
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0398570   -0.0927085    0.0129946
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0197771   -0.0771618    0.0376077
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0391806   -0.1011102    0.0227490
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0438819    0.0065818    0.0811819
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0284704   -0.0465117   -0.0104291
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0644335   -0.0846803   -0.0441868
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0080351   -0.0082642    0.0243345
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0710331    0.0501073    0.0919589
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0036124   -0.0941004    0.1013251
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0557602   -0.0663203    0.1778408
