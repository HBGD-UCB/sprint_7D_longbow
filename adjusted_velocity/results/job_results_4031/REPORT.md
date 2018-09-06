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
![](/tmp/4e9e4482-36a0-40db-a203-9b0cc60b07ed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4e9e4482-36a0-40db-a203-9b0cc60b07ed/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0642370   -0.0984174   -0.0300567
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                 0.0505232   -0.0183485    0.1193949
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.1784641    0.1256800    0.2312482
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.5486104    0.4462114    0.6510094
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0279736   -0.0722079    0.0162606
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                 0.0742295   -0.0114789    0.1599379
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.0500680    0.0138666    0.0862693
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                 0.2910535    0.1964836    0.3856233
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.1667264   -0.2002187   -0.1332341
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -0.0444299   -0.1810387    0.0921789
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1086155   -0.1539672   -0.0632639
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.0254410   -0.1267364    0.1776184
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0685861   -0.1213284   -0.0158438
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0059269   -0.0921944    0.0803407
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0585529   -0.1699278    0.0528220
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.1751652   -0.5293909    0.1790605
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2180371   -0.2790548   -0.1570195
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             NA                -0.3403377   -0.4520438   -0.2286317
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.4326003   -0.4851964   -0.3800042
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                -0.3469463   -0.4098904   -0.2840023
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0040646   -0.0183918    0.0102626
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                 0.0541515    0.0172221    0.0910809
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0857031   -0.1404685   -0.0309377
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0091323   -0.0864087    0.0681440
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0596907   -0.0801365   -0.0392449
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                 0.0071131   -0.0184737    0.0326998
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1302154   -0.1507437   -0.1096871
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.1124097   -0.1455448   -0.0792745
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.2937476   -0.3181239   -0.2693714
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.1321823   -0.1984073   -0.0659573
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   NA                -0.1020482   -0.1956280   -0.0084683
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             NA                 0.1237185   -0.5573897    0.8048268
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1388841   -0.1498822   -0.1278860
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -0.1657566   -0.1950470   -0.1364662
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.5472273   -0.5704785   -0.5239762
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.3483952   -0.4021228   -0.2946676
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0825358   -0.0901043   -0.0749673
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                 0.0144179   -0.0001453    0.0289811
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0322729    0.0264900    0.0380557
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                 0.1280387    0.1211205    0.1349569
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0273984    0.0105207    0.0442762
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                 0.1465322    0.1199056    0.1731588
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0364926   -0.0613157   -0.0116696
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                 0.0631949    0.0265679    0.0998219
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0514458    0.0137556    0.0891360
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.2227094    0.1347882    0.3106306
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0495284   -0.0819468   -0.0171100
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.0349770   -0.0905354    0.0205815
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0350183   -0.0623263   -0.0077102
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                 0.1265609    0.0445816    0.2085402
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0212563   -0.0111649    0.0536775
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             NA                 0.1268242    0.0202947    0.2333537
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0034811   -0.0426758    0.0357136
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.0553797   -0.1095927    0.2203520
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0778167   -0.1239546   -0.0316789
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                 0.0610637   -0.1666125    0.2887399
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1228333   -0.1734966   -0.0721699
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                 0.0781044   -0.0478668    0.2040756
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0735472   -0.1059425   -0.0411519
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             NA                 0.0333249   -0.0361958    0.1028455
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0584640    0.0242642    0.0926638
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             NA                 0.1043319    0.0603613    0.1483025
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0303729   -0.0518713   -0.0088746
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                 0.0520175    0.0242652    0.0797697
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1080947   -0.1518547   -0.0643347
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0488402   -0.1115760    0.0138957
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0443248   -0.0620299   -0.0266198
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                 0.0214385   -0.0103550    0.0532321
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0144547   -0.0039005    0.0328098
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                 0.0716932    0.0399489    0.1034376
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0882341   -0.1052379   -0.0712302
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                 0.0167001   -0.0542664    0.0876666
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0329988   -0.0534444   -0.0125531
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             NA                 0.0744229    0.0276577    0.1211881
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0168216   -0.0267365   -0.0069068
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                 0.1050508    0.0798720    0.1302296
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1108238   -0.1265312   -0.0951164
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.0304423   -0.0787095    0.0178249
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0657142   -0.0721982   -0.0592302
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             NA                -0.0163808   -0.0287416   -0.0040201
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0292492   -0.0346225   -0.0238759
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                 0.0415863    0.0337178    0.0494548
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0232399   -0.0393970   -0.0070829
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                 0.0312691    0.0063777    0.0561604
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0852867   -0.0969732   -0.0736002
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -0.0681552   -0.0905563   -0.0457541
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0034897   -0.0164808    0.0234603
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                 0.0615235    0.0081896    0.1148574
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0844530   -0.0983233   -0.0705827
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.0686698   -0.0888102   -0.0485294
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0493403   -0.0607112   -0.0379695
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.0008986   -0.0228376    0.0210404
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0347338   -0.0491004   -0.0203671
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                -0.0904224   -0.1452939   -0.0355510
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0601579   -0.0770616   -0.0432542
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                 0.0456603   -0.0556595    0.1469801
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1260655   -0.1499034   -0.1022277
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0647707   -0.1210998   -0.0084416
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1026025   -0.1243839   -0.0808211
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.0735715   -0.1305682   -0.0165748
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0313781   -0.0454410   -0.0173153
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             NA                -0.0008462   -0.0282459    0.0265536
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.0934979   -0.0994896   -0.0875063
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                -0.0589204   -0.0760774   -0.0417635
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0714436   -0.0910706   -0.0518167
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0464326   -0.0730957   -0.0197695
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0667441   -0.0743541   -0.0591342
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -0.0498352   -0.0618489   -0.0378215
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0356653   -0.0438908   -0.0274398
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                -0.0238851   -0.0386793   -0.0090910
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0604525   -0.0697607   -0.0511444
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0103281   -0.0558177    0.0351616
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0631671   -0.0716938   -0.0546404
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.0580022   -0.0759029   -0.0401015
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0557305   -0.0606674   -0.0507935
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -0.0066941   -0.0192798    0.0058916
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1124984   -0.1205467   -0.1044502
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.0467040   -0.0611213   -0.0322868
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0942688   -0.0982442   -0.0902934
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                -0.0784050   -0.0865421   -0.0702680
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1017856   -0.1071712   -0.0963999
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -0.0675467   -0.0811476   -0.0539457
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0824362   -0.0858060   -0.0790664
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -0.0600537   -0.0642435   -0.0558638
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0463243   -0.0514133   -0.0412353
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -0.0151061   -0.0241508   -0.0060615
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0202377   -0.0263547   -0.0141206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                -0.0072695   -0.0154155    0.0008766
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0000201   -0.0108395    0.0107993
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             NA                -0.0264500   -0.0758463    0.0229464
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0099687   -0.0158403   -0.0040971
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                -0.0080472   -0.0176824    0.0015880
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0301011   -0.0354210   -0.0247811
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                -0.0041685   -0.0177928    0.0094559
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0102913   -0.0175816   -0.0030009
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             NA                 0.0063233   -0.0233301    0.0359767
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0157565   -0.0235751   -0.0079379
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                -0.0065609   -0.0300786    0.0169568
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0382511   -0.0488986   -0.0276036
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                -0.0441950   -0.0904256    0.0020356
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0506455   -0.0613498   -0.0399411
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                -0.0062260   -0.0343753    0.0219234
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0316021   -0.0391927   -0.0240115
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                -0.0318429   -0.0481449   -0.0155409
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0348944   -0.0438225   -0.0259662
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                -0.0380354   -0.0488207   -0.0272502
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0104860   -0.0147775   -0.0061945
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                -0.0030735   -0.0101949    0.0040479
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0083003   -0.0128784   -0.0037221
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                 0.0121533    0.0045495    0.0197571
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0214063   -0.0255543   -0.0172583
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                -0.0038510   -0.0133481    0.0056461
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0620128   -0.0725407   -0.0514849
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                -0.0475414   -0.0614083   -0.0336745
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0337460   -0.0381590   -0.0293330
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                -0.0185167   -0.0282948   -0.0087385
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0361672   -0.0380160   -0.0343183
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                -0.0296474   -0.0334497   -0.0258452
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0580133   -0.0606717   -0.0553549
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                -0.0528682   -0.0598228   -0.0459136
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0247722   -0.0269338   -0.0226105
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                -0.0097603   -0.0125061   -0.0070144
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0169857   -0.0193255   -0.0146459
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                -0.0045028   -0.0082856   -0.0007201


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


agecat         studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1147603    0.0380533   0.1914673
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.3701463    0.2549434   0.4853492
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.1022031    0.0057371   0.1986692
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.2409855    0.1396951   0.3422759
0-3 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1222965   -0.0183768   0.2629698
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.1340566   -0.0245523   0.2926655
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0626592   -0.0384538   0.1637723
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    -0.1166123   -0.4881098   0.2548851
0-3 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.1223006   -0.2491806   0.0045794
0-3 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0856540    0.0035276   0.1677803
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0582161    0.0218218   0.0946104
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0765708   -0.0181038   0.1712453
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0668038    0.0348415   0.0987660
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0178057   -0.0210408   0.0566522
0-3 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.1615654    0.0915365   0.2315942
0-3 months     ki1114097-CMIN             BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1114097-CMIN             BRAZIL                         Low birth weight             Normal or high birthweight     0.2257667   -0.4617401   0.9132735
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    -0.0268725   -0.0581067   0.0043618
0-3 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.1988321    0.1414373   0.2562270
0-3 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0969537    0.0806193   0.1132882
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0957659    0.0877490   0.1037827
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.1191338    0.0876152   0.1506523
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0996875    0.0558175   0.1435576
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.1712636    0.0755780   0.2669491
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0145515   -0.0498840   0.0789869
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.1615792    0.0752088   0.2479495
3-6 months     ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.1055679   -0.0057318   0.2168677
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0588608   -0.1106118   0.2283334
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1388804   -0.0934235   0.3711844
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.2009377    0.0651643   0.3367110
3-6 months     ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.1068721    0.0303916   0.1833526
3-6 months     ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     0.0458679   -0.0094565   0.1011924
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0823904    0.0542543   0.1105265
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0592546   -0.0167698   0.1352789
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0657634    0.0300948   0.1014320
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0572385    0.0211900   0.0932871
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.1049341    0.0322454   0.1776229
3-6 months     ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.1074217    0.0568385   0.1580048
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.1218724    0.0948501   0.1488948
3-6 months     ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0803815    0.0296352   0.1311278
3-6 months     ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0493334    0.0354275   0.0632393
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0708355    0.0620611   0.0796099
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0545090    0.0250235   0.0839945
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0171315   -0.0079661   0.0422292
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight     0.0580338    0.0013970   0.1146706
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0157832   -0.0084912   0.0400577
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0484418    0.0238047   0.0730789
6-12 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight    -0.0556887   -0.1123867   0.0010094
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.1058181    0.0031144   0.2085219
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0612948    0.0001294   0.1224602
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0290309   -0.0318114   0.0898732
6-12 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     0.0305320    0.0001575   0.0609065
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     0.0345775    0.0136747   0.0554803
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     0.0250110   -0.0079540   0.0579760
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0169089    0.0032406   0.0305772
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0117802   -0.0050950   0.0286554
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     0.0501245    0.0037817   0.0964672
6-12 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0051649   -0.0144161   0.0247459
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0490364    0.0355434   0.0625293
6-12 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0657944    0.0494515   0.0821373
6-12 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0158638    0.0068563   0.0248713
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     0.0342389    0.0196697   0.0488081
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0223826    0.0173670   0.0273981
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0312182    0.0207156   0.0417208
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0129682    0.0027899   0.0231465
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight             Normal or high birthweight    -0.0264299   -0.0769972   0.0241375
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     0.0019215   -0.0092758   0.0131188
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     0.0259326    0.0113228   0.0405424
12-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     0.0166146   -0.0139156   0.0471448
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     0.0091956   -0.0155731   0.0339644
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    -0.0059438   -0.0533847   0.0414970
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     0.0444195    0.0143287   0.0745103
12-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    -0.0002408   -0.0178428   0.0173611
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    -0.0031411   -0.0169922   0.0107100
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     0.0074125   -0.0008581   0.0156831
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     0.0204536    0.0115465   0.0293607
12-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     0.0175553    0.0072730   0.0278375
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     0.0144713   -0.0030531   0.0319957
12-24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     0.0152293    0.0046980   0.0257607
12-24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     0.0065197    0.0023196   0.0107199
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     0.0051451   -0.0022589   0.0125491
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0150119    0.0116804   0.0183434
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000   0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     0.0124829    0.0081147   0.0168510
