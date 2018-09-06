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
![](/tmp/ebc74ea0-2610-4b2b-9cf4-bfa56fb40bda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ebc74ea0-2610-4b2b-9cf4-bfa56fb40bda/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0141015   -0.0693939    0.0411909
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.1044059   -0.1785546   -0.0302572
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0043875   -0.0739633    0.0651884
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.2526149    0.1369330    0.3682969
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.1088241   -0.0690400    0.2866883
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.1630676    0.0400443    0.2860909
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1240260   -0.2161012   -0.0319509
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0555434   -0.1215605    0.0104737
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                 0.0021261   -0.0792941    0.0835464
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0432338   -0.1045215    0.1909891
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                 0.0298755   -0.0875745    0.1473255
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.0432751   -0.0228301    0.1093804
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2486345   -0.3366815   -0.1605876
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1111235   -0.1936165   -0.0286305
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.1063539   -0.2239913    0.0112836
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0335894   -0.1261200    0.0589412
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0425462   -0.3069980    0.2219056
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0724057   -0.2587341    0.1139228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0406541   -0.1267730    0.0454648
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0076913   -0.1464901    0.1311075
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1286505   -0.2311878   -0.0261133
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1800228   -0.2771421   -0.0829035
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                 0.0283746    0.0144120    0.0423372
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0416501   -0.1055473    0.0222470
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.4645108   -0.5457510   -0.3832705
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  NA                -0.4350120   -0.4946698   -0.3753542
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.4420592   -0.4980914   -0.3860270
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.5553244   -0.5952398   -0.5154090
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.5118138   -0.5445538   -0.4790738
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.5741795   -0.6212279   -0.5271312
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0135952   -0.0581071    0.0309166
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0399992   -0.1075413    0.0275430
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0496201   -0.0967064   -0.0025337
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0770979   -0.0121498    0.1663456
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.1816390    0.0332427    0.3300353
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0798205   -0.0024875    0.1621286
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0080602   -0.0489982    0.0651187
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0257282   -0.0845915    0.0331352
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0678909   -0.1226543   -0.0131274
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0635384   -0.1735313    0.0464544
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0477070   -0.1659823    0.0705683
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0549512   -0.1131203    0.0032178
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0799442   -0.0202655    0.1801539
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0109630   -0.0869052    0.1088311
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0162843   -0.0755557    0.1081242
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0493365   -0.1133414    0.0146683
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0976288   -0.3407562    0.1454987
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0171357   -0.1343185    0.1000471
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0700446   -0.1245132   -0.0155760
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1211202   -0.2172156   -0.0250247
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0609440   -0.1335390    0.0116511
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0633235   -0.1253301   -0.0013169
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0168805   -0.0344906    0.0007297
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0053843   -0.0622258    0.0514572
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0383637    0.0071542    0.0695733
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0502167    0.0309990    0.0694344
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0347241    0.0099709    0.0594774
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1092637   -0.1394928   -0.0790347
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0829490   -0.1037110   -0.0621870
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.1135144   -0.1423527   -0.0846760
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.1017665   -0.1194561   -0.0840769
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0545839   -0.0809115   -0.0282563
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0834942   -0.1050074   -0.0619810
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0286255   -0.0112211    0.0684722
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.0352122   -0.0330387    0.1034631
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.0159630   -0.0295493    0.0614752
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0618288   -0.0943241   -0.0293334
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0855553   -0.1127737   -0.0583369
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0907060   -0.1103035   -0.0711085
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0363583   -0.0752241    0.0025075
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0706414   -0.0985392   -0.0427437
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0644556   -0.0861530   -0.0427582
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0643023   -0.0941992   -0.0344054
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  NA                -0.0509351   -0.0927559   -0.0091144
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0266283   -0.0789156    0.0256589
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0610976   -0.0978846   -0.0243106
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.0463825   -0.1068228    0.0140578
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0209158   -0.0625279    0.0206963
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0979779   -0.1270114   -0.0689444
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1404262   -0.2001387   -0.0807136
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1288835   -0.1622936   -0.0954734
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0675484   -0.1135502   -0.0215466
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.0850404   -0.0875771   -0.0825036
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.0961679   -0.1208772   -0.0714587
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1158091   -0.1991050   -0.0325131
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -0.1142866   -0.1516740   -0.0768993
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -0.0849749   -0.1567206   -0.0132292
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0373905    0.0183509    0.0564302
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.0422980    0.0247132    0.0598827
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.0394221    0.0231511    0.0556932
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0993095   -0.1134533   -0.0851656
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.1073653   -0.1181373   -0.0965933
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.1236994   -0.1360935   -0.1113053
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1040969   -0.1193705   -0.0888233
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.0973166   -0.1035925   -0.0910406
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.1070530   -0.1183230   -0.0957830
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0162973   -0.0358213    0.0684158
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.0158475   -0.0760891    0.0443941
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.0058465   -0.0567177    0.0450246
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0174018   -0.0259362   -0.0088673
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.0143761   -0.0292035    0.0004514
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.0158144   -0.0258701   -0.0057588
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0011465   -0.0226236    0.0249166
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                -0.0035445   -0.0281135    0.0210245
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                -0.0020618   -0.0330298    0.0289062
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0100202   -0.0200556    0.0000153
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.0081910   -0.0189000    0.0025179
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.0113439   -0.0215602   -0.0011276
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0339022   -0.0538185   -0.0139859
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.0251591   -0.0444288   -0.0058894
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.0299598   -0.0390363   -0.0208834
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.0083356   -0.0261780    0.0095067
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                 0.0026679   -0.0203100    0.0256458
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.0028254   -0.0198259    0.0254767
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0217034   -0.0359332   -0.0074736
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.0340405   -0.0222711    0.0903521
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.0011776   -0.0276830    0.0300381
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0424535   -0.0548519   -0.0300552
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.0285407   -0.0606777    0.0035963
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.0415192   -0.0610486   -0.0219897
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0349794   -0.0596120   -0.0103467
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                -0.0451900   -0.0647481   -0.0256319
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                -0.0339043   -0.0532269   -0.0145817
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0224517   -0.0293514   -0.0155519
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.0324196   -0.0377865   -0.0270528
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.0318554   -0.0393487   -0.0243620
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0549880   -0.0623837   -0.0475924
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.0589990   -0.0620496   -0.0559484
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.0560166   -0.0619125   -0.0501206
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0903043   -0.1827991    0.0021904
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0097141   -0.0791569    0.0985850
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.1437908   -0.3559652    0.0683836
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0895473   -0.2584173    0.0793226
0-3 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0684826   -0.0448139    0.1817791
0-3 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38               0.1261521    0.0032412    0.2490630
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0133583   -0.2021072    0.1753906
0-3 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0000413   -0.1618276    0.1619102
0-3 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <32                  >=38               0.1375111    0.0168572    0.2581650
0-3 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.1422807   -0.0046576    0.2892189
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0089568   -0.2891294    0.2712157
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0388163   -0.2468553    0.1692227
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0329628   -0.1303821    0.1963078
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0879965   -0.2219008    0.0459078
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.2083974    0.1220730    0.2947218
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.1383727    0.0385172    0.2382281
0-3 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0294987   -0.0164919    0.0754893
0-3 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0224515   -0.0281845    0.0730876
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0435106   -0.0081145    0.0951356
0-3 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0188552   -0.0805544    0.0428440
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.0264039   -0.1072942    0.0544864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0360248   -0.1008201    0.0287705
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1045410   -0.0686254    0.2777075
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38               0.0027226   -0.1186849    0.1241300
3-6 months     ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0337884   -0.1157674    0.0481906
3-6 months     ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0759511   -0.1550378    0.0031356
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0158314   -0.1456847    0.1773476
3-6 months     ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0085872   -0.1158397    0.1330141
3-6 months     ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.0689812   -0.2090533    0.0710908
3-6 months     ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0636599   -0.1995884    0.0722686
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.0482922   -0.2997034    0.2031189
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0322008   -0.1013224    0.1657240
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0510756   -0.1615344    0.0593833
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0091006   -0.0816566    0.0998578
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.0464430   -0.0172980    0.1101840
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.0579392   -0.0200672    0.1359456
3-6 months     ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0118530   -0.0126496    0.0363555
3-6 months     ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0036396   -0.0328950    0.0256158
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0263147   -0.0103576    0.0629870
3-6 months     ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0042506   -0.0460292    0.0375279
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0471826    0.0154641    0.0789011
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0182723   -0.0095798    0.0461244
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0065866   -0.0724446    0.0856179
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0126626   -0.0731532    0.0478281
6-12 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.0237265   -0.0661151    0.0186620
6-12 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0288772   -0.0668247    0.0090702
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.0342831   -0.0821249    0.0135586
6-12 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0280973   -0.0726094    0.0164148
6-12 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0133672   -0.0380410    0.0647753
6-12 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0376740   -0.0225571    0.0979050
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0147151   -0.0560402    0.0854704
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0401818   -0.0153596    0.0957233
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.0424482   -0.1088450    0.0239485
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.0309056   -0.0751682    0.0133570
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              -0.0174920   -0.0631818    0.0281979
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0286195   -0.0677877    0.0105486
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.0015224   -0.0897794    0.0928243
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.0308341   -0.0791006    0.1407689
6-12 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <32                  >=38               0.0049074   -0.0174946    0.0273095
6-12 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0020316   -0.0207220    0.0247852
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0080558   -0.0258346    0.0097229
6-12 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0243899   -0.0431958   -0.0055840
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0067803   -0.0097325    0.0232931
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0029561   -0.0219376    0.0160254
6-12 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.0321448   -0.1118028    0.0475133
6-12 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.0221438   -0.0949739    0.0506863
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.0030257   -0.0140825    0.0201339
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0015873   -0.0116018    0.0147764
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0046910   -0.0388766    0.0294945
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0032083   -0.0422472    0.0358306
12-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38               0.0018291   -0.0128471    0.0165054
12-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.0013237   -0.0156445    0.0129970
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38               0.0087431   -0.0189693    0.0364556
12-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0039424   -0.0179446    0.0258294
12-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38               0.0110035   -0.0180883    0.0400953
12-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.0111610   -0.0176734    0.0399955
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0557439   -0.0023378    0.1138256
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38               0.0228809   -0.0092970    0.0550589
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.0139128   -0.0205329    0.0483585
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0009343   -0.0221983    0.0240670
12-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0102107   -0.0366763    0.0162550
12-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38               0.0010751   -0.0253317    0.0274818
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0099680   -0.0187092   -0.0012267
12-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0094037   -0.0195898    0.0007824
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.0040109   -0.0120111    0.0039892
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0010286   -0.0104868    0.0084297
12-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38               0.0101404   -0.0274560    0.0477368
12-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38               0.0302556   -0.0075464    0.0680577
