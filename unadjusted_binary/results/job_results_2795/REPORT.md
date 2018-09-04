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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        birthwt                       stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      186     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       16     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       24     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       31     257
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      168     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        2     191
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      154     206
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       18     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       19     206
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       15     206
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      148     173
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        7     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0        7     173
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1       11     173
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      251     287
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       18     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                    0        2     287
Birth       ki0047075b-MAL-ED          PERU                           Low birth weight                    1       16     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      227     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       17     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0        7     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1       11     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      104     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        1     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        6     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0       70      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0        4      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1        6      90
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          0      294     386
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight          1       26     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                    0       47     386
Birth       ki1000108-IRC              INDIA                          Low birth weight                    1       19     386
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          0        2       4
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight          1        2       4
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                    0        0       4
Birth       ki1000109-EE               PAKISTAN                       Low birth weight                    1        0       4
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        1       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        1       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      125     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1       22     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1       24     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0       17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1        3      27
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1360    1541
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1       41    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                    0       99    1541
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight                    1       41    1541
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        5      13
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        2      13
Birth       ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        6      13
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0      105     115
Birth       ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        2     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                    0        5     115
Birth       ki1114097-CMIN             BRAZIL                         Low birth weight                    1        3     115
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight          0       10      10
Birth       ki1114097-CMIN             PERU                           Normal or high birthweight          1        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                    0        0      10
Birth       ki1114097-CMIN             PERU                           Low birth weight                    1        0      10
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
Birth       ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1       33   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0    11231   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      698   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0     1167   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      734   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      695     784
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1       22     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       43     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       24     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     5059    6638
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      209    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                    0      787    6638
Birth       ki1135781-COHORTS          INDIA                          Low birth weight                    1      583    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     2643    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1       66    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      181    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      114    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    20630   39224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     1958   39224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     5920   39224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1    10716   39224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0      976    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1      126    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      174    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      368    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0      163     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       24     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       29     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       19     235
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      194     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        5     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        9     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      161     229
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       32     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       26     229
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       10     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      202     229
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1        6     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       16     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        5     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      207     270
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       46     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    0        5     270
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight                    1       12     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      193     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       45     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       11     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        5     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0      103     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       17     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        2     126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        4     126
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      243     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1       84     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       27     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          0      268     405
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight          1       71     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                    0       38     405
6 months    ki1000108-IRC              INDIA                          Low birth weight                    1       28     405
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          0      292     744
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight          1      194     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    0       66     744
6 months    ki1000109-EE               PAKISTAN                       Low birth weight                    1      192     744
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          0       10      17
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight          1        5      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    0        0      17
6 months    ki1000109-ResPak           PAKISTAN                       Low birth weight                    1        2      17
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          0      803    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight          1      200    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    0      146    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                    1      177    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       98     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       20     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0       35     178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       25     178
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      402     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1       42     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0       87     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       52     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      467     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       78     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0       98     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       72     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0     1770    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1      174    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0       47    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1       20    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0     1390    1725
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      181    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    0       91    1725
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight                    1       63    1725
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        0       1
6 months    ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       1
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          0       91     104
6 months    ki1114097-CMIN             BRAZIL                         Normal or high birthweight          1        9     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    0        3     104
6 months    ki1114097-CMIN             BRAZIL                         Low birth weight                    1        1     104
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight          1        0       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    0        1       2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                    1        0       2
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          0       12      14
6 months    ki1114097-CMIN             PERU                           Normal or high birthweight          1        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                    0        1      14
6 months    ki1114097-CMIN             PERU                           Low birth weight                    1        0      14
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
6 months    ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0    14773   15761
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      988   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0     6291    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      944    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0      602    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1      428    8265
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      446     771
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1      257     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0       16     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       52     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     4360    6261
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight          1      645    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    0      741    6261
6 months    ki1135781-COHORTS          INDIA                          Low birth weight                    1      515    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0     1979    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1      439    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0      125    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      123    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0    18320   33478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     3000   33478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     6742   33478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     5416   33478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     4984    8076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1     1019    8076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0     1077    8076
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1      996    8076
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          0       97     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight          1       68     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    0       16     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                    1       27     208
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          0      155     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight          1        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    0        8     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                    1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          0      111     220
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight          1       74     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    0       18     220
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight                    1       17     220
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          0      165     221
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight          1       36     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    0       11     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight                    1        9     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          0      123     198
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight          1       63     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    0        2     198
24 months   ki0047075b-MAL-ED          PERU                           Low birth weight                    1       10     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          0      144     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight          1       80     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    0       10     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                    1        4     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0       40     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1       63     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        1     108
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        4     108
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          0      100     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight          1      229     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    0        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                    1       37     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          0      211     407
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight          1      128     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                    0       27     407
24 months   ki1000108-IRC              INDIA                          Low birth weight                    1       41     407
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          0       46     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight          1       40     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    0        9     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                    1       42     137
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          0      318     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight          1      120     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    0       69     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                    1       70     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          0      315     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight          1       73     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    0       67     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                    1       59     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                    1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          0      891    1436
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight          1      413    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    0       53    1436
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight                    1       79    1436
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight          1        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    0        0       1
24 months   ki1114097-CMIN             BANGLADESH                     Low birth weight                    1        1       1
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          0        3       4
24 months   ki1114097-CMIN             PERU                           Normal or high birthweight          1        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                    0        0       4
24 months   ki1114097-CMIN             PERU                           Low birth weight                    1        1       4
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          0        2       2
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight          1        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                    0        0       2
24 months   ki1114097-CONTENT          PERU                           Low birth weight                    1        0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          0     3691    4035
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight          1      344    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    0        0    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birth weight                    1        0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          0      140     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight          1      222     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    0       19     455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                    1       74     455
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          0      132     653
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight          1      460     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    0        3     653
24 months   ki1135781-COHORTS          GUATEMALA                      Low birth weight                    1       58     653
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          0     2326    4861
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight          1     1623    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    0      297    4861
24 months   ki1135781-COHORTS          INDIA                          Low birth weight                    1      615    4861
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          0      888    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight          1     1306    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    0       38    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                    1      174    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          0     6468   17163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight          1     4253   17163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    0     2271   17163
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                    1     4171   17163
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          0     3979    8014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight          1     1926    8014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    0      905    8014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                    1     1204    8014


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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2e8b03ac-9850-4a72-a7d3-1193fa8f56ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e8b03ac-9850-4a72-a7d3-1193fa8f56ec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e8b03ac-9850-4a72-a7d3-1193fa8f56ec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e8b03ac-9850-4a72-a7d3-1193fa8f56ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0792079   0.0418929   0.1165230
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.5636364   0.4323145   0.6949582
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1046512   0.0587938   0.1505085
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4411765   0.2738715   0.6084814
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0451613   0.0123752   0.0779474
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.6111111   0.3852489   0.8369733
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0696721   0.0376662   0.1016781
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.6111111   0.3854716   0.8367506
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0812500   0.0512759   0.1112241
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                0.2878788   0.1785030   0.3972546
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1496599   0.0881093   0.2112105
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.6000000   0.4488812   0.7511188
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0292648   0.0204362   0.0380934
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2928571   0.2174510   0.3682633
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0585129   0.0543008   0.0627249
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.3861126   0.3642262   0.4079990
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0306834   0.0180520   0.0433148
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.3582090   0.2433267   0.4730912
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0396735   0.0344022   0.0449448
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4255474   0.3993643   0.4517306
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0243632   0.0185566   0.0301699
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3864407   0.3308657   0.4420156
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0866832   0.0805754   0.0927910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.6441452   0.6328997   0.6553907
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1143376   0.0871152   0.1415599
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6789668   0.6167319   0.7412017
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1283422   0.0803013   0.1763831
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.3958333   0.2571935   0.5344732
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1658031   0.1132195   0.2183867
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2777778   0.1311449   0.4244106
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0288462   0.0060504   0.0516419
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2380952   0.0555315   0.4206590
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1818182   0.1342039   0.2294325
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.7058824   0.4888842   0.9228805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1890756   0.1392303   0.2389209
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3125000   0.0849347   0.5400653
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2568807   0.2094611   0.3043004
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6428571   0.4977493   0.7879650
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2094395   0.1660703   0.2528088
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.4242424   0.3048602   0.5436247
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3991770   0.3375195   0.4608344
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.7441860   0.6687914   0.8195807
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1994018   0.1813440   0.2174596
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5479876   0.4971334   0.5988418
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1694915   0.1016061   0.2373769
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4166667   0.2915692   0.5417642
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0945946   0.0673498   0.1218394
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.3741007   0.2935888   0.4546126
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1431193   0.1136979   0.1725406
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4235294   0.3492005   0.4978583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0895062   0.0768129   0.1021994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.2985075   0.1889082   0.4081068
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1152132   0.0994205   0.1310059
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.4090909   0.3314154   0.4867664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1304768   0.1227150   0.1382386
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4155340   0.3854359   0.4456321
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.3655761   0.3299531   0.4011991
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.7647059   0.6638205   0.8655913
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1288711   0.1195879   0.1381544
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4100318   0.3828292   0.4372345
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1815550   0.1661876   0.1969224
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.4959677   0.4337292   0.5582063
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1407129   0.1330827   0.1483432
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4454680   0.4316512   0.4592848
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1697485   0.1537955   0.1857014
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4804631   0.4439524   0.5169738
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4121212   0.3368361   0.4874063
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6279070   0.4830852   0.7727287
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4000000   0.3292450   0.4707550
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4857143   0.3197571   0.6516715
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1791045   0.1259754   0.2322335
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.4500000   0.2314728   0.6685272
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6960486   0.6462799   0.7458174
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.8604651   0.7567585   0.9641717
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3775811   0.3259123   0.4292500
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.6029412   0.4865037   0.7193786
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4651163   0.3593127   0.5709198
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.8235294   0.7185197   0.9285391
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2739726   0.2321686   0.3157766
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.5035971   0.4204062   0.5867881
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1881443   0.1492183   0.2270704
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4682540   0.3810415   0.5554664
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3167178   0.2914599   0.3419757
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5984848   0.5148302   0.6821395
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6132597   0.5630366   0.6634828
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7956989   0.7136649   0.8777330
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4109901   0.3956430   0.4263372
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.6743421   0.6439251   0.7047591
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5952598   0.5747169   0.6158027
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8207547   0.7691130   0.8723965
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3966981   0.3811034   0.4122927
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.6474697   0.6292662   0.6656733
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3261643   0.3053176   0.3470109
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.5708867   0.5354261   0.6063473


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1601942   0.1099849   0.2104035
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1165803   0.0845240   0.1486366
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586735   0.0422124   0.0751345
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1193130   0.1115144   0.1271117
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0599201   0.0514314   0.0684088
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3231185   0.3154668   0.3307702
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1834061   0.1331729   0.2336393
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0480349   0.0202781   0.0757918
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2444444   0.2025380   0.2863509
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2843137   0.2660295   0.3025980
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2528090   0.1887805   0.3168375
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964694   0.0835627   0.1093762
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1414493   0.1249994   0.1578992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660012   0.1579791   0.1740234
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4007782   0.3661645   0.4353920
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1852739   0.1756495   0.1948983
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2108027   0.1953170   0.2262884
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513890   0.2432761   0.2595019
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2495047   0.2333837   0.2656257
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4567308   0.3888728   0.5245887
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4136364   0.3484106   0.4788621
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2036199   0.1504082   0.2568316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4152334   0.3673018   0.4631651
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5985401   0.5161555   0.6809248
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3426184   0.3180636   0.3671732
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6505495   0.6066910   0.6944079
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4603991   0.4463860   0.4744122
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6151288   0.5956828   0.6345749
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4908233   0.4776585   0.5039881
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3905665   0.3718944   0.4092386


