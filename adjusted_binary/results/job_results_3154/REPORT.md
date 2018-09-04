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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/feded61d-5443-487c-b984-4e2a0ec069f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/feded61d-5443-487c-b984-4e2a0ec069f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/feded61d-5443-487c-b984-4e2a0ec069f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/feded61d-5443-487c-b984-4e2a0ec069f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0281250   0.0099871   0.0462629
Birth       ki1000108-IRC              INDIA         Low birth weight             NA                0.1060606   0.0316782   0.1804431
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0127502   0.0068870   0.0186134
Birth       ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.0694238   0.0280776   0.1107699
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0107473   0.0088996   0.0125950
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.1611635   0.1453373   0.1769897
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0049514   0.0030565   0.0068462
Birth       ki1135781-COHORTS          INDIA         Low birth weight             NA                0.1314747   0.1137521   0.1491974
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0018457   0.0002291   0.0034623
Birth       ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.1355932   0.0965193   0.1746672
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0051853   0.0037707   0.0065998
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.2344858   0.2248743   0.2440974
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.0237154   0.0049310   0.0424998
6 months    ki0047075b-MAL-ED          PERU          Low birth weight             NA                0.2941176   0.0771195   0.5111158
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0915390   0.0602101   0.1228679
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             NA                0.2895478   0.1531942   0.4259013
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0477244   0.0251437   0.0703051
6 months    ki1000108-IRC              INDIA         Low birth weight             NA                0.1968317   0.1053709   0.2882925
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1491097   0.1045720   0.1936475
6 months    ki1000109-EE               PAKISTAN      Low birth weight             NA                0.4013877   0.3219571   0.4808182
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0539807   0.0378121   0.0701493
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birth weight             NA                0.2310503   0.2001021   0.2619985
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0183118   0.0070463   0.0295773
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             NA                0.0765287   0.0373820   0.1156755
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0216052   0.0144197   0.0287907
6 months    ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.1088998   0.0703127   0.1474868
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0257085   0.0220544   0.0293627
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.1550460   0.1338497   0.1762422
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0861222   0.0653890   0.1068554
6 months    ki1135781-COHORTS          GUATEMALA     Low birth weight             NA                0.3734380   0.2768291   0.4700468
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0219477   0.0179120   0.0259835
6 months    ki1135781-COHORTS          INDIA         Low birth weight             NA                0.1285312   0.1110906   0.1459719
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0359920   0.0285728   0.0434112
6 months    ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.1717037   0.1299191   0.2134883
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0198298   0.0169164   0.0227433
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.1341577   0.1255254   0.1427899
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0272049   0.0197632   0.0346465
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             NA                0.1328972   0.1094904   0.1563040
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0909274   0.0472528   0.1346019
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birth weight             NA                0.2666670   0.1487812   0.3845528
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.1081081   0.0632608   0.1529555
24 months   ki0047075b-MAL-ED          INDIA         Low birth weight             NA                0.1714286   0.0462846   0.2965725
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.2948180   0.2455360   0.3441001
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             NA                0.6081516   0.4673371   0.7489660
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0650244   0.0387714   0.0912773
24 months   ki1000108-IRC              INDIA         Low birth weight             NA                0.2626459   0.1575730   0.3677188
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.1281344   0.0578073   0.1984615
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birth weight             NA                0.3960671   0.2715034   0.5206308
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0594628   0.0375560   0.0813697
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birth weight             NA                0.1610651   0.1026171   0.2195131
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0311965   0.0139639   0.0484290
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             NA                0.1784371   0.1109599   0.2459143
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0665975   0.0530692   0.0801257
24 months   ki1101329-Keneba           GAMBIA        Low birth weight             NA                0.2854273   0.2290927   0.3417619
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.2460914   0.2019220   0.2902608
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             NA                0.4737949   0.3842182   0.5633717
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.3886133   0.3493327   0.4278940
24 months   ki1135781-COHORTS          GUATEMALA     Low birth weight             NA                0.7140895   0.6026672   0.8255117
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1441763   0.1333285   0.1550241
24 months   ki1135781-COHORTS          INDIA         Low birth weight             NA                0.3263210   0.2986758   0.3539662
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2581828   0.2399100   0.2764557
24 months   ki1135781-COHORTS          PHILIPPINES   Low birth weight             NA                0.4545278   0.3993655   0.5096901
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0934201   0.0848758   0.1019645
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             NA                0.2598899   0.2438171   0.2759627
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0681533   0.0576292   0.0786773
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             NA                0.1531603   0.1292312   0.1770893


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
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1553341   0.1465480   0.1641203
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0902171   0.0800344   0.1003999


