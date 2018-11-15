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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        birthwt                       swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      197     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       36     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1        3     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      179     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        4     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      168     203
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       28     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                    1        4     203
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      152     168
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        1     168
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      265     279
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                    0       14     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                    1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      242     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      112     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        5     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       75      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1        1      88
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          0      264     343
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          1       32     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                    0       25     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                    1       22     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          0        2       2
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                    0        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                    1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      143     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1        5     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       20      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0       18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0        4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1        1      23
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1291    1423
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1        6    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                    0      121    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                    1        5    1423
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5       8
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       8
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      106     111
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        0     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                    0        4     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                    1        1     111
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight          0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                    0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                    1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    12913   13824
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      911   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11254   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      360   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0      871   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      431   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      660     756
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       42     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       36     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       18     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5079    6193
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       99    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                    0      794    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                    1      221    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2623    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       65    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      155    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1       56    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    22032   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1       44   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     8878   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1      464   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     1068    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      288    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1       10    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      185     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        2     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       48     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1        0     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      188     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        5     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       36     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      208     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       21     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        0     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      253     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    0       17     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      235     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      120     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        6     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      315     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1        2     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      321     406
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1       17     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                    0       63     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                    1        5     406
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      478     752
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1       10     752
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    0      256     752
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    1        8     752
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       14      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        2      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        0      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      978    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       23    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      304    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1       19    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0      118     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        0     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       60     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1        0     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      441     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1        3     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      170     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1932    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       11    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       66    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        1    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1549    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       22    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    0      150    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    1        4    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        0       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      100     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        0     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    0        4     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    1        0     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          0       13      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                    0        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                    1        0      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    15741   15757
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       16   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     7134    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       68    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1021    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1       11    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      701     774
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1        3     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       70     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1        0     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4893    6252
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      107    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    0     1156    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    1       96    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2387    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       29    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      242    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1        6    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    21058   33422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      214   33422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0    11908   33422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1      242   33422
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     5971    8084
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1       34    8084
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0     2057    8084
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1       22    8084
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      165     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1        0     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       43     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1        0     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      160     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      184     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1        1     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       34     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1        1     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      201     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        0     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       20     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        0     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      185     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1        1     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0       12     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1        0     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      224     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      103     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        5     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      327     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       42     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1        1     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      336     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1        3     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       66     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                    1        2     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       85     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        0     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       49     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1        2     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      436     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1        3     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0      133     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1        6     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      387     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0      123     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1        3     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1283    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       20    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0      129    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1        4    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        0       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        1       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        0       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0     3967    3971
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      305     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1       25     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0       86     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1        5     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      593     657
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1        2     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       62     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1        0     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     3880    4821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1       31    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0      890    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1       20    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2174    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       21    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      212    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1        3    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    10411   17105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1      268   17105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     6026   17105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1      400   17105
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     5771    7988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      112    7988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0     1995    7988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      110    7988


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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0094079b-ff6a-487f-9f6c-7b60ddf11780/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0094079b-ff6a-487f-9f6c-7b60ddf11780/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0094079b-ff6a-487f-9f6c-7b60ddf11780/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0094079b-ff6a-487f-9f6c-7b60ddf11780/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                0.1081081   0.0726822   0.1435341
Birth       ki1000108-IRC             INDIA         Low birth weight             NA                0.4680851   0.3252231   0.6109471
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                0.0046261   0.0009318   0.0083203
Birth       ki1101329-Keneba          GAMBIA        Low birth weight             NA                0.0396825   0.0055850   0.0737800
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0309971   0.0278450   0.0341491
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Low birth weight             NA                0.3310292   0.3054671   0.3565913
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                0.0598291   0.0422730   0.0773851
Birth       ki1135781-COHORTS         GUATEMALA     Low birth weight             NA                0.3333333   0.2075183   0.4591483
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0191194   0.0153890   0.0228497
Birth       ki1135781-COHORTS         INDIA         Low birth weight             NA                0.2177340   0.1923424   0.2431256
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                0.0241815   0.0183734   0.0299897
Birth       ki1135781-COHORTS         PHILIPPINES   Low birth weight             NA                0.2654028   0.2058148   0.3249909
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0019931   0.0010248   0.0029614
Birth       kiGH5241-JiVitA-3         BANGLADESH    Low birth weight             NA                0.0496682   0.0423876   0.0569488
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                0.0502959   0.0269674   0.0736243
6 months    ki1000108-IRC             INDIA         Low birth weight             NA                0.0735294   0.0114174   0.1356414
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                0.0204918   0.0026916   0.0382920
6 months    ki1000109-EE              PAKISTAN      Low birth weight             NA                0.0303030   0.0010210   0.0595850
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                0.0229770   0.0136003   0.0323538
6 months    ki1000304b-SAS-CompFeed   INDIA         Low birth weight             NA                0.0588235   0.0395168   0.0781303
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0094418   0.0072082   0.0116755
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Low birth weight             NA                0.0106589   0.0043933   0.0169245
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0214000   0.0173885   0.0254115
6 months    ki1135781-COHORTS         INDIA         Low birth weight             NA                0.0766773   0.0619375   0.0914171
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                0.0120033   0.0076601   0.0163465
6 months    ki1135781-COHORTS         PHILIPPINES   Low birth weight             NA                0.0241935   0.0050671   0.0433200
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0100602   0.0079232   0.0121971
6 months    kiGH5241-JiVitA-3         BANGLADESH    Low birth weight             NA                0.0199177   0.0157911   0.0240443
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0056619   0.0002798   0.0110441
6 months    kiGH5241-JiVitA-4         BANGLADESH    Low birth weight             NA                0.0105820   0.0023161   0.0188480
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                0.0757576   0.0471742   0.1043410
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Low birth weight             NA                0.0549451   0.0080706   0.1018196
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                0.0079264   0.0051469   0.0107058
24 months   ki1135781-COHORTS         INDIA         Low birth weight             NA                0.0219780   0.0124514   0.0315047
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                0.0250960   0.0206585   0.0295335
24 months   kiGH5241-JiVitA-3         BANGLADESH    Low birth weight             NA                0.0622471   0.0534042   0.0710901
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                0.0190379   0.0130652   0.0250106
24 months   kiGH5241-JiVitA-4         BANGLADESH    Low birth weight             NA                0.0522565   0.0379107   0.0666024


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC             INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1101329-Keneba          GAMBIA        NA                   NA                0.0077301   0.0031781   0.0122822
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0612419   0.0571066   0.0653771
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0516712   0.0461576   0.0571849
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0161691   0.0138058   0.0185324
6 months    ki1000108-IRC             INDIA         NA                   NA                0.0541872   0.0321391   0.0762353
6 months    ki1000109-EE              PAKISTAN      NA                   NA                0.0239362   0.0084659   0.0394065
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0317221   0.0237601   0.0396840
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0095944   0.0074887   0.0117000
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0324696   0.0280758   0.0368634
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0131381   0.0088134   0.0174629
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0136437   0.0115506   0.0157368
6 months    kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0069273   0.0024198   0.0114348
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0712589   0.0466558   0.0958620
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0105787   0.0076905   0.0134669
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0390529   0.0347092   0.0433966
24 months   kiGH5241-JiVitA-4         BANGLADESH    NA                   NA                0.0277917   0.0219289   0.0336545


