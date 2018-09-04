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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3a66543d-0169-45ea-98ee-3966bc65fe59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a66543d-0169-45ea-98ee-3966bc65fe59/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a66543d-0169-45ea-98ee-3966bc65fe59/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a66543d-0169-45ea-98ee-3966bc65fe59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0786853   0.0414076   0.1159630
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.5700248   0.4377552   0.7022944
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1052931   0.0594649   0.1511213
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.4349405   0.2680752   0.6018059
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0451613   0.0123752   0.0779474
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.6111111   0.3852489   0.8369733
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0696721   0.0376662   0.1016781
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.6111111   0.3854716   0.8367506
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0818009   0.0518474   0.1117544
Birth       ki1000108-IRC              INDIA                          Low birth weight             NA                0.2800514   0.1730756   0.3870271
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1498109   0.0883827   0.2112392
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5977770   0.4479665   0.7475875
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0293195   0.0204996   0.0381394
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.2686149   0.2105311   0.3266986
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0582817   0.0540842   0.0624792
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.3887355   0.3677559   0.4097152
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0304215   0.0177717   0.0430712
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.3591898   0.2624610   0.4559185
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0396402   0.0343877   0.0448927
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4256164   0.4008797   0.4503531
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0241605   0.0183956   0.0299255
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.3751240   0.3289497   0.4212982
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0876165   0.0814863   0.0937466
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.6427371   0.6315481   0.6539262
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1153910   0.0883154   0.1424665
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.6853757   0.6249849   0.7457666
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1293054   0.0812353   0.1773754
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.4227333   0.2864585   0.5590082
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.1661736   0.1136001   0.2187470
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.2749100   0.1279591   0.4218610
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0288462   0.0060504   0.0516419
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.2380952   0.0555315   0.4206590
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1818182   0.1342039   0.2294325
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             NA                0.7058824   0.4888842   0.9228805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.1890756   0.1392303   0.2389209
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             NA                0.3125000   0.0849347   0.5400653
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2572597   0.2098456   0.3046738
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.6391613   0.4938624   0.7844603
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2098574   0.1664903   0.2532245
6 months    ki1000108-IRC              INDIA                          Low birth weight             NA                0.4209189   0.3026997   0.5391380
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.3905269   0.3306560   0.4503978
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.7427668   0.6735207   0.8120129
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1980367   0.1802605   0.2158129
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.5498140   0.5088446   0.5907834
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1676753   0.1015899   0.2337607
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.4684598   0.3532761   0.5836436
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0946749   0.0676408   0.1217089
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.4033928   0.3308304   0.4759552
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1414929   0.1122701   0.1707157
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4207349   0.3502066   0.4912632
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0895189   0.0768308   0.1022071
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.3086016   0.2143904   0.4028129
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1148696   0.0991112   0.1306280
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.3937690   0.3275976   0.4599404
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1299636   0.1222059   0.1377212
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.4233419   0.3936699   0.4530139
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.3648387   0.3292504   0.4004269
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             NA                0.7355856   0.6416950   0.8294762
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1290415   0.1198082   0.1382747
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.4104216   0.3851005   0.4357427
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1806041   0.1652897   0.1959185
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.5155781   0.4621086   0.5690477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1404412   0.1328549   0.1480275
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.4450020   0.4315021   0.4585020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1695104   0.1536896   0.1853312
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.4889285   0.4524946   0.5253624
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.4135121   0.3385797   0.4884444
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             NA                0.6736296   0.5419862   0.8052730
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.4063347   0.3358968   0.4767726
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             NA                0.5931256   0.4469638   0.7392875
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1791045   0.1259754   0.2322335
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             NA                0.4500000   0.2314728   0.6685272
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6960486   0.6462799   0.7458174
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.8604651   0.7567585   0.9641717
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.3777722   0.3261035   0.4294410
24 months   ki1000108-IRC              INDIA                          Low birth weight             NA                0.6019480   0.4857531   0.7181429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4651163   0.3593127   0.5709198
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.8235294   0.7185197   0.9285391
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.2813502   0.2396656   0.3230347
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.6149538   0.5345701   0.6953376
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.1889559   0.1504592   0.2274527
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.4630600   0.3808933   0.5452268
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.3167514   0.2915497   0.3419531
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.5802562   0.5112314   0.6492811
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6131549   0.5631043   0.6632055
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.7977778   0.7177114   0.8778441
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.4115753   0.3964311   0.4267195
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.6598243   0.6321512   0.6874974
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5931183   0.5726444   0.6135922
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.8102390   0.7662721   0.8542058
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.3981492   0.3827497   0.4135487
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.6488290   0.6313083   0.6663498
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3260342   0.3052387   0.3468298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.5634595   0.5283289   0.5985902


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     7.244365    4.2757197   12.274152
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     4.130761    2.3132536    7.376272
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight    13.531746    5.9918281   30.559645
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     8.771242    4.8651927   15.813286
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     3.423573    2.0218205    5.797179
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     3.990210    3.2374240    4.918037
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     9.161647    6.3261792   13.268004
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     6.669947    6.0962232    7.297665
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight    11.807119    7.2086182   19.339084
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    10.736990    9.2919301   12.406783
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    15.526309   11.8743058   20.301505
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     7.335804    6.8352956    7.872961
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     5.939596    4.6136729    7.646576
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     3.269263    1.9968854    5.352376
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.654355    0.8888690    3.079070
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     8.253968    2.7444706   24.823729
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low birth weight             Normal or high birthweight     3.882353    2.5924545    5.814052
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight             Normal or high birthweight     1.652778    0.7618528    3.585567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     2.484498    1.8541121    3.329212
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     2.005738    1.4161725    2.840745
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight     1.901961    1.5900590    2.275044
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight     2.776324    2.5055873    3.076316
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     2.793851    1.7722015    4.404467
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     4.260823    3.0438445    5.964369
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     2.973541    2.2819737    3.874691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight     3.447334    2.4633011    4.824466
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     3.427965    2.7622350    4.254143
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     3.257389    2.9716804    3.570566
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birth weight             Normal or high birthweight     2.016194    1.7167747    2.367835
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     3.180541    2.8955717    3.493555
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     2.854742    2.4980207    3.262405
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     3.168601    2.9904736    3.357338
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     2.884357    2.5583122    3.251954
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight             Normal or high birthweight     1.629045    1.2479027    2.126597
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight             Normal or high birthweight     1.459697    1.0790435    1.974634
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight             Normal or high birthweight     2.512500    1.4222349    4.438547
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight     1.236214    1.0745651    1.422180
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight     1.593415    1.2578555    2.018492
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight     1.770588    1.3641527    2.298117
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight     2.185724    1.7941306    2.662788
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight     2.450625    1.8765432    3.200332
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight     1.831898    1.5888107    2.112178
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight     1.301103    1.1423964    1.481858
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight     1.603168    1.5177102    1.693437
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight     1.366066    1.2816645    1.456026
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight     1.629613    1.5597340    1.702622
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight     1.728222    1.5841105    1.885444


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.1041941    0.0660570   0.1423313
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0549011    0.0216522   0.0881500
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0588850    0.0238029   0.0939670
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0371981    0.0143680   0.0600282
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0347794    0.0141654   0.0553934
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0961784    0.0660839   0.1262728
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0238927    0.0160279   0.0317575
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0452614    0.0416670   0.0488557
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0282520    0.0164706   0.0400335
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0796728    0.0730127   0.0863330
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0357596    0.0290545   0.0424646
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.2355020    0.2287182   0.2422859
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1850956    0.1545370   0.2156543
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0536733    0.0207286   0.0866181
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0172326   -0.0078317   0.0422968
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0191888    0.0005850   0.0377925
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.0329966    0.0123313   0.0536620
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0077748   -0.0073579   0.0229075
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0435533    0.0221830   0.0649236
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0345871    0.0126667   0.0565075
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1282903    0.0908947   0.1656859
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0862771    0.0685098   0.1040443
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0851337    0.0363314   0.1339359
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0665601    0.0443579   0.0887623
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0682973    0.0474035   0.0891911
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0069505    0.0029612   0.0109398
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0265797    0.0185724   0.0345869
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0360376    0.0316839   0.0403913
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0359396    0.0234886   0.0483905
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0562325    0.0498939   0.0625710
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0301986    0.0232917   0.0371055
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1109478    0.1050831   0.1168125
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0799943    0.0686028   0.0913858
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0432187    0.0075885   0.0788489
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0073017   -0.0227181   0.0373215
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.0245154    0.0017189   0.0473120
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0190051    0.0046729   0.0333373
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0374612    0.0147168   0.0602056
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1334239    0.0707553   0.1960925
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0479392    0.0245012   0.0713773
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0678534    0.0427572   0.0929497
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0258670    0.0170048   0.0347292
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0373946    0.0163497   0.0584394
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0488238    0.0420071   0.0556405
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0220106    0.0164705   0.0275506
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0926741    0.0839641   0.1013840
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0645323    0.0533114   0.0757532


