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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthwt                       n_cell       n
-------------  -------------------------  -----------------------------  ---------------------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       190     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  49     239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       173     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   7     180
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       163     196
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight                  33     196
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       153     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight                  18     171
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       252     269
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight                  17     269
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       216     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  13     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       112     118
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   6     118
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  11      87
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight       314     376
0-3 months     ki1000108-IRC              INDIA                          Low birth weight                  62     376
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       384     594
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight                 210     594
0-3 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        13      15
0-3 months     ki1000109-ResPak           PAKISTAN                       Low birth weight                   2      15
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       874    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 294    1168
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       129     201
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  72     201
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       480     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 154     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       548     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 172     720
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1137    1261
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight                 124    1261
0-3 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
0-3 months     ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight        75      81
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight                   6      81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         1       1
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   0       1
0-3 months     ki1114097-CMIN             PERU                           Normal or high birthweight        12      13
0-3 months     ki1114097-CMIN             PERU                           Low birth weight                   1      13
0-3 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
0-3 months     ki1114097-CONTENT          PERU                           Low birth weight                   0       2
0-3 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12745   12745
0-3 months     ki1119695-PROBIT           BELARUS                        Low birth weight                   0   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      6854    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                1010    7864
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       631     683
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight                  52     683
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      5126    6463
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight                1337    6463
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     23594   40088
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight               16494   40088
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2394    3614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1220    3614
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       178     225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  47     225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       198     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight                  10     208
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       189     222
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight                  33     222
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       205     226
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight                  21     226
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight       247     264
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight                  17     264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       227     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       116     122
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   6     122
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       269     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  38     307
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight       333     396
3-6 months     ki1000108-IRC              INDIA                          Low birth weight                  63     396
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight       428     662
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight                 234     662
3-6 months     ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         9       9
3-6 months     ki1000109-ResPak           PAKISTAN                       Low birth weight                   0       9
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       854    1115
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 261    1115
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       116     176
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  60     176
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       437     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 137     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       527     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 168     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1590    1645
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  55    1645
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1086    1198
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight                 112    1198
3-6 months     ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0       1
3-6 months     ki1114097-CMIN             BANGLADESH                     Low birth weight                   1       1
3-6 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight        74      77
3-6 months     ki1114097-CMIN             BRAZIL                         Low birth weight                   3      77
3-6 months     ki1114097-CMIN             PERU                           Normal or high birthweight         9      10
3-6 months     ki1114097-CMIN             PERU                           Low birth weight                   1      10
3-6 months     ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
3-6 months     ki1114097-CONTENT          PERU                           Low birth weight                   0       2
3-6 months     ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13309   13309
3-6 months     ki1119695-PROBIT           BELARUS                        Low birth weight                   0   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5128    5871
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                 743    5871
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       623     680
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight                  57     680
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight      4767    5975
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight                1208    5975
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     16036   25128
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                9092   25128
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2644    3516
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                 872    3516
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       170     215
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  45     215
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       184     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                  10     194
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     217
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                  33     217
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       204     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                  20     224
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       219     234
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight                  15     234
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       218     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       110     115
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     115
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       285     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  38     323
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight       333     398
6-12 months    ki1000108-IRC              INDIA                          Low birth weight                  65     398
6-12 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         0       8
6-12 months    ki1000109-EE               PAKISTAN                       Low birth weight                   8       8
6-12 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        10      10
6-12 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   0      10
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       865    1128
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                 263    1128
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       101     157
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  56     157
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       416     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 129     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       511     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 165     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1042    1074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                  32    1074
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1029    1125
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight                  96    1125
6-12 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight        87      90
6-12 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   3      90
6-12 months    ki1114097-CMIN             PERU                           Normal or high birthweight         9      10
6-12 months    ki1114097-CMIN             PERU                           Low birth weight                   1      10
6-12 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6-12 months    ki1114097-CONTENT          PERU                           Low birth weight                   0       2
6-12 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     12896   12896
6-12 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      3941    4559
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                 618    4559
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       634     694
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                  60     694
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      3856    4765
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight                 909    4765
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2165    2383
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 218    2383
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12334   19628
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                7294   19628
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      4117    5605
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1488    5605
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       160     202
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                  42     202
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       157     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   8     165
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       184     218
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                  34     218
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       200     220
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                  20     220
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       177     188
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                  11     188
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       216     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                  14     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight        99     104
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   5     104
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       287     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                  37     324
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       329     394
12-24 months   ki1000108-IRC              INDIA                          Low birth weight                  65     394
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight        86     135
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                  49     135
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       344     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                 114     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       371     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                 124     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         2       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       2
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       944    1027
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                  83    1027
12-24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         3       3
12-24 months   ki1114097-CMIN             PERU                           Low birth weight                   0       3
12-24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      2533    2533
12-24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       236     301
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                  65     301
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       570     627
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                  57     627
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3284    4045
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight                 761    4045
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2032    2226
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                 194    2226
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5798    9268
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                3470    9268
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      4547    6215
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                1668    6215


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
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
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
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cabd1251-bcf0-44c9-8e80-9c61eec954f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cabd1251-bcf0-44c9-8e80-9c61eec954f8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                3.5341256   3.4646758   3.6035753
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                3.6695294   3.5194075   3.8196512
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                4.0314122   3.9269995   4.1358248
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                4.5343636   4.3117545   4.7569727
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                3.5788125   3.4916507   3.6659743
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                3.6678692   3.4880617   3.8476768
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                3.7938028   3.7131518   3.8744539
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                4.1324361   3.9202978   4.3445744
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                3.3065147   3.2404818   3.3725475
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                3.4352239   3.2055071   3.6649407
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                3.4412053   3.3496777   3.5327329
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                3.5113259   3.1124481   3.9102036
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                3.5194679   3.4171676   3.6217682
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                3.4993034   3.3736683   3.6249385
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                3.5562646   3.3283608   3.7841684
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                3.2973778   2.5633311   4.0314245
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                3.2696492   3.1474590   3.3918394
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             NA                2.7171478   2.4716741   2.9626214
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                2.6363925   2.5314742   2.7413109
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                2.6962789   2.5585046   2.8340532
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                3.6015393   3.5742833   3.6287953
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                3.6033256   3.5336912   3.6729600
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                3.4424145   3.3296187   3.5552102
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                3.4944087   3.3184072   3.6704103
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                3.4681887   3.4225881   3.5137892
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                3.5278090   3.4519587   3.6036594
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                3.3094708   3.2654957   3.3534459
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                3.2818211   3.2048824   3.3587599
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                3.1421566   3.0933321   3.1909812
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                3.2187421   3.0423079   3.3951764
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                3.4971814   3.3085042   3.6858585
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             NA                3.7326293   2.2783257   5.1869329
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                3.3929324   3.3707651   3.4150997
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                3.2198024   3.1587299   3.2808749
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                2.6075163   2.5609876   2.6540451
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                2.7557516   2.5909074   2.9205958
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                3.5304180   3.5147405   3.5460955
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                3.6147668   3.5814388   3.6480948
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                3.6842093   3.6720127   3.6964058
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                3.7672178   3.7522016   3.7822339
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                3.5875814   3.5508651   3.6242976
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                3.7372818   3.6808593   3.7937042
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                1.9094401   1.8545242   1.9643559
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                2.0066571   1.8861347   2.1271796
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                2.1327622   2.0508367   2.2146877
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                2.4458721   2.2334944   2.6582498
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                1.8705758   1.8005214   1.9406303
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                1.9045006   1.7789385   2.0300627
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.9449273   1.8869731   2.0028816
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                2.2382484   2.0571678   2.4193290
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                2.0089144   1.9398751   2.0779538
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                2.1767340   1.9597986   2.3936694
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.9775882   1.8943110   2.0608653
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                2.0396615   1.6882477   2.3910754
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.8225154   1.7240283   1.9210025
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                2.0569923   1.5727019   2.5412828
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.7589343   1.6514203   1.8664483
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                2.1213047   1.8524633   2.3901461
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.8452517   1.7766215   1.9138819
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             NA                2.0744127   1.9095763   2.2392492
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                2.0033185   1.9278648   2.0787722
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                2.0621676   1.9614433   2.1628919
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                1.9253278   1.8761054   1.9745502
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                2.0170066   1.9491694   2.0848439
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.7323159   1.6334050   1.8312269
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                1.8095635   1.6569892   1.9621378
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.9392498   1.9002989   1.9782007
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                2.0490037   1.9722560   2.1257514
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.9877577   1.9466999   2.0288155
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                2.0623856   1.9848275   2.1399438
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.7891353   1.7524232   1.8258474
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                1.9877718   1.8023582   2.1731855
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                1.9665534   1.9227046   2.0104022
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                2.0804503   1.9469962   2.2139044
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.9484730   1.9272231   1.9697230
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                2.1580701   2.1017914   2.2143488
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.7373642   1.7042344   1.7704939
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                1.8544335   1.7485069   1.9603602
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.8647952   1.8506129   1.8789776
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                1.9160419   1.8872648   1.9448190
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                1.8813563   1.8696156   1.8930971
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                1.9883967   1.9711353   2.0056580
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.8823954   1.8470206   1.9177703
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                1.9515904   1.8934831   2.0096978
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                1.1103386   1.0820814   1.1385959
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                1.1209113   1.0644271   1.1773954
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                1.3797482   1.3323208   1.4271757
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                1.5077528   1.3066301   1.7088756
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                1.1104385   1.0782058   1.1426712
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                1.1682343   1.1119521   1.2245166
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.2249475   1.1974623   1.2524328
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                1.2461965   1.1693736   1.3230195
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                1.2199392   1.1867371   1.2531413
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                1.0360803   0.9064340   1.1657266
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.1759878   1.1358916   1.2160839
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                1.4003480   1.1508407   1.6498553
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.0065420   0.9495770   1.0635069
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                1.1075604   0.9601411   1.2549798
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.0602954   1.0093904   1.1112004
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                1.0785871   0.9402176   1.2169566
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.2415507   1.2091920   1.2739093
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             NA                1.2819108   1.2127948   1.3510267
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                1.0902507   1.0755729   1.1049285
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                1.1283204   1.0845704   1.1720705
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.1326902   1.0850206   1.1803598
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                1.1458050   1.0806988   1.2109112
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.1723072   1.1524370   1.1921774
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                1.1759786   1.1407450   1.2112122
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.2290417   1.2092749   1.2488085
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                1.2253117   1.1884172   1.2622061
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.1959980   1.1741420   1.2178539
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                1.2556667   1.1125136   1.3988198
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                1.1807297   1.1604266   1.2010327
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                1.1826956   1.1240446   1.2413466
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.1875379   1.1759418   1.1991341
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                1.2608960   1.2293927   1.2923992
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.0140391   0.9939723   1.0341058
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                1.0640894   1.0050558   1.1231230
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.0991615   1.0895310   1.1087919
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                1.0951542   1.0745500   1.1157583
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                1.0667538   1.0538446   1.0796630
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                1.0779245   1.0370645   1.1187846
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                1.1026053   1.0944706   1.1107399
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                1.1142364   1.1040507   1.1244220
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.1945935   1.1822802   1.2069068
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                1.2340574   1.2115410   1.2565737
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.8453370   0.8273802   0.8632939
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.8503588   0.8148425   0.8858752
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.9847541   0.9534664   1.0160419
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                0.9202050   0.7677456   1.0726644
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.8821070   0.8622863   0.9019278
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.8796980   0.8440556   0.9153403
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.8641484   0.8478753   0.8804214
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.8655600   0.8161068   0.9150133
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.8476707   0.8263275   0.8690140
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.8215502   0.7207069   0.9223935
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.8696893   0.8464920   0.8928866
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.8732567   0.7894841   0.9570292
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7822428   0.7498296   0.8146560
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.7206797   0.6237039   0.8176554
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7299551   0.7016103   0.7582999
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.8153001   0.7364085   0.8941916
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.8351239   0.8138513   0.8563966
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.8009324   0.7512510   0.8506138
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7718614   0.7415226   0.8022002
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.7303073   0.6881623   0.7724524
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.8607120   0.8473310   0.8740929
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.8480163   0.8218013   0.8742313
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8768431   0.8630487   0.8906375
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.8717727   0.8491901   0.8943553
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.8451861   0.8334824   0.8568898
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.8341821   0.7999592   0.8684049
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6933680   0.6631567   0.7235793
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7701233   0.7225502   0.8176964
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7735830   0.7602626   0.7869035
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.7528646   0.7100418   0.7956874
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.8324543   0.8267740   0.8381346
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.8056888   0.7933714   0.8180063
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7088344   0.7010810   0.7165877
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.6825306   0.6577882   0.7072730
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.7945021   0.7882424   0.8007618
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.8000763   0.7915463   0.8086063
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.8513421   0.8444480   0.8582362
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.8512239   0.8405782   0.8618696


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5618862   3.4982954   3.6254770
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5938067   3.5151131   3.6725003
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8294484   3.7523124   3.9065845
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3146487   3.2509977   3.3782997
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5184426   3.4211308   3.6157544
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1785452   3.0668245   3.2902660
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6575645   2.5739973   2.7411317
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.4610393   3.3649812   3.5570973
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1496876   3.1023521   3.1970232
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                3.5146220   3.3089330   3.7203110
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6188022   2.5739241   2.6636803
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5478672   3.5336250   3.5621095
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7183627   3.7080091   3.7287163
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9297476   1.8792696   1.9802257
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8756187   1.8131052   1.9381323
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9721828   1.9158762   2.0284895
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0197210   1.9534469   2.0859951
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8340471   1.7370007   1.9310934
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8817091   1.8177821   1.9456362
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0241201   1.9636505   2.0845898
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9467880   1.9003915   1.9931846
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.7586503   1.6750753   1.8422254
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957766   1.7597132   1.8318400
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9772015   1.9354978   2.0189053
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9749984   1.9550384   1.9949585
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7471774   1.7154586   1.7788961
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8751561   1.8624222   1.8878899
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9200865   1.9095785   1.9305944
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8995564   1.8689852   1.9301276
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1125515   1.0872670   1.1378360
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1192277   1.0904545   1.1480010
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2268448   1.2008786   1.2528110
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2081534   1.1754719   1.2408349
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0109341   0.9559400   1.0659282
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2481421   1.2187727   1.2775116
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0991269   1.0873510   1.1109028
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1373681   1.0988883   1.1758478
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1977758   1.1761378   1.2194138
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1808974   1.1616643   1.2001305
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1974821   1.1865618   1.2084024
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0183662   0.9993083   1.0374241
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0983970   1.0896685   1.1071255
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0677757   1.0554655   1.0800859
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069275   1.1001900   1.1136651
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2050702   1.1943148   1.2158257
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8463811   0.8303527   0.8624096
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8817313   0.8641021   0.8993606
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8642767   0.8488149   0.8797385
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8461424   0.8251812   0.8671036
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7792830   0.7479744   0.8105916
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294832   0.8098800   0.8490863
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7567788   0.7318996   0.7816580
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8442968   0.8331876   0.8554060
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099431   0.6838778   0.7360083
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7716995   0.7589711   0.7844280
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8274188   0.8222476   0.8325900
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7065419   0.6991367   0.7139472
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7965891   0.7912789   0.8018993
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8513104   0.8454216   0.8571992


