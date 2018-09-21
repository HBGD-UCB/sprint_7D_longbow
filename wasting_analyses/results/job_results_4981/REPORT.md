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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        birthwt                       wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      177     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   0       24     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   1       15     241
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      174     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        5     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   0        3     183
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   1        1     183
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      152     203
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       19     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                   0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                   1       14     203
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      142     168
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                   0        6     168
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                   1        7     168
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      260     279
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        5     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                   0       13     279
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                   1        1     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      231     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   0        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   1        5     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      112     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0       70      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   1        5      88
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         0      234     343
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight         1       62     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                   0       17     343
Birth       ki1000108-IRC              INDIA                          Low birth weight                   1       30     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         0        2       2
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight         1        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   0        0       2
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                   1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0        6       6
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                   1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      141     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   0       14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   1        9     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0       16      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   0        5      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   1        2      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0       18      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   0        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   1        3      23
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1277    1423
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       20    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                   0      118    1423
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                   1        8    1423
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        4       8
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                   1        2       8
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight         0      100     111
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight         1        6     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   0        3     111
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                   1        2     111
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight         0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight         1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                   1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                   1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    10936   13824
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1     2888   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   0        0   13824
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                   1        0   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0    10392   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1     1222   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   0      464   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   1      838   12916
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      540     756
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1      162     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                   0       24     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                   1       30     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4632    6193
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      546    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                   0      465    6193
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                   1      550    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2371    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      317    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   0       77    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   1      134    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0    21432   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1      644   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   0     6974   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   1     2368   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     1050    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1       18    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   0      244    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   1       54    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      181     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1        6     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   0       46     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   1        2     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      198     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      178     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       15     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                   0       33     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                   1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      205     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                   0       21     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                   1        0     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      253     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        0     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                   0       17     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                   1        0     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      232     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        6     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      120     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        6     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        0     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      289     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   0       33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   1       10     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         0      297     406
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight         1       41     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                   0       55     406
6 months    ki1000108-IRC              INDIA                          Low birth weight                   1       13     406
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         0      426     752
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight         1       62     752
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                   0      228     752
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                   1       36     752
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         0       14      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight         1        1      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   0        2      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                   1        0      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         0      893    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight         1      108    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   0      267    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                   1       56    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0      109     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1        9     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   0       53     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   1        7     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      433     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       10     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   0      125     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   1       14     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      534     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   0      160     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   1       10     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0     1861    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1       82    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0       63    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        4    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1485    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1       86    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                   0      143    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                   1       11    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                   1        0       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight         0       99     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight         1        1     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   0        4     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                   1        0     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight         1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                   1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight         0       13      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight         1        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   0        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                   1        1      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                   1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0    15627   15757
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1      130   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   0        0   15757
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                   1        0   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0     6985    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1      217    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   0      985    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   1       47    8234
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      682     774
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       22     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                   0       67     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                   1        3     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     4503    6252
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      497    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                   0      947    6252
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                   1      305    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2282    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      134    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   0      224    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   1       24    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0    19916   33422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1     1356   33422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   0    10672   33422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   1     1478   33422
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     5733    8084
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      272    8084
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   0     1917    8084
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   1      162    8084
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         0      149     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight         1       16     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   0       39     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                   1        4     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         0      158     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight         1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                   1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         0      169     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight         1       16     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                   0       25     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                   1       10     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         0      198     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight         1        3     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                   0       19     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                   1        1     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         0      184     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight         1        2     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                   0       11     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                   1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         0      223     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight         1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                   1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0      102     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        5     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        0     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         0      313     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight         1       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   0       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                   1        7     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         0      319     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight         1       20     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                   0       57     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                   1       11     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         0       80     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight         1        5     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   0       40     136
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                   1       11     136
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         0      404     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight         1       35     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   0      109     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                   1       30     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         0      361     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight         1       27     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   0      108     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                   1       18     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                   1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         0     1176    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight         1      127    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                   0      111    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                   1       22    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   0        1       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                   1        0       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight         1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   0        1       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                   1        0       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                   1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         0     3927    3971
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight         1       44    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   0        0    3971
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                   1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         0      272     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight         1       58     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   0       73     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                   1       18     421
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         0      578     657
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight         1       17     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                   0       53     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                   1        9     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         0     3617    4821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight         1      294    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                   0      766    4821
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                   1      144    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         0     2063    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight         1      132    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   0      183    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                   1       32    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         0     8861   17105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight         1     1818   17105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   0     4503   17105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                   1     1923   17105
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         0     4884    7988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight         1      999    7988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   0     1487    7988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                   1      618    7988


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/a4190655-61f2-48d5-aba1-9f59ef27a2a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4190655-61f2-48d5-aba1-9f59ef27a2a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4190655-61f2-48d5-aba1-9f59ef27a2a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4190655-61f2-48d5-aba1-9f59ef27a2a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.1237624   0.0782551   0.1692696
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             NA                0.3846154   0.2316105   0.5376203
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.1111111   0.0638912   0.1583310
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.4375000   0.2651959   0.6098041
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0838710   0.0401024   0.1276396
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             NA                0.5384615   0.2666586   0.8102645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0532787   0.0250439   0.0815135
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             NA                0.3571429   0.1056616   0.6086241
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2094595   0.1630348   0.2558841
Birth       ki1000108-IRC              INDIA          Low birth weight             NA                0.6382979   0.5007289   0.7758668
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0154202   0.0087121   0.0221283
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0634921   0.0208998   0.1060843
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1052178   0.0996373   0.1107984
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.6436252   0.6176099   0.6696405
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2307692   0.1995815   0.2619570
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.5555556   0.4229349   0.6881762
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1054461   0.0970801   0.1138122
Birth       ki1135781-COHORTS          INDIA          Low birth weight             NA                0.5418719   0.5112176   0.5725263
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1179315   0.1057368   0.1301263
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.6350711   0.5701035   0.7000387
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0291720   0.0257259   0.0326180
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.2534789   0.2397091   0.2672487
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0168539   0.0014406   0.0322673
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.1812081   0.1157680   0.2466481
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1107692   0.0766017   0.1449368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.2325581   0.1061156   0.3590007
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.1213018   0.0864537   0.1561498
6 months    ki1000108-IRC              INDIA          Low birth weight             NA                0.1911765   0.0975986   0.2847544
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.1270492   0.0852072   0.1688912
6 months    ki1000109-EE               PAKISTAN       Low birth weight             NA                0.1363636   0.0777425   0.1949848
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1078921   0.0775356   0.1382486
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             NA                0.1733746   0.1394939   0.2072554
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0762712   0.0282445   0.1242979
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.1166667   0.0352091   0.1981243
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0225734   0.0087294   0.0364173
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.1007194   0.0506447   0.1507941
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0201835   0.0083687   0.0319982
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.0588235   0.0234288   0.0942183
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0547422   0.0434904   0.0659940
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0714286   0.0307414   0.1121157
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0301305   0.0261822   0.0340788
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.0455426   0.0328216   0.0582637
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0994000   0.0911061   0.1076939
6 months    ki1135781-COHORTS          INDIA          Low birth weight             NA                0.2436102   0.2198308   0.2673896
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0554636   0.0463352   0.0645920
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.0967742   0.0599713   0.1335771
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0637458   0.0587127   0.0687788
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.1216461   0.1123825   0.1309097
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0452956   0.0337551   0.0568361
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.0779221   0.0599854   0.0958588
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0864865   0.0458905   0.1270825
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.2857143   0.1357094   0.4357191
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0486322   0.0253582   0.0719062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.1627907   0.0522989   0.2732825
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0589971   0.0338844   0.0841097
24 months   ki1000108-IRC              INDIA          Low birth weight             NA                0.1617647   0.0741347   0.2493947
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235   0.0086179   0.1090291
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.2156863   0.1023884   0.3289841
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0797267   0.0543665   0.1050868
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.2158273   0.1473770   0.2842777
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0695876   0.0442446   0.0949307
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.1428571   0.0816977   0.2040166
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0974674   0.0813577   0.1135771
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.1654135   0.1022459   0.2285812
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1757576   0.1346434   0.2168718
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.1978022   0.1158614   0.2797430
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.1451613   0.0574106   0.2329120
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0751726   0.0669082   0.0834370
24 months   ki1135781-COHORTS          INDIA          Low birth weight             NA                0.1582418   0.1345266   0.1819570
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0601367   0.0501890   0.0700844
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.1488372   0.1012510   0.1964234
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.1702407   0.1591332   0.1813481
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.2992530   0.2825163   0.3159898
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1698113   0.1530630   0.1865597
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.2935867   0.2613827   0.3257907


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.1659751   0.1189041   0.2130461
Birth       ki0047075b-MAL-ED          INDIA          NA                   NA                0.1625616   0.1116803   0.2134428
Birth       ki0047075b-MAL-ED          NEPAL          NA                   NA                0.1190476   0.0699312   0.1681640
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.0697674   0.0386213   0.1009135
Birth       ki1000108-IRC              INDIA          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1101329-Keneba           GAMBIA         NA                   NA                0.0196767   0.0124580   0.0268954
Birth       ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1594921   0.1531776   0.1658066
Birth       ki1135781-COHORTS          GUATEMALA      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1769740   0.1674681   0.1864799
Birth       ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0958686   0.0906699   0.1010673
Birth       kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA          NA                   NA                0.1330049   0.0999328   0.1660771
6 months    ki1000109-EE               PAKISTAN       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000304b-SAS-CompFeed    INDIA          NA                   NA                0.1238671   0.0990601   0.1486741
6 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.0898876   0.0477511   0.1320242
6 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.0562319   0.0453575   0.0671062
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.0320622   0.0282569   0.0358675
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1282790   0.1199892   0.1365687
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0593093   0.0503382   0.0682804
6 months    kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.0847944   0.0799694   0.0896195
6 months    kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0536863   0.0439889   0.0633837
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.1181818   0.0754264   0.1609372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA          NA                   NA                0.0761671   0.0503644   0.1019698
24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.1176471   0.0632979   0.1719962
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.1037604   0.0879825   0.1195384
24 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1805226   0.1437387   0.2173065
24 months   ki1135781-COHORTS          GUATEMALA      NA                   NA                0.0395738   0.0246551   0.0544926
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.0908525   0.0827390   0.0989661
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0680498   0.0579935   0.0781061
24 months   kiGH5241-JiVitA-3          BANGLADESH     NA                   NA                0.2187080   0.2087427   0.2286733
24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.2024286   0.1878394   0.2170179


