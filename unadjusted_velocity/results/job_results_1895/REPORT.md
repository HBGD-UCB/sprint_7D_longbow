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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country                        gagebrth     n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       239     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259            148     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       315     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287            18     720
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       226     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259            144     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       308     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287            17     695
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       215     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259            143     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       301     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287            17     676
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)       147     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259            106     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)       227     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287            15     495
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      5937   16862
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259           3173   16862
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)      4445   16862
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287          3307   16862
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      3388    9519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259           1681    9519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)      2493    9519
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287          1957    9519
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      2701    7559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259           1359    7559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)      1979    7559
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287          1520    7559
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)      1278    3576
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259            681    3576
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)       917    3576
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287           700    3576
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)      9366   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)      2363   12745
0-3 months     ki1119695-PROBIT           BELARUS                        >=287          1016   12745
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)      9753   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)      2492   13309
3-6 months     ki1119695-PROBIT           BELARUS                        >=287          1064   13309
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)      9417   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)      2438   12896
6-12 months    ki1119695-PROBIT           BELARUS                        >=287          1041   12896
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)      1845    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)       499    2533
12-24 months   ki1119695-PROBIT           BELARUS                        >=287           189    2533
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)       297     818
12-24 months   ki1101329-Keneba           GAMBIA                         <259             83     818
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)       332     818
12-24 months   ki1101329-Keneba           GAMBIA                         >=287           106     818
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)       327     902
6-12 months    ki1101329-Keneba           GAMBIA                         <259            102     902
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)       373     902
6-12 months    ki1101329-Keneba           GAMBIA                         >=287           100     902
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)       478    1232
0-3 months     ki1101329-Keneba           GAMBIA                         <259            125    1232
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)       488    1232
0-3 months     ki1101329-Keneba           GAMBIA                         >=287           141    1232
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)       358     949
3-6 months     ki1101329-Keneba           GAMBIA                         <259            101     949
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)       383     949
3-6 months     ki1101329-Keneba           GAMBIA                         >=287           107     949
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)       253     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259             82     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)        95     626
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287           196     626
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)       266     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259             82     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)        96     651
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287           207     651
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)       258     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259             78     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)        95     641
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287           210     641
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)       224     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259             69     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)        79     551
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287           179     551
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)       116     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259             40     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        64     288
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287            68     288
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)       127     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259             42     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        63     303
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287            71     303
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)       127     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259             42     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        62     304
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287            73     304
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)        34      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259              8      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)        21      86
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287            23      86
3-6 months     ki1000108-IRC              INDIA                          [273-287)       161     379
3-6 months     ki1000108-IRC              INDIA                          <259             40     379
3-6 months     ki1000108-IRC              INDIA                          [259-273)        89     379
3-6 months     ki1000108-IRC              INDIA                          >=287            89     379
6-12 months    ki1000108-IRC              INDIA                          [273-287)       161     381
6-12 months    ki1000108-IRC              INDIA                          <259             40     381
6-12 months    ki1000108-IRC              INDIA                          [259-273)        90     381
6-12 months    ki1000108-IRC              INDIA                          >=287            90     381
12-24 months   ki1000108-IRC              INDIA                          [273-287)       157     377
12-24 months   ki1000108-IRC              INDIA                          <259             40     377
12-24 months   ki1000108-IRC              INDIA                          [259-273)        90     377
12-24 months   ki1000108-IRC              INDIA                          >=287            90     377
0-3 months     ki1000108-IRC              INDIA                          [273-287)       151     359
0-3 months     ki1000108-IRC              INDIA                          <259             36     359
0-3 months     ki1000108-IRC              INDIA                          [259-273)        85     359
0-3 months     ki1000108-IRC              INDIA                          >=287            87     359
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [273-287)        32    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <259            926    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [259-273)       202    1161
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=287             1    1161
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [273-287)        30    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <259            890    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [259-273)       194    1116
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=287             2    1116
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)        30    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <259            902    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)       195    1130
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=287             3    1130
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)       506    1274
0-3 months     ki1135781-COHORTS          INDIA                          <259            178    1274
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)       283    1274
0-3 months     ki1135781-COHORTS          INDIA                          >=287           307    1274
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)       510    1280
3-6 months     ki1135781-COHORTS          INDIA                          <259            189    1280
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)       284    1280
3-6 months     ki1135781-COHORTS          INDIA                          >=287           297    1280
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)       445    1104
6-12 months    ki1135781-COHORTS          INDIA                          <259            162    1104
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)       250    1104
6-12 months    ki1135781-COHORTS          INDIA                          >=287           247    1104
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)       433    1065
12-24 months   ki1135781-COHORTS          INDIA                          <259            158    1065
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)       240    1065
12-24 months   ki1135781-COHORTS          INDIA                          >=287           234    1065
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)       272     538
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         <259             29     538
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)       129     538
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         >=287           108     538
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)       258     508
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         <259             27     508
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)       120     508
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         >=287           103     508
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)         4       7
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)         3       7
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <259              1     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [259-273)       467     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=287             3     471
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <259              1     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)       472     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=287             2     475
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)       365     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=287             2     367
0-3 months     ki1000109-EE               PAKISTAN                       [273-287)        19     297
0-3 months     ki1000109-EE               PAKISTAN                       <259            192     297
0-3 months     ki1000109-EE               PAKISTAN                       [259-273)        85     297
0-3 months     ki1000109-EE               PAKISTAN                       >=287             1     297
3-6 months     ki1000109-EE               PAKISTAN                       [273-287)        19     331
3-6 months     ki1000109-EE               PAKISTAN                       <259            212     331
3-6 months     ki1000109-EE               PAKISTAN                       [259-273)        99     331
3-6 months     ki1000109-EE               PAKISTAN                       >=287             1     331
6-12 months    ki1000109-EE               PAKISTAN                       <259              4       4
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)       933    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259            359    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)       670    2398
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287           436    2398
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)       875    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259            339    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)       613    2242
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287           415    2242
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)       615    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259            223    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)       329    1562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287           395    1562
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)       404    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259            132    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)       214    1018
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287           268    1018
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)         2       2


