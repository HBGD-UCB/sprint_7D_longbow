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
![](/tmp/e8c9f00e-caf6-4f7f-9fc7-f6f4aa35b28b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e8c9f00e-caf6-4f7f-9fc7-f6f4aa35b28b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e8c9f00e-caf6-4f7f-9fc7-f6f4aa35b28b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e8c9f00e-caf6-4f7f-9fc7-f6f4aa35b28b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.1239856   0.0785497   0.1694216
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             NA                0.3852747   0.2352192   0.5353302
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.1107537   0.0635399   0.1579675
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.4422277   0.2695680   0.6148873
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0838710   0.0401024   0.1276396
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             NA                0.5384615   0.2666586   0.8102645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0532787   0.0250439   0.0815135
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             NA                0.3571429   0.1056616   0.6086241
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2099911   0.1636367   0.2563455
Birth       ki1000108-IRC              INDIA          Low birth weight             NA                0.6355981   0.4987327   0.7724635
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0154202   0.0087121   0.0221283
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0634921   0.0208998   0.1060843
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1055263   0.0999462   0.1111064
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.6331966   0.6082224   0.6581707
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2307914   0.1996304   0.2619524
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.5625198   0.4347154   0.6903243
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1063148   0.0979482   0.1146813
Birth       ki1135781-COHORTS          INDIA          Low birth weight             NA                0.5424148   0.5146432   0.5701863
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1186367   0.1064399   0.1308334
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.6470799   0.5942992   0.6998607
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0292346   0.0258126   0.0326565
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.2498636   0.2365624   0.2631647
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0167690   0.0013672   0.0321707
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.1895226   0.1240795   0.2549657
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1106783   0.0765163   0.1448404
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.2335109   0.1075448   0.3594769
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.1212569   0.0864089   0.1561049
6 months    ki1000108-IRC              INDIA          Low birth weight             NA                0.1915002   0.0979978   0.2850026
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.1200667   0.0788007   0.1613327
6 months    ki1000109-EE               PAKISTAN       Low birth weight             NA                0.1100709   0.0568273   0.1633144
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1074112   0.0773464   0.1374760
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             NA                0.1859402   0.1592488   0.2126316
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0762712   0.0282445   0.1242979
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.1166667   0.0352091   0.1981243
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0224738   0.0086978   0.0362497
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.1083451   0.0608792   0.1558109
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0201356   0.0083455   0.0319257
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.0613821   0.0272210   0.0955432
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0548316   0.0435640   0.0660993
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.0741260   0.0364414   0.1118106
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0300085   0.0260625   0.0339546
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.0432412   0.0306627   0.0558197
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0996418   0.0913802   0.1079034
6 months    ki1135781-COHORTS          INDIA          Low birth weight             NA                0.2427573   0.2205581   0.2649565
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0552274   0.0461131   0.0643416
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.0914523   0.0571241   0.1257804
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0635159   0.0584941   0.0685377
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.1226521   0.1134599   0.1318443
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0452324   0.0337177   0.0567471
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.0783020   0.0605634   0.0960406
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0870520   0.0465405   0.1275635
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             NA                0.2768288   0.1359681   0.4176894
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0486322   0.0253582   0.0719062
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             NA                0.1627907   0.0522989   0.2732825
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0587376   0.0336436   0.0838316
24 months   ki1000108-IRC              INDIA          Low birth weight             NA                0.1645942   0.0770247   0.2521638
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235   0.0086179   0.1090291
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             NA                0.2156863   0.1023884   0.3289841
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0798853   0.0545986   0.1051720
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             NA                0.2339379   0.1667606   0.3011151
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0694854   0.0441422   0.0948286
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             NA                0.1434545   0.0823310   0.2045780
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0969317   0.0808807   0.1129827
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             NA                0.1381029   0.0857202   0.1904856
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.1757576   0.1346434   0.2168718
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             NA                0.1978022   0.1158614   0.2797430
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0285714   0.0151749   0.0419679
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             NA                0.1451613   0.0574106   0.2329120
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0753149   0.0670898   0.0835399
24 months   ki1135781-COHORTS          INDIA          Low birth weight             NA                0.1589874   0.1368118   0.1811630
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0599053   0.0499671   0.0698435
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             NA                0.1678896   0.1229786   0.2128005
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.1703909   0.1593153   0.1814665
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             NA                0.3031916   0.2869102   0.3194731
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1694727   0.1527435   0.1862019
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             NA                0.2948734   0.2628796   0.3268672


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
Birth       ki0047075b-MAL-ED          BANGLADESH     Low birth weight             Normal or high birthweight     3.1074142   1.8188926    5.308737
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.9928931   2.2398729    7.117902
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL          Low birth weight             Normal or high birthweight     6.4201183   3.1061893   13.269610
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Low birth weight             Normal or high birthweight     6.7032967   2.7768391   16.181775
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     3.0267855   2.2224945    4.122139
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     4.1174603   1.8509561    9.159309
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     6.0003683   5.6175191    6.409310
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     2.4373519   1.8716065    3.174110
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     5.1019708   4.6454338    5.603375
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     5.4542990   4.7845372    6.217817
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     8.5468569   7.5175223    9.717133
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight    11.3019917   4.2331534   30.174909
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     2.1098154   1.1332428    3.927950
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     1.5792932   0.8962741    2.782817
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN       Low birth weight             Normal or high birthweight     0.9167477   0.5059449    1.661102
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA          Low birth weight             Normal or high birthweight     1.7311066   1.3091672    2.289035
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     1.5296296   0.5973901    3.916648
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     4.8209553   2.2711239   10.233528
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     3.0484414   1.3629662    6.818214
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.3518836   0.7819694    2.337162
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.4409636   1.0472180    1.982754
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.4362999   2.1541549    2.755399
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     1.6559229   1.0990548    2.494944
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.9310455   1.7396608    2.143485
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.7311047   1.2311901    2.434006
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA          Low birth weight             Normal or high birthweight     3.1800390   1.6067421    6.293884
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Low birth weight             Normal or high birthweight     3.3473837   1.4589101    7.680376
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA          Low birth weight             Normal or high birthweight     2.8021953   1.4167573    5.542444
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Low birth weight             Normal or high birthweight     3.6666667   1.3459409    9.988882
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH     Low birth weight             Normal or high birthweight     2.9284215   1.9129812    4.482874
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Low birth weight             Normal or high birthweight     2.0645272   1.1783290    3.617218
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA         Low birth weight             Normal or high birthweight     1.4247444   0.9417483    2.155455
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Low birth weight             Normal or high birthweight     1.1254263   0.6993674    1.811043
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA      Low birth weight             Normal or high birthweight     5.0806452   2.3641232   10.918617
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA          Low birth weight             Normal or high birthweight     2.1109691   1.7698992    2.517765
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Low birth weight             Normal or high birthweight     2.8025838   2.0466523    3.837719
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH     Low birth weight             Normal or high birthweight     1.7793885   1.6408235    1.929655
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   Normal or high birthweight     1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH     Low birth weight             Normal or high birthweight     1.7399462   1.4979080    2.021094


### Parameter: PAR


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.0419895    0.0134209   0.0705580
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0518079    0.0191404   0.0844754
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.0351767    0.0070128   0.0633405
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.0164888    0.0003830   0.0325945
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0582304    0.0329024   0.0835585
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0042565    0.0003733   0.0081398
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0539658    0.0501042   0.0578275
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0231769    0.0117483   0.0346055
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0706592    0.0641045   0.0772140
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0369342    0.0301400   0.0437284
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0666341    0.0619996   0.0712685
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0359397    0.0205918   0.0512876
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0143217   -0.0015134   0.0301567
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0117480   -0.0051602   0.0286563
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0102525   -0.0151010   0.0356060
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.0164559    0.0056438   0.0272679
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0136165   -0.0183822   0.0456151
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0187633    0.0060813   0.0314454
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0092351    0.0003188   0.0181513
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0014002   -0.0023424   0.0051429
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0020536    0.0003818   0.0037255
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0286372    0.0234223   0.0338520
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0040819    0.0005184   0.0076455
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0212785    0.0175887   0.0249684
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0084539    0.0029670   0.0139408
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.0311298    0.0051071   0.0571525
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.0131957   -0.0003746   0.0267661
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0174295    0.0017191   0.0331399
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.0588235    0.0106190   0.1070281
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.0325714    0.0145039   0.0506390
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.0180633    0.0016105   0.0345161
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0068287    0.0006907   0.0129668
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0047650   -0.0150702   0.0246001
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0110024    0.0022289   0.0197759
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.0155376    0.0107630   0.0203123
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0081445    0.0037128   0.0125762
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.0483171    0.0409234   0.0557107
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.0329559    0.0231227   0.0427891


### Parameter: PAF


agecat      studyid                    country        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH     Normal or high birthweight   NA                0.2529866    0.0734375   0.3977427
Birth       ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.3186970    0.1100685   0.4784163
Birth       ki0047075b-MAL-ED          NEPAL          Normal or high birthweight   NA                0.2954839    0.0513552   0.4767873
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   Normal or high birthweight   NA                0.2363388   -0.0032827   0.4187297
Birth       ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2170983    0.1207490   0.3028894
Birth       ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.2163234    0.0124121   0.3781323
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.3383604    0.3167758   0.3592631
Birth       ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.0912589    0.0457184   0.1346261
Birth       ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.3992634    0.3663886   0.4304325
Birth       ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.2374108    0.1961970   0.2765114
Birth       kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.6950560    0.6621782   0.7247340
Birth       kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.6818556    0.3268243   0.8496442
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.1145733   -0.0183335   0.2301339
6 months    ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.0883278   -0.0465300   0.2058075
6 months    ki1000109-EE               PAKISTAN       Normal or high birthweight   NA                0.0786720   -0.1378026   0.2539608
6 months    ki1000304b-SAS-CompFeed    INDIA          Normal or high birthweight   NA                0.1328511    0.0279113   0.2264624
6 months    ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.1514831   -0.2818005   0.4383049
6 months    ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.4550109    0.1324213   0.6576528
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.3144315   -0.0236199   0.5408411
6 months    ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0249011   -0.0438316   0.0891081
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0640518    0.0109195   0.1143300
6 months    ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.2232412    0.1837269   0.2608428
6 months    ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.0688247    0.0075580   0.1263093
6 months    kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2509425    0.2086852   0.2909432
6 months    kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1574686    0.0419695   0.2590432
24 months   ki0047075b-MAL-ED          INDIA          Normal or high birthweight   NA                0.2634061    0.0294764   0.4409507
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Normal or high birthweight   NA                0.2134267   -0.0199247   0.3933890
24 months   ki1000108-IRC              INDIA          Normal or high birthweight   NA                0.2288321    0.0090477   0.3998703
24 months   ki1017093-NIH-Birth        BANGLADESH     Normal or high birthweight   NA                0.5000000   -0.0044188   0.7510999
24 months   ki1017093b-PROVIDE         BANGLADESH     Normal or high birthweight   NA                0.2896352    0.1239865   0.4239608
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Normal or high birthweight   NA                0.2063226    0.0037920   0.3676784
24 months   ki1101329-Keneba           GAMBIA         Normal or high birthweight   NA                0.0658126    0.0054411   0.1225195
24 months   ki1126311-ZVITAMBO         ZIMBABWE       Normal or high birthweight   NA                0.0263955   -0.0898367   0.1302314
24 months   ki1135781-COHORTS          GUATEMALA      Normal or high birthweight   NA                0.2780220    0.0514908   0.4504510
24 months   ki1135781-COHORTS          INDIA          Normal or high birthweight   NA                0.1710205    0.1188417   0.2201094
24 months   ki1135781-COHORTS          PHILIPPINES    Normal or high birthweight   NA                0.1196845    0.0542356   0.1806041
24 months   kiGH5241-JiVitA-3          BANGLADESH     Normal or high birthweight   NA                0.2209204    0.1870444   0.2533849
24 months   kiGH5241-JiVitA-4          BANGLADESH     Normal or high birthweight   NA                0.1628027    0.1125744   0.2101882
