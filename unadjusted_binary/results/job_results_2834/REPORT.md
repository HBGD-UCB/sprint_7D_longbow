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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        birthwt                       sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      201     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        1     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       47     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1        8     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      179     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0        4     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        4     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      168     206
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        4     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       31     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        3     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      154     173
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        1     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       13     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        5     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      267     287
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        2     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                     0       12     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                     1        6     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      244     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       16     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        2     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      113     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        4     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        3     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0       77      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1        0      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight           0      311     386
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight           1        9     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                     0       59     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                     1        7     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight           0        4       4
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight           1        0       4
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                     0        0       4
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                     1        0       4
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0        6       7
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                     0        1       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                     1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           0      147     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     0       29     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     1       11     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0       18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     0        8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     1        0      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1383    1541
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       18    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                     0      129    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                     1       11    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        5      13
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        3      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        5      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight           0      106     115
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight           1        1     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                     0        6     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                     1        2     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight           0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight           1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                     0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                     1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                     0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                     1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0    13879   13884
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                     0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                     1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0    11800   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      129   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     0     1589   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     1      312   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      713     784
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1        4     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                     0       61     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                     1        6     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     5242    6638
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight           1       26    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                     0     1190    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                     1      180    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     2704    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1        5    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     0      255    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     1       40    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0    22474   39224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1      114   39224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     0    12668   39224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     1     3968   39224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     1098    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1        4    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     0      418    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     1      124    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      184     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1        3     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       43     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1        5     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      188     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1        5     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       33     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        3     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      208     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        0     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       20     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        1     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      247     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        6     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                     0       12     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                     1        5     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      235     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0      116     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        4     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        5     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        1     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      297     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1       12     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight           0      323     405
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight           1       16     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                     0       54     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                     1       12     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight           0      410     744
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight           1       76     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                     0      146     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                     1      112     744
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           0       13      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight           1        2      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                     0        1      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                     1        1      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           0      948    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight           1       55    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     0      252    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                     1       71    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0      115     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1        3     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     0       50     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     1       10     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      440     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1        4     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     0      129     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     1       10     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      535     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     0      157     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     1       13     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0     1931    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       13    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0       63    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        4    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1537    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       34    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                     0      132    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                     1       22    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        1       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        0       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight           0       98     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight           1        2     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                     0        3     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                     1        1     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight           0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight           1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                     0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                     1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight           0       13      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight           1        0      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                     0        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                     1        0      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                     0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                     1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0    15518   15761
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1      243   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                     0        0   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                     1        0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0     7048    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1      187    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     0      873    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     1      157    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      642     771
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1       61     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                     0       42     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                     1       26     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     4895    6261
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight           1      110    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                     0     1093    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                     1      163    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     2330    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1       88    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     0      205    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     1       43    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0    20898   33478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1      422   33478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     0    10550   33478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     1     1608   33478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     5838    8076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1      165    8076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     0     1801    8076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     1      272    8076
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           0      150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight           1       15     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     0       33     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                     1       10     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           0      160     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight           1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                     1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           0      165     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight           1       20     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                     0       29     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                     1        6     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           0      196     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight           1        5     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                     0       19     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                     1        1     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight           0      180     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight           1        6     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                     0        4     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                     1        8     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           0      201     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight           1       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                     1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0       76     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1       27     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        4     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           0      232     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight           1       97     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                     1       26     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight           0      317     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight           1       22     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                     0       50     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                     1       18     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           0       75     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight           1       11     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     0       31     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                     1       20     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           0      412     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight           1       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     0      116     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                     1       23     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           0      376     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight           1       12     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     0      103     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                     1       23     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                     1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight           0     1218    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight           1       86    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                     0       98    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                     1       34    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight           1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                     0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                     1        1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight           0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight           1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                     0        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                     1        1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight           0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight           1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                     0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                     1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight           0     3970    4035
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight           1       65    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                     0        0    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                     1        0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           0      270     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight           1       92     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     0       55     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                     1       38     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           0      361     653
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight           1      231     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                     0       17     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                     1       44     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight           0     3381    4861
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight           1      568    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                     0      605    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                     1      307    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           0     1623    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight           1      571    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     0      108    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                     1      104    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           0     9717   17163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight           1     1004   17163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     0     4780   17163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                     1     1662   17163
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           0     5504    8014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight           1      401    8014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     0     1787    8014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                     1      322    8014


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
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







# Results Detail

