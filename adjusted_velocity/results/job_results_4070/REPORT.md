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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c3fe6455-71b7-48cb-8feb-84ae71d4a1b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c3fe6455-71b7-48cb-8feb-84ae71d4a1b9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                3.5208348   3.4545230   3.5871465
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                3.6222974   3.5211530   3.7234418
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                4.0314122   3.9269995   4.1358248
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                4.5343636   4.3117545   4.7569727
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                3.5694781   3.4833313   3.6556248
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                3.5263344   3.3874850   3.6651838
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                3.7938410   3.7131914   3.8744907
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                4.1321115   3.9197048   4.3445182
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                3.3079544   3.2420527   3.3738561
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                3.4374925   3.2348696   3.6401154
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                3.4377888   3.3461902   3.5293875
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                3.4080870   3.1270517   3.6891224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                3.5194679   3.4171676   3.6217682
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                3.4993034   3.3736683   3.6249385
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                3.5562646   3.3283608   3.7841684
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                3.2973778   2.5633311   4.0314245
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                3.2636424   3.1422958   3.3849890
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             NA                2.7580387   2.5287734   2.9873041
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                2.6249464   2.5213505   2.7285423
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                2.6661498   2.5386375   2.7936622
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                3.5944937   3.5658132   3.6231741
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                3.6147790   3.5519985   3.6775595
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                3.4437018   3.3342091   3.5531945
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                3.5002482   3.3373700   3.6631265
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                3.4661542   3.4209078   3.5114006
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                3.5169679   3.4463527   3.5875831
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                3.3093052   3.2653556   3.3532548
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                3.2823298   3.2055030   3.3591567
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                3.1414668   3.0930968   3.1898368
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                3.3272430   3.1934801   3.4610059
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                3.4971814   3.3085042   3.6858585
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             NA                3.7326293   2.2783257   5.1869329
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                3.3911599   3.3690712   3.4132485
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                3.2425699   3.1854239   3.2997159
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                2.6094476   2.5631469   2.6557484
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                3.0266408   2.9156305   3.1376511
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                3.5273633   3.5119115   3.5428151
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                3.6297562   3.5999755   3.6595368
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                3.6764310   3.6644699   3.6883922
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                3.7855758   3.7710866   3.8000650
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                3.5832619   3.5470304   3.6194933
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                3.7485692   3.6937955   3.8033429
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                1.9108368   1.8574938   1.9641798
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                2.0850286   1.9974009   2.1726562
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                2.1327387   2.0508156   2.2146617
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                2.4463454   2.2378432   2.6548476
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                1.8715075   1.8016680   1.9413470
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                1.9468168   1.8509224   2.0427112
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.9452229   1.8872720   2.0031738
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                2.2353479   2.0561363   2.4145594
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                2.0092894   1.9402645   2.0783143
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                2.2492966   2.0417496   2.4568436
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.9779932   1.8947945   2.0611920
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                1.8444391   1.5746887   2.1141894
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.8225154   1.7240283   1.9210025
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                2.0569923   1.5727019   2.5412828
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.7594467   1.6519670   1.8669264
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                2.1176739   1.8483648   2.3869831
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.8476486   1.7797591   1.9155381
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             NA                2.0527580   1.9117575   2.1937585
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                2.0118040   1.9374142   2.0861939
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                2.0827732   1.9867129   2.1788336
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                1.9217175   1.8738785   1.9695565
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                2.0435723   1.9788057   2.1083390
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.7267868   1.6346220   1.8189515
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                1.8191001   1.6955261   1.9426742
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.9382562   1.8993907   1.9771217
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                2.0521751   1.9753969   2.1289532
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.9884123   1.9475719   2.0292526
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                2.0735663   1.9970353   2.1500972
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.7888822   1.7522118   1.8255526
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                1.9964733   1.8491366   2.1438101
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                1.9661394   1.9225573   2.0097215
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                2.1572832   2.0579742   2.2565923
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.9478594   1.9266470   1.9690717
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                2.1613614   2.1069630   2.2157599
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.7373709   1.7042482   1.7704935
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                1.8543558   1.7487508   1.9599609
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.8628468   1.8488096   1.8768840
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                1.9219323   1.8953604   1.9485042
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                1.8807396   1.8691145   1.8923646
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                1.9892232   1.9724129   2.0060335
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.8803604   1.8451833   1.9155375
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                1.9517066   1.8963561   2.0070571
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                1.1081268   1.0805414   1.1357122
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                1.1037887   1.0638085   1.1437689
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                1.3799979   1.3326615   1.4273343
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                1.5067015   1.3688908   1.6445123
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                1.1075784   1.0754671   1.1396896
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                1.1076750   1.0595918   1.1557582
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                1.2247537   1.1973791   1.2521284
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                1.3055139   1.2473419   1.3636858
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                1.2202220   1.1870688   1.2533752
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                1.0280910   0.9168225   1.1393595
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                1.1752969   1.1350748   1.2155190
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                1.0930925   0.9361070   1.2500780
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.0065420   0.9495770   1.0635069
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                1.1075604   0.9601411   1.2549798
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.0599448   1.0090507   1.1108390
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                1.0812136   0.9430130   1.2194142
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                1.2411157   1.2091758   1.2730556
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             NA                1.2828501   1.2186866   1.3470136
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                1.0909983   1.0757362   1.1062604
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                1.1273979   1.0874819   1.1673138
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.1328933   1.0856744   1.1801121
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                1.1542917   1.0905277   1.2180556
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                1.1718175   1.1524944   1.1911407
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                1.1774056   1.1461076   1.2087036
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                1.2267558   1.2073139   1.2461977
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                1.2210316   1.1867984   1.2552647
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.1959912   1.1741645   1.2178178
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                1.2746307   1.1615904   1.3876711
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                1.1804125   1.1602467   1.2005783
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                1.1657295   1.1218461   1.2096130
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.1879921   1.1764301   1.1995542
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                1.2674289   1.2372763   1.2975815
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.0158465   0.9960765   1.0356166
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                1.1254781   1.0920459   1.1589104
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                1.0987378   1.0891736   1.1083019
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                1.0959157   1.0768968   1.1149347
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                1.0673014   1.0544524   1.0801505
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                1.1006827   1.0671240   1.1342414
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                1.1033016   1.0952972   1.1113059
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                1.1176122   1.1078183   1.1274062
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                1.1937335   1.1815505   1.2059165
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                1.2306238   1.2091531   1.2520945
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.8453352   0.8276529   0.8630175
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.8530323   0.8251198   0.8809447
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                0.9847541   0.9534664   1.0160419
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                0.9202050   0.7677456   1.0726644
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.8814936   0.8618124   0.9011747
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.8757385   0.8454207   0.9060563
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.8640711   0.8477980   0.8803442
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.8663327   0.8173122   0.9153533
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.8472393   0.8259543   0.8685243
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.8140744   0.7626610   0.8654878
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.8702503   0.8471611   0.8933395
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.9368326   0.8830593   0.9906060
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7822428   0.7498296   0.8146560
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.7206797   0.6237039   0.8176554
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7301994   0.7021563   0.7582425
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.8034469   0.7398233   0.8670705
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.8355074   0.8142501   0.8567646
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.7989967   0.7501136   0.8478799
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7703834   0.7415703   0.7991965
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.7148700   0.6794151   0.7503249
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.8606104   0.8473984   0.8738223
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.8462996   0.8215635   0.8710358
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.8770174   0.8632669   0.8907680
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.8712508   0.8487078   0.8937939
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.8451571   0.8335039   0.8568103
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.8455878   0.8177358   0.8734399
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6886822   0.6588112   0.7185531
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7150595   0.6726010   0.7575181
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7739123   0.7607201   0.7871046
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.8021635   0.7735871   0.8307398
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.8318466   0.8262405   0.8374527
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.8053364   0.7943141   0.8163588
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.7093442   0.7016305   0.7170580
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.6897304   0.6694480   0.7100129
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.7942091   0.7880326   0.8003856
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.7980386   0.7899442   0.8061330
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.8517691   0.8449459   0.8585923
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.8543646   0.8441033   0.8646258


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1014626   -0.0147043    0.2176296
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.5029515    0.2570718    0.7488311
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.0431437   -0.2071460    0.1208587
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.3382704    0.1110426    0.5654982
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1295381   -0.0834790    0.3425552
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.0297018   -0.3257603    0.2663567
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.0201645   -0.1821816    0.1418526
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.2588868   -1.0274990    0.5097254
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.5056037   -0.7624756   -0.2487317
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0412034   -0.1232640    0.2056709
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0202853   -0.0463965    0.0869672
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0565465   -0.1383163    0.2514093
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0508137   -0.0328233    0.1344507
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0269754   -0.1154226    0.0614718
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.1857762    0.0449357    0.3266166
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight     0.2354479   -1.2310438    1.7019396
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.1485900   -0.2096908   -0.0874892
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.4171932    0.2974849    0.5369014
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.1023929    0.0693618    0.1354239
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1091447    0.0927634    0.1255261
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1653074    0.1002677    0.2303470
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1741918    0.0752614    0.2731222
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.3136068    0.0897892    0.5374244
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0753093   -0.0426793    0.1932979
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.2901250    0.1019698    0.4782801
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.2400072    0.0213906    0.4586239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.1335542   -0.4155654    0.1484571
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.2344769   -0.2597264    0.7286803
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.3582272    0.0682919    0.6481626
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.2051094    0.0504370    0.3597818
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0709692   -0.0496334    0.1915717
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.1218548    0.0593323    0.1843773
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0923134   -0.0588171    0.2434439
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.1139189    0.0279793    0.1998585
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0851540   -0.0010014    0.1713094
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.2075911    0.0561653    0.3590169
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.1911438    0.0839601    0.2983276
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.2135021    0.1552026    0.2718015
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.1169850    0.0063588    0.2276111
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0590855    0.0292527    0.0889183
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1084836    0.0897697    0.1271975
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0713462    0.0065594    0.1361330
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0043381   -0.0521848    0.0435085
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.1267036   -0.0179864    0.2713936
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0000966   -0.0578296    0.0580227
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0807601    0.0167653    0.1447549
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.1921310   -0.3080362   -0.0762257
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight    -0.0822044   -0.2440309    0.0796222
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1010184   -0.0570242    0.2590611
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0212688   -0.1259554    0.1684930
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.0417344   -0.0289672    0.1124360
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0363995   -0.0123279    0.0851270
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0213984   -0.0575046    0.1003015
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0055881   -0.0296976    0.0408737
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0057242   -0.0445835    0.0331351
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0786396   -0.0363163    0.1935954
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    -0.0146830   -0.0623394    0.0329733
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0794368    0.0472254    0.1116481
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.1096316    0.0714837    0.1477794
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.0028220   -0.0239478    0.0183038
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     0.0333813   -0.0023597    0.0691223
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0143107    0.0025996    0.0260217
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0368903    0.0119259    0.0618547
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0076971   -0.0253410    0.0407352
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.0645491   -0.2201859    0.0910876
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight    -0.0057551   -0.0418304    0.0303202
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0022616   -0.0493482    0.0538714
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.0331649   -0.0882950    0.0219652
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0665823    0.0080299    0.1251347
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.0615631   -0.1638124    0.0406861
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0732475    0.0038953    0.1425997
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.0365107   -0.0896393    0.0166180
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0555134   -0.1005900   -0.0104368
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0143107   -0.0422087    0.0135873
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0057666   -0.0320925    0.0205593
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0004307   -0.0295341    0.0303956
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0263774   -0.0252789    0.0780336
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0282511   -0.0025503    0.0590526
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    -0.0265101   -0.0387302   -0.0142901
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    -0.0196138   -0.0411939    0.0019662
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0038295   -0.0057846    0.0134437
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0025955   -0.0094661    0.0146570