### Parameter: RR


agecat      studyid                    country                        intervention_level           baseline_level                 estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     7.115909    4.2070621   12.035991
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     4.215686    2.3615293    7.525636
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    13.531746    5.9918281   30.559645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     8.771242    4.8651927   15.813286
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     3.543124    2.0863889    6.016963
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     4.009091    3.2047488    5.015310
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    10.007143    6.7306832   14.878565
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     6.598763    6.0210301    7.231932
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    11.674356    6.9278186   19.672942
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    10.726239    9.2652530   12.417600
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    15.861633   12.0075869   20.952704
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     7.431028    6.9193866    7.980501
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     5.938265    4.5889862    7.684266
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     3.084201    1.8471873    5.149612
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.675347    0.9050172    3.101364
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     8.253968    2.7444706   24.823729
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     3.882353    2.5924545    5.814052
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     1.652778    0.7618528    3.585567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     2.502551    1.8695840    3.349816
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     2.025608    1.4283085    2.872691
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.864301    1.5498588    2.242539
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.748158    2.4323082    3.105023
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.458333    1.4902204    4.055375
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     3.954779    2.7604179    5.665909
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     2.959276    2.2583822    3.877694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     3.335049    2.2499175    4.943537
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     3.550728    2.8094001    4.487674
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     3.184733    2.8997918    3.497674
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.091783    1.7753626    2.464599
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     3.181720    2.8849030    3.509075
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.731777    2.3480499    3.178214
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     3.165793    2.9852569    3.357246
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     2.830442    2.5057064    3.197262
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     1.523598    1.1352494    2.044793
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.214286    0.8264686    1.784084
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     2.512500    1.4222349    4.438547
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     1.236214    1.0745651    1.422180
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     1.596852    1.2603004    2.023277
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     1.770588    1.3641527    2.298117
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     1.838129    1.4679526    2.301655
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     2.488802    1.8840487    3.287672
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     1.889647    1.6087586    2.219579
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     1.297491    1.1374250    1.480083
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     1.640775    1.5474539    1.739723
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     1.378818    1.2833368    1.481402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     1.632147    1.5596393    1.708026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     1.750304    1.6042420    1.909665


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1036715    0.0656461   0.1416968
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0555430    0.0221928   0.0888932
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0588850    0.0238029   0.0939670
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0371981    0.0143680   0.0600282
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0353303    0.0144401   0.0562205
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0963294    0.0663945   0.1262644
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0239474    0.0160804   0.0318144
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0450302    0.0414357   0.0486246
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0279901    0.0162136   0.0397666
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0796395    0.0729686   0.0863105
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0355569    0.0288515   0.0422623
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2364353    0.2296637   0.2432069
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1861490    0.1553293   0.2169688
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0546365    0.0216348   0.0876381
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0176030   -0.0074508   0.0426568
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0191888    0.0005850   0.0377925
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0329966    0.0123313   0.0536620
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0077748   -0.0073579   0.0229075
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0439323    0.0225131   0.0653515
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0350049    0.0129077   0.0571022
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1196402    0.0819587   0.1573218
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0849119    0.0668320   0.1029918
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0833175    0.0323466   0.1342883
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0666404    0.0441837   0.0890971
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0666709    0.0457443   0.0875976
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0069632    0.0029382   0.0109883
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0262360    0.0181292   0.0343429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0355244    0.0311511   0.0398976
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0352021    0.0228346   0.0475696
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0564028    0.0499976   0.0628080
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0292477    0.0223495   0.0361459
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1106760    0.1047445   0.1166075
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0797562    0.0683106   0.0912019
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0446096    0.0088284   0.0803907
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0136364   -0.0153641   0.0426369
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0245154    0.0017189   0.0473120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0190051    0.0046729   0.0333373
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0376523    0.0148521   0.0604525
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1334239    0.0707553   0.1960925
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0553168    0.0314976   0.0791361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0686650    0.0430363   0.0942937
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0259006    0.0168307   0.0349705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0372898    0.0164974   0.0580821
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0494090    0.0423938   0.0564241
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0198690    0.0143457   0.0253924
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0941252    0.0852744   0.1029760
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0644022    0.0531516   0.0756529