### Parameter: ATE


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1354038   -0.0300043    0.3008118
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.5029515    0.2570718    0.7488311
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0890568   -0.1107630    0.2888765
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.3386332    0.1116812    0.5655853
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1287092   -0.1103099    0.3677284
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0701206   -0.3391235    0.4793647
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.0201645   -0.1821816    0.1418526
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.2588868   -1.0274990    0.5097254
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.5525014   -0.8267053   -0.2782976
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0598864   -0.1132887    0.2330614
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0017863   -0.0707706    0.0743431
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0519943   -0.1570498    0.2610384
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0596204   -0.0288821    0.1481228
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0276496   -0.1162690    0.0609697
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0765855   -0.1064797    0.2596507
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight     0.2354479   -1.2310438    1.7019396
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.1731300   -0.2381011   -0.1081589
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.1482353   -0.0230497    0.3195202
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0843488    0.0475176    0.1211801
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0830085    0.0656732    0.1003437
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1497004    0.0821284    0.2172724
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0972170   -0.0352269    0.2296610
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.3131099    0.0854784    0.5407413
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0339247   -0.1098580    0.1777074
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.2933211    0.1031925    0.4834497
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1678195   -0.0598367    0.3954758
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0620734   -0.2990731    0.4232198
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.2344769   -0.2597264    0.7286803
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.3623704    0.0728277    0.6519131
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.2291611    0.0506081    0.4077140
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0588491   -0.0670026    0.1847007
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0916789    0.0207631    0.1625947
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0772476   -0.1045828    0.2590780
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.1097539    0.0236878    0.1958201
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0746279   -0.0131275    0.1623833
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1986366    0.0096233    0.3876498
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.1138969   -0.0265763    0.2543700
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.2095971    0.1494402    0.2697540
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.1170694    0.0060827    0.2280560
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0512467    0.0191646    0.0833288
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1070403    0.0878036    0.1262771
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0691950    0.0019263    0.1364637
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0105727   -0.0525853    0.0737307
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.1280046   -0.0786345    0.3346437
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0577958   -0.0070628    0.1226544
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0212490   -0.0603427    0.1028407
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.1838589   -0.3176892   -0.0500286
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.2243603   -0.0283482    0.4770688
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1010184   -0.0570242    0.2590611
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0182917   -0.1291446    0.1657279
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.0403601   -0.0359557    0.1166758
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0380697   -0.0138082    0.0899476
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0131148   -0.0675772    0.0938069
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0036714   -0.0367789    0.0441218
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0037300   -0.0455861    0.0381260
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0596687   -0.0851432    0.2044806
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0019659   -0.0600998    0.0640316
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0733580    0.0397884    0.1069277
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0500503   -0.0123006    0.1124012
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.0040073   -0.0267510    0.0187364
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     0.0111707   -0.0316801    0.0540215
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0116311   -0.0005437    0.0238059
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0394639    0.0135540    0.0653738
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0050218   -0.0347759    0.0448196
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.0645491   -0.2201859    0.0910876
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.0024091   -0.0431919    0.0383737
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0014117   -0.0506502    0.0534735
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.0261205   -0.1291977    0.0769567
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0035674   -0.0833576    0.0904924
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.0615631   -0.1638124    0.0406861
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0853449    0.0015159    0.1691740
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.0341915   -0.0882357    0.0198526
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0415540   -0.0934833    0.0103752
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0126956   -0.0421282    0.0167369
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0050704   -0.0315328    0.0213920
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.0110040   -0.0471728    0.0251647
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0767553    0.0203999    0.1331106
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    -0.0207185   -0.0655652    0.0241282
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.0267655   -0.0403296   -0.0132013
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.0263038   -0.0522325   -0.0003750
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0055742   -0.0044619    0.0156102
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0001182   -0.0125836    0.0123472
