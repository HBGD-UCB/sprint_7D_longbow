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

**Outcome Variable:** y_rate_lencm

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        sex       n_cell       n
-------------  --------------------------  -----------------------------  -------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Female       123     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Male         121     244
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Female       119     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Male         112     231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Female       109     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Male         111     220
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Female        99     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Male         107     206
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female        15      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male          23      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Female       266     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Male         300     566
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Female       239     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Male         284     523
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Female       222     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Male         260     482
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Female       191     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Male         230     421
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Female       301     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Male         333     634
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Female       272     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Male         302     574
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Female       260     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Male         285     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female       220     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male         238     458
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Female       368     720
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Male         352     720
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Female       358     695
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Male         337     695
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Female       347     676
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Male         329     676
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Female       252     495
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Male         243     495
3-6 months     ki1114097-CMIN              BANGLADESH                     Female        86     185
3-6 months     ki1114097-CMIN              BANGLADESH                     Male          99     185
6-12 months    ki1114097-CMIN              BANGLADESH                     Female        74     164
6-12 months    ki1114097-CMIN              BANGLADESH                     Male          90     164
12-24 months   ki1114097-CMIN              BANGLADESH                     Female        60     138
12-24 months   ki1114097-CMIN              BANGLADESH                     Male          78     138
0-3 months     ki1114097-CMIN              BANGLADESH                     Female        17      43
0-3 months     ki1114097-CMIN              BANGLADESH                     Male          26      43
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Female      9886   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Male       10159   20045
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Female      6203   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Male        6377   12580
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Female      4819    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Male        5020    9839
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female      2216    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male        2437    4653
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Female       942    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Male         865    1807
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Female      1603    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Male        1557    3160
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female      1835    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male        1802    3637
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Female       947    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Male         893    1840
0-3 months     ki1119695-PROBIT            BELARUS                        Female      6534   12745
0-3 months     ki1119695-PROBIT            BELARUS                        Male        6211   12745
3-6 months     ki1119695-PROBIT            BELARUS                        Female      6859   13309
3-6 months     ki1119695-PROBIT            BELARUS                        Male        6450   13309
6-12 months    ki1119695-PROBIT            BELARUS                        Female      6680   12896
6-12 months    ki1119695-PROBIT            BELARUS                        Male        6216   12896
12-24 months   ki1119695-PROBIT            BELARUS                        Female      1303    2533
12-24 months   ki1119695-PROBIT            BELARUS                        Male        1230    2533
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Female        89     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Male          91     180
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Female       102     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Male         106     208
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Female        93     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Male         101     194
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Female        76     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Male          89     165
12-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Female         4      13
12-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Male           9      13
0-3 months     ki1114097-CMIN              BRAZIL                         Female        40      81
0-3 months     ki1114097-CMIN              BRAZIL                         Male          41      81
3-6 months     ki1114097-CMIN              BRAZIL                         Female        40      81
3-6 months     ki1114097-CMIN              BRAZIL                         Male          41      81
6-12 months    ki1114097-CMIN              BRAZIL                         Female        48      93
6-12 months    ki1114097-CMIN              BRAZIL                         Male          45      93
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female        12      20
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male           8      20
12-24 months   ki1101329-Keneba            GAMBIA                         Female       561    1175
12-24 months   ki1101329-Keneba            GAMBIA                         Male         614    1175
6-12 months    ki1101329-Keneba            GAMBIA                         Female       632    1306
6-12 months    ki1101329-Keneba            GAMBIA                         Male         674    1306
0-3 months     ki1101329-Keneba            GAMBIA                         Female       606    1276
0-3 months     ki1101329-Keneba            GAMBIA                         Male         670    1276
3-6 months     ki1101329-Keneba            GAMBIA                         Female       670    1397
3-6 months     ki1101329-Keneba            GAMBIA                         Male         727    1397
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          Female       500     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          Male         472     972
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          Female       486     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          Male         459     945
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          Female       477     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          Male         460     937
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Female        95     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Male          86     181
3-6 months     ki1135781-COHORTS           GUATEMALA                      Female       387     805
3-6 months     ki1135781-COHORTS           GUATEMALA                      Male         418     805
6-12 months    ki1135781-COHORTS           GUATEMALA                      Female       404     862
6-12 months    ki1135781-COHORTS           GUATEMALA                      Male         458     862
12-24 months   ki1135781-COHORTS           GUATEMALA                      Female       417     877
12-24 months   ki1135781-COHORTS           GUATEMALA                      Male         460     877
0-3 months     ki1135781-COHORTS           GUATEMALA                      Female       345     728
0-3 months     ki1135781-COHORTS           GUATEMALA                      Male         383     728
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  Female        70     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  Male          63     133
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  Female        87     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  Male          89     176
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  Female        11      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  Male          11      22
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  Female        24      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  Male          26      50
0-3 months     ki0047075b-MAL-ED           INDIA                          Female       110     201
0-3 months     ki0047075b-MAL-ED           INDIA                          Male          91     201
3-6 months     ki0047075b-MAL-ED           INDIA                          Female       126     229
3-6 months     ki0047075b-MAL-ED           INDIA                          Male         103     229
6-12 months    ki0047075b-MAL-ED           INDIA                          Female       120     224
6-12 months    ki0047075b-MAL-ED           INDIA                          Male         104     224
12-24 months   ki0047075b-MAL-ED           INDIA                          Female       120     225
12-24 months   ki0047075b-MAL-ED           INDIA                          Male         105     225
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Female       151     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Male         156     307
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Female       158     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Male         165     323
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Female       157     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Male         167     324
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Female        47      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Male          40      87
3-6 months     ki1000108-IRC               INDIA                          Female       177     397
3-6 months     ki1000108-IRC               INDIA                          Male         220     397
6-12 months    ki1000108-IRC               INDIA                          Female       180     400
6-12 months    ki1000108-IRC               INDIA                          Male         220     400
12-24 months   ki1000108-IRC               INDIA                          Female       178     396
12-24 months   ki1000108-IRC               INDIA                          Male         218     396
0-3 months     ki1000108-IRC               INDIA                          Female       166     377
0-3 months     ki1000108-IRC               INDIA                          Male         211     377
6-12 months    ki1000304-VITAMIN-A         INDIA                          Female       955    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          Male        1065    2020
3-6 months     ki1000304-VITAMIN-A         INDIA                          Female         4      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          Male           8      12
6-12 months    ki1000304-Vitamin-B12       INDIA                          Female        22      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          Male          27      49
12-24 months   ki1000304-ZnMort            INDIA                          Female         1       1
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Female       527    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Male         641    1168
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Female       511    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Male         613    1124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Female       508    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Male         629    1137
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female       180     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male         152     332
0-3 months     ki1135781-COHORTS           INDIA                          Female      3098    6465
0-3 months     ki1135781-COHORTS           INDIA                          Male        3367    6465
3-6 months     ki1135781-COHORTS           INDIA                          Female      3150    6509
3-6 months     ki1135781-COHORTS           INDIA                          Male        3359    6509
6-12 months    ki1135781-COHORTS           INDIA                          Female      2537    5270
6-12 months    ki1135781-COHORTS           INDIA                          Male        2733    5270
12-24 months   ki1135781-COHORTS           INDIA                          Female      2112    4442
12-24 months   ki1135781-COHORTS           INDIA                          Male        2330    4442
12-24 months   ki1000111-WASH-Kenya        KENYA                          Female       178     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          Male         153     331
6-12 months    ki1148112-LCNI-5            MALAWI                         Female       223     434
6-12 months    ki1148112-LCNI-5            MALAWI                         Male         211     434
12-24 months   ki1148112-LCNI-5            MALAWI                         Female       165     310
12-24 months   ki1148112-LCNI-5            MALAWI                         Male         145     310
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Female       497    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Male         532    1029
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female       229     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male         256     485
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female       286     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male         252     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female       269     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male         239     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Female         4       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         Male           3       7
3-6 months     ki0047075b-MAL-ED           NEPAL                          Female       110     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          Male         123     233
6-12 months    ki0047075b-MAL-ED           NEPAL                          Female       107     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          Male         123     230
12-24 months   ki0047075b-MAL-ED           NEPAL                          Female       104     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          Male         122     226
0-3 months     ki0047075b-MAL-ED           NEPAL                          Female        87     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          Male          88     175
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Female       226     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Male         245     471
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Female       237     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Male         238     475
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Female       175     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Male         192     367
0-3 months     ki1000109-EE                PAKISTAN                       Female       144     297
0-3 months     ki1000109-EE                PAKISTAN                       Male         153     297
3-6 months     ki1000109-EE                PAKISTAN                       Female       162     331
3-6 months     ki1000109-EE                PAKISTAN                       Male         169     331
6-12 months    ki1000109-EE                PAKISTAN                       Female         1       4
6-12 months    ki1000109-EE                PAKISTAN                       Male           3       4
0-3 months     ki1000109-ResPak            PAKISTAN                       Female        37      78
0-3 months     ki1000109-ResPak            PAKISTAN                       Male          41      78
3-6 months     ki1000109-ResPak            PAKISTAN                       Female        73     156
3-6 months     ki1000109-ResPak            PAKISTAN                       Male          83     156
6-12 months    ki1000109-ResPak            PAKISTAN                       Female        66     138
6-12 months    ki1000109-ResPak            PAKISTAN                       Male          72     138
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female        24      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male          28      52
12-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Female         1       1
0-3 months     ki0047075b-MAL-ED           PERU                           Female       123     271
0-3 months     ki0047075b-MAL-ED           PERU                           Male         148     271
3-6 months     ki0047075b-MAL-ED           PERU                           Female       122     267
3-6 months     ki0047075b-MAL-ED           PERU                           Male         145     267
6-12 months    ki0047075b-MAL-ED           PERU                           Female       106     237
6-12 months    ki0047075b-MAL-ED           PERU                           Male         131     237
12-24 months   ki0047075b-MAL-ED           PERU                           Female        87     191
12-24 months   ki0047075b-MAL-ED           PERU                           Male         104     191
3-6 months     ki1114097-CMIN              PERU                           Female       189     407
3-6 months     ki1114097-CMIN              PERU                           Male         218     407
6-12 months    ki1114097-CMIN              PERU                           Female       162     360
6-12 months    ki1114097-CMIN              PERU                           Male         198     360
12-24 months   ki1114097-CMIN              PERU                           Female        90     199
12-24 months   ki1114097-CMIN              PERU                           Male         109     199
0-3 months     ki1114097-CMIN              PERU                           Female        45      93
0-3 months     ki1114097-CMIN              PERU                           Male          48      93
3-6 months     ki1114097-CONTENT           PERU                           Female       106     214
3-6 months     ki1114097-CONTENT           PERU                           Male         108     214
6-12 months    ki1114097-CONTENT           PERU                           Female       105     213
6-12 months    ki1114097-CONTENT           PERU                           Male         108     213
12-24 months   ki1114097-CONTENT           PERU                           Female        24      38
12-24 months   ki1114097-CONTENT           PERU                           Male          14      38
0-3 months     ki1114097-CONTENT           PERU                           Female        13      29
0-3 months     ki1114097-CONTENT           PERU                           Male          16      29
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Female      1150    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Male        1269    2419
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Female      1080    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Male        1180    2260
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Female       116     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Male         113     229
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Female       116     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Male         125     241
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Female       113     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Male         119     232
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Female       115     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Male         115     230
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       111     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         112     223
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       101     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         106     207
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       121     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         108     229
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       123     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         116     239
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female       811    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male         849    1660
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female       525    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male         558    1083
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female         1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male           1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Female      3833    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Male        4031    7864
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Female      2894    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Male        2995    5889
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female      2363    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male        2208    4571
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female       186     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male         117     303