### Parameter: PAF


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5668843    0.3721358   0.7012265
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3467230    0.1319742   0.5083432
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.5659498    0.2429457   0.7511413
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.3480679    0.1383630   0.5067349
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3030556    0.1199070   0.4480907
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3916001    0.3248828   0.4517242
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4500357    0.3210645   0.5545074
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4348932    0.4057107   0.4626426
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4770481    0.2987381   0.6100192
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.6674840    0.6279692   0.7028017
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5934047    0.5094727   0.6629755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.7317294    0.7148100   0.7476450
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6194920    0.5353029   0.6884285
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2985947    0.1094388   0.4475737
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0959783   -0.0497298   0.2214613
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.3994755   -0.0166197   0.6452659
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1536050    0.0556376   0.2414094
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0394958   -0.0401773   0.1130663
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1460451    0.0728421   0.2134685
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1432019    0.0495261   0.2276453
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2306019    0.1519226   0.3019818
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.2986558    0.2399869   0.3527957
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3295669    0.1073213   0.4964811
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4133122    0.2778409   0.5233703
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3177982    0.2181869   0.4047179
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0721809    0.0304522   0.1121135
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1854802    0.1293699   0.2379743
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2140006    0.1886907   0.2385210
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0878344    0.0562361   0.1183747
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3044292    0.2716781   0.3357075
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1387444    0.1062928   0.1700177
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4402581    0.4183807   0.4613125
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3196583    0.2754988   0.3611262
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0976715    0.0150730   0.1733430
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0329670   -0.0398237   0.1006622
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1203980    0.0037939   0.2233538
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0265786    0.0060408   0.0466920
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0906774    0.0337683   0.1442347
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2229155    0.1042131   0.3258884
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1679885    0.0929463   0.2368223
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2673774    0.1649311   0.3572556
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0755960    0.0487619   0.1016732
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0573204    0.0242100   0.0893074
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1073177    0.0917645   0.1226046
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0323006    0.0231578   0.0413579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1917701    0.1729836   0.2101297
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1648944    0.1352604   0.1935129
