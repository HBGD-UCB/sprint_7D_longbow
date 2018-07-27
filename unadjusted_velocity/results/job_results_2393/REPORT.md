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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=35          101     150
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)        14     150
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [30-35)        35     150
0-3 months     ki1119695-PROBIT           BELARUS                        >=35         1242   12294
0-3 months     ki1119695-PROBIT           BELARUS                        <25          4068   12294
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)      4633   12294
0-3 months     ki1119695-PROBIT           BELARUS                        [30-35)      2351   12294
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=35           35      68
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25             3      68
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)         7      68
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [30-35)        23      68
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=35          294     706
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25           108     706
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)       147     706
0-3 months     ki1135781-COHORTS          GUATEMALA                      [30-35)       157     706
0-3 months     ki0047075b-MAL-ED          INDIA                          >=35           59     133
0-3 months     ki0047075b-MAL-ED          INDIA                          <25             2     133
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)        25     133
0-3 months     ki0047075b-MAL-ED          INDIA                          [30-35)        47     133
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=35          109    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25           316    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)       487    1165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [30-35)       253    1165
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=35           32      63
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)         7      63
0-3 months     ki0047075b-MAL-ED          NEPAL                          [30-35)        24      63
0-3 months     ki0047075b-MAL-ED          PERU                           >=35           43      80
0-3 months     ki0047075b-MAL-ED          PERU                           <25             4      80
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)        17      80
0-3 months     ki0047075b-MAL-ED          PERU                           [30-35)        16      80
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=35           62      75
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1      75
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         5      75
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)         7      75
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35           58      91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             2      91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         6      91
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)        25      91
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=35           99     148
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)        14     148
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [30-35)        35     148
3-6 months     ki1119695-PROBIT           BELARUS                        >=35         1293   12816
3-6 months     ki1119695-PROBIT           BELARUS                        <25          4314   12816
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)      4809   12816
3-6 months     ki1119695-PROBIT           BELARUS                        [30-35)      2400   12816
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=35           40      79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25             3      79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)         8      79
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [30-35)        28      79
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=35          325     779
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25           109     779
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)       164     779
3-6 months     ki1135781-COHORTS          GUATEMALA                      [30-35)       181     779
3-6 months     ki0047075b-MAL-ED          INDIA                          >=35           68     156
3-6 months     ki0047075b-MAL-ED          INDIA                          <25             3     156
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)        27     156
3-6 months     ki0047075b-MAL-ED          INDIA                          [30-35)        58     156
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=35          105    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25           304    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)       466    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [30-35)       246    1121
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=35           38      79
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)        10      79
3-6 months     ki0047075b-MAL-ED          NEPAL                          [30-35)        31      79
3-6 months     ki0047075b-MAL-ED          PERU                           >=35           45      83
3-6 months     ki0047075b-MAL-ED          PERU                           <25             5      83
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)        17      83
3-6 months     ki0047075b-MAL-ED          PERU                           [30-35)        16      83
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=35           72      86
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1      86
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         6      86
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)         7      86
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35           65     100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             2     100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         6     100
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)        27     100
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=35           98     145
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)        14     145
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)        33     145
6-12 months    ki1119695-PROBIT           BELARUS                        >=35         1275   12439
6-12 months    ki1119695-PROBIT           BELARUS                        <25          4168   12439
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)      4659   12439
6-12 months    ki1119695-PROBIT           BELARUS                        [30-35)      2337   12439
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=35           40      79
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25             3      79
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)         8      79
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)        28      79
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=35          341     832
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25           120     832
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)       180     832
6-12 months    ki1135781-COHORTS          GUATEMALA                      [30-35)       191     832
6-12 months    ki0047075b-MAL-ED          INDIA                          >=35           69     156
6-12 months    ki0047075b-MAL-ED          INDIA                          <25             3     156
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)        27     156
6-12 months    ki0047075b-MAL-ED          INDIA                          [30-35)        57     156
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=35          105    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25           336    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)       461    1134
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)       232    1134
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35           86     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25            56     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)        97     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)        93     332
6-12 months    ki1148112-LCNI-5           MALAWI                         >=35           18      53
6-12 months    ki1148112-LCNI-5           MALAWI                         <25            11      53
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)        13      53
6-12 months    ki1148112-LCNI-5           MALAWI                         [30-35)        11      53
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=35           38      79
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)        10      79
6-12 months    ki0047075b-MAL-ED          NEPAL                          [30-35)        31      79
6-12 months    ki0047075b-MAL-ED          PERU                           >=35           45      81
6-12 months    ki0047075b-MAL-ED          PERU                           <25             4      81
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)        16      81
6-12 months    ki0047075b-MAL-ED          PERU                           [30-35)        16      81
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=35          447    2347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25           627    2347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)       746    2347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)       527    2347
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35           72      85
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1      85
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         5      85
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)         7      85
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35           62      97
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             2      97
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         6      97
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)        27      97
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35           99     146
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)        14     146
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)        33     146
12-24 months   ki1119695-PROBIT           BELARUS                        >=35          268    2462
12-24 months   ki1119695-PROBIT           BELARUS                        <25           764    2462
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)       959    2462
12-24 months   ki1119695-PROBIT           BELARUS                        [30-35)       471    2462
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=35           40      79
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25             3      79
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)         8      79
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)        28      79
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=35          334     844
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25           127     844
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)       188     844
12-24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)       195     844
12-24 months   ki0047075b-MAL-ED          INDIA                          >=35           71     159
12-24 months   ki0047075b-MAL-ED          INDIA                          <25             3     159
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)        27     159
12-24 months   ki0047075b-MAL-ED          INDIA                          [30-35)        58     159
12-24 months   ki1148112-LCNI-5           MALAWI                         >=35           14      42
12-24 months   ki1148112-LCNI-5           MALAWI                         <25            10      42
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)         9      42
12-24 months   ki1148112-LCNI-5           MALAWI                         [30-35)         9      42
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=35           38      79
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)        10      79
12-24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)        31      79
12-24 months   ki0047075b-MAL-ED          PERU                           >=35           42      77
12-24 months   ki0047075b-MAL-ED          PERU                           <25             4      77
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)        15      77
12-24 months   ki0047075b-MAL-ED          PERU                           [30-35)        16      77
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=35          414    2189
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25           590    2189
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)       698    2189
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)       487    2189
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35           74      87
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25             1      87
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)         5      87
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)         7      87
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35           62      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25             2      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)         6      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)        27      97


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/06867938-7f62-4980-804e-b14029f4440f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/06867938-7f62-4980-804e-b14029f4440f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.0016565   -0.0487223    0.0454093
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.0840215   -0.2122099    0.0441670
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.0850177   -0.1568209   -0.0132145
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                 0.0377725   -0.0469721    0.1225171
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                -0.0191325   -0.1161309    0.0778658
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                 0.0632070   -0.0236921    0.1501060
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.1121832   -0.1497581   -0.0746083
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                 0.0392608    0.0102119    0.0683098
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                 0.0300924    0.0043663    0.0558185
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                -0.0010866   -0.0391889    0.0370156
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 NA                -0.4543652   -0.5233650   -0.3853654
0-3 months     ki1119695-PROBIT           BELARUS       <25                  NA                -0.4145183   -0.4713455   -0.3576911
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                -0.4495863   -0.5112353   -0.3879373
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                -0.4441852   -0.5047925   -0.3835780
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.5544558   -0.5880284   -0.5208833
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.4989792   -0.5595827   -0.4383756
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.4834251   -0.5294675   -0.4373828
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.5965919   -0.6458329   -0.5473509
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.0271101   -0.0612083    0.0069880
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.0420665   -0.1461106    0.0619775
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.0380749   -0.1046520    0.0285022
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                -0.0530226   -0.1208985    0.0148533
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                -0.0868105   -0.2496965    0.0760756
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                -0.0482421   -0.1187317    0.0222476
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 NA                 0.0753255   -0.0043930    0.1550441
3-6 months     ki0047075b-MAL-ED          PERU          <25                  NA                -0.0543771   -0.2072018    0.0984477
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              NA                 0.1052323   -0.0168652    0.2273298
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              NA                -0.1240811   -0.2044659   -0.0436964
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0373134   -0.0788028    0.0041760
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                 0.0138888   -0.0214987    0.0492762
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                -0.0290404   -0.0524696   -0.0056112
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                -0.0231704   -0.0728337    0.0264929
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0352152    0.0095830    0.0608474
3-6 months     ki1119695-PROBIT           BELARUS       <25                  NA                 0.0612845    0.0436187    0.0789502
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                 0.0469107    0.0238757    0.0699458
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                 0.0294881    0.0044195    0.0545567
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1122425   -0.1362123   -0.0882727
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0674913   -0.1067632   -0.0282193
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.0879696   -0.1164898   -0.0594494
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.1025384   -0.1342620   -0.0708147
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.0968460   -0.1122216   -0.0814704
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.0196529   -0.0510821    0.0117764
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.0822976   -0.1042623   -0.0603328
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 NA                -0.0507901   -0.0745633   -0.0270169
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              NA                -0.0770204   -0.1170875   -0.0369532
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              NA                -0.0647387   -0.0916439   -0.0378335
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0758024   -0.1130367   -0.0385680
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                -0.0807595   -0.0926901   -0.0688288
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                -0.0806219   -0.0951539   -0.0660898
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                -0.1079207   -0.1203454   -0.0954960
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0935851   -0.1599714   -0.0271987
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                -0.0439777   -0.1521661    0.0642107
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                -0.1308565   -0.1771291   -0.0845838
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                -0.1360817   -0.1779097   -0.0942536
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0393579    0.0236122    0.0551036
6-12 months    ki1119695-PROBIT           BELARUS       <25                  NA                 0.0421748    0.0240599    0.0602898
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                 0.0426071    0.0228173    0.0623969
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                 0.0399454    0.0254363    0.0544546
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1070675   -0.1183846   -0.0957504
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0984878   -0.1177253   -0.0792504
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.1104578   -0.1243371   -0.0965784
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.1184820   -0.1340879   -0.1028760
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1027679   -0.1147460   -0.0907899
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0900199   -0.1003793   -0.0796606
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                -0.1018069   -0.1110126   -0.0926011
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                -0.1067811   -0.1169627   -0.0965995
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0209275   -0.0260116    0.0678666
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  NA                -0.0255483   -0.0831033    0.0320066
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                -0.0212630   -0.1420050    0.0994790
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                -0.0099206   -0.0528444    0.0330033
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.0172936   -0.0242301   -0.0103571
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.0204794   -0.0405433   -0.0004155
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.0113130   -0.0253122    0.0026862
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 NA                -0.0359584   -0.0476365   -0.0242804
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              NA                -0.0239861   -0.0486662    0.0006939
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              NA                -0.0243727   -0.0352750   -0.0134704
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0381993   -0.0589274   -0.0174712
12-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                -0.0419445   -0.0651226   -0.0187665
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                -0.0483161   -0.0674350   -0.0291972
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                -0.0365088   -0.0589338   -0.0140838
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0234924   -0.0293085   -0.0176763
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0279996   -0.0369057   -0.0190936
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.0372976   -0.0443695   -0.0302258
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.0329764   -0.0416030   -0.0243499
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0563147   -0.0619107   -0.0507187
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0607512   -0.0657409   -0.0557615
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                -0.0583665   -0.0628984   -0.0538345
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                -0.0554782   -0.0608966   -0.0500599
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0255922   -0.0498054   -0.0013789
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                 0.0114854   -0.0152150    0.0381857
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                -0.0551809   -0.0882782   -0.0220836
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                -0.0108150   -0.0413461    0.0197161