### Parameter: RR


agecat      studyid                   country       intervention_level           baseline_level                  estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1000108-IRC             INDIA         Low birth weight             Normal or high birthweight     4.3297872    2.7668559    6.775582
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1101329-Keneba          GAMBIA        Low birth weight             Normal or high birthweight     8.5780423    2.6542262   27.722886
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Low birth weight             Normal or high birthweight    10.6793693    9.3992311   12.133857
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         GUATEMALA     Low birth weight             Normal or high birthweight     5.5714286    3.4540996    8.986659
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         INDIA         Low birth weight             Normal or high birthweight    11.3881473    9.0727038   14.294515
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       ki1135781-COHORTS         PHILIPPINES   Low birth weight             Normal or high birthweight    10.9754284    7.9000950   15.247921
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    Low birth weight             Normal or high birthweight    24.9198731   15.1446599   41.004557
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC             INDIA         Low birth weight             Normal or high birthweight     1.4619377    0.5577062    3.832236
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000109-EE              PAKISTAN      Low birth weight             Normal or high birthweight     1.4787879    0.4032802    5.422566
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed   INDIA         Low birth weight             Normal or high birthweight     2.5601023    1.4720113    4.452496
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Low birth weight             Normal or high birthweight     1.1289045    0.5990565    2.127388
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         Low birth weight             Normal or high birthweight     3.5830522    2.7393375    4.686631
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   Low birth weight             Normal or high birthweight     2.0155729    0.8449075    4.808259
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    Low birth weight             Normal or high birthweight     1.9798562    1.4860830    2.637693
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4         BANGLADESH    Low birth weight             Normal or high birthweight     1.8689698    0.5434810    6.427176
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Low birth weight             Normal or high birthweight     0.7252747    0.2853526    1.843416
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         Low birth weight             Normal or high birthweight     2.7727756    1.5877342    4.842300
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    Low birth weight             Normal or high birthweight     2.4803620    1.9761030    3.113297
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.0000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4         BANGLADESH    Low birth weight             Normal or high birthweight     2.7448676    1.8209160    4.137642


