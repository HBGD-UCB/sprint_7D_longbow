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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        gagebrth     n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       239     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259            148     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       315     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287            18     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      5937   16862
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259           3173   16862
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)      4445   16862
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287          3307   16862
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)      9366   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)      2363   12745
0-3 months     ki1119695-PROBIT           BELARUS                        >=287          1016   12745
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)       478    1232
0-3 months     ki1101329-Keneba           GAMBIA                         <259            125    1232
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)       488    1232
0-3 months     ki1101329-Keneba           GAMBIA                         >=287           141    1232
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)       224     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259             69     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)        79     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287           179     551
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)        34      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259              8      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        21      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287            23      86
0-3 months     ki1000108-IRC              INDIA                          [273-287)       151     359
0-3 months     ki1000108-IRC              INDIA                          <259             36     359
0-3 months     ki1000108-IRC              INDIA                          [259-273)        85     359
0-3 months     ki1000108-IRC              INDIA                          >=287            87     359
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [273-287)        32    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <259            926    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [259-273)       202    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=287             1    1161
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)       506    1274
0-3 months     ki1135781-COHORTS          INDIA                          <259            178    1274
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)       283    1274
0-3 months     ki1135781-COHORTS          INDIA                          >=287           307    1274
0-3 months     ki1000109-EE               PAKISTAN                       [273-287)        19     297
0-3 months     ki1000109-EE               PAKISTAN                       <259            192     297
0-3 months     ki1000109-EE               PAKISTAN                       [259-273)        85     297
0-3 months     ki1000109-EE               PAKISTAN                       >=287             1     297
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       226     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259            144     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       308     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287            17     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      3388    9519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259           1681    9519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)      2493    9519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287          1957    9519
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)      9753   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)      2492   13309
3-6 months     ki1119695-PROBIT           BELARUS                        >=287          1064   13309
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)       358     949
3-6 months     ki1101329-Keneba           GAMBIA                         <259            101     949
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)       383     949
3-6 months     ki1101329-Keneba           GAMBIA                         >=287           107     949
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)       253     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259             82     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)        95     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287           196     626
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)       116     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259             40     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        64     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287            68     288
3-6 months     ki1000108-IRC              INDIA                          [273-287)       161     379
3-6 months     ki1000108-IRC              INDIA                          <259             40     379
3-6 months     ki1000108-IRC              INDIA                          [259-273)        89     379
3-6 months     ki1000108-IRC              INDIA                          >=287            89     379
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [273-287)        30    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <259            890    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [259-273)       194    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=287             2    1116
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)       510    1280
3-6 months     ki1135781-COHORTS          INDIA                          <259            189    1280
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)       284    1280
3-6 months     ki1135781-COHORTS          INDIA                          >=287           297    1280
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <259              1     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [259-273)       467     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=287             3     471
3-6 months     ki1000109-EE               PAKISTAN                       [273-287)        19     331
3-6 months     ki1000109-EE               PAKISTAN                       <259            212     331
3-6 months     ki1000109-EE               PAKISTAN                       [259-273)        99     331
3-6 months     ki1000109-EE               PAKISTAN                       >=287             1     331
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)       615    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259            223    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)       329    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287           395    1562
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       215     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259            143     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       301     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287            17     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      2701    7559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259           1359    7559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)      1979    7559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287          1520    7559
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)      9417   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)      2438   12896
6-12 months    ki1119695-PROBIT           BELARUS                        >=287          1041   12896
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)       327     902
6-12 months    ki1101329-Keneba           GAMBIA                         <259            102     902
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)       373     902
6-12 months    ki1101329-Keneba           GAMBIA                         >=287           100     902
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)       266     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259             82     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)        96     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287           207     651
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)       127     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259             42     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        63     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287            71     303
6-12 months    ki1000108-IRC              INDIA                          [273-287)       161     381
6-12 months    ki1000108-IRC              INDIA                          <259             40     381
6-12 months    ki1000108-IRC              INDIA                          [259-273)        90     381
6-12 months    ki1000108-IRC              INDIA                          >=287            90     381
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)        30    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <259            902    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)       195    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=287             3    1130
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)       445    1104
6-12 months    ki1135781-COHORTS          INDIA                          <259            162    1104
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)       250    1104
6-12 months    ki1135781-COHORTS          INDIA                          >=287           247    1104
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <259              1     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)       472     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=287             2     475
6-12 months    ki1000109-EE               PAKISTAN                       <259              4       4
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)       933    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259            359    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)       670    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287           436    2398
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)       404    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259            132    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)       214    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287           268    1018
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       147     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259            106     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       227     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287            15     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      1278    3576
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259            681    3576
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)       917    3576
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287           700    3576
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)      1845    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)       499    2533
12-24 months   ki1119695-PROBIT           BELARUS                        >=287           189    2533
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)       297     818
12-24 months   ki1101329-Keneba           GAMBIA                         <259             83     818
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)       332     818
12-24 months   ki1101329-Keneba           GAMBIA                         >=287           106     818
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)       258     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259             78     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)        95     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287           210     641
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)       127     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259             42     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        62     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287            73     304
12-24 months   ki1000108-IRC              INDIA                          [273-287)       157     377
12-24 months   ki1000108-IRC              INDIA                          <259             40     377
12-24 months   ki1000108-IRC              INDIA                          [259-273)        90     377
12-24 months   ki1000108-IRC              INDIA                          >=287            90     377
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)       433    1065
12-24 months   ki1135781-COHORTS          INDIA                          <259            158    1065
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)       240    1065
12-24 months   ki1135781-COHORTS          INDIA                          >=287           234    1065
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)       365     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=287             2     367
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)       875    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259            339    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)       613    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287           415    2242
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)         2       2


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/6d0c6b8e-c841-4f78-b31f-3e9ec6d3ce1f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6d0c6b8e-c841-4f78-b31f-3e9ec6d3ce1f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0050540   -0.1450702    0.1349621
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                 0.1955751   -0.0649707    0.4561210
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0928483   -0.2675175    0.0818209
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.1521187   -0.3374958    0.0332585
0-3 months     ki1000108-IRC              INDIA                          [273-287)            NA                -0.2530559   -0.3405381   -0.1655737
0-3 months     ki1000108-IRC              INDIA                          <259                 NA                -0.2981082   -0.4587920   -0.1374244
0-3 months     ki1000108-IRC              INDIA                          [259-273)            NA                -0.3831024   -0.4906780   -0.2755268
0-3 months     ki1000108-IRC              INDIA                          >=287                NA                -0.1583718   -0.2692905   -0.0474531
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.1226443   -0.1528971   -0.0923915
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                -0.0889766   -0.1250151   -0.0529382
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                -0.1245988   -0.1497645   -0.0994330
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                -0.1562572   -0.2441890   -0.0683254
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.3027931   -0.3370708   -0.2685154
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 NA                -0.1125534   -0.1733839   -0.0517229
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.2768003   -0.3089441   -0.2446566
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                NA                -0.2588210   -0.3180558   -0.1995862
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.4424435   -0.5027772   -0.3821099
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                -0.4020848   -0.4674164   -0.3367533
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                NA                -0.4586226   -0.5147443   -0.4025010
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.5535814   -0.5896648   -0.5174981
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.5434730   -0.6151409   -0.4718052
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.5021650   -0.5533051   -0.4510248
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.5414365   -0.5831963   -0.4996767
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0525500   -0.0778126   -0.0272873
0-3 months     ki1135781-COHORTS          INDIA                          <259                 NA                -0.0557906   -0.0954879   -0.0160933
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0580982   -0.0870134   -0.0291830
0-3 months     ki1135781-COHORTS          INDIA                          >=287                NA                -0.0894323   -0.1177443   -0.0611203
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0609955    0.0535457    0.0684454
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                 0.1159400    0.1054959    0.1263840
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                 0.0945255    0.0856499    0.1034010
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                 0.0295795    0.0196938    0.0394651
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.1438967   -0.2251646   -0.0626288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                -0.0540110   -0.1785025    0.0704806
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0288954   -0.1054419    0.0476512
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.1267945   -0.2322269   -0.0213620
3-6 months     ki1000108-IRC              INDIA                          [273-287)            NA                -0.0715844   -0.1182633   -0.0249055
3-6 months     ki1000108-IRC              INDIA                          <259                 NA                -0.0630354   -0.1475278    0.0214571
3-6 months     ki1000108-IRC              INDIA                          [259-273)            NA                -0.0421049   -0.1028293    0.0186195
3-6 months     ki1000108-IRC              INDIA                          >=287                NA                -0.0678302   -0.1215617   -0.0140988
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                 0.0009058   -0.0256670    0.0274787
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                 0.0838266    0.0495781    0.1180751
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                 0.0202845   -0.0029797    0.0435487
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                 0.0304215   -0.0631457    0.1239886
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0890912   -0.1144610   -0.0637214
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                -0.0573907   -0.1020903   -0.0126912
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                -0.0786202   -0.1141974   -0.0430431
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                -0.1040247   -0.1353137   -0.0727357
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0696102   -0.1012783   -0.0379422
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 NA                 0.0154110   -0.0248042    0.0556261
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.0355208   -0.0621922   -0.0088494
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                NA                -0.1426909   -0.1983389   -0.0870429
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0415501    0.0206825    0.0624176
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                 0.0860915    0.0622223    0.1099607
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                NA                 0.0153098   -0.0112556    0.0418751
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.1025022   -0.1239036   -0.0811009
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.1107943   -0.1498755   -0.0717130
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.0720654   -0.1043498   -0.0397811
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.1148721   -0.1399759   -0.0897684
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0735707   -0.0929692   -0.0541722
3-6 months     ki1135781-COHORTS          INDIA                          <259                 NA                -0.0333364   -0.0654407   -0.0012321
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0344622   -0.0578009   -0.0111236
3-6 months     ki1135781-COHORTS          INDIA                          >=287                NA                -0.0724766   -0.0956845   -0.0492687
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0291440   -0.0382666   -0.0200214
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                 0.0447302    0.0328357    0.0566247
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                 0.0079409   -0.0018734    0.0177553
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                -0.0315865   -0.0425205   -0.0206525
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.1117040   -0.1430176   -0.0803903
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                -0.0968985   -0.1400642   -0.0537327
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.1189376   -0.1593592   -0.0785160
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.1188278   -0.1570988   -0.0805568
6-12 months    ki1000108-IRC              INDIA                          [273-287)            NA                -0.0255975   -0.0453541   -0.0058408
6-12 months    ki1000108-IRC              INDIA                          <259                 NA                -0.0251207   -0.0622256    0.0119841
6-12 months    ki1000108-IRC              INDIA                          [259-273)            NA                -0.0160066   -0.0401994    0.0081862
6-12 months    ki1000108-IRC              INDIA                          >=287                NA                -0.0344890   -0.0607839   -0.0081941
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.0390973   -0.0510709   -0.0271237
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                -0.0145491   -0.0304993    0.0014011
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                -0.0247954   -0.0354124   -0.0141784
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                -0.0069555   -0.0505781    0.0366672
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0484185   -0.0618000   -0.0350370
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                -0.0805092   -0.1046643   -0.0563541
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                -0.0604168   -0.0816289   -0.0392046
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                -0.0689709   -0.0843460   -0.0535958
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0759367   -0.0898386   -0.0620348
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 NA                -0.0694242   -0.0866047   -0.0522437
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.0570112   -0.0693176   -0.0447047
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                NA                -0.0676486   -0.0856567   -0.0496405
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0402341    0.0236603    0.0568079
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            NA                 0.0586364    0.0415122    0.0757607
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                NA                 0.0176279   -0.0028184    0.0380741
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.1108706   -0.1234696   -0.0982716
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.1024875   -0.1243502   -0.0806249
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.0959414   -0.1139188   -0.0779640
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.1212987   -0.1341333   -0.1084641
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0808951   -0.0927147   -0.0690755
6-12 months    ki1135781-COHORTS          INDIA                          <259                 NA                -0.0793625   -0.0959102   -0.0628148
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0801936   -0.0942451   -0.0661420
6-12 months    ki1135781-COHORTS          INDIA                          >=287                NA                -0.1052636   -0.1175086   -0.0930186
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                -0.1003356   -0.1083175   -0.0923537
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                -0.0924258   -0.1042757   -0.0805759
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                -0.0964959   -0.1052802   -0.0877117
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                -0.1042936   -0.1148811   -0.0937061
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0816239   -0.0864409   -0.0768070
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                -0.0616617   -0.0677804   -0.0555431
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                -0.0765264   -0.0822287   -0.0708240
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                -0.0836165   -0.0902385   -0.0769946
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0408984   -0.0564066   -0.0253902
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                -0.0494467   -0.0818457   -0.0170477
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0625417   -0.0867482   -0.0383351
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.0416150   -0.0618788   -0.0213511
12-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                -0.0329864   -0.0460249   -0.0199479
12-24 months   ki1000108-IRC              INDIA                          <259                 NA                -0.0216564   -0.0397703   -0.0035425
12-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                -0.0304563   -0.0405020   -0.0204107
12-24 months   ki1000108-IRC              INDIA                          >=287                NA                -0.0291952   -0.0422017   -0.0161887
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.0130474   -0.0200053   -0.0060894
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                 0.0088089   -0.0002363    0.0178542
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                -0.0066796   -0.0124271   -0.0009320
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                -0.0224764   -0.0442104   -0.0007423
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0262403   -0.0334800   -0.0190006
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                -0.0281070   -0.0348936   -0.0213205
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.0187334   -0.0242600   -0.0132068
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                -0.0323946   -0.0418332   -0.0229559
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.0441931   -0.0624410   -0.0259451
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                -0.0396813   -0.0590974   -0.0202652
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                -0.0350661   -0.0642438   -0.0058884
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0344546   -0.0402891   -0.0286200
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.0271113   -0.0358207   -0.0184018
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.0364110   -0.0449229   -0.0278991
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.0382661   -0.0445524   -0.0319798
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0340605   -0.0387690   -0.0293520
12-24 months   ki1135781-COHORTS          INDIA                          <259                 NA                -0.0295583   -0.0373366   -0.0217800
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0360904   -0.0424883   -0.0296925
12-24 months   ki1135781-COHORTS          INDIA                          >=287                NA                -0.0336609   -0.0399716   -0.0273502
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                -0.0595856   -0.0635484   -0.0556228
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                -0.0568103   -0.0626576   -0.0509630
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                -0.0579639   -0.0623952   -0.0535326
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                -0.0583573   -0.0634908   -0.0532238
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0227857   -0.0257259   -0.0198455
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                -0.0167355   -0.0218336   -0.0116373
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                -0.0148534   -0.0180963   -0.0116105
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                -0.0219437   -0.0260492   -0.0178382


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0645622   -0.1717754    0.0426511
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2552533   -0.3120978   -0.1984087
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2869811   -0.3108317   -0.2631304
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5349474   -0.5599715   -0.5099233
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0630591   -0.0790628   -0.0470554
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0732196    0.0679849    0.0784544
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0963982   -0.1464314   -0.0463649
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0533200   -0.0841764   -0.0224636
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0857474   -0.1027530   -0.0687418
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0387574   -0.0597399   -0.0177750
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0990042   -0.1156213   -0.0823871
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0614636   -0.0743514   -0.0485759
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0072058   -0.0128771   -0.0015345
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0976775   -0.1183059   -0.0770491
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0262272   -0.0395135   -0.0129410
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0605003   -0.0699708   -0.0510298
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0633234   -0.0720864   -0.0545604
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1074247   -0.1156062   -0.0992433
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0891165   -0.0967571   -0.0814759
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0997523   -0.1048942   -0.0946103
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0767730   -0.0799829   -0.0735630
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0466658   -0.0572396   -0.0360921
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317691   -0.0390870   -0.0244512
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0203627   -0.0246735   -0.0160519
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0331016   -0.0373272   -0.0288759
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0339532   -0.0372308   -0.0306756
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576585   -0.0601967   -0.0551203
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0193640   -0.0214128   -0.0173152


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.2006292   -0.0943037    0.4955621
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0877943   -0.3111124    0.1355239
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.1470646   -0.3787152    0.0845860
0-3 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0450523   -0.2279618    0.1378571
0-3 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)         -0.1300465   -0.2683739    0.0082808
0-3 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.0946841   -0.0460622    0.2354303
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0336676   -0.0125596    0.0798948
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)         -0.0019545   -0.0399395    0.0360305
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0336129   -0.1262360    0.0590101
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.1902398    0.1208719    0.2596077
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0259928   -0.0198238    0.0718094
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.0439722   -0.0234674    0.1114117
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0403587    0.0113537    0.0693637
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0161791   -0.0625414    0.0301832
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0101084   -0.0701032    0.0903200
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0514165   -0.0111813    0.1140143
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)          0.0121450   -0.0430297    0.0673196
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0032406   -0.0496432    0.0431620
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0055482   -0.0431016    0.0320052
0-3 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0368824   -0.0741464    0.0003817
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0549444    0.0425478    0.0673410
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0335299    0.0228525    0.0442073
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0314161   -0.0431828   -0.0196494
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0898858   -0.0587923    0.2385638
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.1150014    0.0034106    0.2265921
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0171022   -0.1161512    0.1503557
3-6 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <259                 [273-287)          0.0085490   -0.0882565    0.1053546
3-6 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0294795   -0.0468761    0.1058351
3-6 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.0037541   -0.0670065    0.0745148
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0829208    0.0403723    0.1254692
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0193787   -0.0145450    0.0533023
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)          0.0295156   -0.0673722    0.1264034
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)          0.0317004   -0.0191890    0.0825899
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)          0.0104709   -0.0326172    0.0535591
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0149335   -0.0545501    0.0246830
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0850212    0.0343588    0.1356835
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0340894   -0.0062062    0.0743850
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0730807   -0.1362775   -0.0098839
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0445414    0.0244079    0.0646749
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0262403   -0.0516117   -0.0008689
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         -0.0082920   -0.0512919    0.0347079
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0304368   -0.0067007    0.0675743
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0123699   -0.0434466    0.0187068
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0402343    0.0033291    0.0771395
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)          0.0391084    0.0093657    0.0688511
3-6 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)          0.0010941   -0.0284891    0.0306773
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0738742    0.0597051    0.0880433
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0370850    0.0236976    0.0504723
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0024425   -0.0161758    0.0112908
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0148055   -0.0385294    0.0681404
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0072336   -0.0583263    0.0438591
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.0071238   -0.0564620    0.0422143
6-12 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <259                 [273-287)          0.0004767   -0.0414104    0.0423639
6-12 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0095909   -0.0213228    0.0405046
6-12 months    ki1000108-IRC              INDIA                          >=287                [273-287)         -0.0088916   -0.0415263    0.0237432
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0245482    0.0046355    0.0444608
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0143019   -0.0016760    0.0302798
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)          0.0321418   -0.0130842    0.0773679
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         -0.0320907   -0.0592509   -0.0049305
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         -0.0119983   -0.0364311    0.0124345
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0205524   -0.0403873   -0.0007175
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0065125   -0.0155645    0.0285894
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0189255    0.0004074    0.0374436
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.0082880   -0.0144164    0.0309924
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0184023    0.0066533    0.0301513
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0226063   -0.0364162   -0.0087963
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0083831   -0.0167642    0.0335304
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0149292   -0.0069663    0.0368248
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0104281   -0.0283135    0.0074573
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0015326   -0.0184025    0.0214677
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)          0.0007015   -0.0172700    0.0186730
6-12 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0243685   -0.0410378   -0.0076992
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0079098   -0.0062444    0.0220640
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)          0.0038396   -0.0078835    0.0155628
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         -0.0039580   -0.0170660    0.0091500
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0199622    0.0126393    0.0272851
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0050976   -0.0021510    0.0123461
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0019926   -0.0101861    0.0062009
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         -0.0085483   -0.0444223    0.0273257
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0216432   -0.0503543    0.0070678
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.0007165   -0.0261929    0.0247598
12-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)          0.0113300   -0.0109478    0.0336079
12-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0025301   -0.0138937    0.0189539
12-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)          0.0037912   -0.0145894    0.0221719
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0218563    0.0104445    0.0332681
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0063678   -0.0026570    0.0153925
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0094290   -0.0322497    0.0133916
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         -0.0018667   -0.0115270    0.0077936
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0075069   -0.0013669    0.0163807
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0061543   -0.0177536    0.0054451
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0045118   -0.0171428    0.0261664
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)          0.0091270   -0.0106808    0.0289348
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0073433   -0.0028505    0.0175371
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         -0.0019564   -0.0119462    0.0080334
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0038115   -0.0120150    0.0043920
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0045022   -0.0044327    0.0134370
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0020299   -0.0097788    0.0057190
12-24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)          0.0003996   -0.0072902    0.0080893
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0027753   -0.0042038    0.0097544
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)          0.0016218   -0.0042532    0.0074967
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)          0.0012284   -0.0051966    0.0076533
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0060502    0.0002725    0.0118280
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0079323    0.0035385    0.0123260
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)          0.0008420   -0.0039828    0.0056667
