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

**Outcome Variable:** y_rate_haz

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
![](/tmp/8efcab1f-92d5-44e8-a7ca-4b1623534d85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8efcab1f-92d5-44e8-a7ca-4b1623534d85/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.1150797    0.0692548    0.1609046
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.1457821    0.1079521    0.1836121
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                 0.1715006    0.1176877    0.2253135
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.3122968    0.2079014    0.4166923
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.1060446   -0.0299852    0.2420744
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1860299    0.0780770    0.2939828
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1084090   -0.1444967   -0.0723212
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0274618   -0.0600392    0.0051155
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                 0.0415668   -0.0097205    0.0928542
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0434289   -0.0864405    0.1732983
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                 0.0226228   -0.0847496    0.1299952
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.0434763   -0.0199986    0.1069511
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0001886   -0.0671687    0.0667915
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                 0.2439256    0.1682993    0.3195519
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.2370962    0.1564737    0.3177186
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0335894   -0.1261200    0.0589412
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0425462   -0.3069980    0.2219056
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0724057   -0.2587341    0.1139228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0065922   -0.0893434    0.0761589
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.1542170    0.0494112    0.2590227
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0886441   -0.1874978    0.0102095
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1850216   -0.2445453   -0.1254979
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                 0.0279203    0.0144326    0.0414079
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0282809   -0.0769312    0.0203695
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.3886321   -0.4421405   -0.3351237
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                -0.4397872   -0.4965981   -0.3829764
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.4270218   -0.4684328   -0.3856108
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.6128473   -0.6360987   -0.5895959
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.5668693   -0.5904741   -0.5432644
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.6247698   -0.6547573   -0.5947823
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0042406   -0.0271203    0.0356015
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0098059   -0.0389396    0.0193278
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0446648   -0.0734188   -0.0159109
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0767672   -0.0013079    0.1548422
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.2003030    0.0823124    0.3182935
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0745427   -0.0007070    0.1497924
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2602858   -0.2952390   -0.2253327
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.2885195   -0.3318447   -0.2451944
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.2539853   -0.2998618   -0.2081089
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0009596   -0.0764929    0.0745738
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                 0.0734715   -0.0046293    0.1515724
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0483758   -0.1017565    0.0050049
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1680173    0.1143476    0.2216870
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0796877    0.0294072    0.1299682
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0725334    0.0263357    0.1187310
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0493365   -0.1133414    0.0146683
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0976288   -0.3407562    0.1454987
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0171357   -0.1343185    0.1000471
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0682887   -0.1197377   -0.0168397
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1170597   -0.2051959   -0.0289235
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0640658   -0.1314249    0.0032934
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0524095   -0.1070435    0.0022245
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0171460   -0.0349003    0.0006083
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0038957   -0.0605176    0.0527261
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1178040    0.0995956    0.1360124
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0501744    0.0319526    0.0683962
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0474413    0.0326098    0.0622728
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1576407   -0.1780151   -0.1372663
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.1076261   -0.1224988   -0.0927535
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.1443419   -0.1641461   -0.1245378
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0996282   -0.1102176   -0.0890389
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.0297907    0.0188103    0.0407712
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0668996   -0.0770374   -0.0567618
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0323626   -0.0081801    0.0729054
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0221018   -0.0382062    0.0824098
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0197997   -0.0263629    0.0659623
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0251436   -0.0002668    0.0505539
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0384107   -0.0618690   -0.0149524
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0670368   -0.0850173   -0.0490562
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0363583   -0.0752241    0.0025075
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0706414   -0.0985392   -0.0427437
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0644556   -0.0861530   -0.0427582
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0001886   -0.0252909    0.0249138
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0074944   -0.0239714    0.0389602
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0437703    0.0028672    0.0846735
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0610976   -0.0978846   -0.0243106
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0463825   -0.1068228    0.0140578
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0209158   -0.0625279    0.0206963
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1127250   -0.1399542   -0.0854957
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.2142181   -0.2594474   -0.1689888
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1531805   -0.1826962   -0.1236647
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.5864129    0.5591685    0.6136572
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0942873   -0.0990008   -0.0895738
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.2768890   -0.2991401   -0.2546379
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.3227185   -0.3423868   -0.3030502
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -0.1641827   -0.1926381   -0.1357273
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.2080680   -0.2336684   -0.1824676
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0458222    0.0304389    0.0612056
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0424237    0.0257342    0.0591132
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0540864    0.0392143    0.0689586
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1102210   -0.1190197   -0.1014222
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.1150460   -0.1227316   -0.1073604
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.1342698   -0.1425498   -0.1259898
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0800816   -0.0902304   -0.0699328
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.0949603   -0.1011332   -0.0887874
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.0936158   -0.1038980   -0.0833336
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0109366   -0.0402072    0.0620803
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.0158358   -0.0758039    0.0441322
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.0032130   -0.0498339    0.0434079
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0540294   -0.0618125   -0.0462462
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0751906   -0.0819969   -0.0683844
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0631078   -0.0706633   -0.0555522
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0011465   -0.0226409    0.0249339
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0035445   -0.0280525    0.0209635
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                -0.0020618   -0.0330528    0.0289292
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0651038   -0.0713133   -0.0588943
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0447278   -0.0517438   -0.0377119
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0338682   -0.0413967   -0.0263398
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0234304   -0.0359115   -0.0109494
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0214463   -0.0327146   -0.0101780
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0283809   -0.0364919   -0.0202700
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0073046   -0.0235206    0.0089115
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0056817   -0.0143658    0.0257293
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0086542   -0.0109761    0.0282844
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0217034   -0.0359332   -0.0074736
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.0340405   -0.0222711    0.0903521
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0011776   -0.0276830    0.0300381
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0453280   -0.0563625   -0.0342934
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0500836   -0.0714441   -0.0287232
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0449334   -0.0616108   -0.0282560
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0635722   -0.0724941   -0.0546502
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.0468187   -0.0659812   -0.0276562
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.0184927   -0.0264305   -0.0105549
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0269600   -0.0309616   -0.0229584
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0258859   -0.0295146   -0.0222571
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0380611   -0.0428557   -0.0332664
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0531491   -0.0575501   -0.0487481
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.0553050   -0.0582989   -0.0523111
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.0327946   -0.0383179   -0.0272713
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0312541   -0.0610188   -0.0014895
12-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.0211137   -0.0440823    0.0018549
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.0009985   -0.0243022    0.0223051


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0287949   -0.0671002    0.0095105
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1858600    0.1077614    0.2639586
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0448930   -0.0925999    0.0028139
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0411390   -0.0145546    0.0968327
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1559833   -0.2137129   -0.0982538
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0423080   -0.1217585    0.0371425
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0680985   -0.1286788   -0.0075182
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0124966   -0.0032603    0.0282535
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4374325   -0.4965010   -0.3783639
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5405498   -0.5629687   -0.5181310
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0311179   -0.0605438   -0.0016921
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1019858    0.0434425    0.1605291
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0370129   -0.0711275   -0.0028983
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0554236   -0.1029996   -0.0078477
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0351978   -0.0209986    0.0913942
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0482124   -0.1042980    0.0078732
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0743387   -0.1146928   -0.0339846
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0473064    0.0279787    0.0666342
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0986159   -0.1135079   -0.0837240
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0860818   -0.0985610   -0.0736027
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0251574   -0.0029982    0.0533131
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0826954   -0.0972877   -0.0681030
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0595839   -0.0760822   -0.0430856
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0469885   -0.0718506   -0.0221264
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0527949   -0.0816533   -0.0239365
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1160122   -0.1370100   -0.0950144
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858013   -0.0900320   -0.0815706
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0416292    0.0251876    0.0580707
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091839   -0.1163423   -0.1020255
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999580   -0.1051268   -0.0947892
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0054695   -0.0426418    0.0317029
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0162473   -0.0222513   -0.0102433
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0011813   -0.0173265    0.0149639
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0100131   -0.0162007   -0.0038255
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0298967   -0.0377257   -0.0220676
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0009944   -0.0133168    0.0113280
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0130103   -0.0260628    0.0000423
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0399553   -0.0505743   -0.0293363
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0429788   -0.0603736   -0.0255841
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0294369   -0.0331367   -0.0257372
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0579786   -0.0605237   -0.0554336
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0199381   -0.0356954   -0.0041807


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0307024   -0.0345786    0.0959834
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0564209   -0.0166442    0.1294861
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.2062522   -0.3762763   -0.0362282
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.1262669   -0.2775112    0.0249774
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0809471    0.0442066    0.1176877
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.1499758    0.0965551    0.2033966
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0208061   -0.1828100    0.1411978
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0000474   -0.1415778    0.1416725
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.2441142    0.1255195    0.3627090
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.2372847    0.1272512    0.3473183
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0089568   -0.2891294    0.2712157
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0388163   -0.2468553    0.1692227
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1608092    0.0267521    0.2948663
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0820519   -0.2115674    0.0474636
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.2129419    0.1643904    0.2614934
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.1567408    0.0921576    0.2213239
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0511551   -0.0949578   -0.0073524
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0383897   -0.0771917    0.0004123
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0459780    0.0139808    0.0779752
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0119226   -0.0483791    0.0245340
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0140465   -0.0545032    0.0264103
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0489054   -0.0890348   -0.0087760
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1235358   -0.0138089    0.2608805
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0022245   -0.1069692    0.1025202
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0282337   -0.0919944    0.0355270
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0063005   -0.0485655    0.0611665
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0744311   -0.0345960    0.1834582
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0474163   -0.1394885    0.0446559
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0883296   -0.1457302   -0.0309290
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0954839   -0.1446332   -0.0463347
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0482922   -0.2997034    0.2031189
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0322008   -0.1013224    0.1657240
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0487710   -0.1489041    0.0513620
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0042229   -0.0781008    0.0865466
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0352636   -0.0208802    0.0914073
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0485138   -0.0227015    0.1197291
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0676296   -0.0863150   -0.0489443
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0703627   -0.0902997   -0.0504258
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0500146    0.0244736    0.0755555
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38               0.0132988   -0.0150610    0.0416585
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.1294190    0.1168171    0.1420208
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0327286    0.0232930    0.0421643
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0102608   -0.0821586    0.0616369
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0125629   -0.0730984    0.0479725
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0635543   -0.0991345   -0.0279740
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0921803   -0.1232989   -0.0610618
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0342831   -0.0821249    0.0135586
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0280973   -0.0726094    0.0164148
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0076829   -0.0335597    0.0489255
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0439589   -0.0045178    0.0924356
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0147151   -0.0560402    0.0854704
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0401818   -0.0153596    0.0957233
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1014932   -0.1544501   -0.0485362
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0404555   -0.0811461    0.0002350
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.6807002   -0.7058859   -0.6555144
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.8633018   -0.9110749   -0.8155288
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.1585358    0.1221032    0.1949684
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1146505    0.0847553    0.1445457
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0033985   -0.0208629    0.0140658
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0082642   -0.0124623    0.0289907
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0048250   -0.0160734    0.0064233
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0240488   -0.0357758   -0.0123217
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0148787   -0.0266897   -0.0030677
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0135342   -0.0278872    0.0008188
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0267724   -0.1055706    0.0520258
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0141495   -0.0824984    0.0541993
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0211613   -0.0328799   -0.0094426
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0090784   -0.0214366    0.0032797
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0046910   -0.0388449    0.0294628
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0032083   -0.0422759    0.0358593
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0203760    0.0098546    0.0308974
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.0312356    0.0213002    0.0411710
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0019841   -0.0148765    0.0188448
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0049505   -0.0197578    0.0098568
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0129863   -0.0126022    0.0385748
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0159587   -0.0093792    0.0412967
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0557439   -0.0023378    0.1138256
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0228809   -0.0092970    0.0550589
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0047557   -0.0286203    0.0191090
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0003945   -0.0193125    0.0201016
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0167535   -0.0021874    0.0356943
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0450795    0.0351949    0.0549641
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0010741   -0.0040589    0.0062072
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0111010   -0.0171472   -0.0050549
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0021559   -0.0074424    0.0031306
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0203545    0.0133407    0.0273684
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0101404   -0.0274560    0.0477368
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0302556   -0.0075464    0.0680577