### Parameter: PAR


agecat      studyid                   country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0493263    0.0252661   0.0733865
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.0031041    0.0000234   0.0061847
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0302448    0.0272170   0.0332726
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                 0.0195360    0.0091640   0.0299081
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0325519    0.0279643   0.0371395
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0175570    0.0126383   0.0224757
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0141760    0.0119682   0.0163837
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0038913   -0.0072533   0.0150360
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                 0.0034444   -0.0085952   0.0154839
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.0087450    0.0022125   0.0152775
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0001525   -0.0006812   0.0009863
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0110696    0.0079618   0.0141775
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0011348   -0.0006960   0.0029656
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0035835    0.0019432   0.0052239
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.0012653   -0.0012815   0.0038122
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                -0.0044987   -0.0163941   0.0073968
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.0026524    0.0007727   0.0045320
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.0139569    0.0101991   0.0177147
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.0087538    0.0047212   0.0127863


### Parameter: PAF


agecat      studyid                   country       intervention_level           baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  ---------------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.3133133    0.1608005   0.4381091
Birth       ki1101329-Keneba          GAMBIA        Normal or high birthweight   NA                 0.4015560   -0.0242612   0.6503478
Birth       ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.4938582    0.4549404   0.5299972
Birth       ki1135781-COHORTS         GUATEMALA     Normal or high birthweight   NA                 0.2461538    0.1181998   0.3555410
Birth       ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.6299808    0.5653736   0.6849842
Birth       ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.4206421    0.3189707   0.5071349
Birth       kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.8767329    0.8058803   0.9217247
6 months    ki1000108-IRC             INDIA         Normal or high birthweight   NA                 0.0718128   -0.1560997   0.2547948
6 months    ki1000109-EE              PAKISTAN      Normal or high birthweight   NA                 0.1438980   -0.5257116   0.5196270
6 months    ki1000304b-SAS-CompFeed   INDIA         Normal or high birthweight   NA                 0.2756767    0.0380805   0.4545861
6 months    ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                 0.0158992   -0.0748778   0.0990099
6 months    ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.3409222    0.2508533   0.4201622
6 months    ki1135781-COHORTS         PHILIPPINES   Normal or high birthweight   NA                 0.0863765   -0.0608389   0.2131625
6 months    kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.2626511    0.1417013   0.3665568
6 months    kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.1826573   -0.3283071   0.4970673
24 months   ki1126311-ZVITAMBO        ZIMBABWE      Normal or high birthweight   NA                -0.0631313   -0.2424857   0.0903331
24 months   ki1135781-COHORTS         INDIA         Normal or high birthweight   NA                 0.2507257    0.0671537   0.3981731
24 months   kiGH5241-JiVitA-3         BANGLADESH    Normal or high birthweight   NA                 0.3573851    0.2632116   0.4395216
24 months   kiGH5241-JiVitA-4         BANGLADESH    Normal or high birthweight   NA                 0.3149784    0.1606658   0.4409204