The following strata were considered:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* diffcat: 12-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/dbe1d723-ae0b-4bc8-8517-34ae2cfda626/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dbe1d723-ae0b-4bc8-8517-34ae2cfda626/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Female               NA                3.4886137   3.4031649   3.5740625
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Male                 NA                3.6395126   3.5493376   3.7296876
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Female               NA                4.0264856   3.8815410   4.1714303
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Male                 NA                4.0749190   3.9322866   4.2175514
0-3 months     ki0047075b-MAL-ED           INDIA                          Female               NA                3.5282309   3.4152521   3.6412097
0-3 months     ki0047075b-MAL-ED           INDIA                          Male                 NA                3.6347395   3.5282853   3.7411936
0-3 months     ki0047075b-MAL-ED           NEPAL                          Female               NA                3.5917854   3.4988835   3.6846874
0-3 months     ki0047075b-MAL-ED           NEPAL                          Male                 NA                4.0466026   3.9469216   4.1462837
0-3 months     ki0047075b-MAL-ED           PERU                           Female               NA                3.2769220   3.1873381   3.3665059
0-3 months     ki0047075b-MAL-ED           PERU                           Male                 NA                3.3482215   3.2599284   3.4365146
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Female               NA                3.3453797   3.2238996   3.4668599
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 NA                3.5476418   3.4192892   3.6759944
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                3.4055670   3.2897816   3.5213525
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                3.5669767   3.4696430   3.6643104
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Female               NA                3.3439638   3.0756400   3.6122876
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Male                 NA                3.7345242   3.3846541   4.0843943
0-3 months     ki1000108-IRC               INDIA                          Female               NA                2.9097228   2.7402952   3.0791504
0-3 months     ki1000108-IRC               INDIA                          Male                 NA                3.3799858   3.2368847   3.5230869
0-3 months     ki1000109-EE                PAKISTAN                       Female               NA                2.5289221   2.4175941   2.6402500
0-3 months     ki1000109-EE                PAKISTAN                       Male                 NA                2.7786397   2.6579147   2.8993648
0-3 months     ki1000109-ResPak            PAKISTAN                       Female               NA                3.0894212   2.6809013   3.4979410
0-3 months     ki1000109-ResPak            PAKISTAN                       Male                 NA                3.0598213   2.6592675   3.4603751
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Female               NA                3.4675561   3.4054365   3.5296757
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Male                 NA                3.7125133   3.6436586   3.7813681
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Female               NA                3.1924718   3.1204881   3.2644555
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Male                 NA                3.4197277   3.3403404   3.4991150
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Female               NA                3.3143502   3.2632913   3.3654091
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Male                 NA                3.6348160   3.5812254   3.6884067
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Female               NA                3.1739957   3.1202477   3.2277436
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Male                 NA                3.4375932   3.3870176   3.4881689
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          Female               NA                3.7270417   3.6791183   3.7749651
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          Male                 NA                3.9675858   3.9217243   4.0134474
0-3 months     ki1101329-Keneba            GAMBIA                         Female               NA                3.0049700   2.9371917   3.0727482
0-3 months     ki1101329-Keneba            GAMBIA                         Male                 NA                3.2698402   3.2045912   3.3350893
0-3 months     ki1114097-CMIN              BANGLADESH                     Female               NA                3.3365089   3.1005659   3.5724518
0-3 months     ki1114097-CMIN              BANGLADESH                     Male                 NA                3.5968712   3.4225624   3.7711801
0-3 months     ki1114097-CMIN              BRAZIL                         Female               NA                3.4338785   3.1522130   3.7155441
0-3 months     ki1114097-CMIN              BRAZIL                         Male                 NA                3.5933960   3.2960331   3.8907590
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  Female               NA                3.2346301   2.8599398   3.6093205
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  Male                 NA                3.8370639   3.3161727   4.3579551
0-3 months     ki1114097-CMIN              PERU                           Female               NA                3.1901185   2.9939967   3.3862403
0-3 months     ki1114097-CMIN              PERU                           Male                 NA                3.4331440   3.2598250   3.6064631
0-3 months     ki1114097-CONTENT           PERU                           Female               NA                3.9660748   3.7574037   4.1747460
0-3 months     ki1114097-CONTENT           PERU                           Male                 NA                3.3930491   3.1879708   3.5981275
0-3 months     ki1119695-PROBIT            BELARUS                        Female               NA                2.9092322   2.7857723   3.0326921
0-3 months     ki1119695-PROBIT            BELARUS                        Male                 NA                2.7580850   2.6526049   2.8635652
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Female               NA                3.2384056   3.2086338   3.2681774
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Male                 NA                3.4964897   3.4677029   3.5252766
0-3 months     ki1135781-COHORTS           GUATEMALA                      Female               NA                2.5143272   2.4505204   2.5781339
0-3 months     ki1135781-COHORTS           GUATEMALA                      Male                 NA                2.6994291   2.6408442   2.7580141
0-3 months     ki1135781-COHORTS           INDIA                          Female               NA                3.4030006   3.3831155   3.4228857
0-3 months     ki1135781-COHORTS           INDIA                          Male                 NA                3.6812207   3.6619775   3.7004638
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Female               NA                3.5800535   3.5672335   3.5928736
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Male                 NA                3.8531162   3.8394640   3.8667683
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Female               NA                3.5093022   3.4639300   3.5546744
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Male                 NA                3.7783978   3.7370852   3.8197104
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Female               NA                1.9236132   1.8535861   1.9936404
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Male                 NA                1.9327562   1.8634806   2.0020317
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Female               NA                2.0368241   1.9242340   2.1494143
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Male                 NA                2.2546187   2.1471223   2.3621151
3-6 months     ki0047075b-MAL-ED           INDIA                          Female               NA                1.7851088   1.7052993   1.8649184
3-6 months     ki0047075b-MAL-ED           INDIA                          Male                 NA                2.0043654   1.9146768   2.0940540
3-6 months     ki0047075b-MAL-ED           NEPAL                          Female               NA                1.9344029   1.8605015   2.0083042
3-6 months     ki0047075b-MAL-ED           NEPAL                          Male                 NA                1.9982347   1.9154638   2.0810056
3-6 months     ki0047075b-MAL-ED           PERU                           Female               NA                1.9617486   1.8681252   2.0553721
3-6 months     ki0047075b-MAL-ED           PERU                           Male                 NA                2.0659203   1.9747460   2.1570947
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Female               NA                1.9220480   1.8178209   2.0262751
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 NA                2.0360817   1.9140813   2.1580820
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                1.8458792   1.7494044   1.9423540
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.8133484   1.7181759   1.9085209
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Female               NA                1.8498271   1.7096580   1.9899962
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Male                 NA                1.7592245   1.6148514   1.9035975
3-6 months     ki1000108-IRC               INDIA                          Female               NA                1.9269321   1.8267269   2.0271373
3-6 months     ki1000108-IRC               INDIA                          Male                 NA                1.8434569   1.7616021   1.9253118
3-6 months     ki1000109-EE                PAKISTAN                       Female               NA                1.9473193   1.8545389   2.0400997
3-6 months     ki1000109-EE                PAKISTAN                       Male                 NA                2.0977399   2.0211605   2.1743194
3-6 months     ki1000109-ResPak            PAKISTAN                       Female               NA                2.0281482   1.8421850   2.2141114
3-6 months     ki1000109-ResPak            PAKISTAN                       Male                 NA                2.1057258   1.8955357   2.3159159
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Female               NA                1.8273204   1.7447636   1.9098773
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Male                 NA                2.0351072   1.9808226   2.0893919
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Female               NA                1.7023416   1.6375873   1.7670960
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Male                 NA                1.9423873   1.8753566   2.0094180
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Female               NA                1.9238112   1.8750512   1.9725712
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Male                 NA                2.0029438   1.9531896   2.0526979
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Female               NA                1.9393533   1.8894235   1.9892832
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Male                 NA                2.0763816   2.0242512   2.1285121
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          Female               NA                1.9046938   1.8602821   1.9491054
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          Male                 NA                1.9659871   1.9252407   2.0067335
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female               NA                1.7884717   1.7340953   1.8428480
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.8026612   1.7555174   1.8498050
3-6 months     ki1101329-Keneba            GAMBIA                         Female               NA                1.9296893   1.8733209   1.9860576
3-6 months     ki1101329-Keneba            GAMBIA                         Male                 NA                2.0516658   1.9970016   2.1063301
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Female               NA                1.6671538   1.6126010   1.7217067
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Male                 NA                1.7413373   1.6859676   1.7967070
3-6 months     ki1114097-CMIN              BANGLADESH                     Female               NA                1.8912073   1.7889731   1.9934416
3-6 months     ki1114097-CMIN              BANGLADESH                     Male                 NA                1.9970504   1.9013453   2.0927555
3-6 months     ki1114097-CMIN              BRAZIL                         Female               NA                1.7144499   1.4618765   1.9670233
3-6 months     ki1114097-CMIN              BRAZIL                         Male                 NA                1.6785317   1.3964638   1.9605995
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  Female               NA                2.0448280   1.9208610   2.1687951
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  Male                 NA                2.0792157   1.9205076   2.2379238
3-6 months     ki1114097-CMIN              PERU                           Female               NA                1.8885385   1.8267684   1.9503085
3-6 months     ki1114097-CMIN              PERU                           Male                 NA                1.8988229   1.8279193   1.9697265
3-6 months     ki1114097-CONTENT           PERU                           Female               NA                2.1117604   2.0429355   2.1805853
3-6 months     ki1114097-CONTENT           PERU                           Male                 NA                2.0571185   1.9907508   2.1234862
3-6 months     ki1119695-PROBIT            BELARUS                        Female               NA                2.1307259   2.0862569   2.1751949
3-6 months     ki1119695-PROBIT            BELARUS                        Male                 NA                2.0497584   2.0059805   2.0935362
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Female               NA                1.9317598   1.9030305   1.9604890
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Male                 NA                2.0162942   1.9886896   2.0438987
3-6 months     ki1135781-COHORTS           GUATEMALA                      Female               NA                1.7519397   1.7088308   1.7950486
3-6 months     ki1135781-COHORTS           GUATEMALA                      Male                 NA                1.7707234   1.7269817   1.8144651
3-6 months     ki1135781-COHORTS           INDIA                          Female               NA                1.8153459   1.7982390   1.8324528
3-6 months     ki1135781-COHORTS           INDIA                          Male                 NA                1.9284015   1.9116340   1.9451691
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Female               NA                1.8754830   1.8616459   1.8893201
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Male                 NA                1.9636695   1.9492693   1.9780697
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Female               NA                1.8542528   1.8086870   1.8998185
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Male                 NA                1.9451501   1.9086311   1.9816691
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Female               NA                1.0926430   1.0594799   1.1258061
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Male                 NA                1.1357507   1.0994176   1.1720839
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Female               NA                1.4357052   1.3711965   1.5002138
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Male                 NA                1.3408973   1.2758761   1.4059185
6-12 months    ki0047075b-MAL-ED           INDIA                          Female               NA                1.1368388   1.0964432   1.1772344
6-12 months    ki0047075b-MAL-ED           INDIA                          Male                 NA                1.1028446   1.0634532   1.1422359
6-12 months    ki0047075b-MAL-ED           NEPAL                          Female               NA                1.2181277   1.1825584   1.2536971
6-12 months    ki0047075b-MAL-ED           NEPAL                          Male                 NA                1.2262015   1.1892066   1.2631964
6-12 months    ki0047075b-MAL-ED           PERU                           Female               NA                1.1775297   1.1309641   1.2240954
6-12 months    ki0047075b-MAL-ED           PERU                           Male                 NA                1.2366925   1.1915550   1.2818300
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Female               NA                1.2470303   1.1884105   1.3056501
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 NA                1.1349225   1.0788824   1.1909627
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                1.0071522   0.9521257   1.0621787
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.9967989   0.9470051   1.0465928
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Female               NA                1.0608824   0.9970417   1.1247232
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Male                 NA                1.0639459   0.9931578   1.1347340
6-12 months    ki1000108-IRC               INDIA                          Female               NA                1.2203831   1.1784643   1.2623020
6-12 months    ki1000108-IRC               INDIA                          Male                 NA                1.2716261   1.2312700   1.3119823
6-12 months    ki1000109-ResPak            PAKISTAN                       Female               NA                1.2915335   1.1875079   1.3955591
6-12 months    ki1000109-ResPak            PAKISTAN                       Male                 NA                1.3010013   1.1724947   1.4295079
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female               NA                1.0741350   0.9259042   1.2223658
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male                 NA                1.1388337   1.0255622   1.2521053
6-12 months    ki1000304-VITAMIN-A         INDIA                          Female               NA                1.1126433   1.0950185   1.1302682
6-12 months    ki1000304-VITAMIN-A         INDIA                          Male                 NA                1.1081390   1.0921965   1.1240814
6-12 months    ki1000304-Vitamin-B12       INDIA                          Female               NA                1.2101387   1.1432588   1.2770187
6-12 months    ki1000304-Vitamin-B12       INDIA                          Male                 NA                1.2779990   1.1976162   1.3583818
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Female               NA                1.0947242   1.0717024   1.1177460
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Male                 NA                1.1011974   1.0775904   1.1248043
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female               NA                1.0089615   0.9088358   1.1090872
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male                 NA                1.0180136   0.9016534   1.1343737
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Female               NA                1.1520388   1.1185401   1.1855375
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Male                 NA                1.1815068   1.1513953   1.2116183
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Female               NA                1.1779618   1.1521761   1.2037475
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Male                 NA                1.1688104   1.1455362   1.1920846
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Female               NA                1.2247425   1.1998133   1.2496716
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Male                 NA                1.2317055   1.2073455   1.2560654
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          Female               NA                1.3736888   1.3519506   1.3954270
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          Male                 NA                1.3393362   1.3201199   1.3585524
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female               NA                1.1931316   1.1606890   1.2255742
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male                 NA                1.1988073   1.1702302   1.2273845
6-12 months    ki1101329-Keneba            GAMBIA                         Female               NA                1.1895126   1.1616050   1.2174202
6-12 months    ki1101329-Keneba            GAMBIA                         Male                 NA                1.1725184   1.1477766   1.1972603
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Female               NA                1.1216888   1.0829377   1.1604399
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Male                 NA                1.0936890   1.0448286   1.1425494
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Female               NA                1.1650423   1.1390427   1.1910418
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Male                 NA                1.1712566   1.1418698   1.2006434
6-12 months    ki1114097-CMIN              BANGLADESH                     Female               NA                1.0521804   0.9940958   1.1102649
6-12 months    ki1114097-CMIN              BANGLADESH                     Male                 NA                1.1406087   1.0989166   1.1823007
6-12 months    ki1114097-CMIN              BRAZIL                         Female               NA                1.2906809   1.1752988   1.4060629
6-12 months    ki1114097-CMIN              BRAZIL                         Male                 NA                1.1875661   1.0879929   1.2871394
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  Female               NA                1.0931488   1.0259800   1.1603175
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  Male                 NA                1.0214255   0.9458929   1.0969582
6-12 months    ki1114097-CMIN              PERU                           Female               NA                1.1015722   1.0654568   1.1376876
6-12 months    ki1114097-CMIN              PERU                           Male                 NA                1.1170805   1.0824024   1.1517586
6-12 months    ki1114097-CONTENT           PERU                           Female               NA                1.2798277   1.2389749   1.3206806
6-12 months    ki1114097-CONTENT           PERU                           Male                 NA                1.3216861   1.2806252   1.3627469
6-12 months    ki1119695-PROBIT            BELARUS                        Female               NA                1.4521854   1.4148018   1.4895690
6-12 months    ki1119695-PROBIT            BELARUS                        Male                 NA                1.4910581   1.4503362   1.5317800
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female               NA                1.2217018   1.2062981   1.2371054
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male                 NA                1.1728328   1.1574512   1.1882144
6-12 months    ki1135781-COHORTS           GUATEMALA                      Female               NA                1.0116509   0.9844418   1.0388601
6-12 months    ki1135781-COHORTS           GUATEMALA                      Male                 NA                1.0246370   1.0030681   1.0462059
6-12 months    ki1135781-COHORTS           INDIA                          Female               NA                1.0932869   1.0814183   1.1051554
6-12 months    ki1135781-COHORTS           INDIA                          Male                 NA                1.1028275   1.0915176   1.1141374
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Female               NA                1.0609330   1.0431223   1.0787438
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Male                 NA                1.0733503   1.0566110   1.0900896
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Female               NA                1.2404120   1.2155569   1.2652671
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Male                 NA                1.2070361   1.1844321   1.2296401
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female               NA                1.1955346   1.1630548   1.2280143
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male                 NA                1.1966115   1.1623501   1.2308728
6-12 months    ki1148112-LCNI-5            MALAWI                         Female               NA                1.2873863   1.2492817   1.3254909
6-12 months    ki1148112-LCNI-5            MALAWI                         Male                 NA                1.2705605   1.2353261   1.3057949
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Female               NA                1.1031831   1.0940900   1.1122761
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Male                 NA                1.1106403   1.1016968   1.1195838
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Female               NA                1.2026563   1.1885147   1.2167978
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Male                 NA                1.2037975   1.1891636   1.2184313
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Female               NA                0.8597543   0.8375639   0.8819447
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Male                 NA                0.8332286   0.8105190   0.8559382
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Female               NA                0.9976933   0.9517326   1.0436540
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Male                 NA                0.9679028   0.9267756   1.0090300
12-24 months   ki0047075b-MAL-ED           INDIA                          Female               NA                0.9058938   0.8823503   0.9294372
12-24 months   ki0047075b-MAL-ED           INDIA                          Male                 NA                0.8512065   0.8268163   0.8755967
12-24 months   ki0047075b-MAL-ED           NEPAL                          Female               NA                0.8593176   0.8395768   0.8790584
12-24 months   ki0047075b-MAL-ED           NEPAL                          Male                 NA                0.8637463   0.8408153   0.8866773
12-24 months   ki0047075b-MAL-ED           PERU                           Female               NA                0.8821176   0.8516509   0.9125843
12-24 months   ki0047075b-MAL-ED           PERU                           Male                 NA                0.8164204   0.7895377   0.8433030
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Female               NA                0.8925071   0.8601438   0.9248705
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 NA                0.8473058   0.8169613   0.8776502
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7786742   0.7466467   0.8107018
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7545312   0.7205459   0.7885165
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Female               NA                0.7439118   0.7075426   0.7802810
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Male                 NA                0.7357429   0.6964797   0.7750061
12-24 months   ki1000108-IRC               INDIA                          Female               NA                0.8463621   0.8155101   0.8772142
12-24 months   ki1000108-IRC               INDIA                          Male                 NA                0.8157062   0.7909433   0.8404691
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female               NA                0.8757576   0.8088216   0.9426936
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male                 NA                0.8514096   0.8118839   0.8909352
12-24 months   ki1000111-WASH-Kenya        KENYA                          Female               NA                0.8660343   0.8428612   0.8892074
12-24 months   ki1000111-WASH-Kenya        KENYA                          Male                 NA                0.8273202   0.8052389   0.8494015
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Female               NA                0.7678393   0.7459020   0.7897766
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Male                 NA                0.7375675   0.7181892   0.7569458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female               NA                0.8617262   0.8450922   0.8783603
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male                 NA                0.8536933   0.8364962   0.8708904
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Female               NA                0.8821386   0.8643884   0.8998887
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Male                 NA                0.8687641   0.8533948   0.8841334
12-24 months   ki1101329-Keneba            GAMBIA                         Female               NA                0.8573701   0.8415604   0.8731797
12-24 months   ki1101329-Keneba            GAMBIA                         Male                 NA                0.8329133   0.8185371   0.8472895
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female               NA                0.8376699   0.7213701   0.9539696
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male                 NA                0.8666171   0.7803926   0.9528416
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Female               NA                0.8446189   0.8223833   0.8668545
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Male                 NA                0.8317469   0.8103494   0.8531444
12-24 months   ki1114097-CMIN              BANGLADESH                     Female               NA                0.7915593   0.7537867   0.8293319
12-24 months   ki1114097-CMIN              BANGLADESH                     Male                 NA                0.7916715   0.7591391   0.8242040
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  Female               NA                0.8800172   0.8332463   0.9267882
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  Male                 NA                0.8250474   0.7698086   0.8802863
12-24 months   ki1114097-CMIN              PERU                           Female               NA                0.8511708   0.8228490   0.8794926
12-24 months   ki1114097-CMIN              PERU                           Male                 NA                0.8281299   0.8043518   0.8519080
12-24 months   ki1114097-CONTENT           PERU                           Female               NA                0.9109590   0.8689865   0.9529315
12-24 months   ki1114097-CONTENT           PERU                           Male                 NA                0.9516390   0.9003016   1.0029764
12-24 months   ki1119695-PROBIT            BELARUS                        Female               NA                0.8588645   0.7978837   0.9198453
12-24 months   ki1119695-PROBIT            BELARUS                        Male                 NA                0.8615090   0.8090625   0.9139555
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female               NA                0.7395180   0.7069492   0.7720868
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male                 NA                0.6628475   0.6216082   0.7040869
12-24 months   ki1135781-COHORTS           GUATEMALA                      Female               NA                0.7890278   0.7728543   0.8052012
12-24 months   ki1135781-COHORTS           GUATEMALA                      Male                 NA                0.7696297   0.7552134   0.7840461
12-24 months   ki1135781-COHORTS           INDIA                          Female               NA                0.8338709   0.8268362   0.8409055
12-24 months   ki1135781-COHORTS           INDIA                          Male                 NA                0.8214342   0.8144982   0.8283702
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Female               NA                0.7045236   0.6935615   0.7154857
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Male                 NA                0.7087876   0.6989502   0.7186251
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female               NA                0.8221372   0.8024501   0.8418243
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male                 NA                0.7919223   0.7725882   0.8112563
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female               NA                0.8453367   0.8243926   0.8662808
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male                 NA                0.8182601   0.7970992   0.8394210
12-24 months   ki1148112-LCNI-5            MALAWI                         Female               NA                0.8432653   0.8198737   0.8666570
12-24 months   ki1148112-LCNI-5            MALAWI                         Male                 NA                0.8375971   0.8135213   0.8616729
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female               NA                0.7994765   0.7920156   0.8069374
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male                 NA                0.7942052   0.7868342   0.8015761
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female               NA                0.8585668   0.8510175   0.8661161
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male                 NA                0.8396386   0.8324799   0.8467973


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED           NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED           PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC               INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE                PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000109-ResPak            PAKISTAN                       NA                   NA                3.0738623   2.7876913   3.3600332
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                3.8451317   3.8110517   3.8792117
0-3 months     ki1101329-Keneba            GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1114097-CMIN              BANGLADESH                     NA                   NA                3.4939373   3.3480209   3.6398536
0-3 months     ki1114097-CMIN              BRAZIL                         NA                   NA                3.5146220   3.3089330   3.7203110
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  NA                   NA                3.5358470   3.1901197   3.8815743
0-3 months     ki1114097-CMIN              PERU                           NA                   NA                3.3155510   3.1827969   3.4483051
0-3 months     ki1114097-CONTENT           PERU                           NA                   NA                3.6499227   3.4691077   3.8307378
0-3 months     ki1119695-PROBIT            BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS           INDIA                          NA                   NA                3.5478988   3.5336609   3.5621367
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                3.7184443   3.7081005   3.7287881
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED           BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED           INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED           NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED           PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC               INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE                PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000109-ResPak            PAKISTAN                       NA                   NA                2.0694234   1.9275918   2.2112551
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                1.9344576   1.9041735   1.9647417
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957288   1.7598510   1.8316067
3-6 months     ki1101329-Keneba            GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1113344-GMS-Nepal         NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CMIN              BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN              BRAZIL                         NA                   NA                1.6962691   1.5066453   1.8858929
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  NA                   NA                2.0611169   1.9615315   2.1607024
3-6 months     ki1114097-CMIN              PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT           PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1119695-PROBIT            BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                1.9747519   1.9548124   1.9946914
3-6 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS           INDIA                          NA                   NA                1.8736888   1.8616349   1.8857427
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                1.9201861   1.9097195   1.9306528
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED           BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED           INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED           NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED           PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC               INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000109-ResPak            PAKISTAN                       NA                   NA                1.2964732   1.2129800   1.3799664
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                1.1089728   1.0168917   1.2010539
6-12 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                1.1102685   1.0984326   1.1221045
6-12 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                1.2475311   1.1931742   1.3018880
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                1.3570033   1.3423984   1.3716081
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1960560   1.1745115   1.2176004
6-12 months    ki1101329-Keneba            GAMBIA                         NA                   NA                1.1807423   1.1621509   1.1993337
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                1.1083850   1.0774528   1.1393172
6-12 months    ki1113344-GMS-Nepal         NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1114097-CMIN              BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN              BRAZIL                         NA                   NA                1.2407866   1.1634646   1.3181086
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  NA                   NA                1.0568796   1.0059921   1.1077672
6-12 months    ki1114097-CMIN              PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT           PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1119695-PROBIT            BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                1.1980958   1.1871818   1.2090098
6-12 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                1.0185507   1.0014002   1.0357013
6-12 months    ki1135781-COHORTS           INDIA                          NA                   NA                1.0982346   1.0900454   1.1064238
6-12 months    ki1135781-COHORTS           PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                1.2231564   1.2063717   1.2399412
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                1.1960390   1.1724665   1.2196115
6-12 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                1.1069878   1.1002423   1.1137334
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                1.2032186   1.1928228   1.2136143
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED           BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED           INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED           NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED           PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC               INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.8610206   0.8251715   0.8968698
12-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.8481393   0.8318971   0.8643815
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba            GAMBIA                         NA                   NA                0.8445901   0.8339177   0.8552625
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.8492488   0.7711499   0.9273476
12-24 months   ki1113344-GMS-Nepal         NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CMIN              BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  NA                   NA                0.8514329   0.8141742   0.8886917
12-24 months   ki1114097-CMIN              PERU                           NA                   NA                0.8385504   0.8202134   0.8568875
12-24 months   ki1114097-CONTENT           PERU                           NA                   NA                0.9259464   0.8927736   0.9591191
12-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7788532   0.7680491   0.7896573
12-24 months   ki1135781-COHORTS           INDIA                          NA                   NA                0.8273474   0.8224020   0.8322928
12-24 months   ki1135781-COHORTS           PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.8061887   0.7923193   0.8200581
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.8325979   0.8176481   0.8475477
12-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.7967156   0.7913996   0.8020317
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.8491886   0.8437514   0.8546258


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     Male                 Female             0.1508989    0.0266692    0.2751286
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           BRAZIL                         Male                 Female             0.0484334   -0.1549209    0.2517876
0-3 months     ki0047075b-MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           INDIA                          Male                 Female             0.1065085   -0.0487225    0.2617396
0-3 months     ki0047075b-MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           NEPAL                          Male                 Female             0.4548172    0.3185561    0.5910783
0-3 months     ki0047075b-MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           PERU                           Male                 Female             0.0712995   -0.0544819    0.1970809
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 Female             0.2022621    0.0255368    0.3789874
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.1614097    0.0101479    0.3126714
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          Male                 Female             0.3905604   -0.0503554    0.8314762
0-3 months     ki1000108-IRC               INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC               INDIA                          Male                 Female             0.4702630    0.2484892    0.6920369
0-3 months     ki1000109-EE                PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE                PAKISTAN                       Male                 Female             0.2497177    0.0854969    0.4139384
0-3 months     ki1000109-ResPak            PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-ResPak            PAKISTAN                       Male                 Female            -0.0295999   -0.6017290    0.5425293
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          Male                 Female             0.2449572    0.1279210    0.3619935
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     Male                 Female             0.2272558    0.1200924    0.3344193
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     Male                 Female             0.3204658    0.2464458    0.3944859
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto       BANGLADESH                     Male                 Female             0.2635975    0.1897955    0.3373996
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          Male                 Female             0.2405441    0.1742121    0.3068761
0-3 months     ki1101329-Keneba            GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba            GAMBIA                         Male                 Female             0.2648703    0.1707888    0.3589518
0-3 months     ki1114097-CMIN              BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN              BANGLADESH                     Male                 Female             0.2603624   -0.0329850    0.5537097
0-3 months     ki1114097-CMIN              BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN              BRAZIL                         Male                 Female             0.1595175   -0.2500679    0.5691029
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  Male                 Female             0.6024337   -0.0392208    1.2440882
0-3 months     ki1114097-CMIN              PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN              PERU                           Male                 Female             0.2430255   -0.0187057    0.5047568
0-3 months     ki1114097-CONTENT           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CONTENT           PERU                           Male                 Female            -0.5730257   -0.8656018   -0.2804496
0-3 months     ki1119695-PROBIT            BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT            BELARUS                        Male                 Female            -0.1511472   -0.1876404   -0.1146540
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       Male                 Female             0.2580841    0.2166710    0.2994972
0-3 months     ki1135781-COHORTS           GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           GUATEMALA                      Male                 Female             0.1851020    0.0984793    0.2717247
0-3 months     ki1135781-COHORTS           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           INDIA                          Male                 Female             0.2782201    0.2505485    0.3058917
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     Male                 Female             0.2730626    0.2559395    0.2901858
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     Male                 Female             0.2690956    0.2071157    0.3310754
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     Male                 Female             0.0091429   -0.0893604    0.1076462
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           BRAZIL                         Male                 Female             0.2177946    0.0621282    0.3734610
3-6 months     ki0047075b-MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           INDIA                          Male                 Female             0.2192566    0.0991999    0.3393132
3-6 months     ki0047075b-MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           NEPAL                          Male                 Female             0.0638318   -0.0471296    0.1747932
3-6 months     ki0047075b-MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           PERU                           Male                 Female             0.1041717   -0.0265115    0.2348550
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 Female             0.1140337   -0.0464262    0.2744936
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0325308   -0.1680490    0.1029875
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          Male                 Female            -0.0906027   -0.2918263    0.1106210
3-6 months     ki1000108-IRC               INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC               INDIA                          Male                 Female            -0.0834752   -0.2128634    0.0459130
3-6 months     ki1000109-EE                PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE                PAKISTAN                       Male                 Female             0.1504207    0.0301185    0.2707228
3-6 months     ki1000109-ResPak            PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-ResPak            PAKISTAN                       Male                 Female             0.0775776   -0.2030684    0.3582236
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          Male                 Female             0.2077868    0.0976198    0.3179539
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     Male                 Female             0.2400457    0.1468457    0.3332457
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     Male                 Female             0.0791326    0.0094690    0.1487961
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto       BANGLADESH                     Male                 Female             0.1370283    0.0648440    0.2092126
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          Male                 Female             0.0612934    0.0010218    0.1215650
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0141895   -0.0577780    0.0861571
3-6 months     ki1101329-Keneba            GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba            GAMBIA                         Male                 Female             0.1219766    0.0434554    0.2004977
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal         NEPAL                          Male                 Female             0.0741835   -0.0035456    0.1519126
3-6 months     ki1114097-CMIN              BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN              BANGLADESH                     Male                 Female             0.1058431   -0.0341974    0.2458835
3-6 months     ki1114097-CMIN              BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN              BRAZIL                         Male                 Female            -0.0359183   -0.4145416    0.3427050
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  Male                 Female             0.0343877   -0.1669978    0.2357731
3-6 months     ki1114097-CMIN              PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN              PERU                           Male                 Female             0.0102844   -0.0837521    0.1043210
3-6 months     ki1114097-CONTENT           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT           PERU                           Male                 Female            -0.0546419   -0.1502533    0.0409694
3-6 months     ki1119695-PROBIT            BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT            BELARUS                        Male                 Female            -0.0809675   -0.1137209   -0.0482141
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       Male                 Female             0.0845344    0.0446925    0.1243764
3-6 months     ki1135781-COHORTS           GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           GUATEMALA                      Male                 Female             0.0187837   -0.0426306    0.0801980
3-6 months     ki1135781-COHORTS           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           INDIA                          Male                 Female             0.1130556    0.0891016    0.1370097
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     Male                 Female             0.0881865    0.0692899    0.1070831
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     Male                 Female             0.0908973    0.0332528    0.1485418
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     Male                 Female             0.0431078   -0.0060846    0.0923002
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           BRAZIL                         Male                 Female            -0.0948079   -0.1864001   -0.0032157
6-12 months    ki0047075b-MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           INDIA                          Male                 Female            -0.0339943   -0.0904166    0.0224281
6-12 months    ki0047075b-MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           NEPAL                          Male                 Female             0.0080737   -0.0432469    0.0593943
6-12 months    ki0047075b-MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           PERU                           Male                 Female             0.0591628   -0.0056890    0.1240146
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 Female            -0.1121078   -0.1932051   -0.0310104
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0103533   -0.0845648    0.0638582
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          Male                 Female             0.0030634   -0.0922602    0.0983871
6-12 months    ki1000108-IRC               INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC               INDIA                          Male                 Female             0.0512430   -0.0069447    0.1094307
6-12 months    ki1000109-ResPak            PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000109-ResPak            PAKISTAN                       Male                 Female             0.0094678   -0.1558660    0.1748016
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       Male                 Female             0.0646987   -0.1218564    0.2512538
6-12 months    ki1000304-VITAMIN-A         INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A         INDIA                          Male                 Female            -0.0045044   -0.0282698    0.0192611
6-12 months    ki1000304-Vitamin-B12       INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-Vitamin-B12       INDIA                          Male                 Female             0.0678603   -0.0367070    0.1724276
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          Male                 Female             0.0064731   -0.0339687    0.0469150
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          Male                 Female             0.0090521   -0.1444564    0.1625605
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     Male                 Female             0.0294680   -0.0155749    0.0745109
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     Male                 Female            -0.0091514   -0.0438874    0.0255846
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto       BANGLADESH                     Male                 Female             0.0069630   -0.0278920    0.0418180
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          Male                 Female            -0.0343527   -0.0633667   -0.0053386
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Male                 Female             0.0056757   -0.0375582    0.0489096
6-12 months    ki1101329-Keneba            GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba            GAMBIA                         Male                 Female            -0.0169941   -0.0542902    0.0203019
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      Male                 Female            -0.0279998   -0.0903615    0.0343620
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal         NEPAL                          Male                 Female             0.0062144   -0.0330229    0.0454516
6-12 months    ki1114097-CMIN              BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN              BANGLADESH                     Male                 Female             0.0884283    0.0169298    0.1599268
6-12 months    ki1114097-CMIN              BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN              BRAZIL                         Male                 Female            -0.1031147   -0.2555216    0.0492922
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  Male                 Female            -0.0717232   -0.1728015    0.0293550
6-12 months    ki1114097-CMIN              PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN              PERU                           Male                 Female             0.0155083   -0.0345606    0.0655772
6-12 months    ki1114097-CONTENT           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT           PERU                           Male                 Female             0.0418583   -0.0160636    0.0997803
6-12 months    ki1119695-PROBIT            BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT            BELARUS                        Male                 Female             0.0388727    0.0225597    0.0551857
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       Male                 Female            -0.0488689   -0.0706374   -0.0271005
6-12 months    ki1135781-COHORTS           GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           GUATEMALA                      Male                 Female             0.0129860   -0.0217351    0.0477072
6-12 months    ki1135781-COHORTS           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           INDIA                          Male                 Female             0.0095406   -0.0068538    0.0259351
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           PHILIPPINES                    Male                 Female             0.0124172   -0.0120251    0.0368595
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         Male                 Female            -0.0333759   -0.0669723    0.0002204
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Male                 Female             0.0010769   -0.0461330    0.0482868
6-12 months    ki1148112-LCNI-5            MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5            MALAWI                         Male                 Female            -0.0168258   -0.0687240    0.0350724
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     Male                 Female             0.0074572   -0.0045086    0.0194230
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     Male                 Female             0.0011412   -0.0187492    0.0210315
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     Male                 Female            -0.0265257   -0.0582769    0.0052255
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           BRAZIL                         Male                 Female            -0.0297905   -0.0914658    0.0318847
12-24 months   ki0047075b-MAL-ED           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           INDIA                          Male                 Female            -0.0546873   -0.0885868   -0.0207878
12-24 months   ki0047075b-MAL-ED           NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           NEPAL                          Male                 Female             0.0044287   -0.0258291    0.0346864
12-24 months   ki0047075b-MAL-ED           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           PERU                           Male                 Female            -0.0656972   -0.1063284   -0.0250661
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   Male                 Female            -0.0452013   -0.0895654   -0.0008373
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 Female            -0.0241431   -0.0708417    0.0225556
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          Male                 Female            -0.0081689   -0.0616882    0.0453504
12-24 months   ki1000108-IRC               INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC               INDIA                          Male                 Female            -0.0306559   -0.0702166    0.0089047
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Male                 Female            -0.0243481   -0.1020829    0.0533868
12-24 months   ki1000111-WASH-Kenya        KENYA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1000111-WASH-Kenya        KENYA                          Male                 Female            -0.0387141   -0.0707231   -0.0067051
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     Male                 Female            -0.0302717   -0.0595423   -0.0010012
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     Male                 Female            -0.0080329   -0.0319585    0.0158926
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto       BANGLADESH                     Male                 Female            -0.0133744   -0.0368539    0.0101050
12-24 months   ki1101329-Keneba            GAMBIA                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba            GAMBIA                         Male                 Female            -0.0244568   -0.0458254   -0.0030881
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Male                 Female             0.0289472   -0.1158295    0.1737239
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal         NEPAL                          Male                 Female            -0.0128720   -0.0437309    0.0179869
12-24 months   ki1114097-CMIN              BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN              BANGLADESH                     Male                 Female             0.0001123   -0.0497388    0.0499633
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  Male                 Female            -0.0549698   -0.1273497    0.0174101
12-24 months   ki1114097-CMIN              PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN              PERU                           Male                 Female            -0.0230409   -0.0600209    0.0139392
12-24 months   ki1114097-CONTENT           PERU                           Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CONTENT           PERU                           Male                 Female             0.0406800   -0.0256315    0.1069916
12-24 months   ki1119695-PROBIT            BELARUS                        Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT            BELARUS                        Male                 Female             0.0026445   -0.0382337    0.0435226
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Male                 Female            -0.0766705   -0.1292196   -0.0241213
12-24 months   ki1135781-COHORTS           GUATEMALA                      Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           GUATEMALA                      Male                 Female            -0.0193981   -0.0410640    0.0022679
12-24 months   ki1135781-COHORTS           INDIA                          Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           INDIA                          Male                 Female            -0.0124366   -0.0223156   -0.0025576
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           PHILIPPINES                    Male                 Female             0.0042640   -0.0104649    0.0189930
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Male                 Female            -0.0302150   -0.0578083   -0.0026217
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Male                 Female            -0.0270766   -0.0568497    0.0026965
12-24 months   ki1148112-LCNI-5            MALAWI                         Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5            MALAWI                         Male                 Female            -0.0056683   -0.0392363    0.0278998
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Male                 Female            -0.0052713   -0.0156172    0.0050746
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Female               Female             0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Male                 Female            -0.0189282   -0.0288976   -0.0089588
