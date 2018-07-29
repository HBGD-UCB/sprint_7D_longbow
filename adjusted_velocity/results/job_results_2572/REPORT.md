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
![](/tmp/71a037ac-698c-4884-8f60-3e29a26af11d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/71a037ac-698c-4884-8f60-3e29a26af11d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                4.1419494   3.9992442   4.2846545
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                5.2263899   5.1170031   5.3357768
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                4.7005090   4.5502402   4.8507778
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                4.5768606   4.3419037   4.8118176
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                5.2470824   5.0935228   5.4006420
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                4.8176237   4.5993354   5.0359120
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                3.1272191   3.1038818   3.1505564
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                4.0246813   3.9905863   4.0587763
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                3.7812703   3.7419535   3.8205871
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                3.5136182   3.4907889   3.5364475
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 NA                2.8461051   2.7439647   2.9482454
0-3 months     ki1119695-PROBIT           BELARUS       <25                  NA                2.8707691   2.7899651   2.9515730
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                2.7974119   2.6904744   2.9043494
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                2.8558141   2.7655308   2.9460975
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                2.5615974   2.5138501   2.6093447
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                2.6361379   2.5834971   2.6887787
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                2.5657108   2.5140493   2.6173723
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                2.5686643   2.5092952   2.6280333
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                1.7799487   1.7141323   1.8457651
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                1.1512784   1.1004796   1.2020771
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                1.3419430   1.2697153   1.4141707
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 NA                2.2414557   2.1242201   2.3586912
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              NA                2.4655540   2.3602731   2.5708349
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              NA                2.2389723   2.1329741   2.3449705
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 NA                2.5763774   2.4143189   2.7384358
3-6 months     ki0047075b-MAL-ED          PERU          <25                  NA                3.6303341   3.5095241   3.7511442
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              NA                3.3529314   3.1803352   3.5255277
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              NA                2.2443068   2.1448822   2.3437314
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                2.5279744   2.4912140   2.5647348
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  NA                2.7359982   2.6502133   2.8217831
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                2.0008825   1.9794839   2.0222811
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                2.2384729   2.1953799   2.2815658
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 NA                2.1351904   2.0893568   2.1810241
3-6 months     ki1119695-PROBIT           BELARUS       <25                  NA                2.1518331   2.1192023   2.1844639
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              NA                2.0971377   2.0524061   2.1418693
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              NA                2.0380237   1.9940817   2.0819656
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 NA                1.6863708   1.6485571   1.7241845
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  NA                2.0932082   2.0538020   2.1326145
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              NA                1.7696989   1.7386967   1.8007011
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              NA                1.6887992   1.6464514   1.7311469
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.9243555   0.8789027   0.9698084
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.6744066   0.6393470   0.7094662
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.7103766   0.6722643   0.7484889
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 NA                0.9945037   0.9374800   1.0515274
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              NA                0.8337923   0.8037521   0.8638325
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              NA                0.9398352   0.8897754   0.9898950
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.4181496   0.3730537   0.4632456
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                1.0459261   1.0260065   1.0658456
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                1.1293259   1.1106807   1.1479712
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.9793461   0.9679755   0.9907168
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.8712853   0.8061490   0.9364215
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                1.1594650   1.0895330   1.2293970
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.8018374   0.7405237   0.8631512
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.7374210   0.6861711   0.7886708
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 NA                1.4846974   1.4526727   1.5167220
6-12 months    ki1119695-PROBIT           BELARUS       <25                  NA                1.4386238   1.4056571   1.4715904
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                1.4742361   1.4316610   1.5168112
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                1.4766408   1.4457166   1.5075650
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.9904282   0.9709712   1.0098852
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                1.1735748   1.1567196   1.1904299
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                1.0462229   1.0291043   1.0633416
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.9791000   0.9504351   1.0077649
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                1.0484898   1.0246597   1.0723199
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                1.0810992   1.0594610   1.1027373
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                1.0604476   1.0378103   1.0830849
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                1.0591636   1.0358520   1.0824752
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                1.3230064   1.2355777   1.4104350
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  NA                1.2353253   1.1536794   1.3169712
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                1.3523796   1.2095452   1.4952141
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                1.2636074   1.1977364   1.3294784
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.7691850   0.7450737   0.7932962
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.6274251   0.6153820   0.6394682
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.6657112   0.6460432   0.6853792
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 NA                0.7203293   0.6885832   0.7520755
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              NA                0.6340462   0.6129242   0.6551681
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              NA                0.7082148   0.6772719   0.7391576
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                1.0668433   1.0163227   1.1173640
12-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.8283615   0.7848076   0.8719153
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.8315257   0.7902805   0.8727710
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.9191209   0.8724836   0.9657582
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7421311   0.7277599   0.7565023
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.6816582   0.6715948   0.6917216
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.6241341   0.6071725   0.6410957
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.6672888   0.6496968   0.6848807
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.7196622   0.7055983   0.7337261
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.7091496   0.6974678   0.7208315
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.7054049   0.6937640   0.7170457
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.7130420   0.6988819   0.7272022
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.7937448   0.7491453   0.8383444
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.8989952   0.8546488   0.9433416
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.6312675   0.5692781   0.6932569
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.7942242   0.7219174   0.8665309


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35               1.0844406    0.8632306    1.3056505
0-3 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35               0.5585596    0.2986161    0.8185031
0-3 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35               0.6702218    0.3510939    0.9893496
0-3 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35               0.2407631   -0.1729839    0.6545100
0-3 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.8974622    0.8556863    0.9392381
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.6540512    0.6141485    0.6939540
0-3 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.3863991    0.3569122    0.4158859
0-3 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0246640   -0.0368015    0.0861295
0-3 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0486931   -0.1207709    0.0233847
0-3 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35               0.0097091   -0.0660200    0.0854382
0-3 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.0745405    0.0063380    0.1427430
0-3 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0041134   -0.0634389    0.0716657
0-3 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35               0.0070669   -0.0660964    0.0802301
3-6 months     ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.6286703   -0.7230604   -0.5342802
3-6 months     ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.4380058   -0.5439686   -0.3320430
3-6 months     ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL         [25-30)              >=35               0.2240983    0.0555735    0.3926231
3-6 months     ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0024834   -0.1726469    0.1676801
3-6 months     ki0047075b-MAL-ED          PERU          >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU          <25                  >=35               1.0539568    0.8293237    1.2785899
3-6 months     ki0047075b-MAL-ED          PERU          [25-30)              >=35               0.7765541    0.5001243    1.0529838
3-6 months     ki0047075b-MAL-ED          PERU          [30-35)              >=35              -0.3320705   -0.5432646   -0.1208765
3-6 months     ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.2080238    0.0988896    0.3171580
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              -0.5270919   -0.5805351   -0.4736488
3-6 months     ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              -0.2895015   -0.3372149   -0.2417882
3-6 months     ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS       <25                  >=35               0.0166427   -0.0280447    0.0613300
3-6 months     ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0380527   -0.0961291    0.0200237
3-6 months     ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0971668   -0.1504289   -0.0439047
3-6 months     ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.4068374    0.3531928    0.4604820
3-6 months     ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0833281    0.0346698    0.1319863
3-6 months     ki1135781-COHORTS          GUATEMALA     [30-35)              >=35               0.0024283   -0.0540787    0.0589354
6-12 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.2499489   -0.3196871   -0.1802107
6-12 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.2139789   -0.2883416   -0.1396162
6-12 months    ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.1607114   -0.2317157   -0.0897071
6-12 months    ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0546685   -0.1483430    0.0390059
6-12 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35               0.6277764    0.5779306    0.6776223
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35               0.7111763    0.6738509    0.7485017
6-12 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35               0.5611965    0.5165310    0.6058621
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35               0.2881797    0.1964435    0.3799160
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              -0.0694479   -0.1553026    0.0164069
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              -0.1338643   -0.2143406   -0.0533880
6-12 months    ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS       <25                  >=35              -0.0460736   -0.0736335   -0.0185136
6-12 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.0104613   -0.0518216    0.0308990
6-12 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.0080566   -0.0418818    0.0257687
6-12 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35               0.1831465    0.1594206    0.2068725
6-12 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35               0.0557947    0.0310877    0.0805016
6-12 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0113282   -0.0451407    0.0224843
6-12 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35               0.0326094    0.0005664    0.0646523
6-12 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35               0.0119578   -0.0207264    0.0446420
6-12 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35               0.0106738   -0.0224802    0.0438278
6-12 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              -0.0876811   -0.1835751    0.0082130
6-12 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35               0.0293732   -0.1011832    0.1599297
6-12 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              -0.0593990   -0.1412926    0.0224947
12-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              -0.1417598   -0.1718361   -0.1116836
12-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              -0.1034737   -0.1416656   -0.0652819
12-24 months   ki0047075b-MAL-ED          NEPAL         >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL         [25-30)              >=35              -0.0862831   -0.1286108   -0.0439555
12-24 months   ki0047075b-MAL-ED          NEPAL         [30-35)              >=35              -0.0121146   -0.0680967    0.0438676
12-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              -0.2384819   -0.3016694   -0.1752943
12-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              -0.2353176   -0.2947588   -0.1758764
12-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              -0.1477224   -0.2112939   -0.0841509
12-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              -0.0604729   -0.0791685   -0.0417773
12-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              -0.1179970   -0.1416197   -0.0943744
12-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              -0.0748424   -0.0982405   -0.0514442
12-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              -0.0105126   -0.0286854    0.0076602
12-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              -0.0142574   -0.0323995    0.0038847
12-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              -0.0066202   -0.0264523    0.0132119
12-24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35               0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35               0.1052504    0.0427687    0.1677321
12-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              -0.1624773   -0.2392135   -0.0857412
12-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35               0.0004794   -0.0842111    0.0851698
