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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female       119     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male         122     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Female        86     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Male          97     183
Birth       ki0047075b-MAL-ED          INDIA                          Female       108     203
Birth       ki0047075b-MAL-ED          INDIA                          Male          95     203
Birth       ki0047075b-MAL-ED          NEPAL                          Female        82     168
Birth       ki0047075b-MAL-ED          NEPAL                          Male          86     168
Birth       ki0047075b-MAL-ED          PERU                           Female       127     279
Birth       ki0047075b-MAL-ED          PERU                           Male         152     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female       128     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male         130     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female        58     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male          60     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female        46      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male          42      88
Birth       ki1000108-IRC              INDIA                          Female       148     343
Birth       ki1000108-IRC              INDIA                          Male         195     343
Birth       ki1000109-EE               PAKISTAN                       Female         0       1
Birth       ki1000109-EE               PAKISTAN                       Male           1       1
Birth       ki1000109-ResPak           PAKISTAN                       Female         2       6
Birth       ki1000109-ResPak           PAKISTAN                       Male           4       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female        28      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male          33      61
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female        12      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male          16      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female         9      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male          14      23
Birth       ki1101329-Keneba           GAMBIA                         Female       696    1423
Birth       ki1101329-Keneba           GAMBIA                         Male         727    1423
Birth       ki1114097-CMIN             BANGLADESH                     Female         5       8
Birth       ki1114097-CMIN             BANGLADESH                     Male           3       8
Birth       ki1114097-CMIN             BRAZIL                         Female        57     111
Birth       ki1114097-CMIN             BRAZIL                         Male          54     111
Birth       ki1114097-CMIN             PERU                           Female         7      10
Birth       ki1114097-CMIN             PERU                           Male           3      10
Birth       ki1114097-CONTENT          PERU                           Female         2       2
Birth       ki1114097-CONTENT          PERU                           Male           0       2
Birth       ki1119695-PROBIT           BELARUS                        Female      3500    6739
Birth       ki1119695-PROBIT           BELARUS                        Male        3239    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6221   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        6695   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Female       172     375
Birth       ki1135781-COHORTS          GUATEMALA                      Male         203     375
Birth       ki1135781-COHORTS          INDIA                          Female      2952    6193
Birth       ki1135781-COHORTS          INDIA                          Male        3241    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1360    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1539    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      3634    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        4053    7687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female        84     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male         101     185
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       186     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         182     368
6 months    ki1000108-IRC              INDIA                          Female       184     408
6 months    ki1000108-IRC              INDIA                          Male         224     408
6 months    ki1000109-EE               PAKISTAN                       Female       182     376
6 months    ki1000109-EE               PAKISTAN                       Male         194     376
6 months    ki1000109-ResPak           PAKISTAN                       Female       111     235
6 months    ki1000109-ResPak           PAKISTAN                       Male         124     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       190     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         221     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female        56      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male          41      97
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female       245     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male         291     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female       276     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male         306     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       362     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         353     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1025    2028
6 months    ki1101329-Keneba           GAMBIA                         Female      1011    2089
6 months    ki1101329-Keneba           GAMBIA                         Male        1078    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       153     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         146     299
6 months    ki1113344-GMS-Nepal        NEPAL                          Female       273     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Male         290     563
6 months    ki1114097-CMIN             BANGLADESH                     Female       105     243
6 months    ki1114097-CMIN             BANGLADESH                     Male         138     243
6 months    ki1114097-CMIN             BRAZIL                         Female        55     108
6 months    ki1114097-CMIN             BRAZIL                         Male          53     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female       420     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male         429     849
6 months    ki1114097-CMIN             PERU                           Female       292     636
6 months    ki1114097-CMIN             PERU                           Male         344     636
6 months    ki1114097-CONTENT          PERU                           Female       106     215
6 months    ki1114097-CONTENT          PERU                           Male         109     215
6 months    ki1119695-PROBIT           BELARUS                        Female      3959    7664
6 months    ki1119695-PROBIT           BELARUS                        Male        3705    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4020    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4244    8264
6 months    ki1135781-COHORTS          GUATEMALA                      Female       216     465
6 months    ki1135781-COHORTS          GUATEMALA                      Male         249     465
6 months    ki1135781-COHORTS          INDIA                          Female      3284    6850
6 months    ki1135781-COHORTS          INDIA                          Male        3566    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1275    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1431    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      4107    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        4201    8308
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female       645    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male         611    1256
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       195     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         233     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       278     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         300     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       260     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         254     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ki1101329-Keneba           GAMBIA                         Female       823    1726
24 months   ki1101329-Keneba           GAMBIA                         Male         903    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          Female       232     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Male         266     498
24 months   ki1114097-CMIN             BANGLADESH                     Female       104     243
24 months   ki1114097-CMIN             BANGLADESH                     Male         139     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female       272     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male         279     551
24 months   ki1114097-CMIN             PERU                           Female       199     429
24 months   ki1114097-CMIN             PERU                           Male         230     429
24 months   ki1114097-CONTENT          PERU                           Female        83     164
24 months   ki1114097-CONTENT          PERU                           Male          81     164
24 months   ki1119695-PROBIT           BELARUS                        Female       842    1589
24 months   ki1119695-PROBIT           BELARUS                        Male         747    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       256     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         167     423
24 months   ki1135781-COHORTS          GUATEMALA                      Female       247     528
24 months   ki1135781-COHORTS          GUATEMALA                      Male         281     528
24 months   ki1135781-COHORTS          INDIA                          Female      2521    5291
24 months   ki1135781-COHORTS          INDIA                          Male        2770    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1291    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female       286     563
24 months   ki1148112-LCNI-5           MALAWI                         Male         277     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      2079    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        2203    4282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female       644    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male         605    1249


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
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/eb321b08-1003-4c95-a2a2-42e220f317b1/62fe7a04-e337-4bbe-a3d2-b3c169d1b46b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8805097   -1.0891073   -0.6719121
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2633324    0.0206371    0.5060277
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2117884   -1.4089778   -1.0145990
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7722035   -0.9731087   -0.5712983
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0475967   -0.2056797    0.1104863
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0259856   -0.2386622    0.1866909
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9130214    0.6167651    1.2092777
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2611511   -0.7464559    0.2241537
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9215047   -1.1788937   -0.6641156
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4417127   -0.8478878   -0.0355377
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0636715   -1.5502545   -0.5770886
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4274972   -1.1064789    0.2514845
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.9029985    1.7896253    2.0163716
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.4126705   -0.7444478   -0.0808933
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2151072   -1.5625458   -0.8676686
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4224205   -0.4585329   -0.3863081
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1069560   -1.3105055   -0.9034065
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9781523   -1.0191395   -0.9371651
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7176452   -0.7853374   -0.6499530
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7539729   -0.7868893   -0.7210564
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2408813   -0.4634502   -0.0183125
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0323112   -0.1545557    0.2191780
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0478684    0.8193637    1.2763731
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8913699   -1.0576346   -0.7251053
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2192030    0.0282179    0.4101881
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1429630    0.9635141    1.3224119
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6011141    0.3930587    0.8091696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3661791    0.1904713    0.5418869
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3785542   -0.6041747   -0.1529338
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.8183620   -0.9956439   -0.6410802
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6568161   -0.8142783   -0.4993539
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0829315   -0.3503022    0.1844392
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8669950   -1.0255872   -0.7084029
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9351003   -1.2385842   -0.6316165
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4181905   -0.5443020   -0.2920790
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1743146   -0.2975058   -0.0511233
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0736644   -0.1811531    0.0338242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1107200    0.0402489    0.1811911
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2711113   -0.3436872   -0.1985354
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0081284   -0.1523535    0.1360968
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5720356   -0.6856704   -0.4584007
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.5299305   -0.7357006   -0.3241603
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           0.6650796    0.3755408    0.9546183
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0000269   -0.0981915    0.0981376
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.5552787    0.4375832    0.6729743
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2017391    1.0308400    1.3726381
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8005511    0.7192430    0.8818592
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2645000    0.2269482    0.3020517
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1881899    0.0436883    0.3326915
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6599894   -0.6986669   -0.6213119
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3090111   -0.3691128   -0.2489094
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4640376    0.3596452    0.5684301
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5980491   -0.6368144   -0.5592838
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3233295   -0.4271663   -0.2194928
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7928452   -0.9637509   -0.6219395
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5233885    0.2385114    0.8082655
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9011539   -1.0579366   -0.7443712
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3476325   -0.5066105   -0.1886546
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0233918   -0.2058562    0.1590725
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2953622    0.1256871    0.4650374
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1094681   -0.2676278    0.0486916
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5870913   -0.7221603   -0.4520224
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8097107   -0.9284920   -0.6909294
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8654440   -1.0091636   -0.7217245
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8447683   -0.9635874   -0.7259491
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6430683   -0.7627974   -0.5233393
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7849010   -0.8515179   -0.7182842
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0527389   -1.1739807   -0.9314970
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7893984   -0.9368765   -0.6419203
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0830552   -0.1988105    0.0327000
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7625436    0.6541918    0.8708955
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8024550    0.6140107    0.9908994
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           1.0013368    0.8351726    1.1675009
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0104685   -1.1292127   -0.8917244
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5261608   -0.6329447   -0.4193768
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5531170   -0.5921745   -0.5140595
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5970185   -0.6480372   -0.5459997
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1447042   -0.2588361   -0.0305723
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2581511   -1.3013245   -1.2149776
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2413142   -1.3363869   -1.1462414


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2627733   -1.4008778   -1.1246688
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667165   -0.7936151   -0.7398180
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.2903784   -0.4497929   -0.1309639
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7212766   -0.8346857   -0.6078675
6 months    ki1000109-ResPak           PAKISTAN                       observed             observed          -0.1683617   -0.3528233    0.0160999
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7979562   -0.9920947   -0.6038177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1301031   -1.3613760   -0.8988302
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             BRAZIL                         observed             observed           0.5889815    0.3767666    0.8011963
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0489462   -0.0602343    0.1581267
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5899579   -0.6174529   -0.5624628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3688177   -0.4396618   -0.2979735
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5466477   -0.6220084   -0.4712871
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2928515   -1.3253331   -1.2603698
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2294796   -1.2885986   -1.1703606


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0825609   -0.2178019    0.0526801
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1405474   -0.0312496    0.3123444
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1426751    0.0080629    0.2772873
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1322608   -0.2696655    0.0051439
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0259875   -0.1465386    0.0945636
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0302934   -0.1740656    0.1134787
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1198011   -0.3251772    0.0855751
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3663489   -0.7359436    0.0032458
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0890784   -0.2507514    0.0725945
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0594176   -0.0198660    0.1387012
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3602570   -0.7787566    0.0582425
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3233723   -0.9170742    0.2703296
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1993793   -0.2805169   -0.1182418
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.2794273    0.0603099    0.4985447
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0273805   -0.0163389    0.0711000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0927220   -0.1176339   -0.0678101
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1558173   -0.3070607   -0.0045739
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0065934   -0.0350450    0.0218583
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0250799   -0.0744280    0.0242683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0127437   -0.0342286    0.0087413
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0494970   -0.2295394    0.1305453
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1721072   -0.3042468   -0.0399675
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0761460   -0.2398084    0.0875165
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1879730    0.0594570    0.3164891
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1081578   -0.2323574    0.0160418
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0885674   -0.2012480    0.0241133
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0590406   -0.2131712    0.0950899
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1508721    0.0192307    0.2825136
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1241224   -0.2788317    0.0305869
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.2194323    0.0871934    0.3516712
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0644605   -0.1813057    0.0523848
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0854302   -0.2822459    0.1113855
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0690388    0.0153648    0.1227129
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1950027   -0.3957137    0.0057082
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0207196   -0.1022252    0.0607859
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0340560   -0.1139193    0.0458073
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1034267    0.0245184    0.1823350
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0297868   -0.0830176    0.0234439
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0864890    0.0357219    0.1372561
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0758850   -0.1851587    0.0333887
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0327631   -0.1217131    0.0561868
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0481148   -0.1736578    0.0774282
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0760981   -0.2898845    0.1376883
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0417811   -0.1207599    0.0371977
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.1168230    0.0254179    0.2082280
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1333073   -0.2544951   -0.0121195
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2195444   -0.2400574   -0.1990314
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0402139    0.0144495    0.0659782
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1392436   -0.2553756   -0.0231117
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0308909   -0.0573442   -0.0044376
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0151678   -0.0240436    0.0543792
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0141091   -0.0855655    0.0573472
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0080912   -0.0168838    0.0330662
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0454881   -0.1098207    0.0188444
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0279803   -0.1486593    0.0926988
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0767612   -0.2694064    0.1158839
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0511369   -0.1593614    0.0570876
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0288149   -0.1354658    0.0778361
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1432923    0.0250494    0.2615353
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1313394    0.0124438    0.2502351
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1595616    0.0339575    0.2851657
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0299408   -0.0719087    0.1317903
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0638957   -0.0288607    0.1566522
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0461350   -0.1531203    0.0608502
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0431729   -0.1230280    0.0366821
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0327181   -0.0617819    0.1272182
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0250279   -0.0743291    0.0242732
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0788475   -0.1724131    0.0147181
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0641407   -0.1887391    0.0604578
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0611886   -0.1506554    0.0282782
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1147659   -0.2000079   -0.0295238
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2356257   -0.3726142   -0.0986373
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1951767   -0.2703915   -0.1199619
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1705244   -0.2548141   -0.0862347
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0204870   -0.0911773    0.0502033
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0542068   -0.0836156   -0.0247980
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0129407   -0.0516731    0.0257917
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0968534    0.0145293    0.1791775
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0347004   -0.0655018   -0.0038990
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0118346   -0.0562731    0.0799423