### Parameter: E(Y)


agecat         studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    NA                   NA                -0.0287949   -0.0671002    0.0095105
0-3 months     ki0047075b-MAL-ED          NEPAL         NA                   NA                 0.0411390   -0.0145546    0.0968327
0-3 months     ki1000304b-SAS-CompFeed    INDIA         NA                   NA                 0.0124966   -0.0032603    0.0282535
0-3 months     ki1119695-PROBIT           BELARUS       NA                   NA                -0.4374325   -0.4965010   -0.3783639
0-3 months     ki1135781-COHORTS          GUATEMALA     NA                   NA                -0.5405498   -0.5629687   -0.5181310
3-6 months     ki0047075b-MAL-ED          BANGLADESH    NA                   NA                -0.0311179   -0.0605438   -0.0016921
3-6 months     ki0047075b-MAL-ED          NEPAL         NA                   NA                -0.0554236   -0.1029996   -0.0078477
3-6 months     ki0047075b-MAL-ED          PERU          NA                   NA                 0.0351978   -0.0209986    0.0913942
3-6 months     ki1000304b-SAS-CompFeed    INDIA         NA                   NA                -0.0168853   -0.0357401    0.0019694
3-6 months     ki1119695-PROBIT           BELARUS       NA                   NA                 0.0473064    0.0279787    0.0666342
3-6 months     ki1135781-COHORTS          GUATEMALA     NA                   NA                -0.0986159   -0.1135079   -0.0837240
6-12 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                -0.0860818   -0.0985610   -0.0736027
6-12 months    ki0047075b-MAL-ED          NEPAL         NA                   NA                -0.0595839   -0.0760822   -0.0430856
6-12 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                -0.0858013   -0.0900320   -0.0815706
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1119695-PROBIT           BELARUS       NA                   NA                 0.0416292    0.0251876    0.0580707
6-12 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                -0.1091839   -0.1163423   -0.1020255
6-12 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                -0.0999580   -0.1051268   -0.0947892
6-12 months    ki1148112-LCNI-5           MALAWI        NA                   NA                -0.0054695   -0.0426418    0.0317029
12-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                -0.0162473   -0.0222513   -0.0102433
12-24 months   ki0047075b-MAL-ED          NEPAL         NA                   NA                -0.0298967   -0.0377257   -0.0220676
12-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                -0.0429788   -0.0603736   -0.0255841
12-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                -0.0294369   -0.0331367   -0.0257372
12-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                -0.0579786   -0.0605237   -0.0554336
12-24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                -0.0199381   -0.0356954   -0.0041807