### Parameter: RR


agecat      studyid                    country       intervention_level           baseline_level                 estimate     ci_lower     ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------------------  ----------  -----------  -----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     3.771044    1.4543975     9.777775
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     5.444909    2.5651095    11.557805
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight    14.995701   12.3027414    18.278126
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight    26.553250   17.6981262    39.838967
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight    73.464407   29.2170860   184.721332
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight    45.221423   34.3895369    59.465096
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki0047075b-MAL-ED          PERU          Low birth weight             Normal or high birthweight    12.401961    4.2012963    36.609803
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             Normal or high birthweight     3.163109    1.7676414     5.660229
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     4.124345    2.1256919     8.002205
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN      Low birth weight             Normal or high birthweight     2.691895    1.8827316     3.848821
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low birth weight             Normal or high birthweight     4.280238    3.1772538     5.766124
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             Normal or high birthweight     4.179213    1.8807684     9.286535
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     5.040433    3.1075195     8.175642
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight     6.030921    4.9532850     7.343007
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Low birth weight             Normal or high birthweight     4.336142    3.0475254     6.169637
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight     5.856238    4.6646689     7.352187
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight     4.770612    3.4698500     6.558998
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight     6.765442    5.7731035     7.928353
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             Normal or high birthweight     4.885054    3.5290375     6.762115
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH    Low birth weight             Normal or high birthweight     2.932748    1.5321128     5.613822
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki0047075b-MAL-ED          INDIA         Low birth weight             Normal or high birthweight     1.585714    0.6848141     3.671784
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low birth weight             Normal or high birthweight     2.062803    1.5513420     2.742887
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1000108-IRC              INDIA         Low birth weight             Normal or high birthweight     4.039192    2.2881342     7.130296
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low birth weight             Normal or high birthweight     3.091030    1.6479289     5.797862
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low birth weight             Normal or high birthweight     2.708670    1.6191455     4.531336
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low birth weight             Normal or high birthweight     5.719786    2.9309018    11.162420
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA        Low birth weight             Normal or high birthweight     4.285859    3.2323174     5.682793
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low birth weight             Normal or high birthweight     1.925281    1.4919578     2.484457
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low birth weight             Normal or high birthweight     1.837532    1.5257654     2.213003
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA         Low birth weight             Normal or high birthweight     2.263346    2.0245809     2.530270
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low birth weight             Normal or high birthweight     1.760488    1.5314325     2.023804
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low birth weight             Normal or high birthweight     2.781948    2.4963940     3.100165
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000     1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low birth weight             Normal or high birthweight     2.247292    1.8052190     2.797622