### Parameter: RR


agecat      studyid                    country        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             Normal or high birthweight     3.107692   1.8078956    5.341985
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.937500   2.2059018    7.028375
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             Normal or high birthweight     6.420118   3.1061893   13.269610
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             Normal or high birthweight     6.703297   2.7768391   16.181775
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     3.047358   2.2369704    4.151324
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     4.117460   1.8509561    9.159309
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     6.117073   5.7224625    6.538895
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     2.407407   1.8298464    3.167266
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     5.138851   4.6617313    5.664804
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     5.385082   4.6560839    6.228219
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     8.689131   7.6299934    9.895290
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight    10.751677   4.0151639   28.790496
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     2.099483   1.1236521    3.922771
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     1.576040   0.8934661    2.780075
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN       Low birth weight             Normal or high birthweight     1.073314   0.6245086    1.844654
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             Normal or high birthweight     1.606926   1.1584453    2.229031
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     1.529630   0.5973901    3.916648
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     4.461870   2.0260240    9.826284
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     2.914439   1.2588610    6.747331
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.304817   0.7121216    2.390811
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.511512   1.1102431    2.057809
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.450807   2.1554569    2.786627
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     1.744824   1.1528891    2.640680
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.908301   1.7176818    2.120073
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.720302   1.2197791    2.426208
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.303571   1.6335444    6.680923
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     3.347384   1.4589101    7.680376
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     2.741912   1.3767353    5.460803
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     3.666667   1.3459409    9.988882
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     2.707092   1.7275258    4.242104
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     2.052910   1.1702221    3.601402
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.697117   1.1194297    2.572922
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.125426   0.6993674    1.811043
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     5.080645   2.3641232   10.918617
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.105046   1.7479965    2.535027
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     2.474982   1.7267751    3.547386
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.757823   1.6184484    1.909201
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.728899   1.4864712    2.010865


