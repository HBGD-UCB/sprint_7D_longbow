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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        sex       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               0      109     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               1       27     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 0      108     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 1       21     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               0       98     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               1       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 0      110     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 1       10     233
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               0      121     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               1       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 0       88     251
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 1       25     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               0      103     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 0      109     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 1       21     240
0-6 months    ki0047075b-MAL-ED          PERU                           Female               0      127     303
0-6 months    ki0047075b-MAL-ED          PERU                           Female               1       16     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 0      139     303
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 1       21     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      145     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       14     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0      135     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       20     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0      105     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1       28     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0      114     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1       15     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               0      151     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0      141     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1       42     368
0-6 months    ki1000108-IRC              INDIA                          Female               0      164     410
0-6 months    ki1000108-IRC              INDIA                          Female               1       21     410
0-6 months    ki1000108-IRC              INDIA                          Male                 0      196     410
0-6 months    ki1000108-IRC              INDIA                          Male                 1       29     410
0-6 months    ki1000109-EE               PAKISTAN                       Female               0      128     379
0-6 months    ki1000109-EE               PAKISTAN                       Female               1       57     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                 0      121     379
0-6 months    ki1000109-EE               PAKISTAN                       Male                 1       73     379
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               0       91     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               1       41     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 0      111     278
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 1       35     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               0      518    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               1      182    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 0      571    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 1      259    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               0      142     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               1       80     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0      115     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       79     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               0      257     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               1       40     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 0      273     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 1       59     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               0      306     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               1       26     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 0      328     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 1       40     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      328     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               1       53     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      325     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1       52     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1125    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       59    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0     1110    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      102    2396
0-6 months    ki1101329-Keneba           GAMBIA                         Female               0     1086    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Female               1       99    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 0     1148    2465
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 1      132    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               0      122     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               1       32     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 0      101     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       40     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               0      257     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               1       31     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 0      278     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 1       36     602
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               0       72     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               1       48     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 0       96     277
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 1       61     277
0-6 months    ki1114097-CMIN             BRAZIL                         Female               0       59     119
0-6 months    ki1114097-CMIN             BRAZIL                         Female               1        3     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 0       55     119
0-6 months    ki1114097-CMIN             BRAZIL                         Male                 1        2     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               0      418     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               1       55     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      423     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 1       69     965
0-6 months    ki1114097-CMIN             PERU                           Female               0      309     699
0-6 months    ki1114097-CMIN             PERU                           Female               1       16     699
0-6 months    ki1114097-CMIN             PERU                           Male                 0      349     699
0-6 months    ki1114097-CMIN             PERU                           Male                 1       25     699
0-6 months    ki1114097-CONTENT          PERU                           Female               0      101     215
0-6 months    ki1114097-CONTENT          PERU                           Female               1        5     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 0       96     215
0-6 months    ki1114097-CONTENT          PERU                           Male                 1       13     215
0-6 months    ki1119695-PROBIT           BELARUS                        Female               0     8711   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Female               1       30   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 0     8029   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 1      123   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     6146   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               1      681   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     6426   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1      798   14051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               0      457    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               1       64    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 0      487    1092
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 1       84    1092
0-6 months    ki1135781-COHORTS          INDIA                          Female               0     3085    7176
0-6 months    ki1135781-COHORTS          INDIA                          Female               1      395    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                 0     3215    7176
0-6 months    ki1135781-COHORTS          INDIA                          Male                 1      481    7176
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               0     1363    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               1       74    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 0     1507    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 1      114    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               0       97     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               1       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 0       78     272
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 1       65     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               0     9167   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               1     4191   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     9258   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     4554   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1858    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               1      725    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1801    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      746    5130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0       69     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1       37     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0       53     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1       36     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0       98     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1        2     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0       97     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1        6     203
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               0       80     194
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               1       34     194
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0       48     194
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1       32     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0       88     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1       19     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0      100     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1       17     224
6-24 months   ki0047075b-MAL-ED          PERU                           Female               0       80     229
6-24 months   ki0047075b-MAL-ED          PERU                           Female               1       30     229
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 0       74     229
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 1       45     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0       93     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       24     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       72     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       35     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       43     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1       56     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       28     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1       60     187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0       57     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1       95     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       40     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1       96     288
6-24 months   ki1000108-IRC              INDIA                          Female               0      116     339
6-24 months   ki1000108-IRC              INDIA                          Female               1       39     339
6-24 months   ki1000108-IRC              INDIA                          Male                 0      140     339
6-24 months   ki1000108-IRC              INDIA                          Male                 1       44     339
6-24 months   ki1000109-EE               PAKISTAN                       Female               0       21     188
6-24 months   ki1000109-EE               PAKISTAN                       Female               1       74     188
6-24 months   ki1000109-EE               PAKISTAN                       Male                 0       26     188
6-24 months   ki1000109-EE               PAKISTAN                       Male                 1       67     188
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               0       68     167
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               1       10     167
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0       82     167
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1        7     167
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      311     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1      134     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      346     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1      173     964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0       53     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1       70     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0       46     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1       57     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0      108     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1       93     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0      123     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1       96     420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      191     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1       50     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      187     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1       69     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      262     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1       56     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      241     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1       61     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      822    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      108    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      778    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      139    1847
6-24 months   ki1101329-Keneba           GAMBIA                         Female               0      927    2377
6-24 months   ki1101329-Keneba           GAMBIA                         Female               1      256    2377
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 0      892    2377
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      302    2377
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0       85     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1       21     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       70     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       17     193
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1222    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1      168    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0     1046    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      241    2677
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0      129     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      109     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      136     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      106     480
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               0       24     166
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               1       50     166
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0       45     166
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1       47     166
6-24 months   ki1114097-CMIN             BRAZIL                         Female               0       47     104
6-24 months   ki1114097-CMIN             BRAZIL                         Female               1        8     104
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       43     104
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 1        6     104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      535    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1      109    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      483    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1      130    1257
6-24 months   ki1114097-CMIN             PERU                           Female               0      299     752
6-24 months   ki1114097-CMIN             PERU                           Female               1       62     752
6-24 months   ki1114097-CMIN             PERU                           Male                 0      321     752
6-24 months   ki1114097-CMIN             PERU                           Male                 1       70     752
6-24 months   ki1114097-CONTENT          PERU                           Female               0      101     200
6-24 months   ki1114097-CONTENT          PERU                           Female               1        4     200
6-24 months   ki1114097-CONTENT          PERU                           Male                 0       80     200
6-24 months   ki1114097-CONTENT          PERU                           Male                 1       15     200
6-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8444   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Female               1      120   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     7239   16303
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 1      500   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     4192    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1      577    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     3858    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1      690    9317
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      135     627
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1      182     627
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      140     627
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1      170     627
6-24 months   ki1135781-COHORTS          INDIA                          Female               0     2771    5650
6-24 months   ki1135781-COHORTS          INDIA                          Male                 0     2879    5650
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0      576    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1      528    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0      558    2224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1      562    2224
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      238     589
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               1       91     589
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      171     589
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1       89     589
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     5581   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1     1241   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     5101   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     1381   13304
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1580    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1      655    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1460    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1      617    4312
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               0       75     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               1       61     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 0       56     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 1       73     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               0       95     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               1       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 0      102     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 1       18     233
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               0       78     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               1       60     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 0       47     251
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 1       66     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               0       86     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               1       24     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 0       95     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 1       35     240
0-24 months   ki0047075b-MAL-ED          PERU                           Female               0       91     303
0-24 months   ki0047075b-MAL-ED          PERU                           Female               1       52     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 0       76     303
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 1       84     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               0      109     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               1       50     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 0       84     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 1       71     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               0       47     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               1       86     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 0       33     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 1       96     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               0       45     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               1      142     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 1      155     373
0-24 months   ki1000108-IRC              INDIA                          Female               0      100     410
0-24 months   ki1000108-IRC              INDIA                          Female               1       85     410
0-24 months   ki1000108-IRC              INDIA                          Male                 0      115     410
0-24 months   ki1000108-IRC              INDIA                          Male                 1      110     410
0-24 months   ki1000109-EE               PAKISTAN                       Female               0       21     379
0-24 months   ki1000109-EE               PAKISTAN                       Female               1      164     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                 0       24     379
0-24 months   ki1000109-EE               PAKISTAN                       Male                 1      170     379
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               0       64     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               1       68     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 0       72     278
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 1       74     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               0      305    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               1      395    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 0      317    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 1      516    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               0       58     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               1      165     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 0       48     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 1      147     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               0      147     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               1      150     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 0      139     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 1      193     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               0      216     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               1      116     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 0      221     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 1      147     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               0      244     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               1      137     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 0      220     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 1      157     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      962    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1      222    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      893    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1      319    2396
0-24 months   ki1101329-Keneba           GAMBIA                         Female               0      937    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Female               1      470    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 0      892    2915
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 1      616    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               0       93     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               1       69     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 0       79     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 1       74     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               0     1170    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               1      455    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 0      990    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 1      650    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               0      118     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               1      170     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 0      136     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 1      178     602
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               0       24     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               1       96     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 0       41     277
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 1      116     277
0-24 months   ki1114097-CMIN             BRAZIL                         Female               0       46     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female               1       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 0       39     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 1       18     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               0      501    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               1      257    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 0      458    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 1      291    1507
0-24 months   ki1114097-CMIN             PERU                           Female               0      316     929
0-24 months   ki1114097-CMIN             PERU                           Female               1      128     929
0-24 months   ki1114097-CMIN             PERU                           Male                 0      329     929
0-24 months   ki1114097-CMIN             PERU                           Male                 1      156     929
0-24 months   ki1114097-CONTENT          PERU                           Female               0       97     215
0-24 months   ki1114097-CONTENT          PERU                           Female               1        9     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 0       69     215
0-24 months   ki1114097-CONTENT          PERU                           Male                 1       40     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female               0     8458   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Female               1      285   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 0     6739   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 1     1415   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               0     5031   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               1     1803   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 0     4924   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 1     2315   14073
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               0      184    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               1      460    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 0      197    1368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 1      527    1368
0-24 months   ki1135781-COHORTS          INDIA                          Female               0     2806    7417
0-24 months   ki1135781-COHORTS          INDIA                          Female               1      748    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                 0     2907    7417
0-24 months   ki1135781-COHORTS          INDIA                          Male                 1      956    7417
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               0      658    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               1      779    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 0      652    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 1      969    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               0      213     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               1      208     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 0      146     840
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 1      273     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               0     7744   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               1     5638   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 0     7406   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 1     6448   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               0     1323    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               1     1401    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 0     1226    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 1     1492    5442


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##         ever_stunted
## sex         0
##   Female 2771
##   Male   2879
```




# Results Detail

## Results Plots
![](/tmp/8d5b1bd8-fe7a-4c70-9e2f-cbd61d0083f9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d5b1bd8-fe7a-4c70-9e2f-cbd61d0083f9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d5b1bd8-fe7a-4c70-9e2f-cbd61d0083f9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d5b1bd8-fe7a-4c70-9e2f-cbd61d0083f9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4485294   0.3647849   0.5322739
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.5658915   0.4801995   0.6515834
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1592920   0.0916740   0.2269101
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.1500000   0.0859755   0.2140246
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.4347826   0.3519084   0.5176568
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5840708   0.4930128   0.6751288
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.2181818   0.1408389   0.2955247
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.2692308   0.1928233   0.3456382
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.3636364   0.2846623   0.4426104
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.5250000   0.4474945   0.6025055
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.3144654   0.2421812   0.3867496
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4580645   0.3795026   0.5366264
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6466165   0.5652213   0.7280118
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7441860   0.6687487   0.8196234
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.7593583   0.6980077   0.8207089
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.8333333   0.7797033   0.8869634
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.4594595   0.3875592   0.5313597
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.4888889   0.4234931   0.5542847
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.8864865   0.8407149   0.9322581
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.8762887   0.8298960   0.9226813
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.5151515   0.4297404   0.6005626
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.5068493   0.4256068   0.5880918
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.5642857   0.5193332   0.6092382
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.6194478   0.5742045   0.6646911
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.7399103   0.6822646   0.7975560
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.7538462   0.6933127   0.8143796
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.5050505   0.4481438   0.5619572
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5813253   0.5282158   0.6344348
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3493976   0.2980752   0.4007200
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3994565   0.3493791   0.4495339
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.3595801   0.3113628   0.4077973
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.4164456   0.3666508   0.4662404
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1875000   0.1652631   0.2097369
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2632013   0.2384039   0.2879987
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.3340441   0.3093950   0.3586931
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.4084881   0.3836743   0.4333019
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.4259259   0.3496597   0.5021921
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.4836601   0.4043496   0.5629707
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.2800000   0.2433247   0.3166753
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.3963415   0.3166970   0.4759859
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.5902778   0.5334336   0.6471219
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.5668790   0.5120268   0.6217312
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8000000   0.7283027   0.8716973
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.7388535   0.6700192   0.8076878
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.2580645   0.1486860   0.3674430
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.3157895   0.1946078   0.4369711
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.3390501   0.3053390   0.3727613
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3885180   0.3536001   0.4234360
0-24 months   ki1114097-CMIN             PERU                           Female               NA                0.2882883   0.2461326   0.3304440
0-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.3216495   0.2800556   0.3632434
0-24 months   ki1114097-CONTENT          PERU                           Female               NA                0.0849057   0.0317183   0.1380931
0-24 months   ki1114097-CONTENT          PERU                           Male                 NA                0.3669725   0.2762792   0.4576658
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0325975   0.0225492   0.0426458
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.1735345   0.1511744   0.1958946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2638279   0.2533789   0.2742770
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.3197956   0.3090512   0.3305399
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.7142857   0.6793825   0.7491890
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7279006   0.6954713   0.7603298
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.2104671   0.1970643   0.2238699
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.2474761   0.2338666   0.2610855
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.5421016   0.5163375   0.5678657
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.5977791   0.5739049   0.6216534
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.4940618   0.4462753   0.5418482
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.6515513   0.6059010   0.6972016
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4213122   0.4117286   0.4308959
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4654251   0.4555290   0.4753213
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.5143172   0.4924086   0.5362258
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.5489330   0.5265258   0.5713403
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1985294   0.1313624   0.2656964
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1627907   0.0989635   0.2266179
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1327434   0.0700498   0.1954369
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.0833333   0.0337762   0.1328905
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.1231884   0.0682453   0.1781315
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2212389   0.1445543   0.2979236
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.0636364   0.0179240   0.1093487
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1615385   0.0981423   0.2249346
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.1118881   0.0601365   0.1636397
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.1312500   0.0788413   0.1836587
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0880503   0.0439346   0.1321660
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1290323   0.0761725   0.1818920
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2105263   0.1411079   0.2799447
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1162791   0.0608558   0.1717023
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1837838   0.1278970   0.2396706
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2295082   0.1684988   0.2905176
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.1135135   0.0677465   0.1592805
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.1288889   0.0850528   0.1727250
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.3081081   0.2414878   0.3747284
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.3762887   0.3080276   0.4445498
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.3106061   0.2315232   0.3896889
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2397260   0.1703520   0.3091000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2600000   0.2189358   0.3010642
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.3120482   0.2893711   0.3347253
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3603604   0.2971293   0.4235914
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4072165   0.3379967   0.4764363
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1346801   0.0958244   0.1735359
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1777108   0.1365586   0.2188631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0783133   0.0493932   0.1072333
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1086957   0.0768717   0.1405196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1391076   0.1043362   0.1738790
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1379310   0.1031000   0.1727620
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0498311   0.0374342   0.0622280
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0841584   0.0685253   0.0997916
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0835443   0.0677867   0.0993019
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1031250   0.0864610   0.1197890
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2077922   0.1436034   0.2719810
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.2836879   0.2091551   0.3582207
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1076389   0.0718154   0.1434624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1146497   0.0793811   0.1499183
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.4000000   0.3121891   0.4878109
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.3885350   0.3121542   0.4649159
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1162791   0.0873755   0.1451826
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1402439   0.1095452   0.1709426
0-6 months    ki1114097-CMIN             PERU                           Female               NA                0.0492308   0.0256926   0.0727690
0-6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0668449   0.0415150   0.0921749
0-6 months    ki1114097-CONTENT          PERU                           Female               NA                0.0471698   0.0067171   0.0876225
0-6 months    ki1114097-CONTENT          PERU                           Male                 NA                0.1192661   0.0582804   0.1802518
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0034321   0.0021710   0.0046932
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0150883   0.0092698   0.0209069
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0997510   0.0926423   0.1068597
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1104651   0.1032363   0.1176940
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1228407   0.0946414   0.1510400
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1471103   0.1180435   0.1761771
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1135057   0.1029659   0.1240456
0-6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.1301407   0.1192928   0.1409885
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0514962   0.0400674   0.0629249
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0703270   0.0578774   0.0827765
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2480620   0.1733958   0.3227282
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4545455   0.3727841   0.5363068
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.3137446   0.3052665   0.3222226
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.3297133   0.3205394   0.3388872
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2806814   0.2610773   0.3002855
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2928936   0.2729951   0.3127921
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.3490566   0.2580797   0.4400335
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.4044944   0.3022667   0.5067221
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.2982456   0.2140484   0.3824428
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4000000   0.2923706   0.5076294
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1775701   0.1049993   0.2501409
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1452991   0.0813013   0.2092970
6-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.2727273   0.1893179   0.3561367
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.3781513   0.2908340   0.4654685
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2051282   0.1317971   0.2784593
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.3271028   0.2380097   0.4161959
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.5656566   0.4677554   0.6635577
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.6818182   0.5842422   0.7793942
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6250000   0.5479030   0.7020970
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7058824   0.6291708   0.7825939
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.2516129   0.1831976   0.3200282
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.2391304   0.1774066   0.3008543
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.7789474   0.6952819   0.8626128
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.7204301   0.6289754   0.8118848
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.1282051   0.0537894   0.2026209
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.0786517   0.0225568   0.1347466
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.3011236   0.2584706   0.3437766
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.3333333   0.3063844   0.3602823
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.5691057   0.4813975   0.6568139
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.5533981   0.4571767   0.6496194
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.4626866   0.3936745   0.5316986
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.4383562   0.3725619   0.5041504
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2074689   0.1562227   0.2587151
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2695313   0.2151222   0.3239403
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1761006   0.1342017   0.2179995
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2019868   0.1566697   0.2473038
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1161290   0.0955327   0.1367253
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1515812   0.1283641   0.1747984
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.2163990   0.1929285   0.2398695
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.2529313   0.2282699   0.2775928
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.1981132   0.1220392   0.2741872
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1954023   0.1118669   0.2789377
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.1208633   0.0943048   0.1474218
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1872572   0.1479370   0.2265774
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4579832   0.3946190   0.5213473
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4380165   0.3754416   0.5005914
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.6756757   0.5686955   0.7826558
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.5108696   0.4084145   0.6133247
6-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.1454545   0.0518286   0.2390805
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.1224490   0.0302212   0.2146768
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1692547   0.1402824   0.1982269
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.2120718   0.1796993   0.2444442
6-24 months   ki1114097-CMIN             PERU                           Female               NA                0.1717452   0.1328131   0.2106772
6-24 months   ki1114097-CMIN             PERU                           Male                 NA                0.1790281   0.1410028   0.2170535
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0140121   0.0085762   0.0194481
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0646078   0.0505126   0.0787031
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1209897   0.1117336   0.1302458
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1517150   0.1412884   0.1621417
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.5741325   0.5196561   0.6286089
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.5483871   0.4929449   0.6038293
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.4782609   0.4487881   0.5077336
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.5017857   0.4724968   0.5310747
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.2765957   0.2282195   0.3249720
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.3423077   0.2845845   0.4000309
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1819115   0.1714802   0.1923427
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.2130515   0.2023858   0.2237172
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2930649   0.2712229   0.3149069
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2970631   0.2744777   0.3196485


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5056604   0.4453505   0.5659702
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1545064   0.1079979   0.2010150
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5019920   0.4400130   0.5639710
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2458333   0.1912446   0.3004221
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3853503   0.3314343   0.4392663
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6946565   0.6387828   0.7505302
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7962466   0.7553156   0.8371777
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8812665   0.8486571   0.9138759
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5107914   0.4519237   0.5696591
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5942596   0.5539147   0.6346046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2257930   0.2090482   0.2425378
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3725557   0.3550013   0.3901102
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4539683   0.3988995   0.5090370
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3384380   0.2882099   0.3886661
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7653430   0.7153466   0.8153393
0-24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2857143   0.2042046   0.3672239
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3636364   0.3393411   0.3879316
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3057051   0.2760637   0.3353464
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2279070   0.1717046   0.2841094
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2926171   0.2851000   0.3001341
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7214912   0.6977284   0.7452541
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2297425   0.2201683   0.2393167
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5716154   0.5540738   0.5891570
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5726190   0.5391450   0.6060930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4437509   0.4362402   0.4512616
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5316060   0.5154292   0.5477829
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1811321   0.1346751   0.2275890
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1072961   0.0674717   0.1471206
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1673307   0.1210604   0.2136010
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1166667   0.0759676   0.1573658
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1221122   0.0851852   0.1590392
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1082803   0.0738560   0.1427045
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1641221   0.1191873   0.2090569
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1219512   0.0902381   0.1536643
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3430079   0.2951521   0.3908637
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2733813   0.2208950   0.3258676
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882353   0.2618269   0.3146436
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1573927   0.1289105   0.1858749
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0671953   0.0571686   0.0772221
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0937120   0.0822051   0.1052189
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2440678   0.1949690   0.2931666
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3935018   0.3358674   0.4511362
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1284974   0.1073727   0.1496221
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0586552   0.0412232   0.0760873
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.0837209   0.0466125   0.1208293
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1052594   0.1001850   0.1103339
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1355311   0.1152202   0.1558421
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1220736   0.1144987   0.1296485
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0614781   0.0529631   0.0699931
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3566176   0.2995882   0.4136471
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3218623   0.3151120   0.3286127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2867446   0.2729319   0.3005573
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3743590   0.3062579   0.4424600
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3402062   0.2733649   0.4070475
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1607143   0.1125109   0.2089177
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3275109   0.2665942   0.3884276
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2633929   0.2055812   0.3212045
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6203209   0.5505766   0.6900651
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7500000   0.6879377   0.8120623
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1017964   0.0557975   0.1477953
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3184647   0.2882909   0.3486385
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1337304   0.1182039   0.1492569
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2347497   0.2177073   0.2517920
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1968912   0.1406444   0.2531380
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1527830   0.1267871   0.1787788
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5843373   0.5091390   0.6595357
6-24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.1346154   0.0687008   0.2005300
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1901352   0.1684337   0.2118368
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.1755319   0.1483241   0.2027397
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1359880   0.1290274   0.1429485
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5614035   0.5225320   0.6002750
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4901079   0.4693271   0.5108888
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3056027   0.2683685   0.3428369
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1970836   0.1890247   0.2051424
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2949907   0.2786334   0.3113480


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.2616597   0.9920626   1.604521
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            0.9416667   0.5157768   1.719225
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.3433628   1.0501451   1.718452
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.2339744   0.7836000   1.943202
0-24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.4437500   1.1103104   1.877325
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4566452   1.0934513   1.940475
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.1508924   0.9791380   1.352775
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0974178   0.9897215   1.216833
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0640523   0.8660754   1.307285
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9884964   0.9180333   1.064368
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            0.9838840   0.7812511   1.239074
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0977556   1.0223598   1.178711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0188345   0.9109896   1.139446
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1510241   0.9956023   1.330709
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1432721   0.9425016   1.386810
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1581444   0.9676912   1.386081
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.4037404   1.2064418   1.633305
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2228568   1.1113915   1.345501
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.1355499   0.8907576   1.447614
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.4155052   1.1409421   1.756141
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9603597   0.8378103   1.100835
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9235669   0.8115697   1.051020
0-24 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.2236842   0.6908136   2.167593
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.1459014   1.0021661   1.310252
0-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.1157216   0.9178670   1.356226
0-24 months   ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CONTENT          PERU                           Male                 Female            4.3221203   2.2041198   8.475367
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            5.3235502   4.2207165   6.714544
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.2121369   1.1507897   1.276754
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0190608   0.9538543   1.088725
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1758421   1.0809546   1.279059
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1027069   1.0363332   1.173331
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.3187649   1.1703039   1.486059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1047037   1.0740848   1.136195
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0673045   1.0082715   1.129794
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8199828   0.4885357   1.376300
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            0.6277778   0.2937624   1.341577
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.7959396   1.0208843   3.159417
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            2.5384615   1.1196397   5.755233
0-6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.1730469   0.6367095   2.161172
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4654378   0.7671794   2.799225
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.5523256   0.3093762   0.986060
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2487946   0.8338345   1.870261
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1354497   0.6700200   1.924190
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.2212878   0.9209617   1.619550
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            0.7718009   0.5249365   1.134759
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.2001854   1.0374152   1.388494
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1300258   0.8850955   1.442735
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.3195030   0.9114770   1.910184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3879599   0.8663795   2.223544
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.9915420   0.6950237   1.414564
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6888740   1.2381066   2.303756
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2343750   0.9629023   1.582385
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.3652482   0.9101109   2.047995
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0651325   0.6769858   1.675821
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9713376   0.7234202   1.304217
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2060976   0.8660406   1.679680
0-6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             PERU                           Male                 Female            1.3577874   0.7377001   2.499101
0-6 months    ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CONTENT          PERU                           Male                 Female            2.5284403   0.9315853   6.862507
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            4.3962341   3.0022436   6.437477
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1074087   1.0052845   1.219907
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1975701   0.8846284   1.621216
0-6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.1465560   1.0120527   1.298935
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3656735   1.0281495   1.814001
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.8323864   1.2904228   2.601969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0508972   1.0143094   1.088805
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0435092   0.9455773   1.151584
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1588217   0.8060222   1.666043
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.3411765   0.9080546   1.980888
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8182636   0.4486885   1.492250
6-24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.3865546   0.9451696   2.034062
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.5946262   1.0173620   2.499437
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2053571   0.9629021   1.508862
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.1294118   0.9581979   1.331219
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            0.9503902   0.6532510   1.382687
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9248765   0.7831881   1.092198
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            0.6134831   0.2445941   1.538719
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1069652   0.9841054   1.245163
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            0.9723994   0.7707951   1.226734
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9474149   0.7667308   1.170678
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.2991406   0.9443122   1.787297
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1469962   0.8270606   1.590694
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3052829   1.0325995   1.649975
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1688194   1.0102028   1.352341
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            0.9863164   0.5552050   1.752182
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.5493303   1.2050724   1.991934
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9564031   0.7839187   1.166839
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.7560870   0.5856013   0.976206
6-24 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BRAZIL                         Male                 Female            0.8418367   0.3125666   2.267322
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2529745   0.9961751   1.575973
6-24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             PERU                           Male                 Female            1.0424057   0.7640574   1.422157
6-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            4.6108455   3.6559264   5.815187
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.2539498   1.1314035   1.389769
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            0.9551577   0.8314942   1.097213
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0491883   0.9638080   1.142132
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.2375740   0.9706410   1.577915
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1711825   1.0925696   1.255452
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0136427   0.9155372   1.122261


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0571310   -0.0016230    0.1158849
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0047856   -0.0527481    0.0431769
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0672094    0.0110194    0.1233995
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0276515   -0.0313267    0.0866297
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0852085    0.0260760    0.1443410
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0708849    0.0175898    0.1241801
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0480399   -0.0069211    0.1030010
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0368884   -0.0039192    0.0776959
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0161503   -0.0372056    0.0695062
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0052200   -0.0385835    0.0281435
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0043601   -0.0662696    0.0575493
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0299739    0.0067632    0.0531846
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0065012   -0.0325000    0.0455023
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0402595   -0.0009337    0.0814527
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0263167   -0.0114256    0.0640590
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0282827   -0.0062508    0.0628163
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0382930    0.0213766    0.0552094
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0385117    0.0203676    0.0566558
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0280423   -0.0254962    0.0815809
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0584380    0.0151522    0.1017237
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0122047   -0.0534180    0.0290087
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0346570   -0.0911041    0.0217900
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0276498   -0.0507157    0.1060153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0245862    0.0004310    0.0487414
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0174168   -0.0135192    0.0483528
0-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1430013    0.0864488    0.1995538
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0680121    0.0593772    0.0766470
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0287891    0.0210659    0.0365124
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0072055   -0.0180119    0.0324229
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0192754    0.0093181    0.0292328
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0295138    0.0108685    0.0481592
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0785573    0.0451646    0.1119500
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0224387    0.0161037    0.0287738
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0172888    0.0021968    0.0323809
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0173973   -0.0625535    0.0277588
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0254472   -0.0667276    0.0158332
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0441423    0.0012439    0.0870406
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0530303    0.0102454    0.0958153
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0102241   -0.0286843    0.0491325
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0202299   -0.0138323    0.0542922
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0464042   -0.0905127   -0.0022956
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0227380   -0.0184723    0.0639483
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0084377   -0.0263484    0.0432238
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0348998   -0.0140447    0.0838444
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0372248   -0.0926302    0.0181807
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0282353    0.0073122    0.0491584
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0218512   -0.0219278    0.0656301
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0227126   -0.0072081    0.0526332
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0159725   -0.0066620    0.0386069
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0005852   -0.0250635    0.0238932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0173642    0.0072483    0.0274802
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0101677   -0.0017478    0.0220831
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0362756   -0.0109380    0.0834892
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0036568   -0.0225659    0.0298795
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0064982   -0.0724655    0.0594691
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0122183   -0.0092922    0.0337289
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0094245   -0.0090881    0.0279370
0-6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.0365511   -0.0008637    0.0739659
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0056249    0.0030940    0.0081558
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0055084    0.0002952    0.0107217
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0126904   -0.0084979    0.0338788
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0085678    0.0007753    0.0163603
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0099819    0.0010173    0.0189465
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1085556    0.0490635    0.1680478
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0081178    0.0023144    0.0139211
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0060633   -0.0079736    0.0201002
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0253024   -0.0372771    0.0878818
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0419606   -0.0148314    0.0987525
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0168558   -0.0674392    0.0337276
6-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0547836   -0.0083374    0.1179047
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0582647    0.0025679    0.1139614
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0546643   -0.0109135    0.1202421
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0381944   -0.0133762    0.0897651
6-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0067751   -0.0567927    0.0432424
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0289474   -0.0904068    0.0325121
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0264087   -0.0762149    0.0233975
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0173411   -0.0013880    0.0360702
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0071588   -0.0665052    0.0521876
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0126866   -0.0624182    0.0370450
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0319677   -0.0066283    0.0705638
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0126090   -0.0174710    0.0426891
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0176013    0.0021713    0.0330314
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0183507    0.0012337    0.0354677
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0012220   -0.0521531    0.0497090
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0319197    0.0140474    0.0497919
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0100665   -0.0549735    0.0348405
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0913383   -0.1743792   -0.0082974
6-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                -0.0108392   -0.0727989    0.0511206
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0208806   -0.0003387    0.0420998
6-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0037868   -0.0245104    0.0320839
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0240177    0.0191456    0.0288898
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0149983    0.0081853    0.0218113
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0127290   -0.0511719    0.0257140
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0118470   -0.0090836    0.0327777
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0290070   -0.0043431    0.0623571
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0151721    0.0085395    0.0218047
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0019258   -0.0125399    0.0163916


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1129829   -0.0118872    0.2224436
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0309734   -0.3930797    0.2370098
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1338854    0.0133637    0.2396849
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1124807   -0.1622684    0.3222818
0-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1898396    0.0459776    0.3120079
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1839493    0.0331694    0.3112146
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0691564   -0.0141095    0.1455855
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0463278   -0.0066998    0.0965622
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0339570   -0.0850455    0.1399080
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0059233   -0.0445125    0.0312402
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0085361   -0.1373277    0.1056712
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0504391    0.0106879    0.0885930
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0087099   -0.0449548    0.0596186
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0738287   -0.0051219    0.1465778
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0700444   -0.0360665    0.1652878
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0729195   -0.0205776    0.1578511
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1695933    0.0917873    0.2407338
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1033716    0.0533062    0.1507893
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0617716   -0.0640468    0.1727125
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1726697    0.0533970    0.2769139
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0211127   -0.0949830    0.0477741
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0452830   -0.1220709    0.0262499
0-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0967742   -0.2231830    0.3330378
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0676121   -0.0012489    0.1317373
0-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0569725   -0.0498239    0.1529046
0-24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.6274548    0.3504348    0.7863341
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6760000    0.6082278    0.7320483
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0983851    0.0716330    0.1243662
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0099870   -0.0255957    0.0443351
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0839000    0.0395842    0.1261711
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0516323    0.0183853    0.0837533
0-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1371894    0.0760882    0.1942499
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0505660    0.0361988    0.0647190
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0325219    0.0037137    0.0604971
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0960478   -0.3751892    0.1264324
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.2371681   -0.6787192    0.0882424
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2638026   -0.0324195    0.4750326
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.4545455   -0.0101128    0.7054580
0-6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0837271   -0.2962610    0.3523248
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1868294   -0.1906049    0.4446131
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.2827417   -0.5748449   -0.0448180
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1100996   -0.1127660    0.2883295
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0691892   -0.2640206    0.3145612
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1017464   -0.0528529    0.2336445
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1361643   -0.3577394    0.0492511
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0979592    0.0170784    0.1721846
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0571704   -0.0646591    0.1650589
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1443050   -0.0670403    0.3137898
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1694049   -0.1054501    0.3759210
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0042245   -0.1974347    0.1578106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2584145    0.0969688    0.3909966
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1084991   -0.0275072    0.2265029
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.1486291   -0.0672474    0.3208395
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0328565   -0.2338227    0.2418956
0-6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0165138   -0.1987778    0.1380385
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0950863   -0.0881539    0.2474696
0-6 months    ki1114097-CMIN             PERU                           Female               NA                 0.1606754   -0.2177498    0.4215021
0-6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.4365828   -0.1614692    0.7266919
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.6210556    0.4870496    0.7200532
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0523319    0.0015400    0.1005400
0-6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0936349   -0.0764568    0.2368503
0-6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0701858    0.0042272    0.1317753
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1623654    0.0049316    0.2948911
0-6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3044034    0.1179498    0.4514432
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0252213    0.0070658    0.0430448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0211452   -0.0290536    0.0688952
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0675885   -0.1155603    0.2206686
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1233386   -0.0603435    0.2752018
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.1048806   -0.4678223    0.1683182
6-24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1672727   -0.0489864    0.3389478
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2212082   -0.0184892    0.4044937
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0881226   -0.0249934    0.1887553
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0575916   -0.0238934    0.1325918
6-24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0276720   -0.2536541    0.1575749
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0385965   -0.1242136    0.0405003
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.2594268   -0.8424464    0.1391033
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0544523   -0.0091149    0.1140152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0127393   -0.1240689    0.0875641
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0281924   -0.1448956    0.0766149
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1335123   -0.0429057    0.2800875
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0668172   -0.1067535    0.2131670
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1316181    0.0090680    0.2390123
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0781713    0.0023981    0.1481892
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                -0.0062066   -0.3011713    0.2218921
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2089216    0.0895895    0.3126122
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0224741   -0.1278297    0.0730398
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.1563110   -0.3111128   -0.0197864
6-24 months   ki1114097-CMIN             BRAZIL                         Female               NA                -0.0805195   -0.6526441    0.2935428
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1098196   -0.0086134    0.2143461
6-24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0215731   -0.1536522    0.1701838
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6315484    0.5568958    0.6936238
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1102910    0.0589963    0.1587896
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0226735   -0.0935257    0.0435880
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0241723   -0.0194935    0.0659679
6-24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0949173   -0.0209227    0.1976133
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0769832    0.0425598    0.1101689
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0065285   -0.0437416    0.0543774
