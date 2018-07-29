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
![](/tmp/3c5f8a87-d321-4a2b-84e4-0951b03c9d69/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3c5f8a87-d321-4a2b-84e4-0951b03c9d69/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                3.6802487   3.4062808   3.9542166
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                4.1739005   3.6123605   4.7354405
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                3.3686460   3.0212781   3.7160138
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                3.3841145   3.0002609   3.7679681
0-3 months     ki1000108-IRC              INDIA                          [273-287)            NA                3.1897507   3.0124027   3.3670986
0-3 months     ki1000108-IRC              INDIA                          <259                 NA                3.0824599   2.7663874   3.3985325
0-3 months     ki1000108-IRC              INDIA                          [259-273)            NA                2.9552233   2.7407802   3.1696665
0-3 months     ki1000108-IRC              INDIA                          >=287                NA                3.3454432   3.1181834   3.5727030
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                3.3261995   3.2572986   3.3951004
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                3.3106640   3.2310332   3.3902949
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                3.2947852   3.2393481   3.3502223
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                3.2808162   3.0313357   3.5302967
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                3.1302947   3.0627966   3.1977927
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 NA                3.4384914   3.3087421   3.5682408
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                3.1702932   3.1060728   3.2345136
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                NA                3.2341868   3.1150627   3.3533109
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                2.8293367   2.7135768   2.9450966
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                2.8815903   2.7574138   3.0057668
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                NA                2.8177820   2.7083647   2.9271993
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                2.5765990   2.5066111   2.6465870
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                2.6151735   2.4957608   2.7345862
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                2.6983327   2.6080202   2.7886451
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                2.6354514   2.5572962   2.7136065
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                3.6023755   3.5487481   3.6560029
0-3 months     ki1135781-COHORTS          INDIA                          <259                 NA                3.5880928   3.4997797   3.6764058
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                3.5727672   3.5078823   3.6376521
0-3 months     ki1135781-COHORTS          INDIA                          >=287                NA                3.4936751   3.4280710   3.5592792
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                3.7226125   3.7073019   3.7379231
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                3.7918299   3.7705438   3.8131159
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                3.7718666   3.7537390   3.7899941
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                3.6688748   3.6487974   3.6889523
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                1.7228186   1.5503860   1.8952512
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                1.8823756   1.6225754   2.1421757
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                1.9144879   1.7501943   2.0787814
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                1.7706862   1.5509568   1.9904156
3-6 months     ki1000108-IRC              INDIA                          [273-287)            NA                1.8441314   1.7424830   1.9457798
3-6 months     ki1000108-IRC              INDIA                          <259                 NA                1.8209905   1.6171540   2.0248270
3-6 months     ki1000108-IRC              INDIA                          [259-273)            NA                1.8924631   1.7599509   2.0249752
3-6 months     ki1000108-IRC              INDIA                          >=287                NA                1.8563270   1.7374451   1.9752089
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                1.9650860   1.9072590   2.0229130
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                2.0896922   2.0168543   2.1625302
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                1.9923336   1.9424238   2.0422434
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                2.0693554   1.8697266   2.2689842
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                1.7863315   1.7313043   1.8413588
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                1.8490471   1.7510832   1.9470110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                1.8026484   1.7245444   1.8807524
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                1.7589319   1.6917803   1.8260836
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                1.8955659   1.8268124   1.9643194
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 NA                2.0603290   1.9689696   2.1516885
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                1.9621623   1.9048339   2.0194907
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                NA                1.7651430   1.6441102   1.8861757
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                2.0810612   2.0362925   2.1258299
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                2.1652261   2.1135961   2.2168560
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                NA                2.0338667   1.9789346   2.0887988
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                1.7478803   1.6992308   1.7965298
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                1.6979326   1.6028134   1.7930518
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                1.8082887   1.7295830   1.8869944
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                1.7286094   1.6706382   1.7865806
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                1.8462254   1.8051449   1.8873059
3-6 months     ki1135781-COHORTS          INDIA                          <259                 NA                1.9312930   1.8647222   1.9978637
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                1.9295251   1.8803765   1.9786738
3-6 months     ki1135781-COHORTS          INDIA                          >=287                NA                1.8465466   1.7978800   1.8952132
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                1.8707917   1.8511934   1.8903899
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                2.0098306   1.9846065   2.0350548
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                1.9418739   1.9207561   1.9629917
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                1.8665710   1.8430707   1.8900713
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                1.0456413   0.9732562   1.1180265
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                1.1137923   1.0099674   1.2176172
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                1.0637874   0.9681316   1.1594431
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                1.0569152   0.9659136   1.1479169
6-12 months    ki1000108-IRC              INDIA                          [273-287)            NA                1.2558806   1.2110231   1.3007381
6-12 months    ki1000108-IRC              INDIA                          <259                 NA                1.2253939   1.1449371   1.3058506
6-12 months    ki1000108-IRC              INDIA                          [259-273)            NA                1.2667005   1.2115637   1.3218373
6-12 months    ki1000108-IRC              INDIA                          >=287                NA                1.2329104   1.1742361   1.2915847
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                1.2208918   1.1943875   1.2473961
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                1.2478008   1.2127524   1.2828492
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                1.2432944   1.2190287   1.2675601
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                1.2996766   1.2074898   1.3918634
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                1.2231764   1.1915026   1.2548502
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                1.1348791   1.0786525   1.1911056
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                1.1938238   1.1433289   1.2443186
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                1.1810442   1.1445393   1.2175491
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                1.1538095   1.1228468   1.1847722
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 NA                1.1614613   1.1242659   1.1986566
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                1.1959648   1.1680472   1.2238825
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                NA                1.1739892   1.1334077   1.2145706
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                1.4667229   1.4282224   1.5052234
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            NA                1.5043200   1.4654666   1.5431734
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                NA                1.4200380   1.3722932   1.4677828
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                1.0160252   0.9872431   1.0448072
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                1.0272933   0.9811981   1.0733885
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                1.0560899   1.0178380   1.0943418
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                1.0042323   0.9753546   1.0331100
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                1.1248644   1.0974314   1.1522974
6-12 months    ki1135781-COHORTS          INDIA                          <259                 NA                1.1226274   1.0852776   1.1599773
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                1.1290444   1.0961745   1.1619143
6-12 months    ki1135781-COHORTS          INDIA                          >=287                NA                1.0703003   1.0415884   1.0990123
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                1.0712470   1.0521516   1.0903423
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                1.0785872   1.0506437   1.1065308
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                1.0701145   1.0490658   1.0911633
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                1.0628349   1.0377877   1.0878822
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                1.0931362   1.0818789   1.1043936
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                1.1270891   1.1129853   1.1411929
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                1.1007521   1.0874770   1.1140272
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                1.0913214   1.0755602   1.1070826
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7556653   0.7149632   0.7963674
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7310959   0.6432461   0.8189458
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.6886209   0.6274967   0.7497450
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.7560184   0.7007661   0.8112708
12-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.8335940   0.7993471   0.8678409
12-24 months   ki1000108-IRC              INDIA                          <259                 NA                0.8427700   0.8001568   0.8853832
12-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.8280009   0.7988751   0.8571268
12-24 months   ki1000108-IRC              INDIA                          >=287                NA                0.8381875   0.8012347   0.8751404
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                0.8699400   0.8488984   0.8909815
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                0.8885070   0.8625642   0.9144498
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                0.8751111   0.8576530   0.8925691
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                0.8463650   0.7773617   0.9153683
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.8297265   0.8098154   0.8496376
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.8156368   0.7972301   0.8340435
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.8516389   0.8354335   0.8678443
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.8195413   0.7950056   0.8440771
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.8569984   0.8025741   0.9114226
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.8647154   0.8058684   0.9235624
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                0.8832743   0.7819004   0.9846483
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.7663326   0.7479018   0.7847633
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.7757913   0.7424296   0.8091530
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.7556332   0.7264071   0.7848593
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7662997   0.7456241   0.7869752
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.8335742   0.8188343   0.8483141
12-24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.8343635   0.8084942   0.8602328
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.8286911   0.8082017   0.8491804
12-24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.8306635   0.8094349   0.8518921
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.7050131   0.6938121   0.7162141
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.7050471   0.6882826   0.7218116
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.7007398   0.6879325   0.7135470
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.7114557   0.6965340   0.7263774
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.7843275   0.7753513   0.7933038
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.7936636   0.7799870   0.8073403
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.8065672   0.7969909   0.8161434
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.7938641   0.7827788   0.8049495


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5424620   3.3226559   3.7622681
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1786708   3.0648748   3.2924667
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1443710   3.0969764   3.1917656
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6275446   2.5773487   2.6777405
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5676089   3.5348954   3.6003223
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7366791   3.7256757   3.7476826
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8085894   1.7027345   1.9144443
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8770590   1.8115784   1.9425395
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7930234   1.7563473   1.8296994
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9509973   1.9060862   1.9959083
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7551575   1.7203355   1.7899795
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8699710   1.8423785   1.8975635
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9120583   1.8998349   1.9242816
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0679211   1.0201335   1.1157087
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2481465   1.2180063   1.2782868
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1945105   1.1722780   1.2167429
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1776266   1.1570262   1.1982270
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0213263   1.0014497   1.0412028
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.1028264   1.0847215   1.1209313
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0678997   1.0556267   1.0801728
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1011985   1.0937157   1.1086814
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7386817   0.7107419   0.7666215
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8299611   0.8097588   0.8501634
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8441456   0.8319594   0.8563317
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7708974   0.7583131   0.7834816
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8282794   0.8184657   0.8380931
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7066944   0.6993116   0.7140773
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7935866   0.7876461   0.7995270


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.4936518   -0.1283159    1.1156195
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.3116027   -0.7536342    0.1304287
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.2961342   -0.7682269    0.1759585
0-3 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <259                 [273-287)         -0.1072908   -0.4696076    0.2550261
0-3 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)         -0.2345274   -0.5123912    0.0433365
0-3 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.1556925   -0.1318021    0.4431871
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)         -0.0155355   -0.1204026    0.0893317
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)         -0.0314143   -0.1191846    0.0563560
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0453833   -0.3040246    0.2132580
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.3081968    0.1638479    0.4525457
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0399985   -0.0496993    0.1296963
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.1038921   -0.0305449    0.2383292
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0522536   -0.0012662    0.1057734
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0115547   -0.1006096    0.0775002
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0385745   -0.0986665    0.1758154
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.1217337    0.0088283    0.2346391
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)          0.0588523   -0.0444393    0.1621440
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0142827   -0.1175919    0.0890265
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0296083   -0.1137713    0.0545548
0-3 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.1087004   -0.1934175   -0.0239832
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0692174    0.0444269    0.0940078
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0492541    0.0277065    0.0708017
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0537377   -0.0774765   -0.0299989
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.1595570   -0.1521386    0.4712525
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.1916693   -0.0463760    0.4297145
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0478676   -0.2313876    0.3271229
3-6 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0231409   -0.2509249    0.2046431
3-6 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0483317   -0.1186302    0.2152936
3-6 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.0121956   -0.1443535    0.1687447
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.1246062    0.0338785    0.2153340
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0272476   -0.0456640    0.1001592
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)          0.1042694   -0.1027212    0.3112600
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)          0.0627156   -0.0485731    0.1740043
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)          0.0163169   -0.0780092    0.1106430
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0273996   -0.1131218    0.0583226
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.1647631    0.0515850    0.2779412
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0665964   -0.0203089    0.1535018
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.1304229   -0.2674819    0.0066361
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0841649    0.0405121    0.1278177
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0471945   -0.1022665    0.0078775
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         -0.0499477   -0.1561624    0.0562670
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0604084   -0.0316448    0.1524617
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0192709   -0.0943688    0.0558270
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0850676    0.0079088    0.1622264
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)          0.0832998    0.0204882    0.1461113
3-6 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)          0.0003212   -0.0620782    0.0627206
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.1390390    0.1088714    0.1692065
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0710823    0.0422758    0.0998887
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0042207   -0.0336395    0.0251982
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0681510   -0.0582422    0.1945442
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.0181460   -0.1014011    0.1376932
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0112739   -0.1043516    0.1268994
6-12 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0304868   -0.1223315    0.0613580
6-12 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0108199   -0.0595960    0.0812358
6-12 months    ki1000108-IRC              INDIA                          >=287                [273-287)         -0.0229702   -0.0963231    0.0503827
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0269090   -0.0158979    0.0697159
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0224026   -0.0123089    0.0571141
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)          0.0787848   -0.0166019    0.1741714
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         -0.0882974   -0.1518193   -0.0247754
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         -0.0293526   -0.0875520    0.0288467
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0421322   -0.0891424    0.0048779
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0076518   -0.0395310    0.0548346
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0421553    0.0017083    0.0826024
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.0201797   -0.0297107    0.0700701
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0375971    0.0106273    0.0645669
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0466849   -0.0787768   -0.0145930
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0112682   -0.0411994    0.0637357
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0400647   -0.0063626    0.0864920
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0117929   -0.0508690    0.0272832
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0022370   -0.0476391    0.0431650
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)          0.0041800   -0.0376855    0.0460454
6-12 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0545641   -0.0933818   -0.0157464
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0073403   -0.0260961    0.0407767
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         -0.0011324   -0.0291279    0.0268630
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         -0.0084121   -0.0394695    0.0226453
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0339529    0.0169651    0.0509406
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0076159   -0.0092558    0.0244875
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0018148   -0.0211712    0.0175416
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         -0.0245693   -0.1213449    0.0722063
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0670444   -0.1404531    0.0063643
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0003531   -0.0681676    0.0688739
12-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)          0.0091760   -0.0454796    0.0638316
12-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         -0.0055931   -0.0505904    0.0394043
12-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)          0.0045936   -0.0456075    0.0547947
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0185670   -0.0148362    0.0519702
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0051711   -0.0221699    0.0325120
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0235750   -0.0957151    0.0485652
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         -0.0140897   -0.0404077    0.0122283
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0219124   -0.0029231    0.0467479
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0101851   -0.0411772    0.0208070
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0077170   -0.0538315    0.0692656
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)          0.0262759   -0.0429850    0.0955369
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0094587   -0.0286615    0.0475789
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         -0.0106994   -0.0452474    0.0238487
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0000329   -0.0277381    0.0276723
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0007893   -0.0289789    0.0305575
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0048831   -0.0301277    0.0203614
12-24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0029107   -0.0287563    0.0229349
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0000340   -0.0198663    0.0199344
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         -0.0042733   -0.0209863    0.0124396
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)          0.0064426   -0.0119340    0.0248193
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0093361   -0.0067696    0.0254418
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0222396    0.0092125    0.0352668
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)          0.0095366   -0.0039279    0.0230011