### Parameter: PAR


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.0422127    0.0136641   0.0707613
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0514505    0.0188598   0.0840411
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0351767    0.0070128   0.0633405
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0164888    0.0003830   0.0325945
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0587621    0.0334624   0.0840618
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0042565    0.0003733   0.0081398
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0542743    0.0504001   0.0581485
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0231990    0.0117842   0.0346138
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0715279    0.0649466   0.0781092
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0376393    0.0307785   0.0445002
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0666967    0.0620633   0.0713300
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0358547    0.0204662   0.0512432
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0142308   -0.0015885   0.0300500
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0117032   -0.0052134   0.0286197
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0032700   -0.0220184   0.0285583
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.0159750    0.0043707   0.0275793
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0136165   -0.0183822   0.0456151
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0186637    0.0059634   0.0313641
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0091871    0.0002335   0.0181408
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0014897   -0.0022857   0.0052651
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0019317    0.0002586   0.0036047
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0288790    0.0236366   0.0341213
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0038457    0.0002865   0.0074050
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0210487    0.0173521   0.0247453
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0083907    0.0028984   0.0138831
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0316953    0.0051555   0.0582352
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0131957   -0.0003746   0.0267661
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0171700    0.0014899   0.0328501
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235    0.0106190   0.1070281
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0327301    0.0145452   0.0509150
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0179610    0.0015048   0.0344172
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0062931    0.0001699   0.0124162
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0047650   -0.0150702   0.0246001
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0156799    0.0108515   0.0205084
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0079131    0.0034601   0.0123661
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0484673    0.0410647   0.0558700
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0326173    0.0227648   0.0424699


