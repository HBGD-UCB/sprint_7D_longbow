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

**Outcome Variable:** y_rate_haz

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
![](/tmp/a9e041fa-d487-446b-a91b-91b365a1a78a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a9e041fa-d487-446b-a91b-91b365a1a78a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0660094   -0.1006633   -0.0313555
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                 0.0784378    0.0028544    0.1540211
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.1784641    0.1256800    0.2312482
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.5486104    0.4462114    0.6510094
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0317807   -0.0758199    0.0122585
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                 0.0658305   -0.0194352    0.1510962
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0508519    0.0145431    0.0871607
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                 0.2901098    0.1916392    0.3885803
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.1668527   -0.2003598   -0.1333457
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -0.0425462   -0.1780731    0.0929807
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1083275   -0.1536753   -0.0629797
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.0052747   -0.1644960    0.1750454
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0685861   -0.1213284   -0.0158438
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0059269   -0.0921944    0.0803407
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0586753   -0.1701047    0.0527541
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.1743052   -0.5264361    0.1778257
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2211696   -0.2826250   -0.1597143
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             NA                -0.4369379   -0.5610545   -0.3128214
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.4277523   -0.4811576   -0.3743469
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                -0.3318620   -0.4009372   -0.2627867
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0044892   -0.0187124    0.0097339
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                 0.0623966    0.0239724    0.1008208
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0913763   -0.1481788   -0.0345738
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0149474   -0.0972682    0.0673733
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0587276   -0.0800350   -0.0374202
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                 0.0129609   -0.0198509    0.0457727
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1285283   -0.1494113   -0.1076453
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.1015442   -0.1384397   -0.0646488
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.2943577   -0.3189497   -0.2697656
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.1859520   -0.2757746   -0.0961295
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.1020482   -0.1956280   -0.0084683
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             NA                 0.1237185   -0.5573897    0.8048268
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1391862   -0.1502090   -0.1281634
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -0.1674598   -0.1985846   -0.1363351
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.5489686   -0.5724293   -0.5255079
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.4141881   -0.4961728   -0.3322035
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0823889   -0.0900324   -0.0747455
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                 0.0146257   -0.0013463    0.0305977
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0311576    0.0253196    0.0369955
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                 0.1267313    0.1195938    0.1338688
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0264657    0.0094857    0.0434456
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                 0.1474715    0.1204879    0.1744551
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0372782   -0.0627070   -0.0118494
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                 0.0361465   -0.0206257    0.0929186
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0521736    0.0144725    0.0898748
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.2251623    0.1313285    0.3189960
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0487400   -0.0811414   -0.0163386
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.0201464   -0.0787966    0.0385038
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0350675   -0.0623768   -0.0077582
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                 0.1270461    0.0447187    0.2093734
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0213351   -0.0110930    0.0537633
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                 0.1259121    0.0189448    0.2328794
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0036201   -0.0428262    0.0355859
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.0577898   -0.1079756    0.2235551
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0778167   -0.1239546   -0.0316789
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                 0.0610637   -0.1666125    0.2887399
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1228385   -0.1735036   -0.0721734
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                 0.0781415   -0.0478259    0.2041090
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0739593   -0.1064304   -0.0414882
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             NA                 0.0671632   -0.0067103    0.1410368
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0518944    0.0168975    0.0868913
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                 0.1034447    0.0564141    0.1504753
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0303605   -0.0518129   -0.0089081
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                 0.0418643    0.0112957    0.0724329
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1067610   -0.1524382   -0.0610838
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0530673   -0.1249978    0.0188633
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0442682   -0.0624002   -0.0261362
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                 0.0270644   -0.0089604    0.0630892
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0127835   -0.0061776    0.0317446
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                 0.0706609    0.0354149    0.1059069
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0883579   -0.1053768   -0.0713391
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                 0.0237395   -0.0636757    0.1111548
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0331753   -0.0537378   -0.0126128
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                 0.0486432   -0.0125066    0.1097930
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0167837   -0.0267137   -0.0068537
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                 0.1089395    0.0829669    0.1349120
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1108349   -0.1265451   -0.0951247
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.0303898   -0.0787938    0.0180142
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0654117   -0.0719502   -0.0588731
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                -0.0166184   -0.0297705   -0.0034663
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0298378   -0.0352790   -0.0243965
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                 0.0428859    0.0348237    0.0509480
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0232455   -0.0394800   -0.0070110
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                 0.0357343    0.0091915    0.0622771
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0854435   -0.0972196   -0.0736675
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -0.0671438   -0.0905536   -0.0437339
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0034070   -0.0165770    0.0233909
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.0646621   -0.0145682    0.1438924
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0834403   -0.0973562   -0.0695244
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.0524871   -0.0750146   -0.0299597
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0492716   -0.0606935   -0.0378496
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.0273842   -0.0568276    0.0020591
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0348111   -0.0491793   -0.0204429
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -0.0892848   -0.1444251   -0.0341445
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0602490   -0.0771532   -0.0433448
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.0470779   -0.0544792    0.1486349
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1260655   -0.1499034   -0.1022277
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0647707   -0.1210998   -0.0084416
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1023001   -0.1241579   -0.0804424
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.0771346   -0.1372485   -0.0170206
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0311122   -0.0453840   -0.0168404
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             NA                -0.0016757   -0.0317396    0.0283883
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0936974   -0.0994055   -0.0879892
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -0.0599390   -0.0787287   -0.0411494
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0724222   -0.0921145   -0.0527298
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0520745   -0.0792402   -0.0249087
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0663960   -0.0742615   -0.0585305
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -0.0504226   -0.0649499   -0.0358952
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0348432   -0.0431100   -0.0265765
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.0214156   -0.0367219   -0.0061092
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0604425   -0.0697647   -0.0511204
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0194591   -0.0803164    0.0413982
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0630409   -0.0716415   -0.0544402
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.0409330   -0.0655753   -0.0162907
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0558779   -0.0608281   -0.0509277
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -0.0091890   -0.0223129    0.0039348
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1131536   -0.1213246   -0.1049826
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.0747201   -0.1005528   -0.0488874
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0941277   -0.0981270   -0.0901284
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                -0.0784861   -0.0871752   -0.0697970
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1019887   -0.1073996   -0.0965779
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -0.0786981   -0.0955647   -0.0618316
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0827593   -0.0861923   -0.0793264
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -0.0614742   -0.0658204   -0.0571280
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0459649   -0.0510894   -0.0408405
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -0.0141141   -0.0235596   -0.0046687
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0199240   -0.0261613   -0.0136866
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -0.0095442   -0.0202004    0.0011120
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0000201   -0.0108395    0.0107993
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -0.0264500   -0.0758463    0.0229464
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0100949   -0.0159982   -0.0041917
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.0075442   -0.0177059    0.0026175
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0302078   -0.0355432   -0.0248723
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.0191484   -0.0353255   -0.0029712
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0103187   -0.0176102   -0.0030272
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                 0.0066922   -0.0229971    0.0363816
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0158635   -0.0237017   -0.0080252
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -0.0073381   -0.0364820    0.0218058
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0382511   -0.0488986   -0.0276036
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0441950   -0.0904256    0.0020356
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0506424   -0.0613657   -0.0399192
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.0057726   -0.0346488    0.0231037
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0315138   -0.0391911   -0.0238364
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                -0.0332908   -0.0517933   -0.0147883
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0365868   -0.0457018   -0.0274718
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0372506   -0.0502152   -0.0242860
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0101329   -0.0145108   -0.0057549
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -0.0022539   -0.0101328    0.0056250
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0091695   -0.0137632   -0.0045758
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                 0.0045505   -0.0032505    0.0123515
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0214237   -0.0255879   -0.0172594
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.0067390   -0.0184310    0.0049530
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0593162   -0.0699975   -0.0486348
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -0.0252507   -0.0414487   -0.0090527
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0336731   -0.0381257   -0.0292205
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.0253714   -0.0402588   -0.0104840
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0359680   -0.0378348   -0.0341012
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                -0.0299312   -0.0341045   -0.0257578
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0580714   -0.0607418   -0.0554009
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -0.0543380   -0.0629325   -0.0457436
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0244677   -0.0266665   -0.0222690
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -0.0094013   -0.0122639   -0.0065388
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0170537   -0.0194149   -0.0146924
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -0.0060987   -0.0100834   -0.0021140


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0363947   -0.0688597   -0.0039297
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0153462   -0.0550164    0.0243240
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0760369    0.0401947    0.1118791
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1589969   -0.1917348   -0.1262591
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0654000   -0.1157142   -0.0150858
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2567485   -0.3125916   -0.2009054
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3938516   -0.4364614   -0.3512419
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0639988   -0.1111616   -0.0168360
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2836976   -0.3076324   -0.2597629
0-3 months     ki1114097-CMIN             BRAZIL                         NA                   NA                -0.0853247   -0.1864247    0.0157752
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5387071   -0.5614215   -0.5159927
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623195   -0.0692899   -0.0553491
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0704809    0.0655233    0.0754385
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0219406   -0.0456178    0.0017366
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0444896   -0.0734506   -0.0155286
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0200039   -0.0466493    0.0066415
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0280692   -0.0031971    0.0593356
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0709866   -0.1165769   -0.0253962
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0515080   -0.0816677   -0.0213482
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0701161    0.0419135    0.0983187
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0134541   -0.0340772    0.0071691
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0884563   -0.1274675   -0.0494451
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846100   -0.1013458   -0.0678742
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0255262   -0.0450699   -0.0059825
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0008729   -0.0102096    0.0084638
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1040917   -0.1191397   -0.0890438
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555469   -0.0614231   -0.0496706
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0035244   -0.0084137    0.0013650
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0086180   -0.0226664    0.0054305
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0816134   -0.0921823   -0.0710444
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0787332   -0.0911092   -0.0663571
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0473173   -0.0580777   -0.0365569
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0383030   -0.0523121   -0.0242939
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1234005   -0.1464476   -0.1003535
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0263048   -0.0392601   -0.0133494
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858264   -0.0904513   -0.0812015
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0651644   -0.0811867   -0.0491420
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0592214   -0.0684552   -0.0499877
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0611543   -0.0693052   -0.0530034
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0495489   -0.0542063   -0.0448916
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1098308   -0.1176637   -0.1019979
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0911438   -0.0947842   -0.0875035
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0998581   -0.1050175   -0.0946987
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748495   -0.0776888   -0.0720103
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0375093   -0.0420370   -0.0329815
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0177658   -0.0232116   -0.0123200
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0096971   -0.0149271   -0.0044671
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0292024   -0.0342883   -0.0241164
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0093234   -0.0164277   -0.0022191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0385369   -0.0489163   -0.0281575
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0318069   -0.0389076   -0.0247062
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0368278   -0.0443019   -0.0293536
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0202369   -0.0241871   -0.0162866
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0519598   -0.0611733   -0.0427464
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0329184   -0.0371906   -0.0286462
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0348323   -0.0365407   -0.0331239
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0577460   -0.0602966   -0.0551954
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188268   -0.0206746   -0.0169790
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0141135   -0.0161837   -0.0120433


### Parameter: ATE


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1444471    0.0612983    0.2275960
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.3701463    0.2549434    0.4853492
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0976112    0.0016441    0.1935784
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.2392579    0.1343065    0.3442092
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1243066   -0.0153010    0.2639141
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.1136022   -0.0621207    0.2893251
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0626592   -0.0384538    0.1637723
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.1156299   -0.4849708    0.2537109
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.2157683   -0.3542662   -0.0772704
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0958903    0.0085775    0.1832031
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0668859    0.0286158    0.1051559
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0764289   -0.0235873    0.1764450
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0716885    0.0325654    0.1108116
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0269841   -0.0154114    0.0693795
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.1084056    0.0152774    0.2015338
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight     0.2257667   -0.4617401    0.9132735
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.0282736   -0.0612926    0.0047454
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.1347804    0.0495050    0.2200558
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0970146    0.0793079    0.1147214
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0955737    0.0872902    0.1038573
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1210058    0.0890247    0.1529870
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0734247    0.0112178    0.1356316
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.1729886    0.0718642    0.2741130
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0285936   -0.0384116    0.0955988
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.1621136    0.0753750    0.2488522
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1045770   -0.0071978    0.2163517
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0614099   -0.1089287    0.2317485
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1388804   -0.0934235    0.3711844
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.2009801    0.0652054    0.3367547
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.1411225    0.0604275    0.2218175
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0515503   -0.0070728    0.1101733
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0722248    0.0398711    0.1045784
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0536937   -0.0315143    0.1389018
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0713326    0.0310020    0.1116631
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0578774    0.0178549    0.0978999
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1120975    0.0230409    0.2011540
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0818185    0.0173041    0.1463330
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.1257232    0.0979171    0.1535293
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0804451    0.0295555    0.1313348
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0487933    0.0341055    0.0634811
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0727237    0.0637087    0.0817386
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0589798    0.0281600    0.0897997
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0182998   -0.0079051    0.0445047
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.0612552   -0.0204565    0.1429668
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0309532    0.0044742    0.0574322
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0218873   -0.0096939    0.0534685
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.0544737   -0.1114553    0.0025079
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.1073269    0.0043726    0.2102812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0612948    0.0001294    0.1224602
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0251655   -0.0387989    0.0891300
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.0294365   -0.0038430    0.0627160
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0337583    0.0114724    0.0560442
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0203477   -0.0132047    0.0539001
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0159734   -0.0005466    0.0324934
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0134277   -0.0039684    0.0308237
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0409835   -0.0205837    0.1025506
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0221078   -0.0039923    0.0482079
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0466889    0.0326625    0.0607153
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0384335    0.0113393    0.0655276
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0156416    0.0060763    0.0252069
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     0.0232906    0.0055774    0.0410038
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0212851    0.0160796    0.0264906
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0318508    0.0210132    0.0426884
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0103798   -0.0019677    0.0227272
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.0264299   -0.0769972    0.0241375
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0025507   -0.0092012    0.0143027
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0110594   -0.0059749    0.0280937
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.0170109   -0.0135607    0.0475826
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0085254   -0.0216542    0.0387049
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.0059438   -0.0533847    0.0414970
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0448698    0.0140668    0.0756729
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.0017770   -0.0218092    0.0182551
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0006638   -0.0165119    0.0151843
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0078790   -0.0011346    0.0168925
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0137200    0.0046669    0.0227730
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0146846    0.0022732    0.0270961
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0340655    0.0146628    0.0534682
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0083017   -0.0072373    0.0238407
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0060369    0.0014650    0.0106087
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     0.0037333   -0.0052664    0.0127331
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0150664    0.0116030    0.0185299
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0109550    0.0063887    0.0155212