### Parameter: ATE


agecat         studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0823650   -0.2189207    0.0541908
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.0833612   -0.1692151    0.0024927
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0569050   -0.1857085    0.0718984
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.0254345   -0.0959455    0.1468144
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.1514440    0.0948740    0.2080140
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.1422756    0.1090913    0.1754600
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.1110966    0.0745133    0.1476799
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0398469    0.0078882    0.0718055
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35               0.0047789   -0.0271633    0.0367211
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0101800   -0.0260343    0.0463943
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0554766   -0.0138047    0.1247580
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0710307    0.0140481    0.1280132
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0421361   -0.1017330    0.0174608
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0149564   -0.1244454    0.0945326
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.0109648   -0.0857658    0.0638363
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0337878   -0.2102503    0.1426746
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.0047806   -0.0930761    0.1026372
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU          <25                  >=35              -0.1297026   -0.3020699    0.0426646
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              >=35               0.0299068   -0.1159111    0.1757246
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              >=35              -0.1994067   -0.3126178   -0.0861956
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.0512022   -0.0038229    0.1062273
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.0082730   -0.0435073    0.0600533
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.0141430   -0.0472384    0.0755244
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0260693    0.0075040    0.0446345
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35               0.0116955   -0.0124834    0.0358744
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0057271   -0.0268404    0.0153862
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0447512   -0.0012579    0.0907603
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0242729   -0.0129824    0.0615281
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35               0.0097041   -0.0300569    0.0494651
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35               0.0771931    0.0422044    0.1121817
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35               0.0145484   -0.0122632    0.0413600
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0262303   -0.0728194    0.0203588
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0139486   -0.0498520    0.0219548
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              -0.0049571   -0.0377732    0.0278589
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              -0.0048195   -0.0467920    0.0371530
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              -0.0321184   -0.0741890    0.0099523
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35               0.0496074   -0.0773252    0.1765399
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              -0.0372714   -0.1181930    0.0436502
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              -0.0424966   -0.1209614    0.0359682
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS       <25                  >=35               0.0028169   -0.0126958    0.0183296
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35               0.0032492   -0.0140503    0.0205487
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0005875   -0.0137334    0.0149084
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0085797   -0.0137397    0.0308991
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              -0.0033902   -0.0212987    0.0145182
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0114144   -0.0306919    0.0078631
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35               0.0127480   -0.0030883    0.0285844
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35               0.0009611   -0.0141459    0.0160680
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              -0.0040132   -0.0197338    0.0117074
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              -0.0464758   -0.1207446    0.0277930
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35              -0.0421905   -0.1717355    0.0873546
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              -0.0308480   -0.0944542    0.0327581
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0031858   -0.0244149    0.0180433
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35               0.0059807   -0.0096428    0.0216041
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              >=35               0.0119723   -0.0153313    0.0392758
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.0115857   -0.0043905    0.0275618
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              -0.0037452   -0.0277119    0.0202215
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0101168   -0.0326477    0.0124140
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0016905   -0.0258658    0.0292468
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              -0.0045072   -0.0151442    0.0061298
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              -0.0138052   -0.0229615   -0.0046489
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0094840   -0.0198881    0.0009201
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              -0.0044365   -0.0119340    0.0030610
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              -0.0020518   -0.0092527    0.0051492
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35               0.0008364   -0.0069529    0.0086258
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35               0.0370776    0.0010333    0.0731218
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              -0.0295887   -0.0705975    0.0114200
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35               0.0147772   -0.0241898    0.0537443