The following strata were considered:

* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/af624ec8-05a2-496c-93ee-958446249682/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/af624ec8-05a2-496c-93ee-958446249682/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0038742   -0.1596147    0.1518663
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                 0.0296109   -0.4058706    0.4650924
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0715550   -0.2785892    0.1354793
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.1806459   -0.3934885    0.0321967
0-3 months     ki1000108-IRC              INDIA                          [273-287)            NA                -0.2488339   -0.3380299   -0.1596379
0-3 months     ki1000108-IRC              INDIA                          <259                 NA                -0.2613060   -0.4309995   -0.0916126
0-3 months     ki1000108-IRC              INDIA                          [259-273)            NA                -0.3629557   -0.4749856   -0.2509258
0-3 months     ki1000108-IRC              INDIA                          >=287                NA                -0.1586638   -0.2736626   -0.0436650
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.1239513   -0.1567506   -0.0911520
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                -0.0974495   -0.1372820   -0.0576170
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                -0.1263702   -0.1529325   -0.0998078
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                -0.2247565   -0.3397941   -0.1097189
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.3143910   -0.3524575   -0.2763244
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 NA                -0.1774205   -0.2657307   -0.0891103
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.2801620   -0.3151478   -0.2451763
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                NA                -0.3147883   -0.3896221   -0.2399544
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.4428624   -0.5028556   -0.3828692
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                -0.4059547   -0.4770164   -0.3348931
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                NA                -0.4625627   -0.5241238   -0.4010016
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.5484818   -0.5862219   -0.5107417
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.5314157   -0.6144111   -0.4484203
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.4954008   -0.5557419   -0.4350597
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.5368255   -0.5809888   -0.4926621
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0517765   -0.0782941   -0.0252589
0-3 months     ki1135781-COHORTS          INDIA                          <259                 NA                -0.0555361   -0.0999674   -0.0111048
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0571313   -0.0889524   -0.0253103
0-3 months     ki1135781-COHORTS          INDIA                          >=287                NA                -0.0914813   -0.1225091   -0.0604534
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0631954    0.0556088    0.0707819
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                 0.1072031    0.0957775    0.1186286
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                 0.0924562    0.0831991    0.1017133
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                 0.0327534    0.0222663    0.0432404
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.1406546   -0.2238375   -0.0574716
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                -0.0463106   -0.1802821    0.0876610
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0251303   -0.1071577    0.0568971
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.1174409   -0.2271148   -0.0077670
3-6 months     ki1000108-IRC              INDIA                          [273-287)            NA                -0.0661914   -0.1148680   -0.0175148
3-6 months     ki1000108-IRC              INDIA                          <259                 NA                -0.0498055   -0.1446468    0.0450358
3-6 months     ki1000108-IRC              INDIA                          [259-273)            NA                -0.0348106   -0.0995630    0.0299418
3-6 months     ki1000108-IRC              INDIA                          >=287                NA                -0.0501248   -0.1090644    0.0088149
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.0003686   -0.0294975    0.0287604
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                 0.0823401    0.0445302    0.1201499
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                 0.0203192   -0.0043561    0.0449945
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                 0.0338802   -0.0747208    0.1424811
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0892298   -0.1157419   -0.0627176
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                -0.0543999   -0.1026723   -0.0061274
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                -0.0813316   -0.1191106   -0.0435526
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                -0.1017008   -0.1345223   -0.0688793
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0602799   -0.0948548   -0.0257049
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 NA                 0.0349134   -0.0283486    0.0981754
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.0291662   -0.0589186    0.0005861
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                NA                -0.0706187   -0.1484288    0.0071914
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0414767    0.0207395    0.0622139
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                 0.0829214    0.0587739    0.1070690
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                NA                 0.0144731   -0.0146731    0.0436192
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0975906   -0.1218446   -0.0733366
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.1195805   -0.1730770   -0.0660839
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.0644248   -0.1087403   -0.0201092
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.1089810   -0.1382629   -0.0796990
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0751536   -0.0957400   -0.0545673
3-6 months     ki1135781-COHORTS          INDIA                          <259                 NA                -0.0391667   -0.0760474   -0.0022859
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0367287   -0.0627942   -0.0106631
3-6 months     ki1135781-COHORTS          INDIA                          >=287                NA                -0.0757968   -0.1011910   -0.0504027
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0277980   -0.0371844   -0.0184116
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                 0.0415789    0.0286257    0.0545321
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                 0.0071795   -0.0029496    0.0173086
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                -0.0317861   -0.0429809   -0.0205913
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.1073199   -0.1397332   -0.0749065
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                -0.0731740   -0.1214630   -0.0248849
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0923270   -0.1399298   -0.0447242
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.0996725   -0.1416060   -0.0577390
6-12 months    ki1000108-IRC              INDIA                          [273-287)            NA                -0.0263391   -0.0466627   -0.0060154
6-12 months    ki1000108-IRC              INDIA                          <259                 NA                -0.0273853   -0.0698975    0.0151268
6-12 months    ki1000108-IRC              INDIA                          [259-273)            NA                -0.0147485   -0.0409542    0.0114572
6-12 months    ki1000108-IRC              INDIA                          >=287                NA                -0.0369912   -0.0650507   -0.0089316
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.0419237   -0.0541442   -0.0297032
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                -0.0217273   -0.0383070   -0.0051476
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                -0.0268384   -0.0376019   -0.0160749
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                -0.0670307   -0.1269790   -0.0070824
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0474188   -0.0617975   -0.0330401
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                -0.0842094   -0.1113935   -0.0570253
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                -0.0589547   -0.0824748   -0.0354347
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                -0.0697766   -0.0866099   -0.0529434
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0728653   -0.0880824   -0.0576483
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 NA                -0.0605220   -0.0839675   -0.0370764
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.0550919   -0.0686006   -0.0415832
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                NA                -0.0656821   -0.0909639   -0.0404004
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0402406    0.0234752    0.0570059
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            NA                 0.0592585    0.0412389    0.0772780
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                NA                 0.0210557   -0.0034416    0.0455529
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.1083973   -0.1215358   -0.0952588
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.0962003   -0.1213354   -0.0710653
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.0906931   -0.1108148   -0.0705714
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.1183809   -0.1319890   -0.1047728
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0818085   -0.0945254   -0.0690916
6-12 months    ki1135781-COHORTS          INDIA                          <259                 NA                -0.0834076   -0.1038164   -0.0629988
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0847122   -0.1005754   -0.0688490
6-12 months    ki1135781-COHORTS          INDIA                          >=287                NA                -0.1104850   -0.1244545   -0.0965155
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                -0.1004171   -0.1087967   -0.0920376
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                -0.0933895   -0.1069952   -0.0797838
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                -0.0976544   -0.1071039   -0.0882048
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                -0.1067925   -0.1186713   -0.0949137
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)            NA                -0.0485773   -0.0614349   -0.0357197
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         <259                 NA                 0.0210463   -0.0170024    0.0590950
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)            NA                -0.0369210   -0.0563825   -0.0174594
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         >=287                NA                -0.0559800   -0.0822676   -0.0296923
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0810843   -0.0860599   -0.0761087
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                -0.0612748   -0.0680119   -0.0545378
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                -0.0765504   -0.0824312   -0.0706697
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                -0.0832581   -0.0901044   -0.0764118
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0409251   -0.0564967   -0.0253534
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                -0.0482657   -0.0808204   -0.0157110
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                -0.0632178   -0.0874886   -0.0389470
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                -0.0416749   -0.0619870   -0.0213628
12-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                -0.0342517   -0.0476076   -0.0208958
12-24 months   ki1000108-IRC              INDIA                          <259                 NA                -0.0252815   -0.0466470   -0.0039161
12-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                -0.0317298   -0.0426329   -0.0208268
12-24 months   ki1000108-IRC              INDIA                          >=287                NA                -0.0303610   -0.0440152   -0.0167069
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                -0.0130460   -0.0200041   -0.0060880
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                 0.0088071   -0.0002384    0.0178526
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                -0.0066797   -0.0124274   -0.0009321
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                -0.0224742   -0.0442086   -0.0007398
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0227845   -0.0309281   -0.0146409
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                -0.0156996   -0.0254121   -0.0059871
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                -0.0177399   -0.0238590   -0.0116209
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                -0.0254433   -0.0380109   -0.0128757
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.0435606   -0.0618068   -0.0253145
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                -0.0429058   -0.0692447   -0.0165668
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                -0.0384421   -0.0689813   -0.0079030
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0336397   -0.0402282   -0.0270513
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                -0.0233850   -0.0356027   -0.0111674
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                -0.0321229   -0.0436337   -0.0206121
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                -0.0364922   -0.0437220   -0.0292624
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                -0.0341137   -0.0391065   -0.0291208
12-24 months   ki1135781-COHORTS          INDIA                          <259                 NA                -0.0298023   -0.0386101   -0.0209946
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                -0.0355693   -0.0426574   -0.0284811
12-24 months   ki1135781-COHORTS          INDIA                          >=287                NA                -0.0348014   -0.0417802   -0.0278226
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                -0.0588946   -0.0630660   -0.0547231
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                -0.0552707   -0.0619462   -0.0485952
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                -0.0573142   -0.0620443   -0.0525841
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                -0.0575114   -0.0631730   -0.0518498
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)            NA                -0.0216620   -0.0288354   -0.0144886
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         <259                 NA                -0.0040103   -0.0363803    0.0283597
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)            NA                -0.0117236   -0.0215774   -0.0018697
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         >=287                NA                -0.0321240   -0.0432997   -0.0209482
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0228421   -0.0259275   -0.0197568
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                -0.0163698   -0.0220416   -0.0106980
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                -0.0146132   -0.0181000   -0.0111265
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                -0.0221504   -0.0266236   -0.0176772


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                -0.0435155   -0.0534192   -0.0336118
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0767730   -0.0799829   -0.0735630
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0466658   -0.0572396   -0.0360921
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317691   -0.0390870   -0.0244512
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0203627   -0.0246735   -0.0160519
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0331016   -0.0373272   -0.0288759
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0339532   -0.0372308   -0.0306756
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576585   -0.0601967   -0.0551203
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                -0.0204974   -0.0257171   -0.0152777
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0193640   -0.0214128   -0.0173152


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0334851   -0.4290074    0.4959776
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0676808   -0.3267528    0.1913912
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.1767717   -0.4405085    0.0869650
0-3 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0124721   -0.2041797    0.1792354
0-3 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)         -0.1141218   -0.2573231    0.0290795
0-3 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.0901701   -0.0553656    0.2357058
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0265018   -0.0250968    0.0781004
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)         -0.0024189   -0.0446249    0.0397871
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.1008052   -0.2204272    0.0188168
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.1369705    0.0408052    0.2331357
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0342289   -0.0174728    0.0859306
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0003973   -0.0843567    0.0835621
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0369076    0.0045342    0.0692811
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0197003   -0.0700400    0.0306393
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0170661   -0.0741071    0.1082393
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0530810   -0.0180904    0.1242524
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)          0.0116563   -0.0464360    0.0697486
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0037596   -0.0555024    0.0479832
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0053548   -0.0467765    0.0360669
0-3 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0397048   -0.0805203    0.0011108
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0440077    0.0306752    0.0573402
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0292608    0.0182347    0.0402870
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0304420   -0.0427955   -0.0180885
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0943440   -0.0633512    0.2520392
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.1155243   -0.0013000    0.2323485
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0232136   -0.1144373    0.1608645
3-6 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <259                 [273-287)          0.0163859   -0.0902175    0.1229893
3-6 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0313808   -0.0496271    0.1123888
3-6 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.0160666   -0.0603748    0.0925080
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0827087    0.0349794    0.1304379
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0206878   -0.0174877    0.0588633
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)          0.0342488   -0.0781908    0.1466884
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)          0.0348299   -0.0202440    0.0899037
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)          0.0078982   -0.0382554    0.0540517
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0124710   -0.0546628    0.0297207
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0951933    0.0230996    0.1672870
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0311136   -0.0145003    0.0767276
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0103388   -0.0954848    0.0748072
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0414447    0.0209868    0.0619027
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0270036   -0.0540730    0.0000657
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         -0.0219899   -0.0807278    0.0367480
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0331658   -0.0173527    0.0836844
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0113904   -0.0494126    0.0266318
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0359870   -0.0062503    0.0782242
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)          0.0384249    0.0052103    0.0716396
3-6 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0006432   -0.0333336    0.0320472
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0693769    0.0541758    0.0845779
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0349775    0.0211095    0.0488455
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0039881   -0.0181234    0.0101473
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0341459   -0.0240130    0.0923048
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.0149929   -0.0425975    0.0725832
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0076474   -0.0453531    0.0606478
6-12 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0010463   -0.0481667    0.0460741
6-12 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0115906   -0.0215725    0.0447537
6-12 months    ki1000108-IRC              INDIA                          >=287                [273-287)         -0.0106521   -0.0452988    0.0239945
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0201964   -0.0004004    0.0407932
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0150853   -0.0011995    0.0313701
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0251070   -0.0862882    0.0360742
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         -0.0367906   -0.0675433   -0.0060380
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         -0.0115360   -0.0391030    0.0160310
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0223579   -0.0444962   -0.0002195
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0123434   -0.0156075    0.0402942
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0177734   -0.0025746    0.0381215
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.0071832   -0.0223248    0.0366913
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0190179    0.0066257    0.0314101
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0191849   -0.0357056   -0.0026643
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0121970   -0.0161648    0.0405588
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0177042   -0.0063271    0.0417355
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0099836   -0.0288992    0.0089320
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0015991   -0.0256457    0.0224475
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0029037   -0.0232349    0.0174275
6-12 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0286765   -0.0475674   -0.0097856
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0070276   -0.0089515    0.0230068
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)          0.0027628   -0.0098670    0.0153925
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         -0.0063753   -0.0209123    0.0081616
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         <259                 [273-287)          0.0696236    0.0294612    0.1097860
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)            [273-287)          0.0116564   -0.0116689    0.0349817
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         >=287                [273-287)         -0.0074026   -0.0366662    0.0218610
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0198095    0.0118542    0.0277648
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0045339   -0.0029769    0.0120447
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0021737   -0.0106628    0.0063153
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         -0.0073406   -0.0434278    0.0287466
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0222927   -0.0511293    0.0065438
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.0007498   -0.0263439    0.0248443
12-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)          0.0089702   -0.0162263    0.0341667
12-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0025219   -0.0147193    0.0197630
12-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)          0.0038907   -0.0152095    0.0229909
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0218531    0.0104410    0.0332652
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0063663   -0.0026586    0.0153913
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0094282   -0.0322492    0.0133928
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0070849   -0.0055899    0.0197597
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0050446   -0.0051417    0.0152309
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0026588   -0.0176342    0.0123166
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0006549   -0.0269850    0.0282947
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)          0.0051185   -0.0163900    0.0266269
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0102547   -0.0036262    0.0241355
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0015168   -0.0117462    0.0147798
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0028524   -0.0126339    0.0069290
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0043113   -0.0058131    0.0144358
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0014556   -0.0101257    0.0072145
12-24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0006878   -0.0092687    0.0078932
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0036238   -0.0042478    0.0114955
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)          0.0015804   -0.0047264    0.0078871
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)          0.0013832   -0.0056492    0.0084156
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         <259                 [273-287)          0.0176517   -0.0155036    0.0508070
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         [259-273)            [273-287)          0.0099385   -0.0022499    0.0221268
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         >=287                [273-287)         -0.0104620   -0.0237418    0.0028179
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0064723    0.0000789    0.0128657
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0082289    0.0034917    0.0129661
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)          0.0006918   -0.0045888    0.0059723
