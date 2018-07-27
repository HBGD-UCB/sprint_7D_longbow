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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        sex       n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female       123     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male         121     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female       266     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male         300     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female       301     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male         333     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       368     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         352     720
0-3 months     ki1114097-CMIN             BANGLADESH                     Female        17      43
0-3 months     ki1114097-CMIN             BANGLADESH                     Male          26      43
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      9886   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male       10159   20045
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       942    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         865    1807
0-3 months     ki1119695-PROBIT           BELARUS                        Female      6534   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Male        6211   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female        89     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male          91     180
0-3 months     ki1114097-CMIN             BRAZIL                         Female        40      81
0-3 months     ki1114097-CMIN             BRAZIL                         Male          41      81
0-3 months     ki1101329-Keneba           GAMBIA                         Female       606    1276
0-3 months     ki1101329-Keneba           GAMBIA                         Male         670    1276
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female       345     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male         383     728
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Female        11      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Male          11      22
0-3 months     ki0047075b-MAL-ED          INDIA                          Female       110     201
0-3 months     ki0047075b-MAL-ED          INDIA                          Male          91     201
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female        47      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male          40      87
0-3 months     ki1000108-IRC              INDIA                          Female       166     377
0-3 months     ki1000108-IRC              INDIA                          Male         211     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female       527    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male         641    1168
0-3 months     ki1135781-COHORTS          INDIA                          Female      3098    6465
0-3 months     ki1135781-COHORTS          INDIA                          Male        3367    6465
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female        87     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male          88     175
0-3 months     ki1000109-EE               PAKISTAN                       Female       144     297
0-3 months     ki1000109-EE               PAKISTAN                       Male         153     297
0-3 months     ki1000109-ResPak           PAKISTAN                       Female        37      78
0-3 months     ki1000109-ResPak           PAKISTAN                       Male          41      78
0-3 months     ki0047075b-MAL-ED          PERU                           Female       123     271
0-3 months     ki0047075b-MAL-ED          PERU                           Male         148     271
0-3 months     ki1114097-CMIN             PERU                           Female        45      93
0-3 months     ki1114097-CMIN             PERU                           Male          48      93
0-3 months     ki1114097-CONTENT          PERU                           Female        13      29
0-3 months     ki1114097-CONTENT          PERU                           Male          16      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       116     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         113     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       121     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         108     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      3833    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        4031    7864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female       119     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male         112     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female       239     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male         284     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female       272     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male         302     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female       358     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male         337     695
3-6 months     ki1114097-CMIN             BANGLADESH                     Female        86     185
3-6 months     ki1114097-CMIN             BANGLADESH                     Male          99     185
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female      6203   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male        6377   12580
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female       947    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male         893    1840
3-6 months     ki1119695-PROBIT           BELARUS                        Female      6859   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Male        6450   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female       102     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male         106     208
3-6 months     ki1114097-CMIN             BRAZIL                         Female        40      81
3-6 months     ki1114097-CMIN             BRAZIL                         Male          41      81
3-6 months     ki1101329-Keneba           GAMBIA                         Female       670    1397
3-6 months     ki1101329-Keneba           GAMBIA                         Male         727    1397
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female       387     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male         418     805
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Female        70     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Male          63     133
3-6 months     ki0047075b-MAL-ED          INDIA                          Female       126     229
3-6 months     ki0047075b-MAL-ED          INDIA                          Male         103     229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female       151     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male         156     307
3-6 months     ki1000108-IRC              INDIA                          Female       177     397
3-6 months     ki1000108-IRC              INDIA                          Male         220     397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female       511    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male         613    1124
3-6 months     ki1135781-COHORTS          INDIA                          Female      3150    6509
3-6 months     ki1135781-COHORTS          INDIA                          Male        3359    6509
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female       110     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male         123     233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female       226     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male         245     471
3-6 months     ki1000109-EE               PAKISTAN                       Female       162     331
3-6 months     ki1000109-EE               PAKISTAN                       Male         169     331
3-6 months     ki1000109-ResPak           PAKISTAN                       Female        73     156
3-6 months     ki1000109-ResPak           PAKISTAN                       Male          83     156
3-6 months     ki0047075b-MAL-ED          PERU                           Female       122     267
3-6 months     ki0047075b-MAL-ED          PERU                           Male         145     267
3-6 months     ki1114097-CMIN             PERU                           Female       189     407
3-6 months     ki1114097-CMIN             PERU                           Male         218     407
3-6 months     ki1114097-CONTENT          PERU                           Female       106     214
3-6 months     ki1114097-CONTENT          PERU                           Male         108     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female       116     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male         125     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       123     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         116     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       811    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         849    1660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female      2894    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male        2995    5889
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female       109     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male         111     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female       222     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male         260     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female       260     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male         285     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female       347     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male         329     676
6-12 months    ki1114097-CMIN             BANGLADESH                     Female        74     164
6-12 months    ki1114097-CMIN             BANGLADESH                     Male          90     164
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Female      4819    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Male        5020    9839
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      1603    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        1557    3160
6-12 months    ki1119695-PROBIT           BELARUS                        Female      6680   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Male        6216   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Female        93     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Male         101     194
6-12 months    ki1114097-CMIN             BRAZIL                         Female        48      93
6-12 months    ki1114097-CMIN             BRAZIL                         Male          45      93
6-12 months    ki1101329-Keneba           GAMBIA                         Female       632    1306
6-12 months    ki1101329-Keneba           GAMBIA                         Male         674    1306
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female        95     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male          86     181
6-12 months    ki1135781-COHORTS          GUATEMALA                      Female       404     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      Male         458     862
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Female        87     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Male          89     176
6-12 months    ki0047075b-MAL-ED          INDIA                          Female       120     224
6-12 months    ki0047075b-MAL-ED          INDIA                          Male         104     224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female       158     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male         165     323
6-12 months    ki1000108-IRC              INDIA                          Female       180     400
6-12 months    ki1000108-IRC              INDIA                          Male         220     400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female       508    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male         629    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       180     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         152     332
6-12 months    ki1135781-COHORTS          INDIA                          Female      2537    5270
6-12 months    ki1135781-COHORTS          INDIA                          Male        2733    5270
6-12 months    ki1148112-LCNI-5           MALAWI                         Female       223     434
6-12 months    ki1148112-LCNI-5           MALAWI                         Male         211     434
6-12 months    ki0047075b-MAL-ED          NEPAL                          Female       107     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          Male         123     230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Female       237     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Male         238     475
6-12 months    ki1000109-EE               PAKISTAN                       Female         1       4
6-12 months    ki1000109-EE               PAKISTAN                       Male           3       4
6-12 months    ki1000109-ResPak           PAKISTAN                       Female        66     138
6-12 months    ki1000109-ResPak           PAKISTAN                       Male          72     138
6-12 months    ki0047075b-MAL-ED          PERU                           Female       106     237
6-12 months    ki0047075b-MAL-ED          PERU                           Male         131     237
6-12 months    ki1114097-CMIN             PERU                           Female       162     360
6-12 months    ki1114097-CMIN             PERU                           Male         198     360
6-12 months    ki1114097-CONTENT          PERU                           Female       105     213
6-12 months    ki1114097-CONTENT          PERU                           Male         108     213
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Female      1150    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Male        1269    2419
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female       113     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male         119     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       111     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         112     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female       525    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male         558    1083
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female      2363    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male        2208    4571
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female        99     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male         107     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female       191     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male         230     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female       220     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male         238     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female       252     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male         243     495
12-24 months   ki1114097-CMIN             BANGLADESH                     Female        60     138
12-24 months   ki1114097-CMIN             BANGLADESH                     Male          78     138
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female      2216    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male        2437    4653
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female      1835    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male        1802    3637
12-24 months   ki1119695-PROBIT           BELARUS                        Female      1303    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Male        1230    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Female        76     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Male          89     165
12-24 months   ki1101329-Keneba           GAMBIA                         Female       561    1175
12-24 months   ki1101329-Keneba           GAMBIA                         Male         614    1175
12-24 months   ki1135781-COHORTS          GUATEMALA                      Female       417     877
12-24 months   ki1135781-COHORTS          GUATEMALA                      Male         460     877
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female        24      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male          26      50
12-24 months   ki0047075b-MAL-ED          INDIA                          Female       120     225
12-24 months   ki0047075b-MAL-ED          INDIA                          Male         105     225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female       157     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male         167     324
12-24 months   ki1000108-IRC              INDIA                          Female       178     396
12-24 months   ki1000108-IRC              INDIA                          Male         218     396
12-24 months   ki1135781-COHORTS          INDIA                          Female      2112    4442
12-24 months   ki1135781-COHORTS          INDIA                          Male        2330    4442
12-24 months   ki1148112-LCNI-5           MALAWI                         Female       165     310
12-24 months   ki1148112-LCNI-5           MALAWI                         Male         145     310
12-24 months   ki0047075b-MAL-ED          NEPAL                          Female       104     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          Male         122     226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Female       175     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Male         192     367
12-24 months   ki0047075b-MAL-ED          PERU                           Female        87     191
12-24 months   ki0047075b-MAL-ED          PERU                           Male         104     191
12-24 months   ki1114097-CMIN             PERU                           Female        90     199
12-24 months   ki1114097-CMIN             PERU                           Male         109     199
12-24 months   ki1114097-CONTENT          PERU                           Female        24      38
12-24 months   ki1114097-CONTENT          PERU                           Male          14      38
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Female      1080    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Male        1180    2260
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female       115     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male         115     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female       101     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male         106     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female       186     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male         117     303


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/00925161-9625-4b37-96a8-40d6192e3a17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/00925161-9625-4b37-96a8-40d6192e3a17/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0089246   -0.0348237    0.0526730
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0774451   -0.1231122   -0.0317780
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.2555422    0.1819740    0.3291104
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.1315528    0.0604048    0.2027008
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0286084   -0.0262492    0.0834660
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0798171   -0.1329662   -0.0266680
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0389272   -0.0082088    0.0860631
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                 0.1099077    0.0590276    0.1607878
0-3 months     ki0047075b-MAL-ED          PERU                           Female               NA                -0.0904542   -0.1356606   -0.0452477
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 NA                -0.2143348   -0.2585256   -0.1701440
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0714150   -0.1309272   -0.0119027
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.1331508   -0.1975322   -0.0687694
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0022801   -0.0592524    0.0546922
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0953359   -0.1449114   -0.0457604
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0893152   -0.2199218    0.0412914
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0544717   -0.2302509    0.1213076
0-3 months     ki1000108-IRC              INDIA                          Female               NA                -0.3046925   -0.3912665   -0.2181186
0-3 months     ki1000108-IRC              INDIA                          Male                 NA                -0.2239392   -0.2967658   -0.1511126
0-3 months     ki1000109-EE               PAKISTAN                       Female               NA                -0.3749165   -0.4336025   -0.3162304
0-3 months     ki1000109-EE               PAKISTAN                       Male                 NA                -0.4116730   -0.4731071   -0.3502388
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1026099   -0.3051854    0.0999656
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.2755148   -0.4785635   -0.0724661
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0366534    0.0051952    0.0681117
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.0076371   -0.0405313    0.0252572
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0933959   -0.1294410   -0.0573509
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.1419221   -0.1812904   -0.1025537
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0404708   -0.0648981   -0.0160434
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0420768   -0.0686629   -0.0154907
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.1076142   -0.1341704   -0.0810580
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.1372076   -0.1618908   -0.1125244
0-3 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.2714834   -0.3062315   -0.2367354
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 NA                -0.2973279   -0.3307250   -0.2639309
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0827711   -0.0300566    0.1955988
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                 0.0316668   -0.0604300    0.1237635
0-3 months     ki1114097-CMIN             BRAZIL                         Female               NA                -0.0481823   -0.1843956    0.0880310
0-3 months     ki1114097-CMIN             BRAZIL                         Male                 NA                -0.1215612   -0.2698226    0.0267001
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0144709   -0.1951530    0.1662113
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                 0.0856484   -0.1899287    0.3612256
0-3 months     ki1114097-CMIN             PERU                           Female               NA                -0.1130403   -0.2089328   -0.0171477
0-3 months     ki1114097-CMIN             PERU                           Male                 NA                -0.1213638   -0.2102532   -0.0324743
0-3 months     ki1114097-CONTENT          PERU                           Female               NA                 0.2185939    0.1156670    0.3215208
0-3 months     ki1114097-CONTENT          PERU                           Male                 NA                -0.1716006   -0.2739748   -0.0692264
0-3 months     ki1119695-PROBIT           BELARUS                        Female               NA                -0.3476793   -0.4115120   -0.2838465
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 NA                -0.5321764   -0.5874196   -0.4769332
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.1293566   -0.1442636   -0.1144496
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.1556172   -0.1701435   -0.1410909
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.5040455   -0.5360064   -0.4720846
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.5784696   -0.6083659   -0.5485733
0-3 months     ki1135781-COHORTS          INDIA                          Female               NA                -0.0527945   -0.0627614   -0.0428276
0-3 months     ki1135781-COHORTS          INDIA                          Male                 NA                -0.0710958   -0.0808289   -0.0613626
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0861357    0.0798746    0.0923967
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                 0.0553359    0.0485844    0.0620875
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0838923    0.0615954    0.1061891
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                 0.0492607    0.0293279    0.0691935
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0015016   -0.0338128    0.0308095
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0448542   -0.0774324   -0.0122760
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0247065   -0.0266041    0.0760172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0949240    0.0438384    0.1460095
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0639771   -0.1010002   -0.0269539
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0109470   -0.0542860    0.0323920
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0117571   -0.0460718    0.0225576
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0301263   -0.0700090    0.0097564
3-6 months     ki0047075b-MAL-ED          PERU                           Female               NA                 0.0254718   -0.0180928    0.0690364
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 NA                 0.0289860   -0.0148143    0.0727863
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0019754   -0.0503168    0.0463661
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                 0.0017314   -0.0566933    0.0601561
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0363215   -0.0810592    0.0084162
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1068334   -0.1522256   -0.0614411
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0470264   -0.1110122    0.0169594
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.1472641   -0.2167558   -0.0777724
3-6 months     ki1000108-IRC              INDIA                          Female               NA                -0.0006222   -0.0458605    0.0446161
3-6 months     ki1000108-IRC              INDIA                          Male                 NA                -0.0931405   -0.1326053   -0.0536757
3-6 months     ki1000109-EE               PAKISTAN                       Female               NA                 0.0595206    0.0170076    0.1020335
3-6 months     ki1000109-EE               PAKISTAN                       Male                 NA                 0.0802728    0.0430493    0.1174962
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0518158   -0.0320123    0.1356438
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 NA                 0.0273133   -0.0732202    0.1278467
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0391794   -0.0762847   -0.0020740
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                 0.0021584   -0.0230426    0.0273594
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0834301   -0.1128345   -0.0540257
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0235256   -0.0555122    0.0084610
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0172916   -0.0398891    0.0053060
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0362055   -0.0599008   -0.0125101
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0190258   -0.0036310    0.0416825
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                 0.0350051    0.0100734    0.0599368
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0653974   -0.0900416   -0.0407531
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1026822   -0.1251008   -0.0802636
3-6 months     ki1101329-Keneba           GAMBIA                         Female               NA                -0.0176650   -0.0434143    0.0080843
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0160018   -0.0423032    0.0102995
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.1493743   -0.1748410   -0.1239075
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.1813300   -0.2079434   -0.1547166
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0010816   -0.0475840    0.0454209
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0150949   -0.0605813    0.0303914
3-6 months     ki1114097-CMIN             BRAZIL                         Female               NA                -0.1114058   -0.2306806    0.0078689
3-6 months     ki1114097-CMIN             BRAZIL                         Male                 NA                -0.1741653   -0.3086657   -0.0396649
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0347897   -0.0237491    0.0933285
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                 0.0191703   -0.0567205    0.0950612
3-6 months     ki1114097-CMIN             PERU                           Female               NA                -0.0337946   -0.0620608   -0.0055284
3-6 months     ki1114097-CMIN             PERU                           Male                 NA                -0.0782896   -0.1118960   -0.0446832
3-6 months     ki1114097-CONTENT          PERU                           Female               NA                 0.0326337    0.0011179    0.0641495
3-6 months     ki1114097-CONTENT          PERU                           Male                 NA                -0.0067530   -0.0384200    0.0249139
3-6 months     ki1119695-PROBIT           BELARUS                        Female               NA                 0.0685841    0.0480409    0.0891274
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0242082    0.0034970    0.0449195
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0026526   -0.0105205    0.0158257
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0044656   -0.0176692    0.0087380
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0683108   -0.0883038   -0.0483178
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.1222871   -0.1432232   -0.1013509
3-6 months     ki1135781-COHORTS          INDIA                          Female               NA                -0.0565123   -0.0642753   -0.0487493
3-6 months     ki1135781-COHORTS          INDIA                          Male                 NA                -0.0556329   -0.0635928   -0.0476731
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0005045   -0.0067817    0.0057728
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.0063204   -0.0131924    0.0005517
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0063064   -0.0269680    0.0143552
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0119779   -0.0293201    0.0053642
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0921800   -0.1057023   -0.0786576
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0695048   -0.0848964   -0.0541133
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0182474   -0.0078071    0.0443019
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                -0.0041932   -0.0327526    0.0243663
6-12 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0730149   -0.0897457   -0.0562842
6-12 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0830464   -0.1007839   -0.0653089
6-12 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0532335   -0.0669508   -0.0395162
6-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0449668   -0.0608826   -0.0290509
6-12 months    ki0047075b-MAL-ED          PERU                           Female               NA                -0.0554795   -0.0743041   -0.0366548
6-12 months    ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0226128   -0.0426033   -0.0026223
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0330067   -0.0567808   -0.0092327
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0734910   -0.0981382   -0.0488438
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1218609   -0.1440074   -0.0997144
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.1261484   -0.1482773   -0.1040194
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.1010246   -0.1275798   -0.0744693
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0977258   -0.1289239   -0.0665278
6-12 months    ki1000108-IRC              INDIA                          Female               NA                -0.0411774   -0.0589459   -0.0234090
6-12 months    ki1000108-IRC              INDIA                          Male                 NA                -0.0136096   -0.0318450    0.0046259
6-12 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0132718   -0.0565204    0.0299768
6-12 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                -0.0014010   -0.0589330    0.0561310
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                -0.0860104   -0.0949848   -0.0770360
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                -0.0864106   -0.0960154   -0.0768059
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.1068109   -0.1459279   -0.0676939
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                -0.1094328   -0.1588546   -0.0600109
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0598110   -0.0729407   -0.0466814
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0473653   -0.0604359   -0.0342947
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0612622   -0.0710880   -0.0514364
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0638494   -0.0736394   -0.0540593
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0349730   -0.0450608   -0.0248852
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0279722   -0.0385121   -0.0174322
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0644376   -0.0779032   -0.0509720
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0555507   -0.0680860   -0.0430154
6-12 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0593221   -0.0706393   -0.0480049
6-12 months    ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0633620   -0.0742826   -0.0524415
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0695492   -0.0849390   -0.0541594
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                -0.0814165   -0.1026056   -0.0602275
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0633975   -0.0738321   -0.0529629
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0596025   -0.0723100   -0.0468951
6-12 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0951285   -0.1185072   -0.0717498
6-12 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0626415   -0.0812025   -0.0440805
6-12 months    ki1114097-CMIN             BRAZIL                         Female               NA                -0.0267627   -0.0715491    0.0180237
6-12 months    ki1114097-CMIN             BRAZIL                         Male                 NA                -0.0546706   -0.0969339   -0.0124074
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.1046800   -0.1331679   -0.0761921
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                -0.1336386   -0.1673816   -0.0998956
6-12 months    ki1114097-CMIN             PERU                           Female               NA                -0.0981943   -0.1127661   -0.0836226
6-12 months    ki1114097-CMIN             PERU                           Male                 NA                -0.0913295   -0.1064688   -0.0761903
6-12 months    ki1114097-CONTENT          PERU                           Female               NA                -0.0514460   -0.0677529   -0.0351390
6-12 months    ki1114097-CONTENT          PERU                           Male                 NA                 0.0052108   -0.0120637    0.0224854
6-12 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0144803   -0.0011803    0.0301410
6-12 months    ki1119695-PROBIT           BELARUS                        Male                 NA                 0.0721699    0.0542053    0.0901345
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0434087   -0.0497750   -0.0370424
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0555308   -0.0623408   -0.0487209
6-12 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.1100060   -0.1209188   -0.0990932
6-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.1083335   -0.1174949   -0.0991720
6-12 months    ki1135781-COHORTS          INDIA                          Female               NA                -0.0933329   -0.0980567   -0.0886092
6-12 months    ki1135781-COHORTS          INDIA                          Male                 NA                -0.0890898   -0.0940009   -0.0841786
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.1034811   -0.1106385   -0.0963238
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.0967293   -0.1039984   -0.0894601
6-12 months    ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0077344   -0.0233458    0.0078770
6-12 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0054930   -0.0207516    0.0097657
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0777595   -0.0814436   -0.0740753
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.0720280   -0.0759370   -0.0681189
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0405250   -0.0462759   -0.0347742
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0360931   -0.0424727   -0.0297135
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0198175   -0.0267483   -0.0128868
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                -0.0160277   -0.0241944   -0.0078609
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0039886   -0.0199661    0.0119890
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                 0.0009930   -0.0131469    0.0151328
12-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0099945   -0.0170135   -0.0029754
12-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                -0.0097562   -0.0172893   -0.0022232
12-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0343954   -0.0407365   -0.0280543
12-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                -0.0253478   -0.0329271   -0.0177685
12-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                -0.0054341   -0.0156424    0.0047742
12-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                -0.0124531   -0.0220604   -0.0028458
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                -0.0173901   -0.0280912   -0.0066889
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                -0.0132990   -0.0240144   -0.0025836
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0420183   -0.0529069   -0.0311297
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                -0.0367617   -0.0479379   -0.0255855
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0521471   -0.0651981   -0.0390962
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                -0.0392866   -0.0546903   -0.0238830
12-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0316855   -0.0426182   -0.0207528
12-24 months   ki1000108-IRC              INDIA                          Male                 NA                -0.0318366   -0.0410621   -0.0226110
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0393749   -0.0463589   -0.0323909
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                -0.0413022   -0.0475602   -0.0350442
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                -0.0120219   -0.0171903   -0.0068535
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                -0.0046128   -0.0102158    0.0009902
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0089556   -0.0145529   -0.0033583
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                -0.0023902   -0.0080589    0.0032785
12-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                -0.0226581   -0.0281165   -0.0171997
12-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                -0.0186129   -0.0239269   -0.0132989
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0177899   -0.0249180   -0.0106618
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                -0.0135369   -0.0206421   -0.0064318
12-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0344717   -0.0470184   -0.0219250
12-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                -0.0293845   -0.0405164   -0.0182527
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0211467   -0.0393306   -0.0029628
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                -0.0282631   -0.0504138   -0.0061123
12-24 months   ki1114097-CMIN             PERU                           Female               NA                -0.0337526   -0.0430374   -0.0244678
12-24 months   ki1114097-CMIN             PERU                           Male                 NA                -0.0254860   -0.0345238   -0.0164481
12-24 months   ki1114097-CONTENT          PERU                           Female               NA                -0.0403247   -0.0540411   -0.0266084
12-24 months   ki1114097-CONTENT          PERU                           Male                 NA                 0.0036822   -0.0122527    0.0196172
12-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                -0.0558840   -0.0753623   -0.0364057
12-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                -0.0294537   -0.0468944   -0.0120130
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0498086   -0.0612041   -0.0384130
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                -0.0548195   -0.0701968   -0.0394422
12-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0328390   -0.0382127   -0.0274654
12-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                -0.0268460   -0.0318432   -0.0218487
12-24 months   ki1135781-COHORTS          INDIA                          Female               NA                -0.0374208   -0.0396865   -0.0351551
12-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                -0.0323449   -0.0346799   -0.0300099
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                -0.0641419   -0.0677727   -0.0605111
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                -0.0517121   -0.0551892   -0.0482350
12-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                -0.0223307   -0.0301221   -0.0145393
12-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                -0.0087778   -0.0171753   -0.0003802
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                -0.0243437   -0.0268534   -0.0218340
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                -0.0137265   -0.0163764   -0.0110766
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0172207   -0.0198106   -0.0146307
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                -0.0119253   -0.0144646   -0.0093860


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1934958   -0.3384003   -0.0485914
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                 0.0518708   -0.0198773    0.1236190
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0853247   -0.1864247    0.0157752
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                 0.0355888   -0.1305606    0.2017381
0-3 months     ki1114097-CMIN             PERU                           NA                   NA                -0.1173363   -0.1825933   -0.0520792
0-3 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0033142   -0.0990835    0.1057118
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623259   -0.0692941   -0.0553576
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.0387792   -0.0275800    0.1051384
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0844665   -0.1011169   -0.0678162
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.1431730   -0.2334590   -0.0528870
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                 0.0273911   -0.0199724    0.0747545
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009676   -0.0102953    0.0083602
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0560585   -0.0616251   -0.0504918
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034526   -0.0083193    0.0014141
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.0070783   -0.0435451    0.0293884
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0598587   -0.0690454   -0.0506721
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0614070   -0.0692663   -0.0535478
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0751878   -0.0881244   -0.0622513
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0402665   -0.0712609   -0.0092722
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1193239   -0.1415513   -0.0970964
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492642   -0.0539207   -0.0446077
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0911324   -0.0945473   -0.0877176
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748352   -0.0776789   -0.0719915
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383413   -0.0427080   -0.0339747
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0205442   -0.0243542   -0.0167343
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.0248472   -0.0393333   -0.0103611
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0292246   -0.0357414   -0.0227079
12-24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.0241116   -0.0366136   -0.0116097
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0296956   -0.0333614   -0.0260298
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0347583   -0.0363912   -0.0331254
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187830   -0.0206331   -0.0169328
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145970   -0.0164717   -0.0127223


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0863697   -0.1496106   -0.0231289
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.1239894   -0.2263335   -0.0216453
0-3 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.1084255   -0.1848073   -0.0320436
0-3 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0709805    0.0016222    0.1403389
0-3 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Male                 Female            -0.1238806   -0.1870981   -0.0606632
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0617358   -0.1494095    0.0259379
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0930558   -0.1685779   -0.0175338
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0348435   -0.1841460    0.2538331
0-3 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Male                 Female             0.0807534   -0.0323783    0.1938850
0-3 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Male                 Female            -0.0367565   -0.1217165    0.0482035
0-3 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.1729049   -0.4597247    0.1139149
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0442905   -0.1014224    0.0128414
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0485262   -0.1019032    0.0048509
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0016060   -0.0377102    0.0344982
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            -0.0295934   -0.0658493    0.0066625
0-3 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0258445   -0.0740398    0.0223508
0-3 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0511044   -0.1967474    0.0945387
0-3 months     ki1114097-CMIN             BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Male                 Female            -0.0733789   -0.2747132    0.1279553
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female             0.1001193   -0.2294088    0.4296474
0-3 months     ki1114097-CMIN             PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             PERU                           Male                 Female            -0.0083235   -0.1390779    0.1224309
0-3 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.3901945   -0.5353648   -0.2450242
0-3 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.1844971   -0.2023073   -0.1666870
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0262606   -0.0470749   -0.0054464
0-3 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0744242   -0.1181882   -0.0306602
0-3 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Male                 Female            -0.0183013   -0.0322323   -0.0043702
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            -0.0307997   -0.0392648   -0.0223347
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0346316   -0.0649033   -0.0043599
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            -0.0433525   -0.0892366    0.0025315
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0702174   -0.0021878    0.1426226
3-6 months     ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0530301   -0.0039698    0.1100299
3-6 months     ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Male                 Female            -0.0183691   -0.0709821    0.0342438
3-6 months     ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Male                 Female             0.0035142   -0.0582624    0.0652908
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0037068   -0.0721242    0.0795378
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0705119   -0.1342451   -0.0067787
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            -0.1002377   -0.1947008   -0.0057746
3-6 months     ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Male                 Female            -0.0925183   -0.1525514   -0.0324852
3-6 months     ki1000109-EE               PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Male                 Female             0.0207522   -0.0357539    0.0772583
3-6 months     ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak           PAKISTAN                       Male                 Female            -0.0245025   -0.1553998    0.1063948
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             0.0413378   -0.0085586    0.0912342
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0599045    0.0164561    0.1033529
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0189139   -0.0516571    0.0138294
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0159794   -0.0177092    0.0496679
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0372848   -0.0706005   -0.0039691
3-6 months     ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Male                 Female             0.0016631   -0.0351443    0.0384706
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          Male                 Female            -0.0319558   -0.0687909    0.0048794
3-6 months     ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     Male                 Female            -0.0140134   -0.0790633    0.0510365
3-6 months     ki1114097-CMIN             BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BRAZIL                         Male                 Female            -0.0627595   -0.2425283    0.1170093
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            -0.0156194   -0.1114641    0.0802253
3-6 months     ki1114097-CMIN             PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           Male                 Female            -0.0444951   -0.0884083   -0.0005819
3-6 months     ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           Male                 Female            -0.0393867   -0.0840638    0.0052904
3-6 months     ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Male                 Female            -0.0443759   -0.0597519   -0.0289999
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0071182   -0.0257694    0.0115329
3-6 months     ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Male                 Female            -0.0539763   -0.0829252   -0.0250273
3-6 months     ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Male                 Female             0.0008794   -0.0102392    0.0119980
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            -0.0058159   -0.0147011    0.0030693
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            -0.0056715   -0.0322981    0.0209550
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0226751    0.0021872    0.0431630
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            -0.0224406   -0.0610991    0.0162179
6-12 months    ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            -0.0100315   -0.0344146    0.0143516
6-12 months    ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0082667   -0.0127447    0.0292781
6-12 months    ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Male                 Female             0.0328666    0.0054078    0.0603255
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            -0.0404843   -0.0747288   -0.0062398
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0042875   -0.0355950    0.0270200
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0032987   -0.0376707    0.0442682
6-12 months    ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Male                 Female             0.0275679    0.0021071    0.0530287
6-12 months    ki1000109-ResPak           PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak           PAKISTAN                       Male                 Female             0.0118708   -0.0601040    0.0838456
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            -0.0004003   -0.0166457    0.0158451
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            -0.0026219   -0.0656509    0.0604071
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.0124457   -0.0060807    0.0309722
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            -0.0025872   -0.0164577    0.0112833
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0070008   -0.0075887    0.0215904
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0088869   -0.0095103    0.0272841
6-12 months    ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Male                 Female            -0.0040399   -0.0197669    0.0116870
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            -0.0118673   -0.0380555    0.0143209
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0037950   -0.0126476    0.0202376
6-12 months    ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0324870    0.0026361    0.0623379
6-12 months    ki1114097-CMIN             BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BRAZIL                         Male                 Female            -0.0279080   -0.0894872    0.0336713
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            -0.0289586   -0.0731192    0.0152019
6-12 months    ki1114097-CMIN             PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           Male                 Female             0.0068648   -0.0141479    0.0278775
6-12 months    ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           Male                 Female             0.0566568    0.0329013    0.0804124
6-12 months    ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Male                 Female             0.0576896    0.0502762    0.0651030
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0121222   -0.0214444   -0.0027999
6-12 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0016725   -0.0125760    0.0159210
6-12 months    ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Male                 Female             0.0042432   -0.0025711    0.0110574
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female             0.0067519   -0.0034495    0.0169532
6-12 months    ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0022414   -0.0195885    0.0240712
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0057315    0.0006904    0.0107727
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0044319   -0.0039980    0.0128618
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             0.0037899   -0.0069214    0.0145012
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female             0.0049815   -0.0163543    0.0263173
12-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             0.0002382   -0.0100581    0.0105346
12-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female             0.0090476   -0.0008345    0.0189297
12-24 months   ki0047075b-MAL-ED          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            -0.0070190   -0.0210372    0.0069992
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             0.0040911   -0.0110527    0.0192349
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0052566   -0.0103468    0.0208600
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             0.0128605   -0.0073286    0.0330496
12-24 months   ki1000108-IRC              INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Male                 Female            -0.0001510   -0.0144561    0.0141540
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            -0.0019272   -0.0113048    0.0074503
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             0.0074091   -0.0002136    0.0150319
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.0065654   -0.0014011    0.0145318
12-24 months   ki1101329-Keneba           GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female             0.0040452   -0.0035727    0.0116631
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             0.0042530   -0.0058114    0.0143174
12-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.0050872   -0.0116860    0.0218603
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            -0.0071164   -0.0357748    0.0215421
12-24 months   ki1114097-CMIN             PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           Male                 Female             0.0082667   -0.0046906    0.0212239
12-24 months   ki1114097-CONTENT          PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT          PERU                           Male                 Female             0.0440070    0.0229818    0.0650322
12-24 months   ki1119695-PROBIT           BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female             0.0264303    0.0121085    0.0407521
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            -0.0050109   -0.0241504    0.0141285
12-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.0059931   -0.0013451    0.0133312
12-24 months   ki1135781-COHORTS          INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Male                 Female             0.0050759    0.0018223    0.0083295
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female             0.0124298    0.0074026    0.0174570
12-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             0.0135529    0.0020976    0.0250083
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             0.0106172    0.0069788    0.0142556
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.0052954    0.0018015    0.0087893