### Parameter: PAF


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.2543317    0.0746050   0.3991525
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.3164983    0.1084692   0.4759861
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.2954839    0.0513552   0.4767873
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.2363388   -0.0032827   0.4187297
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2190805    0.1226456   0.3049157
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.2163234    0.0124121   0.3781323
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.3402944    0.3186398   0.3612607
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0913462    0.0458294   0.1346917
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.4041717    0.3711583   0.4354520
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.2419433    0.2003274   0.2813935
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.6957090    0.6626106   0.7255605
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.6802434    0.3252840   0.8484632
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1138462   -0.0189268   0.2293179
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0879904   -0.0469278   0.2055215
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0250920   -0.1895216   0.2009850
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1289686    0.0181318   0.2272937
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.1514831   -0.2818005   0.4383049
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.4525959    0.1283505   0.6562251
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.3128003   -0.0270827   0.5402090
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0264918   -0.0428318   0.0912069
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0602474    0.0070780   0.1105696
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.2251262    0.1853215   0.2629860
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0648420    0.0036214   0.1223010
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2482318    0.2058614   0.2883416
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1562914    0.0406227   0.2580144
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.2681913    0.0289017   0.4485172
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.2134267   -0.0199247   0.3933890
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2254258    0.0061060   0.3963489
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.5000000   -0.0044188   0.7510999
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.2910461    0.1240066   0.4262335
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.2051546    0.0026302   0.3665548
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0606499    0.0003476   0.1173146
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0263955   -0.0898367   0.1302314
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1725866    0.1197195   0.2222787
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1162842    0.0505100   0.1775021
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2216075    0.1876425   0.2541524
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1611300    0.1108098   0.2086024
