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
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female        71     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male          95     166
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
Birth       ki1119695-PROBIT           BELARUS                        Female      7142   13824
Birth       ki1119695-PROBIT           BELARUS                        Male        6682   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female      6221   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male        6695   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Female       360     756
Birth       ki1135781-COHORTS          GUATEMALA                      Male         396     756
Birth       ki1135781-COHORTS          INDIA                          Female      2952    6193
Birth       ki1135781-COHORTS          INDIA                          Male        3241    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Female      1360    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Male        1539    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female      7412   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male        8297   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female       314     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male         369     683
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female       610    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male         724    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       202     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         178     380
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
6 months    ki1119695-PROBIT           BELARUS                        Female      8138   15757
6 months    ki1119695-PROBIT           BELARUS                        Male        7619   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      4020    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        4244    8264
6 months    ki1135781-COHORTS          GUATEMALA                      Female       456     963
6 months    ki1135781-COHORTS          GUATEMALA                      Male         507     963
6 months    ki1135781-COHORTS          INDIA                          Female      3284    6850
6 months    ki1135781-COHORTS          INDIA                          Male        3566    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    Female      1275    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Male        1431    2706
6 months    ki1148112-LCNI-5           MALAWI                         Female       420     839
6 months    ki1148112-LCNI-5           MALAWI                         Male         419     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      8234   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        8550   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      2408    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        2425    4833
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
24 months   ki1119695-PROBIT           BELARUS                        Female      2047    3971
24 months   ki1119695-PROBIT           BELARUS                        Male        1924    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       256     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         167     423
24 months   ki1135781-COHORTS          GUATEMALA                      Female       516    1082
24 months   ki1135781-COHORTS          GUATEMALA                      Male         566    1082
24 months   ki1135781-COHORTS          INDIA                          Female      2521    5291
24 months   ki1135781-COHORTS          INDIA                          Male        2770    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1158    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1291    2449
24 months   ki1148112-LCNI-5           MALAWI                         Female       286     563
24 months   ki1148112-LCNI-5           MALAWI                         Male         277     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      4152    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        4451    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      2367    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        2368    4735


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
![](/tmp/da354c35-6862-4e14-ab15-819e7e4684ac/e08d7bfc-4aba-4bf8-8e81-59bd8080e003/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8782984   -1.0858478   -0.6707490
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3557434    0.1121332    0.5993537
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1029534   -1.3054552   -0.9004516
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7685651   -0.9696116   -0.5675186
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1586221   -0.3161266   -0.0011176
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0994699   -0.3058777    0.1069379
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9168107    0.6240780    1.2095434
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2515052   -0.7387186    0.2357081
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9194530   -1.1766184   -0.6622876
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1697563   -0.4841521    0.1446395
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1227641   -1.6299138   -0.6156145
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5035724   -1.2475100    0.2403652
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.9035933    1.7902738    2.0169128
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed          -0.5140667   -0.7915484   -0.2365850
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1276895   -1.3472873   -0.9080917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4223347   -0.4584503   -0.3862192
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9483710   -1.0927605   -0.8039815
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.0047961   -1.0455374   -0.9640549
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7724785   -0.8390820   -0.7058750
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7046352   -0.7301219   -0.6791484
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4478087   -0.5592598   -0.3363576
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0302816   -0.1580749    0.2186381
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0531324    0.8247740    1.2814909
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8853556   -1.0720957   -0.6986154
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2161254    0.0276301    0.4046207
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1422570    0.9639161    1.3205979
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6031757    0.3948609    0.8114905
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4066861    0.2210798    0.5922924
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3828573   -0.6078234   -0.1578912
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7918457   -0.9808067   -0.6028848
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6549977   -0.8137620   -0.4962334
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0826962   -0.3482519    0.1828596
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6502378   -0.8110814   -0.4893942
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8780990   -1.0335185   -0.7226796
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4166035   -0.5423768   -0.2908301
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1710864   -0.2946834   -0.0474894
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0555736   -0.1720738    0.0609267
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1108053    0.0403960    0.1812145
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2403297   -0.3097654   -0.1708940
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0120137   -0.1556112    0.1315838
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5741343   -0.6875504   -0.4607182
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.6247942   -0.8344948   -0.4150936
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed           0.6678562    0.3820148    0.9536976
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0006598   -0.0989531    0.0976334
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.5585075    0.4274061    0.6896089
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.1946547    1.0239617    1.3653477
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8143931    0.7548644    0.8739218
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2668597    0.2294416    0.3042778
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2814015    0.1874459    0.3753571
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6599922   -0.6986610   -0.6213234
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3604257   -0.4214667   -0.2993846
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4172284    0.3124644    0.5219925
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5878195   -0.6149021   -0.5607369
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3973511   -0.4488780   -0.3458242
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7941787   -0.9641191   -0.6242383
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5202974    0.2330453    0.8075496
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9030517   -1.0595164   -0.7465870
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3480571   -0.5065646   -0.1895497
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0477517   -0.1428624    0.2383659
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3027102    0.1235138    0.4819065
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0054945   -0.1839260    0.1729370
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5349238   -0.6669105   -0.4029371
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7844055   -0.9169002   -0.6519108
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8627915   -1.0069909   -0.7185921
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8434307   -0.9619761   -0.7248853
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6843503   -0.8114190   -0.5572816
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7855641   -0.8522304   -0.7188978
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0521358   -1.1733200   -0.9309517
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7949732   -0.9426115   -0.6473350
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0846728   -0.2002107    0.0308650
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.7636384    0.6548798    0.8723970
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.8024158    0.6154884    0.9893431
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8968721    0.7749990    1.0187452
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0123884   -1.1309432   -0.8938335
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2556982   -0.3343961   -0.1770003
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5528385   -0.5919054   -0.5137717
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5959855   -0.6469446   -0.5450264
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1192490   -0.2316871   -0.0068109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2641042   -1.2953844   -1.2328241
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1856333   -1.2279831   -1.1432835


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1114097-CMIN             BRAZIL                         observed             observed          -0.1332432   -0.3441055    0.0776190
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3683163   -0.4490504   -0.2875821
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
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
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0847721   -0.2194796    0.0499354
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0481363   -0.1185644    0.2148371
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0338401   -0.0980588    0.1657391
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1358992   -0.2736423    0.0018439
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0850379   -0.0320662    0.2021419
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0431908   -0.1002270    0.1866087
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1235904   -0.3259128    0.0787321
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3759948   -0.7462620   -0.0057275
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0911301   -0.2525010    0.0702408
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1000028   -0.2380722    0.0380666
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3011644   -0.7292207    0.1268919
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2472972   -0.8957361    0.4011417
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1999742   -0.2810778   -0.1188706
Birth       ki1114097-CMIN             BRAZIL                         optimal              observed           0.3808235    0.1723071    0.5893398
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0186574   -0.0415824    0.0042676
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0928077   -0.1177224   -0.0678931
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1137718   -0.2198606   -0.0076831
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0200505   -0.0086588    0.0487597
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0297534   -0.0189561    0.0784630
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0194644   -0.0346433   -0.0042855
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0794924   -0.0033601    0.1623450
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1700776   -0.3036831   -0.0364720
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0814100   -0.2450680    0.0822481
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1819587    0.0492265    0.3146908
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1050802   -0.2271680    0.0170076
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0878614   -0.1999635    0.0242407
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0611022   -0.2153667    0.0931622
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1103652   -0.0220783    0.2428086
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1198194   -0.2737580    0.0341193
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1929160    0.0598575    0.3259745
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0662789   -0.1841078    0.0515500
6 months    ki1000109-ResPak           PAKISTAN                       optimal              observed          -0.0856655   -0.2812057    0.1098746
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0154706   -0.0591125    0.0281713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1340589   -0.2438799   -0.0242378
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0223067   -0.1036039    0.0589906
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0372841   -0.1174667    0.0428985
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0853358    0.0053962    0.1652754
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0298721   -0.0830626    0.0233184
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0557074    0.0042426    0.1071721
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0719997   -0.1807132    0.0367139
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0306644   -0.1194523    0.0581235
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0467489   -0.0813325    0.1748304
6 months    ki1114097-CMIN             BRAZIL                         optimal              observed          -0.0788747   -0.2892479    0.1314984
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0411482   -0.1201685    0.0378722
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.1135942    0.0219368    0.2052515
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.1262229   -0.2470458   -0.0054000
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2354298   -0.2539114   -0.2169483
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0378541    0.0119259    0.0637823
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0873205   -0.1620918   -0.0125492
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0308881   -0.0573348   -0.0044414
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0665824    0.0261167    0.1070480
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0327001   -0.0386469    0.1040471
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0056967   -0.0226399    0.0112466
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0075456   -0.0262810    0.0413722
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0266468   -0.1466933    0.0933998
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0736702   -0.2679628    0.1206224
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0492390   -0.1572953    0.0588172
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0283902   -0.1346801    0.0778997
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0721488   -0.0385731    0.1828707
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1239915    0.0035619    0.2444212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0555880   -0.0709931    0.1821691
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0222268   -0.1243064    0.0798529
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0385905   -0.0583363    0.1355173
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0487875   -0.1561892    0.0586142
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0445105   -0.1241751    0.0351542
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0740002   -0.0204759    0.1684762
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0243649   -0.0736982    0.0249683
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0794505   -0.1729204    0.0140193
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.0585659   -0.1832543    0.0661225
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0595710   -0.1489225    0.0297806
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.1158606   -0.2014267   -0.0302945
24 months   ki1114097-CONTENT          PERU                           optimal              observed          -0.2355865   -0.3715572   -0.0996157
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2105286   -0.2549083   -0.1661489
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1686046   -0.2526530   -0.0845561
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0258822   -0.0824370    0.0306726
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0544852   -0.0838960   -0.0250744
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0139736   -0.0526665    0.0247192
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0713982   -0.0107386    0.1535350
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0336988   -0.0553465   -0.0120512
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0374755   -0.0693332   -0.0056178