### Parameter: PAR


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0133258   -0.0000892   0.0267408
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0060687    0.0018758   0.0102617
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0211399    0.0186761   0.0236036
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0260821    0.0221706   0.0299936
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131343    0.0090385   0.0172301
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0988837    0.0942819   0.1034854
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.0170253    0.0012242   0.0328265
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0222821    0.0051138   0.0394505
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0214114    0.0051647   0.0376582
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.1035784    0.0674329   0.1397240
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.0410419    0.0325365   0.0495474
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0138561    0.0038428   0.0238693
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0108585    0.0056735   0.0160435
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0159128    0.0130049   0.0188206
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0267183    0.0148144   0.0386222
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0216555    0.0177189   0.0255922
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0131453    0.0084724   0.0178182
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0408070    0.0373451   0.0442689
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0269061    0.0203796   0.0334325
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.0292649    0.0007909   0.0577390
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0100737   -0.0112967   0.0314441
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.0358271    0.0154947   0.0561595
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.0332557    0.0137835   0.0527280
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.0981430    0.0374713   0.1588147
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.0254592    0.0093629   0.0415555
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.0368969    0.0189372   0.0548567
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.0169680    0.0095329   0.0244031
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.0396229    0.0171230   0.0621229
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0325199    0.0188420   0.0461977
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.0358278    0.0295551   0.0421005
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0223658    0.0157146   0.0290170
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.0619140    0.0546774   0.0691506
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.0220639    0.0150811   0.0290466


### Parameter: PAF


agecat      studyid                    country       intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3214844   -0.0355573   0.5554244
Birth       ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.3224799    0.1017009   0.4889971
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.6629584    0.6107791   0.7081425
Birth       ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.8404508    0.7719960   0.8883530
Birth       ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.8767893    0.7188230   0.9460095
Birth       kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.9501745    0.9348936   0.9618690
6 months    ki0047075b-MAL-ED          PERU          Normal or high birthweight   NA                0.4178944    0.0126231   0.6568210
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1957646    0.0397473   0.3264329
6 months    ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3097013    0.0652640   0.4902172
6 months    ki1000109-EE               PAKISTAN      Normal or high birthweight   NA                0.4099062    0.2620841   0.5281160
6 months    ki1000304b-SAS-CompFeed    INDIA         Normal or high birthweight   NA                0.4319174    0.3365917   0.5135456
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.4307431    0.0990827   0.6403073
6 months    ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.3344816    0.1832079   0.4577386
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.3823231    0.3208516   0.4382307
6 months    ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.2367794    0.1334028   0.3278241
6 months    ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.4966489    0.4207908   0.5625720
6 months    ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.2675223    0.1771806   0.3479450
6 months    kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.6729736    0.6285742   0.7120656
6 months    kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.4972394    0.3825889   0.5905997
24 months   ki0047075b-MAL-ED          BANGLADESH    Normal or high birthweight   NA                0.2434844   -0.0154333   0.4363826
24 months   ki0047075b-MAL-ED          INDIA         Normal or high birthweight   NA                0.0852391   -0.1122687   0.2476750
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Normal or high birthweight   NA                0.1083552    0.0449340   0.1675648
24 months   ki1000108-IRC              INDIA         Normal or high birthweight   NA                0.3383772    0.1378378   0.4922710
24 months   ki1017093-NIH-Birth        BANGLADESH    Normal or high birthweight   NA                0.4337288    0.1307722   0.6310944
24 months   ki1017093b-PROVIDE         BANGLADESH    Normal or high birthweight   NA                0.2997950    0.1032121   0.4532855
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Normal or high birthweight   NA                0.5418577    0.2867244   0.7057318
24 months   ki1101329-Keneba           GAMBIA        Normal or high birthweight   NA                0.2030505    0.1156369   0.2818238
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Normal or high birthweight   NA                0.1386802    0.0567235   0.2135161
24 months   ki1135781-COHORTS          GUATEMALA     Normal or high birthweight   NA                0.0772200    0.0439519   0.1093304
24 months   ki1135781-COHORTS          INDIA         Normal or high birthweight   NA                0.1990387    0.1648405   0.2318366
24 months   ki1135781-COHORTS          PHILIPPINES   Normal or high birthweight   NA                0.0797216    0.0558606   0.1029796
24 months   kiGH5241-JiVitA-3          BANGLADESH    Normal or high birthweight   NA                0.3985861    0.3553362   0.4389343
24 months   kiGH5241-JiVitA-4          BANGLADESH    Normal or high birthweight   NA                0.2445640    0.1666401   0.3152016