## Results Plots
![](/tmp/30512e57-5053-460d-ab2a-c0ebaabe126f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30512e57-5053-460d-ab2a-c0ebaabe126f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30512e57-5053-460d-ab2a-c0ebaabe126f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30512e57-5053-460d-ab2a-c0ebaabe126f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0281250   0.0099871   0.0462629
Birth       ki1000108-IRC              INDIA         Low birth weight             NA                0.1060606   0.0316782   0.1804431
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0128480   0.0069490   0.0187470
Birth       ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.0785714   0.0339865   0.1231564
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0108140   0.0089579   0.0126700
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.1641241   0.1474735   0.1807747
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0049355   0.0030429   0.0068280
Birth       ki1135781-COHORTS          INDIA         Low birth weight             NA                0.1313869   0.1134969   0.1492768
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0018457   0.0002291   0.0034623
Birth       ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.1355932   0.0965193   0.1746672
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0050469   0.0036790   0.0064149
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.2385189   0.2288163   0.2482214
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.0237154   0.0049310   0.0424998
6 months    ki0047075b-MAL-ED          PERU          Low birth weight             NA                0.2941176   0.0771195   0.5111158
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0917431   0.0604135   0.1230727
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             NA                0.2857143   0.1489053   0.4225233
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0471976   0.0245957   0.0697996
6 months    ki1000108-IRC              INDIA         Low birth weight             NA                0.1818182   0.0886524   0.2749840
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1563786   0.1106496   0.2021076
6 months    ki1000109-EE               PAKISTAN      Low birth weight             NA                0.4341085   0.3484632   0.5197538
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0548355   0.0386045   0.0710665
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birth weight             NA                0.2198142   0.1864957   0.2531328
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0183486   0.0070732   0.0296241
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             NA                0.0764706   0.0364945   0.1164467
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0216423   0.0144447   0.0288398
6 months    ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.1428571   0.0875742   0.1981401
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0258466   0.0221900   0.0295031
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.1524272   0.1304751   0.1743793
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0867710   0.0659486   0.1075933
6 months    ki1135781-COHORTS          GUATEMALA     Low birth weight             NA                0.3823529   0.2667742   0.4979317
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0219780   0.0179159   0.0260401
6 months    ki1135781-COHORTS          INDIA         Low birth weight             NA                0.1297771   0.1111904   0.1483638
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0363937   0.0289281   0.0438593
6 months    ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.1733871   0.1262608   0.2205134
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0197936   0.0168924   0.0226949
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.1322586   0.1234453   0.1410719
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0274863   0.0199140   0.0350585
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             NA                0.1312108   0.1076578   0.1547639
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0909091   0.0469387   0.1348794
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birth weight             NA                0.2325581   0.1059829   0.3591334
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.1081081   0.0632608   0.1529555
24 months   ki0047075b-MAL-ED          INDIA         Low birth weight             NA                0.1714286   0.0462846   0.2965725
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2948328   0.2454963   0.3441694
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             NA                0.6046512   0.4583186   0.7509838
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0648968   0.0386410   0.0911525
24 months   ki1000108-IRC              INDIA         Low birth weight             NA                0.2647059   0.1597178   0.3696940
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1279070   0.0570605   0.1987534
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birth weight             NA                0.3921569   0.2576701   0.5266436
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0593607   0.0372120   0.0815095
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birth weight             NA                0.1654676   0.1036382   0.2272971
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0309278   0.0136850   0.0481706
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             NA                0.1825397   0.1150251   0.2500543
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0659509   0.0524751   0.0794268
24 months   ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.2575758   0.1829496   0.3322019
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.2541436   0.2092444   0.2990429
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.4086022   0.3085850   0.5086193
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.3902027   0.3508787   0.4295267
24 months   ki1135781-COHORTS          GUATEMALA     Low birth weight             NA                0.7213115   0.6087119   0.8339111
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1438339   0.1328878   0.1547800
24 months   ki1135781-COHORTS          INDIA         Low birth weight             NA                0.3366228   0.3059504   0.3672952
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2602552   0.2418915   0.2786190
24 months   ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.4905660   0.4232586   0.5578735
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0936480   0.0849473   0.1023486
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.2579944   0.2410545   0.2749344
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0679086   0.0573552   0.0784619
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             NA                0.1526790   0.1284184   0.1769396


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         NA                   NA                0.0414508   0.0215399   0.0613617
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0188189   0.0120322   0.0256057
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318872   0.0289588   0.0348156
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0310334   0.0268616   0.0352053
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0149800   0.0106354   0.0193246
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1040689   0.0993991   0.1087387
6 months    ki0047075b-MAL-ED          PERU          NA                   NA                0.0407407   0.0171167   0.0643648
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0691358   0.0443985   0.0938731
6 months    ki1000109-EE               PAKISTAN      NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0950226   0.0765320   0.1135132
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0324638   0.0240979   0.0408297
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0416213   0.0373152   0.0459273
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1128405   0.0904926   0.1351883
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0436033   0.0385446   0.0486620
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0491373   0.0409307   0.0573439
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606368   0.0567889   0.0644847
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0541109   0.0456917   0.0625302
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1201923   0.0758932   0.1644914
24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.1181818   0.0754264   0.1609372
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0982801   0.0693231   0.1272371
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2262774   0.1559553   0.2965995
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0835655   0.0692473   0.0978836
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2857143   0.2441594   0.3272692
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4211332   0.3832346   0.4590318
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1800041   0.1692028   0.1908054
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2805486   0.2625932   0.2985040
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1553342   0.1465480   0.1641203
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0902171   0.0800344   0.1003999


### Parameter: RR


agecat      studyid                    country       intervention_level           baseline_level                 estimate     ci_lower     ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------------------  ----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     3.771044    1.4543975     9.777775
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     6.115476    2.9472993    12.689261
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight    15.177030   12.4336447    18.525723
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight    26.620999   17.7215809    39.989525
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight    73.464407   29.2170860   184.721332
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight    47.260213   35.9860060    62.066565
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki0047075b-MAL-ED          PERU          Low birth weight             Normal or high birthweight    12.401961    4.2012963    36.609803
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             Normal or high birthweight     3.114286    1.7295651     5.607638
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     3.852273    1.9104015     7.768003
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN      Low birth weight             Normal or high birthweight     2.776010    1.9508399     3.950211
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birth weight             Normal or high birthweight     4.008612    2.9791380     5.393833
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             Normal or high birthweight     4.167647    1.8599751     9.338448
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     6.600840    3.9627770    10.995091
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight     5.897383    4.8193084     7.216623
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Low birth weight             Normal or high birthweight     4.406461    2.9955222     6.481974
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight     5.904857    4.6737142     7.460305
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight     4.764204    3.3892547     6.696943
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight     6.681880    5.6940135     7.841133
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             Normal or high birthweight     4.773688    3.4371505     6.629938
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birth weight             Normal or high birthweight     2.558139    1.2350971     5.298432
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birth weight             Normal or high birthweight     1.585714    0.6848141     3.671784
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             Normal or high birthweight     2.050827    1.5280815     2.752400
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     4.078877    2.3146558     7.187780
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birth weight             Normal or high birthweight     3.065954    1.5982290     5.881555
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birth weight             Normal or high birthweight     2.787493    1.6439224     4.726572
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             Normal or high birthweight     5.902116    3.0230430    11.523150
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     3.905567    2.7397661     5.567430
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight     1.607761    1.1888272     2.174323
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birth weight             Normal or high birthweight     1.848556    1.5351012     2.226015
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight     2.340358    2.0783737     2.635367
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight     1.884942    1.6154489     2.199393
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight     2.754938    2.4601856     3.085005
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             Normal or high birthweight     2.248303    1.8004191     2.807605


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0133258   -0.0000892   0.0267408
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0059710    0.0017776   0.0101643
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0210732    0.0186080   0.0235384
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0260980    0.0221863   0.0300097
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131343    0.0090385   0.0172301
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0990220    0.0944148   0.1036292
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.0170253    0.0012242   0.0328265
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0220780    0.0049079   0.0392481
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0219382    0.0055802   0.0382961
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.0963096    0.0600543   0.1325649
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0401871    0.0319661   0.0484082
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0138192    0.0037782   0.0238602
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0108215    0.0055838   0.0160592
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0157747    0.0128585   0.0186909
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0260695    0.0141390   0.0380000
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0216252    0.0176616   0.0255888
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0127436    0.0080550   0.0174321
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0408432    0.0373817   0.0443047
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0266247    0.0200606   0.0331887
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0292832    0.0005012   0.0580652
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0100737   -0.0112967   0.0314441
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0358123    0.0153126   0.0563120
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0333833    0.0139026   0.0528641
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0983704    0.0378484   0.1588924
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0255613    0.0093115   0.0418110
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0371656    0.0191759   0.0551552
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0176145    0.0100782   0.0251509
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0315706    0.0084413   0.0547000
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0309305    0.0175576   0.0443035
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0361702    0.0297041   0.0426364
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0202934    0.0136152   0.0269716
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0616862    0.0543461   0.0690262
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0223086    0.0152910   0.0293261


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3214844   -0.0355573   0.5554244
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.3172857    0.0954394   0.4847235
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.6608676    0.6084475   0.7062699
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.8409632    0.7725567   0.8887956
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.8767893    0.7188230   0.9460095
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.9515040    0.9367189   0.9628347
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.4178944    0.0126231   0.6568210
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1939712    0.0379931   0.3246592
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3173198    0.0704719   0.4986142
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.3811400    0.2313258   0.5017555
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.4229217    0.3300385   0.5029276
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.4295971    0.0969022   0.6397296
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.3333409    0.1802996   0.4578088
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3790059    0.3173591   0.4350856
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2310296    0.1271465   0.3225489
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.4959546    0.4191970   0.5625681
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2593463    0.1683110   0.3404170
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.6735710    0.6293439   0.7125209
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.4920389    0.3751952   0.5870318
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.2436364   -0.0193728   0.4387863
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0852391   -0.1122687   0.2476750
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1083105    0.0443587   0.1679826
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3396755    0.1389587   0.4936034
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.4347337    0.1302801   0.6326105
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.3009971    0.1009577   0.4565272
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.5458027    0.2895240   0.7096380
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2107873    0.1224150   0.2902606
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1104972    0.0262516   0.1874542
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0734459    0.0408938   0.1048932
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.2009411    0.1655984   0.2347869
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0723347    0.0483505   0.0957143
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.3971192    0.3528353   0.4383727
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.2472764    0.1688422   0.3183090
