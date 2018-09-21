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
![](/tmp/befd7d2c-5f2b-44fb-8af2-eda318951a8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/befd7d2c-5f2b-44fb-8af2-eda318951a8c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/befd7d2c-5f2b-44fb-8af2-eda318951a8c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/befd7d2c-5f2b-44fb-8af2-eda318951a8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.1239573   0.0785115   0.1694031
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             NA                0.3851632   0.2346951   0.5356313
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.1107311   0.0635176   0.1579446
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.4425244   0.2698400   0.6152088
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0838710   0.0401024   0.1276396
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             NA                0.5384615   0.2666586   0.8102645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0532787   0.0250439   0.0815135
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             NA                0.3571429   0.1056616   0.6086241
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2104593   0.1641445   0.2567740
Birth       ki1000108-IRC              INDIA          Low birth weight             NA                0.6332729   0.4980321   0.7685136
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0154202   0.0087121   0.0221283
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0634921   0.0208998   0.1060843
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1055522   0.0999680   0.1111364
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.6324913   0.6079254   0.6570572
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2306432   0.1994938   0.2617926
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.5695266   0.4449459   0.6941073
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1061817   0.0978174   0.1145459
Birth       ki1135781-COHORTS          INDIA          Low birth weight             NA                0.5441114   0.5154145   0.5728083
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1187790   0.1065688   0.1309892
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.6533339   0.6025483   0.7041196
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0292323   0.0258102   0.0326545
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.2498604   0.2365574   0.2631634
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0167787   0.0013783   0.0321790
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.1895062   0.1241426   0.2548699
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1106131   0.0764484   0.1447779
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.2346923   0.1079321   0.3614524
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.1217076   0.0868607   0.1565546
6 months    ki1000108-IRC              INDIA          Low birth weight             NA                0.2110286   0.1187398   0.3033174
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.1202496   0.0789545   0.1615447
6 months    ki1000109-EE               PAKISTAN       Low birth weight             NA                0.1097592   0.0563127   0.1632057
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1074112   0.0773464   0.1374760
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             NA                0.1859402   0.1592488   0.2126316
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0762712   0.0282445   0.1242979
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.1166667   0.0352091   0.1981243
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0225100   0.0087155   0.0363045
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.1091069   0.0610130   0.1572007
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0201305   0.0083398   0.0319212
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.0613574   0.0271718   0.0955430
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0548180   0.0435532   0.0660829
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0743635   0.0365743   0.1121527
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0299972   0.0260527   0.0339417
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.0429031   0.0304324   0.0553737
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0996335   0.0913698   0.1078971
6 months    ki1135781-COHORTS          INDIA          Low birth weight             NA                0.2429953   0.2207134   0.2652772
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0552234   0.0461060   0.0643407
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.0926015   0.0577208   0.1274821
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0635375   0.0585251   0.0685500
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.1225940   0.1134389   0.1317491
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0452393   0.0337219   0.0567567
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.0783714   0.0605822   0.0961606
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0867703   0.0461775   0.1273630
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.2818451   0.1318410   0.4318492
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0486322   0.0253582   0.0719062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.1627907   0.0522989   0.2732825
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0587426   0.0336446   0.0838405
24 months   ki1000108-IRC              INDIA          Low birth weight             NA                0.1648591   0.0767724   0.2529458
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235   0.0086179   0.1090291
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.2156863   0.1023884   0.3289841
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0794375   0.0542170   0.1046579
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.2167474   0.1509113   0.2825835
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0694974   0.0441604   0.0948345
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.1433499   0.0822715   0.2044282
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0968905   0.0808451   0.1129358
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.1374059   0.0858238   0.1889880
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1757580   0.1346438   0.2168722
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.1978005   0.1158594   0.2797415
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.1451613   0.0574106   0.2329120
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0753192   0.0670930   0.0835453
24 months   ki1135781-COHORTS          INDIA          Low birth weight             NA                0.1589532   0.1366799   0.1812265
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0599144   0.0499760   0.0698529
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.1678571   0.1228939   0.2128203
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.1703900   0.1593144   0.1814656
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.3031959   0.2869146   0.3194773
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1694581   0.1527296   0.1861866
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.2948592   0.2628685   0.3268499


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
6 months    ki1000109-EE               PAKISTAN       NA                   NA                0.1303192   0.0962457   0.1643926
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


agecat      studyid                    country        intervention_level           baseline_level                  estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------------------  -----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             Normal or high birthweight     3.1072238   1.8172098    5.313002
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.9963882   2.2419984    7.123609
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             Normal or high birthweight     6.4201183   3.1061893   13.269610
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             Normal or high birthweight     6.7032967   2.7768391   16.181775
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     3.0090042   2.2124140    4.092410
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     4.1174603   1.8509561    9.159309
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     5.9922157   5.6117998    6.398419
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     2.4692972   1.9102213    3.192001
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     5.1243446   4.6612437    5.633455
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     5.5004162   4.8363689    6.255639
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     8.5474010   7.5178607    9.717932
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight    11.2944738   4.2320668   30.142515
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     2.1217396   1.1387701    3.953194
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     1.7338978   1.0279792    2.924574
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN       Low birth weight             Normal or high birthweight     0.9127616   0.5024322    1.658201
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             Normal or high birthweight     1.7311066   1.3091672    2.289035
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     1.5296296   0.5973901    3.916648
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     4.8470410   2.2804247   10.302382
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     3.0479830   1.3619374    6.821312
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.3565515   0.7848556    2.344676
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.4302342   1.0396270    1.967600
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.4388918   2.1559742    2.758935
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     1.6768531   1.1115769    2.529592
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.9294739   1.7388551    2.140989
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.7323744   1.2317152    2.436538
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.2481753   1.5993565    6.596805
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     3.3473837   1.4589101    7.680376
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     2.8064677   1.4162154    5.561485
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     3.6666667   1.3459409    9.988882
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     2.7285281   1.7634106    4.221856
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     2.0626646   1.1772633    3.613962
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.4181570   0.9407279    2.137886
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.1254136   0.6993567    1.811030
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     5.0806452   2.3641232   10.918617
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.1103948   1.7685319    2.518341
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     2.8016135   2.0453097    3.837579
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.7794232   1.6408556    1.929693
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.7400127   1.4979832    2.021147


### Parameter: PAR


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.0420178    0.0134528   0.0705827
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0518305    0.0191581   0.0845029
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0351767    0.0070128   0.0633405
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0164888    0.0003830   0.0325945
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0577623    0.0324472   0.0830774
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0042565    0.0003733   0.0081398
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0539399    0.0500761   0.0578038
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0233251    0.0118919   0.0347582
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0707923    0.0642342   0.0773505
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0367919    0.0299902   0.0435936
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0666363    0.0620018   0.0712708
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0359300    0.0205718   0.0512881
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0143869   -0.0014639   0.0302376
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0112973   -0.0056141   0.0282087
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0100695   -0.0153000   0.0354391
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.0164559    0.0056438   0.0272679
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0136165   -0.0183822   0.0456151
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0187271    0.0060423   0.0314119
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0092401    0.0003237   0.0181566
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0014138   -0.0023243   0.0051520
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0020650    0.0003935   0.0037365
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0286455    0.0234291   0.0338618
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0040859    0.0005231   0.0076488
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0212569    0.0175744   0.0249394
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0084470    0.0029603   0.0139337
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0314115    0.0049057   0.0579174
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0131957   -0.0003746   0.0267661
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0174245    0.0017065   0.0331426
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235    0.0106190   0.1070281
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0330193    0.0150265   0.0510120
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0180512    0.0015936   0.0345089
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0068700    0.0007258   0.0130141
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0047646   -0.0150707   0.0245998
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0155334    0.0107627   0.0203040
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0081353    0.0037029   0.0125678
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0483180    0.0409242   0.0557117
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0329706    0.0231378   0.0428033


### Parameter: PAF


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.2531571    0.0735894   0.3979189
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.3188361    0.1101690   0.4785703
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.2954839    0.0513552   0.4767873
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.2363388   -0.0032827   0.4187297
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2153529    0.1191669   0.3010355
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.2163234    0.0124121   0.3781323
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.3381982    0.3165890   0.3591241
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0918424    0.0462904   0.1352188
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.4000155    0.3671303   0.4311920
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.2364960    0.1952050   0.2756685
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.6950793    0.6621989   0.7247592
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.6816714    0.3266510   0.8495088
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1150949   -0.0179602   0.2307587
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0849389   -0.0498859   0.2024497
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0772683   -0.1393242   0.2526852
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1328511    0.0279113   0.2264624
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.1514831   -0.2818005   0.4383049
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.4541327    0.1311848   0.6570374
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.3146050   -0.0234861   0.5410134
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0251431   -0.0435029   0.0892733
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0644048    0.0112912   0.1146651
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.2233061    0.1837751   0.2609225
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0688920    0.0076269   0.1263747
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2506876    0.2085452   0.2905860
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1573399    0.0418362   0.2589200
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.2657899    0.0269864   0.4459847
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.2134267   -0.0199247   0.3933890
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2287672    0.0088530   0.3998871
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.5000000   -0.0044188   0.7510999
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.2936175    0.1287690   0.4272744
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.2061851    0.0036316   0.3675611
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0662100    0.0057869   0.1229609
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0263931   -0.0898393   0.1302292
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1709733    0.1188315   0.2200296
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1195499    0.0540901   0.1804797
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2209246    0.1870482   0.2533894
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1628751    0.1126488   0.2102584