### Parameter: PAF


agecat      studyid                    country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.5697423    0.3743608   0.7041079
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.3427160    0.1290235   0.5039794
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.5659498    0.2429457   0.7511413
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.3480679    0.1383630   0.5067349
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.2983301    0.1178128   0.4419092
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3909860    0.3243918   0.4510160
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.4490080    0.3202368   0.5533854
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4371262    0.4080284   0.4647938
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4815126    0.3025503   0.6145540
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.6677631    0.6284347   0.7029288
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.5967875    0.5134104   0.6658779
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.7288411    0.7118682   0.7448142
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.6159863    0.5328908   0.6842997
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.2933310    0.1046864   0.4422278
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0939584   -0.0517485   0.2194795
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.3994755   -0.0166197   0.6452659
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                0.1536050    0.0556376   0.2414094
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                0.0394958   -0.0401773   0.1130663
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1447853    0.0717712   0.2120561
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1414926    0.0485538   0.2253530
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.2472746    0.1699623   0.3173857
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.3034573    0.2461565   0.3564025
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.3367510    0.1263347   0.4964899
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.4128144    0.2795899   0.5214019
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.3255505    0.2264030   0.4119909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0720487    0.0307004   0.1116332
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1879095    0.1325227   0.2397599
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2170926    0.1918818   0.2415168
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.0896744    0.0578781   0.1203976
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.3035099    0.2711820   0.3344038
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.1432554    0.1108214   0.1745063
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.4413391    0.4197381   0.4621360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.3206124    0.2768844   0.3616960
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                0.0946262    0.0125981   0.1698399
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                0.0176524   -0.0575799   0.0875331
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                0.1203980    0.0037939   0.2233538
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0265786    0.0060408   0.0466920
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0902171    0.0334450   0.1436546
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2229155    0.1042131   0.3258884
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.1455839    0.0720807   0.2132648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.2642171    0.1644633   0.3520614
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0754980    0.0492774   0.1009955
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0574815    0.0240334   0.0897833
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.1060466    0.0909917   0.1208522
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0357820    0.0266079   0.0448697
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.1888135    0.1704110   0.2068078
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.1652274    0.1356964   0.1937493
