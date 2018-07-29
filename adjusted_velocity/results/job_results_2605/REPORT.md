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



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8d39c763-012c-476f-b5c5-2582ac4f8793/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8d39c763-012c-476f-b5c5-2582ac4f8793/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.2394988    0.1717633    0.3072344
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                 0.7324133    0.6797485    0.7850782
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                 0.4794463    0.4077799    0.5511127
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                 0.4298323    0.3200140    0.5396505
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                 0.7390903    0.6712244    0.8069561
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                 0.5388966    0.4381999    0.6395933
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.4167617   -0.4399039   -0.3936195
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                 0.0692853    0.0603381    0.0782326
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                 0.0677549    0.0499048    0.0856049
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                -0.0948399   -0.1093173   -0.0803626
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 NA                -0.4366836   -0.4886979   -0.3846694
0-3 months     ki1119695-PROBIT           BELARUS       <25                  NA                -0.4182414   -0.4590818   -0.3774011
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                -0.4581584   -0.5136950   -0.4026218
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                -0.4253987   -0.4725965   -0.3782010
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.5525427   -0.5753524   -0.5297330
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.4467575   -0.4725275   -0.4209876
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.5350340   -0.5603486   -0.5097193
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.5512714   -0.5809892   -0.5215536
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.0815903   -0.1105239   -0.0526566
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.3608210   -0.3840521   -0.3375899
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.2835628   -0.3159805   -0.2511450
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                 0.1384430    0.0807607    0.1961254
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                 0.3166615    0.2726149    0.3607082
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                 0.1695185    0.1167521    0.2222849
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 NA                 0.2734576    0.1983990    0.3485161
3-6 months     ki0047075b-MAL-ED          PERU          <25                  NA                 0.7984097    0.7412495    0.8555700
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              NA                 0.6509014    0.5689406    0.7328621
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              NA                 0.1229275    0.0780656    0.1677893
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.2249590    0.2112642    0.2386538
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                 0.2647046    0.2314152    0.2979940
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                -0.0202662   -0.0327135   -0.0078188
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                 0.0667156    0.0508216    0.0826095
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0664816    0.0458443    0.0871189
3-6 months     ki1119695-PROBIT           BELARUS       <25                  NA                 0.0748495    0.0597445    0.0899546
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                 0.0502610    0.0295393    0.0709827
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                 0.0233451    0.0018882    0.0448019
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1164756   -0.1337321   -0.0992191
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                 0.0436377    0.0255857    0.0616896
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.0814014   -0.0951263   -0.0676764
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.1170460   -0.1361479   -0.0979441
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.1579495   -0.1760778   -0.1398212
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.2517628   -0.2662588   -0.2372667
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.2393634   -0.2547500   -0.2239768
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 NA                -0.1394573   -0.1623353   -0.1165794
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              NA                -0.2046902   -0.2171964   -0.1921839
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              NA                -0.1602609   -0.1810251   -0.1394968
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.3819094   -0.4030384   -0.3607804
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                -0.1501356   -0.1609088   -0.1393624
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                -0.0826601   -0.0899628   -0.0753575
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                -0.1577632   -0.1620988   -0.1534277
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.1512193   -0.1784205   -0.1240181
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                 0.0411826    0.0111906    0.0711745
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                -0.1899410   -0.2158051   -0.1640769
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                -0.2159050   -0.2376002   -0.1942098
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0483217    0.0349129    0.0617305
6-12 months    ki1119695-PROBIT           BELARUS       <25                  NA                 0.0303241    0.0161192    0.0445290
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                 0.0443171    0.0256214    0.0630127
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                 0.0445959    0.0309561    0.0582358
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1252995   -0.1333493   -0.1172496
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0617679   -0.0685721   -0.0549636
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.1033721   -0.1105997   -0.0961445
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.1268378   -0.1384333   -0.1152423
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1048061   -0.1149033   -0.0947090
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.1006293   -0.1099114   -0.0913471
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                -0.1051776   -0.1147239   -0.0956314
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                -0.1040387   -0.1140114   -0.0940661
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0062400   -0.0241292    0.0366092
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  NA                -0.0262512   -0.0557263    0.0032239
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                 0.0112281   -0.0344478    0.0569040
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                -0.0171404   -0.0425567    0.0082760
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.0409445   -0.0483763   -0.0335128
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                -0.0845550   -0.0885362   -0.0805737
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                -0.0726717   -0.0792253   -0.0661181
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 NA                -0.0749563   -0.0852689   -0.0646436
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              NA                -0.0999462   -0.1074374   -0.0924550
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              NA                -0.0759220   -0.0864477   -0.0653963
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0123214   -0.0003259    0.0249686
12-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                -0.0517427   -0.0654085   -0.0380768
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                -0.0518245   -0.0675698   -0.0360792
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                -0.0203071   -0.0346537   -0.0059605
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0363980   -0.0406866   -0.0321095
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                -0.0271797   -0.0300444   -0.0243149
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                -0.0448184   -0.0487246   -0.0409122
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                -0.0394541   -0.0449053   -0.0340029
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0507627   -0.0552422   -0.0462833
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                -0.0620030   -0.0659116   -0.0580943
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                -0.0582387   -0.0622829   -0.0541944
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                -0.0558455   -0.0605797   -0.0511114
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0102565   -0.0102343    0.0307472
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                 0.0493891    0.0287470    0.0700312
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                 0.0007903   -0.0221681    0.0237487
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                 0.0408565    0.0190043    0.0627086


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35               0.4929145    0.3869923    0.5988368
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35               0.2399475    0.1171974    0.3626976
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35               0.3092580    0.1629615    0.4555545
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.1090643   -0.0829938    0.3011225
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.4860471    0.4611070    0.5109871
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.4845166    0.4579903    0.5110429
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.3219218    0.3021499    0.3416937
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0184422   -0.0130014    0.0498859
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0214748   -0.0590628    0.0161133
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0112849   -0.0268119    0.0493817
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.1057851    0.0729062    0.1386641
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0175087   -0.0148978    0.0499153
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35               0.0012713   -0.0345814    0.0371239
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.2792308   -0.3202477   -0.2382138
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.2019725   -0.2484420   -0.1555030
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35               0.1782185    0.0978966    0.2585404
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.0310754   -0.0573375    0.1194884
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU          <25                  >=35               0.5249522    0.4199033    0.6300011
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              >=35               0.3774438    0.2479125    0.5069752
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              >=35              -0.1505301   -0.2469094   -0.0541508
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.0397456   -0.0023436    0.0818348
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              -0.2452252   -0.2678686   -0.2225817
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              -0.1582434   -0.1783892   -0.1380976
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0083680   -0.0114097    0.0281456
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0162206   -0.0418903    0.0094492
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0431365   -0.0679541   -0.0183189
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.1601133    0.1365809    0.1836457
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0350743    0.0144410    0.0557076
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0005703   -0.0249116    0.0237710
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0938133   -0.1220068   -0.0656198
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.0814139   -0.1111714   -0.0516565
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0652329   -0.0941200   -0.0363457
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0208036   -0.0590803    0.0174730
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.2317738    0.2052263    0.2583213
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.2992493    0.2816636    0.3168350
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.2241462    0.2044898    0.2438026
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35               0.1924019    0.1531324    0.2316713
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              -0.0387217   -0.0755375   -0.0019059
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              -0.0646857   -0.0991482   -0.0302231
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS       <25                  >=35              -0.0179976   -0.0294136   -0.0065816
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0040046   -0.0224462    0.0144369
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0037257   -0.0190624    0.0116109
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0635316    0.0536984    0.0733648
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0219274    0.0115903    0.0322645
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0015383   -0.0153616    0.0122849
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35               0.0041769   -0.0094805    0.0178342
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              -0.0003715   -0.0142001    0.0134572
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35               0.0007674   -0.0133680    0.0149028
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              -0.0324912   -0.0550492   -0.0099331
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35               0.0049881   -0.0234324    0.0334086
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              -0.0233804   -0.0402666   -0.0064941
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.0436104   -0.0530586   -0.0341622
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.0317271   -0.0438409   -0.0196134
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0249899   -0.0391366   -0.0108432
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0009657   -0.0194524    0.0175209
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              -0.0640640   -0.0808904   -0.0472376
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0641459   -0.0833920   -0.0448997
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0326285   -0.0494473   -0.0158097
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0092184    0.0043604    0.0140764
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              -0.0084204   -0.0140689   -0.0027719
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0030560   -0.0097520    0.0036400
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              -0.0112402   -0.0171550   -0.0053255
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              -0.0074759   -0.0134814   -0.0014704
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              -0.0050828   -0.0115802    0.0014146
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35               0.0391327    0.0092956    0.0689698
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              -0.0094662   -0.0410482    0.0221158
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35               0.0306000   -0.0000691    0.0612691
