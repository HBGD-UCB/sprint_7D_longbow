---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        sex       n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       131     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         126     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        93     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          98     191
Birth       ki0047075b-MAL-ED          INDIA                          Female       110     206
Birth       ki0047075b-MAL-ED          INDIA                          Male          96     206
Birth       ki0047075b-MAL-ED          NEPAL                          Female        84     173
Birth       ki0047075b-MAL-ED          NEPAL                          Male          89     173
Birth       ki0047075b-MAL-ED          PERU                           Female       134     287
Birth       ki0047075b-MAL-ED          PERU                           Male         153     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female       131     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male         131     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        61     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          62     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        45      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          45      90
Birth       ki1000108-IRC              INDIA                          Female       173     388
Birth       ki1000108-IRC              INDIA                          Male         215     388
Birth       ki1000109-EE               PAKISTAN                       Female         0       2
Birth       ki1000109-EE               PAKISTAN                       Male           2       2
Birth       ki1000109-ResPak           PAKISTAN                       Female         3       7
Birth       ki1000109-ResPak           PAKISTAN                       Male           4       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female        84     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male         103     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female        12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male          16      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female        13      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male          14      27
Birth       ki1101329-Keneba           GAMBIA                         Female       738    1541
Birth       ki1101329-Keneba           GAMBIA                         Male         803    1541
Birth       ki1114097-CMIN             BANGLADESH                     Female         6      13
Birth       ki1114097-CMIN             BANGLADESH                     Male           7      13
Birth       ki1114097-CMIN             BRAZIL                         Female        59     115
Birth       ki1114097-CMIN             BRAZIL                         Male          56     115
Birth       ki1114097-CMIN             PERU                           Female         7      10
Birth       ki1114097-CMIN             PERU                           Male           3      10
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      7176   13884
Birth       ki1119695-PROBIT           BELARUS                        Male        6708   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6736   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        7094   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Female       404     852
Birth       ki1135781-COHORTS          GUATEMALA                      Male         448     852
Birth       ki1135781-COHORTS          INDIA                          Female      3195    6640
Birth       ki1135781-COHORTS          INDIA                          Male        3445    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1433    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1617    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      9619   19613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        9994   19613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female       400     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male         422     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female       123     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male         118     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Female       103     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Male         106     209
6 months    ki0047075b-MAL-ED          INDIA                          Female       130     236
6 months    ki0047075b-MAL-ED          INDIA                          Male         106     236
6 months    ki0047075b-MAL-ED          NEPAL                          Female       110     236
6 months    ki0047075b-MAL-ED          NEPAL                          Male         126     236
6 months    ki0047075b-MAL-ED          PERU                           Female       126     273
6 months    ki0047075b-MAL-ED          PERU                           Male         147     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       126     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         128     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       126     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         121     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         183     369
6 months    ki1000108-IRC              INDIA                          Female       183     407
6 months    ki1000108-IRC              INDIA                          Male         224     407
6 months    ki1000109-EE               PAKISTAN                       Female       182     372
6 months    ki1000109-EE               PAKISTAN                       Male         190     372
6 months    ki1000109-ResPak           PAKISTAN                       Female       111     235
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       609    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         727    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       201     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         179     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         292     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       276     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         307     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1026    2029
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         290     563
6 months    ki1114097-CMIN             BANGLADESH                     Female       106     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         137     243
6 months    ki1114097-CMIN             BRAZIL                         Female        55     108
6 months    ki1114097-CMIN             BRAZIL                         Male          53     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female       420     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male         428     848
6 months    ki1114097-CMIN             PERU                           Female       292     637
6 months    ki1114097-CMIN             PERU                           Male         345     637
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      8142   15761
6 months    ki1119695-PROBIT           BELARUS                        Male        7619   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4031    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4264    8295
6 months    ki1135781-COHORTS          GUATEMALA                      Female       456     961
6 months    ki1135781-COHORTS          GUATEMALA                      Male         505     961
6 months    ki1135781-COHORTS          INDIA                          Female      3287    6860
6 months    ki1135781-COHORTS          INDIA                          Male        3573    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1276    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1432    2708
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8249   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8562   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      2407    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        2424    4831
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female       104     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         108     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Female        79     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Male          90     169
24 months   ki0047075b-MAL-ED          INDIA                          Female       122     227
24 months   ki0047075b-MAL-ED          INDIA                          Male         105     227
24 months   ki0047075b-MAL-ED          NEPAL                          Female       106     228
24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     228
24 months   ki0047075b-MAL-ED          PERU                           Female        91     201
24 months   ki0047075b-MAL-ED          PERU                           Male         110     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       118     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         120     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       106     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         186     372
24 months   ki1000108-IRC              INDIA                          Female       185     409
24 months   ki1000108-IRC              INDIA                          Male         224     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         234     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       278     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         299     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       822    1725
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       233     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         266     499
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     242
24 months   ki1114097-CMIN             BANGLADESH                     Male         138     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female       272     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male         279     551
24 months   ki1114097-CMIN             PERU                           Female       199     429
24 months   ki1114097-CMIN             PERU                           Male         230     429
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female      2081    4035
24 months   ki1119695-PROBIT           BELARUS                        Male        1954    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       267     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         190     457
24 months   ki1135781-COHORTS          GUATEMALA                      Female       514    1073
24 months   ki1135781-COHORTS          GUATEMALA                      Male         559    1073
24 months   ki1135781-COHORTS          INDIA                          Female      2545    5340
24 months   ki1135781-COHORTS          INDIA                          Male        2795    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1287    2445
24 months   ki1148112-LCNI-5           MALAWI                         Female       294     579
24 months   ki1148112-LCNI-5           MALAWI                         Male         285     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4168    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4464    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      2376    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        2376    4752


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/fc183572-e6b4-41de-b7e9-20db70e108bf/1af27f78-dc39-4447-aae8-8c6c61f7e623/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1165304   -1.3004015   -0.9326593
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.8605521   -1.0959461   -0.6251582
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0708199   -1.2561918   -0.8854480
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6451522   -0.8485623   -0.4417421
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9180934   -1.0668181   -0.7693686
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7766277   -0.9770332   -0.5762221
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9997621   -1.2815410   -0.7179833
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0812439   -1.3875030   -0.7749849
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4095115   -0.6505115   -0.1685115
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.5672823   -1.7130844   -1.4214803
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2515438   -0.8215008    0.3184132
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2702190   -1.7401412   -0.8002968
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0494869   -0.1442750    0.0453013
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2304057   -0.5313910    0.0705796
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.6967832    1.5325877    1.8609786
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4453775   -0.4751875   -0.4155676
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1955315    0.0768310    0.3142320
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6311429   -0.6710944   -0.5911915
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1658611   -0.2227412   -0.1089810
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5433237   -1.5679458   -1.5187016
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4533517   -1.5784281   -1.3282754
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0533299   -1.2029888   -0.9036710
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1559087   -0.0372485    0.3490658
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1024882   -1.2441039   -0.9608724
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5252856   -0.6741621   -0.3764091
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0994998   -1.2431750   -0.9558246
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9942984   -1.1694553   -0.8191415
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2546244   -1.4250542   -1.0841945
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2607701   -1.4478667   -1.0736735
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1163412   -1.3194579   -0.9132245
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.1190427   -2.2802147   -1.9578707
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -1.6549001   -1.9261691   -1.3836310
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4892038   -1.5676877   -1.4107199
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -2.0378692   -2.1972137   -1.8785246
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3304500   -1.4499851   -1.2109148
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0217480   -1.1256214   -0.9178746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1487078   -1.2486248   -1.0487908
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4383270   -0.5047194   -0.3719347
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8632144   -0.9276861   -0.7987426
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4428165   -1.5846777   -1.3009553
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2891367   -1.3922512   -1.1860221
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -1.8433725   -2.0432253   -1.6435197
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.4681368   -0.6830571   -0.2532165
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4658920   -0.5653083   -0.3664756
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4137548   -0.5282218   -0.2992879
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.5399281    0.3430997    0.7367566
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8275132    0.7267405    0.9282860
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7760258   -0.8117578   -0.7402938
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7053636   -1.7991574   -1.6115698
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9400827   -0.9784225   -0.9017430
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9990765   -1.0575272   -0.9406259
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4615640   -1.5515026   -1.3716253
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2154350   -1.2435405   -1.1873294
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2660750   -1.3147823   -1.2173678
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.9009104   -2.0815499   -1.7202709
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2359053    0.0229576    0.4488529
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6912370   -1.8552966   -1.5271774
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.2242516   -1.4025314   -1.0459718
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5625545   -1.7382616   -1.3868475
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4359569   -1.6211766   -1.2507372
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4834114   -2.6741870   -2.2926357
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4283504   -2.5542169   -2.3024839
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7376825   -1.8739777   -1.6013872
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -2.2737122   -2.4091272   -2.1382971
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6928006   -1.8119676   -1.5736336
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4574479   -1.5691298   -1.3457661
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5260407   -1.5969465   -1.4551350
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -2.0013920   -2.1231866   -1.8795973
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -2.4520264   -2.6302665   -2.2737862
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -1.4621119   -1.6034426   -1.3207813
24 months   ki1114097-CMIN             PERU                           optimal              observed          -1.4653205   -1.6013972   -1.3292438
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.1951569   -0.4036584    0.0133445
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2353017   -0.1741572    0.6447607
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2340215   -2.3573670   -2.1106760
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8265883   -2.9171735   -2.7360032
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9428268   -1.9886612   -1.8969924
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3564454   -2.4205731   -2.2923176
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7569248   -1.8598631   -1.6539864
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9828083   -2.0190482   -1.9465685
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7305825   -1.7768035   -1.6843615


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1114097-CMIN             BRAZIL                         observed             observed           0.0576522   -0.1471825    0.2624869
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747407   -1.5944667   -1.5550147
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -1.4029220   -1.6085859   -1.1972581
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             BRAZIL                         observed             observed          -0.6841667   -0.8870073   -0.4813261
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.6075943   -0.6832781   -0.5319106
6 months    ki1114097-CMIN             PERU                           observed             observed          -0.5132548   -0.5926717   -0.4338380
6 months    ki1114097-CONTENT          PERU                           observed             observed          -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8907480   -0.9167182   -0.8647779
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5626652   -1.6124881   -1.5128424
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -1.5745644   -1.6739586   -1.4751703
24 months   ki1114097-CMIN             PERU                           observed             observed          -1.5807226   -1.6772768   -1.4841684
24 months   ki1114097-CONTENT          PERU                           observed             observed          -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8612302   -2.9255771   -2.7968833
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9067566   -1.9394274   -1.8740857
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0126460   -2.0403823   -1.9849097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7582681   -1.7937283   -1.7228079


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0321335   -0.0969139    0.1611808
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0996097   -0.0635398    0.2627593
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0601889   -0.0723212    0.1926989
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0637495   -0.2270776    0.0995786
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0141366   -0.1222536    0.0939804
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0500246   -0.0809955    0.1810447
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0659410   -0.1553546    0.2872366
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1157995   -0.0977884    0.3293873
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1014703   -0.0751785    0.2781191
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1726299    0.0542399    0.2910200
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2777419   -0.5898054    0.0343216
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1602190   -0.2477133    0.5681514
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0836335    0.0203053    0.1469617
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.2880579    0.0832603    0.4928555
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3713057   -0.3968037   -0.3458076
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0555885   -0.0767207   -0.0344563
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0658014   -0.1454382    0.0138353
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0387531   -0.0679705   -0.0095358
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0831881   -0.1246374   -0.0417387
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0314171   -0.0479587   -0.0148754
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0443125   -0.1256857    0.0370607
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1523478   -0.2685271   -0.0361686
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1048879   -0.2521722    0.0423963
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1178791   -0.2286223   -0.0071358
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0357737   -0.1555807    0.0840332
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2273011   -0.3437934   -0.1108089
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0690776   -0.1985971    0.0604419
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1054971   -0.2265612    0.0155670
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1626807   -0.3032765   -0.0220848
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1180650   -0.2645795    0.0284495
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0814278   -0.2073792    0.0445237
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed           0.2519781    0.0389167    0.4650394
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0873475    0.0231158    0.1515793
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1391850    0.0225660    0.2558039
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0769321   -0.1727887    0.0189246
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0653561   -0.1459430    0.0152309
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0499705   -0.1206971    0.0207561
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1051119   -0.1546175   -0.0556062
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0409225   -0.0895883    0.0077432
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1190843   -0.2290801   -0.0090886
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0430155   -0.1236655    0.0376345
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0589349   -0.0925725    0.2104423
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.2160298   -0.4184833   -0.0135764
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1417024   -0.2182333   -0.0651714
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.0995000   -0.1859249   -0.0130751
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.8538498   -1.0298771   -0.6778226
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.7205146   -0.7500570   -0.6909723
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1147222   -0.1413787   -0.0880658
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1103700   -0.1816919   -0.0390482
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0567627   -0.0856259   -0.0278996
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1414958   -0.1857400   -0.0972516
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1986267   -0.2683468   -0.1289067
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0976582   -0.1153800   -0.0799365
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0787190   -0.1123509   -0.0450871
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0422028   -0.1734342    0.0890286
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1940710   -0.3714383   -0.0167037
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1545780   -0.2732496   -0.0359063
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0509677   -0.1626731    0.0607376
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1875450   -0.3204899   -0.0546000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1868792   -0.3243559   -0.0494026
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1224765   -0.2605370    0.0155840
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1310179   -0.2321692   -0.0298666
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0447951   -0.1484098    0.0588195
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0929177   -0.0073140    0.1931494
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1066827    0.0247028    0.1886627
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0279148   -0.0564670    0.1122967
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0366245   -0.0888725    0.0156235
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1178015    0.0331855    0.2024175
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0589240   -0.1659881    0.0481400
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1124525   -0.2137373   -0.0111677
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1154021   -0.2197574   -0.0110468
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.5010626   -0.6717305   -0.3303946
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.3667065   -0.5194216   -0.2139914
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1654315   -0.2691278   -0.0617351
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0346418   -0.1016699    0.0323862
24 months   ki1135781-COHORTS          INDIA                          optimal              observed           0.0360703    0.0043083    0.0678322
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0334197   -0.0806202    0.0137809
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1185157   -0.1985450   -0.0384863
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0298377   -0.0533868   -0.0062885
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0276856   -0.0583677    0.0029964
