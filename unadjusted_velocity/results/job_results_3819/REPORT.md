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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/61d1ce7a-c52f-4d2a-b031-f92570d77e60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/61d1ce7a-c52f-4d2a-b031-f92570d77e60/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                3.5975622   3.4911824   3.7039419
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                3.4634804   3.3282351   3.5987256
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                3.6498656   3.5099764   3.7897548
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                4.0791766   3.8744542   4.2838990
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                3.9008761   3.5384990   4.2632532
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                4.0254564   3.7998249   4.2510880
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                3.3569898   3.1709435   3.5430361
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                3.4888920   3.3511695   3.6266144
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                3.6729006   3.5160147   3.8297864
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                3.7560196   3.4362079   4.0758313
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                3.6530737   3.3871965   3.9189509
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                3.7450457   3.6069561   3.8831353
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                3.2021411   3.0296400   3.3746422
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                3.4171217   3.2533869   3.5808566
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                3.3840064   3.1444568   3.6235561
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                3.5644983   3.3703538   3.7586429
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                3.5939390   3.0690023   4.1188758
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                3.4570720   3.1243122   3.7898318
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                3.4695385   3.3145364   3.6245405
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                3.5907355   3.2832226   3.8982484
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                3.2936128   3.0790709   3.5081548
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                3.2098922   3.0287730   3.3910114
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                3.6362437   3.6047144   3.6677729
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                3.4818764   3.3503802   3.6133726
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.7931260   2.6395413   2.9467107
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.8394583   2.7246786   2.9542381
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.8330372   2.7261996   2.9398748
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                2.5651522   2.4855001   2.6448043
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                2.6704126   2.6056716   2.7351536
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                2.5819814   2.4879477   2.6760152
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.9454368   1.8496660   2.0412076
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.8991617   1.7601650   2.0381584
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.8836657   1.7827087   1.9846228
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                2.1713193   1.9776466   2.3649921
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                2.4028498   2.0846520   2.7210476
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                2.1935429   2.0153252   2.3717607
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.9876317   1.8620546   2.1132087
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                1.9030353   1.7704006   2.0356700
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.8426240   1.7275725   1.9576755
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.8857590   1.6540822   2.1174357
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.8843540   1.6408200   2.1278881
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.8866938   1.7648813   2.0085063
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                2.1525313   1.9361488   2.3689138
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                1.9878348   1.7795620   2.1961076
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.9812291   1.7881557   2.1743024
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.8776511   1.7397320   2.0155703
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.7785856   1.2709920   2.2861792
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.9390510   1.6953330   2.1827689
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.8261685   1.7106580   1.9416790
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                1.7303921   1.5254428   1.9353415
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                1.8306944   1.6802855   1.9811032
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.8205019   1.6800694   1.9609345
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.9417884   1.9021583   1.9814185
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.9592342   1.8328433   2.0856250
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                2.0758960   2.0081919   2.1436000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                2.0977875   2.0567389   2.1388360
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                2.0687394   2.0161272   2.1213515
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.7229127   1.6592002   1.7866252
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.7920453   1.7481087   1.8359820
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                1.7339007   1.6743433   1.7934580
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                1.0681058   1.0264074   1.1098042
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                1.1599180   1.0952843   1.2245516
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                1.1080030   1.0545974   1.1614086
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.4571437   1.3596460   1.5546415
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                1.4509110   1.2956616   1.6061605
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                1.4052350   1.2981181   1.5123519
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                1.1659771   1.0905199   1.2414343
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                1.0945162   1.0295652   1.1594672
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                1.0963297   1.0499416   1.1427179
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                1.2479392   1.1519168   1.3439615
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                1.1652747   1.0926472   1.2379022
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                1.1726514   1.1202616   1.2250413
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                1.1594367   1.0827439   1.2361295
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                1.1780822   1.0856950   1.2704694
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                1.2259671   1.1048531   1.3470810
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                1.1797492   1.0937157   1.2657828
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.2196533   1.0964290   1.3428776
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                1.2539484   1.1510285   1.3568683
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                1.0625678   0.9933173   1.1318183
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.9451213   0.7950662   1.0951764
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.9817587   0.9031743   1.0603432
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                1.1130178   1.0103214   1.2157143
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                1.1031335   1.0968826   1.1093844
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                1.0705256   1.0098028   1.1312484
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.9851283   0.7906659   1.1795906
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                1.0008806   0.9075848   1.0941764
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                1.0644643   0.8934023   1.2355264
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                1.4590419   1.4173775   1.5007063
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                1.4713304   1.4306769   1.5119839
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                1.4647273   1.4267030   1.5027516
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                1.0439385   1.0095798   1.0782973
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                1.0248496   0.9986810   1.0510182
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.9783708   0.9486081   1.0081334
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                1.0466193   1.0101094   1.0831292
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                1.0754761   1.0604905   1.0904617
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                1.0496929   1.0229861   1.0763997
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                1.3496977   1.2158279   1.4835675
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                1.2761156   1.1366733   1.4155580
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                1.2766676   1.1545255   1.3988097
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.8478761   0.8193911   0.8763612
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.8412372   0.7988826   0.8835917
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.8472255   0.8170758   0.8773752
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                1.0057152   0.9383167   1.0731136
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.9671686   0.8937254   1.0406118
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.9905261   0.9049161   1.0761362
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.8974285   0.8596042   0.9352528
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.8787124   0.8409449   0.9164800
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.8772643   0.8438343   0.9106943
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.8480228   0.7908920   0.9051537
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.8695145   0.8111720   0.9278569
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.8477776   0.8207665   0.8747886
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.8619533   0.8140473   0.9098593
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.8808947   0.8126169   0.9491726
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.8729942   0.8061282   0.9398602
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                0.8590992   0.8154141   0.9027843
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                1.0524012   0.8696898   1.2351125
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                0.9255398   0.8371710   1.0139085
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.7657012   0.7291504   0.8022519
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.7714671   0.6912654   0.8516688
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.7429748   0.6780429   0.8079066
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.8923364   0.8053629   0.9793098
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.8533963   0.7940996   0.9126930
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.8886175   0.8215260   0.9557089
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.8022846   0.7824688   0.8221004
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7734586   0.7574930   0.7894242
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.7690216   0.7460281   0.7920151
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.7002246   0.6788396   0.7216096
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.7056790   0.6968302   0.7145278
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.7089957   0.6915087   0.7264827
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.1340818   -0.3061513    0.0379877
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0523034   -0.1234397    0.2280465
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1783005   -0.5945076    0.2379067
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0537201   -0.3583853    0.2509450
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.1319022   -0.0995729    0.3633772
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.3159108    0.0725461    0.5592755
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1029459   -0.5188428    0.3129509
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0109739   -0.3593247    0.3373768
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2149806   -0.0228549    0.4528161
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1818653   -0.1133307    0.4770613
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0294407   -0.5302473    0.5891287
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.1074264   -0.4926811    0.2778283
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1211971   -0.2231717    0.4655658
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.1759256   -0.4406025    0.0887513
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.4263514    0.2664449    0.5862580
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.2719842    0.0547919    0.4891764
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0463323   -0.0421923    0.1348570
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0399112   -0.0559218    0.1357442
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.1052604    0.0026161    0.2079047
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0168292   -0.1064055    0.1400640
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0462751   -0.2150712    0.1225210
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0617710   -0.2009270    0.0773849
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.2315305   -0.1409732    0.6040341
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0222236   -0.2409696    0.2854169
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0845964   -0.2672479    0.0980551
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1450077   -0.3153205    0.0253051
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0014049   -0.3375343    0.3347244
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0009348   -0.2608139    0.2626836
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1646965   -0.4650279    0.1356349
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.1713022   -0.4613000    0.1186955
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0990655   -0.6250626    0.4269315
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0613998   -0.2186361    0.3414358
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0957763   -0.3310355    0.1394829
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0045259   -0.1851198    0.1941716
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.1212864   -0.0296252    0.2721981
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.1387322   -0.0480564    0.3255208
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0218915   -0.0321207    0.0759037
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0071566   -0.0702818    0.0559686
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0691327   -0.0082605    0.1465258
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0109880   -0.0762265    0.0982024
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0918122    0.0148949    0.1687295
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0398972   -0.0278591    0.1076535
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0062327   -0.1895581    0.1770927
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0519087   -0.1967529    0.0929354
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0714609   -0.1710221    0.0281003
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0696474   -0.1582231    0.0189284
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0826645   -0.2030598    0.0377309
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0752877   -0.1846724    0.0340969
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0186455   -0.1014260    0.1387170
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0665304   -0.0768236    0.2098844
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0399041   -0.1103823    0.1901905
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0741992   -0.0599436    0.2083419
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1174465   -0.2827104    0.0478175
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0808091   -0.1855523    0.0239342
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0098843   -0.1116911    0.0919225
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0424922   -0.1211148    0.0361304
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0157523   -0.1999319    0.2314366
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0793361   -0.1796578    0.3383299
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0122885   -0.0387200    0.0632970
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0056855   -0.0462766    0.0576476
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0190889   -0.0622783    0.0241005
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0655678   -0.1110248   -0.0201107
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0288568   -0.0106089    0.0683225
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0030736   -0.0421616    0.0483088
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0735821   -0.2668831    0.1197189
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0730301   -0.2542477    0.1081874
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0066390   -0.0576812    0.0444033
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0006506   -0.0421284    0.0408271
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0385465   -0.1382283    0.0611352
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0151890   -0.1241461    0.0937680
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0187161   -0.0721676    0.0347354
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0201642   -0.0706443    0.0303159
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0214916   -0.0601648    0.1031481
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0002453   -0.0634396    0.0629491
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0189414   -0.0644663    0.1023491
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0110409   -0.0712151    0.0932969
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1933020    0.0054408    0.3811631
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0664406   -0.0321364    0.1650176
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0057660   -0.0823718    0.0939037
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0227264   -0.0972388    0.0517860
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0389401   -0.1283315    0.0504513
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0037189   -0.0994394    0.0920016
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0288260   -0.0542734   -0.0033787
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0332630   -0.0636170   -0.0029090
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0054544   -0.0176891    0.0285979
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0087711   -0.0188534    0.0363957
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0036124   -0.0941004    0.1013251
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0557602   -0.0663203    0.1778408
