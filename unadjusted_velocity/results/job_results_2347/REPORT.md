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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/2e14da04-2911-4592-9129-8bc3e44fc3cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2e14da04-2911-4592-9129-8bc3e44fc3cf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                3.6711430   3.3648022   3.9774838
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                3.7185385   2.7462427   4.6908344
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                3.4606437   3.0266744   3.8946131
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                3.3656976   2.9335244   3.7978707
0-3 months     ki1000108-IRC              INDIA                          [273-287)            NA                3.1966508   3.0163529   3.3769487
0-3 months     ki1000108-IRC              INDIA                          <259                 NA                3.1370989   2.8052075   3.4689902
0-3 months     ki1000108-IRC              INDIA                          [259-273)            NA                2.9945321   2.7734810   3.2155833
0-3 months     ki1000108-IRC              INDIA                          >=287                NA                3.3445718   3.1114916   3.5776519
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                3.3238284   3.2539964   3.3936603
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                3.3013573   3.2208049   3.3819098
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                3.2931090   3.2369760   3.3492419
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                3.2076684   2.9484870   3.4668499
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                3.1074998   3.0321679   3.1828318
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 NA                3.2694164   3.0974521   3.4413806
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                3.1536861   3.0832836   3.2240886
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                NA                3.1262713   2.9741597   3.2783829
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                2.8297970   2.7147204   2.9448737
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                2.8685210   2.7346196   3.0024224
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                NA                2.8122001   2.6931126   2.9312876
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                2.5861362   2.5096771   2.6625953
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                2.6282955   2.4693502   2.7872407
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                2.7134195   2.5903998   2.8364392
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                2.6411735   2.5523037   2.7300432
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                3.6024487   3.5488044   3.6560930
0-3 months     ki1135781-COHORTS          INDIA                          <259                 NA                3.5882972   3.4999458   3.6766486
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                3.5727382   3.5078172   3.6376592
0-3 months     ki1135781-COHORTS          INDIA                          >=287                NA                3.4934620   3.4278193   3.5591047
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                3.7237444   3.7079338   3.7395550
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                3.7834401   3.7599454   3.8069347
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                3.7743856   3.7551271   3.7936441
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                3.6643526   3.6426193   3.6860859
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                1.7277651   1.5506692   1.9048609
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                1.9026339   1.6206175   2.1846503
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                1.9266277   1.7496080   2.1036474
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                1.7800510   1.5504090   2.0096929
3-6 months     ki1000108-IRC              INDIA                          [273-287)            NA                1.8552193   1.7512538   1.9591848
3-6 months     ki1000108-IRC              INDIA                          <259                 NA                1.8596430   1.6541050   2.0651810
3-6 months     ki1000108-IRC              INDIA                          [259-273)            NA                1.9179654   1.7808186   2.0551122
3-6 months     ki1000108-IRC              INDIA                          >=287                NA                1.8834876   1.7613292   2.0056460
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                1.9616593   1.8979813   2.0253374
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                2.0989015   2.0163648   2.1814382
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                1.9905692   1.9372275   2.0439109
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                2.0798209   1.8499733   2.3096684
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                1.7852288   1.7280140   1.8424436
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                1.8553104   1.7519445   1.9586763
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                1.7987681   1.7164268   1.8811095
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                1.7652097   1.6947824   1.8356371
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            NA                1.9089168   1.8340648   1.9837687
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 NA                2.0788857   1.9459513   2.2118201
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            NA                1.9702794   1.9064184   2.0341404
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                NA                1.9020536   1.7376069   2.0665002
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            NA                2.0812681   2.0367815   2.1257547
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            NA                2.1568247   2.1039674   2.2096819
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                NA                2.0321201   1.9717528   2.0924873
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                1.7543237   1.7032066   1.8054407
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 NA                1.7124803   1.6017349   1.8232256
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                1.8237621   1.7323626   1.9151616
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                NA                1.7408364   1.6788483   1.8028244
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            NA                1.8472376   1.8032813   1.8911938
3-6 months     ki1135781-COHORTS          INDIA                          <259                 NA                1.9158253   1.8381328   1.9935178
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            NA                1.9199028   1.8633898   1.9764159
3-6 months     ki1135781-COHORTS          INDIA                          >=287                NA                1.8320819   1.7772993   1.8868644
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                1.8724283   1.8522853   1.8925713
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                2.0041092   1.9761015   2.0321169
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                1.9419937   1.9201439   1.9638435
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                1.8634632   1.8389146   1.8880118
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                1.0447990   0.9698362   1.1197617
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                1.1190384   1.0068109   1.2312659
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                1.0841990   0.9738663   1.1945317
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                1.0645982   0.9672836   1.1619128
6-12 months    ki1000108-IRC              INDIA                          [273-287)            NA                1.2551535   1.2091479   1.3011592
6-12 months    ki1000108-IRC              INDIA                          <259                 NA                1.2184662   1.1242236   1.3127088
6-12 months    ki1000108-IRC              INDIA                          [259-273)            NA                1.2711133   1.2106289   1.3315976
6-12 months    ki1000108-IRC              INDIA                          >=287                NA                1.2258364   1.1623552   1.2893175
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                1.2155653   1.1862925   1.2448381
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                1.2308976   1.1919513   1.2698440
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                1.2390911   1.2128618   1.2653203
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                1.1697307   1.0300723   1.3093891
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                1.2254927   1.1917421   1.2592433
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                1.1296181   1.0657070   1.1935292
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                1.1913227   1.1362584   1.2463869
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                1.1823133   1.1427367   1.2218900
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                1.1561636   1.1207453   1.1915819
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 NA                1.1693220   1.1147332   1.2239108
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                1.1988350   1.1668033   1.2308668
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                NA                1.1771739   1.1170649   1.2372829
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                1.4665744   1.4277174   1.5054313
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            NA                1.5068719   1.4660257   1.5477181
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                NA                1.4260622   1.3689806   1.4831439
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                1.0197575   0.9878369   1.0516780
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                1.0349532   0.9751588   1.0947476
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                1.0526380   1.0025809   1.1026950
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                1.0034227   0.9701182   1.0367273
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                1.1214257   1.0915787   1.1512726
6-12 months    ki1135781-COHORTS          INDIA                          <259                 NA                1.1069434   1.0591147   1.1547721
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                1.1154573   1.0773301   1.1535845
6-12 months    ki1135781-COHORTS          INDIA                          >=287                NA                1.0538330   1.0201600   1.0875061
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                1.0718299   1.0517658   1.0918940
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                1.0736285   1.0416293   1.1056278
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                1.0670293   1.0443343   1.0897242
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                1.0561101   1.0278120   1.0844082
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                1.0947274   1.0830688   1.1063859
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                1.1260188   1.1104856   1.1415520
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                1.1003581   1.0867189   1.1139973
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                1.0916006   1.0753184   1.1078829
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7557909   0.7150537   0.7965281
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7345204   0.6464660   0.8225747
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.6879770   0.6267766   0.7491774
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.7543750   0.6987787   0.8099713
12-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.8304870   0.7947794   0.8661945
12-24 months   ki1000108-IRC              INDIA                          <259                 NA                0.8263057   0.7725026   0.8801089
12-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.8255507   0.7923196   0.8587818
12-24 months   ki1000108-IRC              INDIA                          >=287                NA                0.8350788   0.7950407   0.8751169
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                0.8699400   0.8488984   0.8909815
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                0.8885070   0.8625642   0.9144498
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                0.8751111   0.8576530   0.8925691
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                0.8463650   0.7773617   0.9153683
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.8354798   0.8129540   0.8580055
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.8453442   0.8183751   0.8723133
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.8550841   0.8368343   0.8733338
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.8332275   0.7997410   0.8667141
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.8587100   0.8048554   0.9125645
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.8592356   0.7802396   0.9382317
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                0.8766031   0.7736540   0.9795523
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.7688636   0.7497104   0.7880167
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.7865128   0.7471080   0.8259176
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.7642229   0.7304202   0.7980256
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7706155   0.7488992   0.7923318
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.8316907   0.8168388   0.8465426
12-24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.8275333   0.8011455   0.8539210
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.8246167   0.8038053   0.8454281
12-24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.8262273   0.8046413   0.8478133
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.7078031   0.6958074   0.7197988
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.7062205   0.6867513   0.7256897
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.7015189   0.6876666   0.7153711
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.7123889   0.6956899   0.7290878
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.7853237   0.7759424   0.7947050
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.7916758   0.7760891   0.8072625
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.8063420   0.7958716   0.8168125
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.7938214   0.7816566   0.8059862


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0473955   -0.9720180    1.0668091
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.2104993   -0.7416999    0.3207013
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.3054454   -0.8351797    0.2242888
0-3 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0595519   -0.4372544    0.3181506
0-3 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)         -0.2021186   -0.4873745    0.0831373
0-3 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.1479210   -0.1467546    0.4425965
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)         -0.0224710   -0.1290787    0.0841367
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)         -0.0307194   -0.1203152    0.0588764
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.1161599   -0.3845841    0.1522642
0-3 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.1619165   -0.0258243    0.3496573
0-3 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0461863   -0.0569225    0.1492950
0-3 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.0187715   -0.1509720    0.1885150
0-3 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0387240   -0.0203688    0.0978168
0-3 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0175969   -0.1133850    0.0781912
0-3 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0421593   -0.1342198    0.2185384
0-3 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.1272833   -0.0175609    0.2721275
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)          0.0550373   -0.0621968    0.1722713
0-3 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0141515   -0.1175134    0.0892104
0-3 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0297105   -0.1139272    0.0545062
0-3 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.1089867   -0.1937609   -0.0242124
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0596957    0.0324804    0.0869110
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0506412    0.0276543    0.0736282
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0593918   -0.0849740   -0.0338095
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.1748688   -0.1581420    0.5078796
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.1988626   -0.0515349    0.4492601
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0522859   -0.2377113    0.3422831
3-6 months     ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <259                 [273-287)          0.0044237   -0.2259124    0.2347598
3-6 months     ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0627461   -0.1093529    0.2348451
3-6 months     ki1000108-IRC              INDIA                          >=287                [273-287)          0.0282683   -0.1321422    0.1886787
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.1372422    0.0329963    0.2414880
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0289099   -0.0541577    0.1119775
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)          0.1181615   -0.1203438    0.3566668
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)          0.0700816   -0.0480625    0.1882258
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)          0.0135393   -0.0867285    0.1138071
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0200191   -0.1107580    0.0707198
3-6 months     ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.1699689    0.0174095    0.3225283
3-6 months     ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0613626   -0.0370297    0.1597549
3-6 months     ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0068632   -0.1875439    0.1738175
3-6 months     ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0755566    0.0308525    0.1202606
3-6 months     ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0491480   -0.1075485    0.0092524
3-6 months     ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         -0.0418434   -0.1638167    0.0801299
3-6 months     ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0694384   -0.0352842    0.1741610
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0134873   -0.0938333    0.0668587
3-6 months     ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <259                 [273-287)          0.0685877   -0.0206775    0.1578529
3-6 months     ki1135781-COHORTS          INDIA                          [259-273)            [273-287)          0.0726653    0.0010700    0.1442605
3-6 months     ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0151557   -0.0853930    0.0550816
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.1316809    0.0987314    0.1646304
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0695654    0.0396437    0.0994871
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0089651   -0.0395271    0.0215968
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)          0.0742395   -0.0607214    0.2092003
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)          0.0394001   -0.0939893    0.1727894
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)          0.0197992   -0.1030402    0.1426387
6-12 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0366873   -0.1415595    0.0681849
6-12 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)          0.0159597   -0.0600329    0.0919523
6-12 months    ki1000108-IRC              INDIA                          >=287                [273-287)         -0.0293172   -0.1077160    0.0490817
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0153323   -0.0333885    0.0640531
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0235257   -0.0157791    0.0628306
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0458346   -0.1885278    0.0968587
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         -0.0958746   -0.1681500   -0.0235992
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         -0.0341700   -0.0987546    0.0304146
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         -0.0431793   -0.0951929    0.0088342
6-12 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0131584   -0.0519138    0.0782306
6-12 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0426714   -0.0050830    0.0904259
6-12 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)          0.0210103   -0.0487576    0.0907781
6-12 months    ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0402975    0.0122857    0.0683093
6-12 months    ki1119695-PROBIT           BELARUS                        >=287                [273-287)         -0.0405121   -0.0784924   -0.0025319
6-12 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0151957   -0.0525855    0.0829769
6-12 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)          0.0328805   -0.0264881    0.0922491
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         -0.0163347   -0.0624662    0.0297967
6-12 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0144823   -0.0708598    0.0418952
6-12 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0059684   -0.0543887    0.0424519
6-12 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0675926   -0.1125895   -0.0225958
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)          0.0017986   -0.0359707    0.0395679
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         -0.0048007   -0.0350931    0.0254917
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         -0.0157198   -0.0504091    0.0189695
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0312914    0.0128413    0.0497415
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0056307   -0.0118148    0.0230762
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         -0.0031268   -0.0232041    0.0169505
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         -0.0212705   -0.1182916    0.0757506
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         -0.0678139   -0.1413327    0.0057049
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         -0.0014159   -0.0703395    0.0675078
12-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         -0.0041812   -0.0687553    0.0603928
12-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         -0.0049363   -0.0537147    0.0438421
12-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)          0.0045918   -0.0490559    0.0582395
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)          0.0185670   -0.0148362    0.0519702
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)          0.0051711   -0.0221699    0.0325120
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         -0.0235750   -0.0957151    0.0485652
12-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)          0.0098644   -0.0252744    0.0450033
12-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)          0.0196043   -0.0093864    0.0485950
12-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         -0.0022522   -0.0426101    0.0381056
12-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)          0.0005256   -0.0769399    0.0779911
12-24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)          0.0178931   -0.0525667    0.0883530
12-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)          0.0176492   -0.0261638    0.0614622
12-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         -0.0046407   -0.0434925    0.0342112
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)          0.0017519   -0.0272039    0.0307078
12-24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         -0.0041575   -0.0344377    0.0261228
12-24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         -0.0070741   -0.0326415    0.0184934
12-24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         -0.0054634   -0.0316653    0.0207384
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         -0.0015826   -0.0244507    0.0212854
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         -0.0062842   -0.0246086    0.0120401
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)          0.0045858   -0.0159752    0.0251467
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)          0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)          0.0063521   -0.0117758    0.0244800
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)          0.0210183    0.0068614    0.0351753
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)          0.0084977   -0.0062695    0.0232650
