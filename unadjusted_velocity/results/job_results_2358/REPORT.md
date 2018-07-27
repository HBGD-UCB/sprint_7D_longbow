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
![](/tmp/36783c3c-eadc-434f-929a-6e6406363326/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/36783c3c-eadc-434f-929a-6e6406363326/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                3.6323800   3.5384951   3.7262649
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                3.5108652   3.2939552   3.7277751
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                3.4945473   3.3578616   3.6312331
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                3.7306968   3.5542923   3.9071013
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                3.5424058   3.3069894   3.7778222
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                3.7913607   3.6025850   3.9801363
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                3.3534672   3.2718305   3.4351038
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                3.6521293   3.5770358   3.7272228
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                3.6310867   3.5769726   3.6852008
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                3.5915526   3.5251351   3.6579701
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 NA                2.8132559   2.6818884   2.9446234
0-3 months     ki1119695-PROBIT           BELARUS       <25                  NA                2.8739677   2.7630404   2.9848949
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                2.8142168   2.6961914   2.9322421
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                2.8271888   2.7123779   2.9419996
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                2.5830843   2.5153724   2.6507962
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                2.6926907   2.5718447   2.8135368
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                2.7245124   2.6360661   2.8129587
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                2.5253565   2.4269850   2.6237281
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                1.9217371   1.8477505   1.9957236
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                1.8926273   1.6795496   2.1057050
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                1.9056882   1.7682563   2.0431201
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                1.9023503   1.7589779   2.0457226
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                1.7917742   1.4557970   2.1277514
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                1.8964764   1.7512588   2.0416941
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 NA                2.1344972   1.9664696   2.3025249
3-6 months     ki0047075b-MAL-ED          PERU          <25                  NA                1.8217963   1.4800023   2.1635904
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              NA                2.1985747   1.9422203   2.4549290
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              NA                1.6696880   1.4973765   1.8419995
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                1.8868467   1.8066756   1.9670177
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                2.0070724   1.9288053   2.0853395
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                1.9131363   1.8643484   1.9619242
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                1.9311633   1.8183438   2.0439829
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 NA                2.0705601   2.0155745   2.1255458
3-6 months     ki1119695-PROBIT           BELARUS       <25                  NA                2.1207390   2.0828046   2.1586733
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                2.0913044   2.0414322   2.1411766
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                2.0551352   2.0025898   2.1076805
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                1.7243168   1.6738752   1.7747583
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                1.8264062   1.7436403   1.9091722
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                1.7821696   1.7220569   1.8422824
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                1.7496169   1.6835644   1.8156695
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                1.0798818   1.0427466   1.1170170
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                1.2388907   1.1608417   1.3169396
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                1.1009693   1.0471039   1.1548347
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 NA                1.2145819   1.1562209   1.2729429
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              NA                1.1380013   1.0353890   1.2406135
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              NA                1.1701477   1.1055187   1.2347767
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                1.1109046   1.0242347   1.1975745
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                1.1145113   1.0832131   1.1458094
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                1.1135914   1.0793458   1.1478369
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                1.0441463   1.0218240   1.0664686
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                1.0404536   0.8835699   1.1973374
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                1.1775749   0.9051479   1.4500020
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.9551611   0.8420901   1.0682321
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.9492183   0.8450845   1.0533522
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 NA                1.4659932   1.4304268   1.5015595
6-12 months    ki1119695-PROBIT           BELARUS       <25                  NA                1.4705261   1.4291558   1.5118963
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                1.4717818   1.4258321   1.5177315
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                1.4663457   1.4325206   1.5001707
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                1.0252173   0.9976894   1.0527453
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                1.0463226   1.0001357   1.0925095
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                1.0188240   0.9856217   1.0520263
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.9890211   0.9508345   1.0272078
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                1.0549927   1.0263973   1.0835880
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                1.0902120   1.0656394   1.1147846
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                1.0662627   1.0442063   1.0883191
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                1.0516030   1.0272941   1.0759118
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                1.3550902   1.2356528   1.4745277
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  NA                1.2368900   1.1139639   1.3598160
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                1.2794817   0.9965429   1.5624204
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                1.2762838   1.1780431   1.3745244
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.8450791   0.8221625   0.8679957
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.8216077   0.7616332   0.8815822
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.8604098   0.8229026   0.8979170
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 NA                0.8436701   0.8086874   0.8786528
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              NA                0.8495177   0.7727102   0.9263252
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              NA                0.8629036   0.8312791   0.8945280
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.8779917   0.8091880   0.9467954
12-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.8613710   0.7887360   0.9340061
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.8450463   0.7953488   0.8947439
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.8813713   0.8041480   0.9585947
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7991266   0.7820856   0.8161676
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.7902293   0.7635761   0.8168825
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.7585035   0.7368636   0.7801434
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.7639739   0.7385606   0.7893871
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.7024560   0.6859338   0.7189781
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.6996735   0.6854594   0.7138876
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.7075484   0.6943588   0.7207379
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.7129851   0.6969492   0.7290209
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.8370074   0.7792434   0.8947714
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.9247669   0.8576924   0.9918413
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.7264656   0.6312401   0.8216910
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.8590948   0.7440569   0.9741327


### Parameter: E(Y)


agecat         studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    NA                   NA                3.5888777   3.5145520   3.6632034
0-3 months     ki0047075b-MAL-ED          NEPAL         NA                   NA                3.7328856   3.6136585   3.8521128
0-3 months     ki1000304b-SAS-CompFeed    INDIA         NA                   NA                3.6022342   3.5739584   3.6305100
0-3 months     ki1119695-PROBIT           BELARUS       NA                   NA                2.8363715   2.7230464   2.9496966
0-3 months     ki1135781-COHORTS          GUATEMALA     NA                   NA                2.6164613   2.5719057   2.6610169
3-6 months     ki0047075b-MAL-ED          BANGLADESH    NA                   NA                1.9151881   1.8526222   1.9777540
3-6 months     ki0047075b-MAL-ED          NEPAL         NA                   NA                1.8860484   1.7866718   1.9854250
3-6 months     ki0047075b-MAL-ED          PERU          NA                   NA                2.0391824   1.9190819   2.1592828
3-6 months     ki1000304b-SAS-CompFeed    INDIA         NA                   NA                1.9401040   1.8974682   1.9827398
3-6 months     ki1119695-PROBIT           BELARUS       NA                   NA                2.0923463   2.0510631   2.1336294
3-6 months     ki1135781-COHORTS          GUATEMALA     NA                   NA                1.7566595   1.7253717   1.7879472
6-12 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                1.1000336   1.0701340   1.1299332
6-12 months    ki0047075b-MAL-ED          NEPAL         NA                   NA                1.1874519   1.1469747   1.2279292
6-12 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                1.0994077   1.0886490   1.1101664
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1119695-PROBIT           BELARUS       NA                   NA                1.4697464   1.4316817   1.5078110
6-12 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                1.0185687   1.0012009   1.0359366
6-12 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                1.0672226   1.0548911   1.0795541
6-12 months    ki1148112-LCNI-5           MALAWI        NA                   NA                1.2956565   1.2080181   1.3832950
12-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.8462936   0.8276071   0.8649800
12-24 months   ki0047075b-MAL-ED          NEPAL         NA                   NA                0.8519576   0.8288134   0.8751019
12-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.8606477   0.8070689   0.9142264
12-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7806173   0.7696290   0.7916055
12-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.7056723   0.6982628   0.7130818
12-24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.8389480   0.7933802   0.8845158


### Parameter: ATE


agecat         studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.1215148   -0.3578711    0.1148415
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.1378327   -0.3036560    0.0279907
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.1882910   -0.4824668    0.1058849
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.0606639   -0.1977056    0.3190334
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.2986621    0.1642393    0.4330850
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.2776196    0.1874649    0.3677742
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.2380854    0.1586000    0.3175708
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0607118   -0.0010067    0.1224302
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35               0.0009609   -0.0600647    0.0619864
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0139329   -0.0556822    0.0835479
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.1096064   -0.0289167    0.2481296
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.1414281    0.0300384    0.2528177
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0577278   -0.1771508    0.0616953
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0291098   -0.2546671    0.1964476
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.0160489   -0.1721307    0.1400330
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.1105761   -0.4758654    0.2547133
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0058739   -0.2099420    0.1981943
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU          <25                  >=35              -0.3127009   -0.6935637    0.0681619
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              >=35               0.0640775   -0.2424366    0.3705915
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              >=35              -0.4648092   -0.7054844   -0.2241340
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.1202258    0.0017627    0.2386888
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.0262896   -0.0719800    0.1245593
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.0443167   -0.0868721    0.1755054
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0501788    0.0097554    0.0906023
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35               0.0207443   -0.0311151    0.0726037
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0154250   -0.0601545    0.0293045
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.1020895    0.0051640    0.1990150
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0578528   -0.0206194    0.1363251
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35               0.0253002   -0.0578099    0.1084103
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35               0.1590089    0.0725759    0.2454419
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35               0.0210875   -0.0443381    0.0865130
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0765806   -0.1946284    0.0414672
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0444342   -0.1315141    0.0426457
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.0036066   -0.0702295    0.0774428
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.0026867   -0.0961767    0.1015501
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              -0.0667583   -0.1601924    0.0266758
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35               0.1371213   -0.1772495    0.4514921
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              -0.0852925   -0.2786770    0.1080920
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              -0.0912353   -0.2795339    0.0970634
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS       <25                  >=35               0.0045329   -0.0305028    0.0395687
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35               0.0057886   -0.0335952    0.0451723
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0003525   -0.0314177    0.0321227
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0211053   -0.0326630    0.0748735
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              -0.0063933   -0.0495231    0.0367364
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0361962   -0.0832707    0.0108783
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35               0.0352193   -0.0024835    0.0729222
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35               0.0112700   -0.0248433    0.0473834
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              -0.0033897   -0.0409212    0.0341418
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              -0.1182002   -0.2895949    0.0531944
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35              -0.0756086   -0.3827236    0.2315064
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              -0.0788065   -0.2334562    0.0758433
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0234715   -0.0876751    0.0407322
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35               0.0153307   -0.0286234    0.0592848
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              >=35               0.0058476   -0.0785513    0.0902466
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.0192334   -0.0279247    0.0663916
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              -0.0166207   -0.0942216    0.0609803
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0329454   -0.0961046    0.0302139
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0033797   -0.0904516    0.0972109
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              -0.0088973   -0.0405326    0.0227379
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              -0.0406231   -0.0681672   -0.0130789
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0351527   -0.0657506   -0.0045549
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              -0.0027824   -0.0245774    0.0190125
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35               0.0050924   -0.0160487    0.0262335
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35               0.0105291   -0.0124954    0.0335536
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35               0.0877595   -0.0007598    0.1762787
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              -0.1105418   -0.2219176    0.0008339
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35               0.0220874   -0.1066387    0.1508134
