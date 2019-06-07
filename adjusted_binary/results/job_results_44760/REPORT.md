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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        birthwt                       ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------------------------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      194     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        9     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       49     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        3     255
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      214     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0       12     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      189     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        9     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       36     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        0     234
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      209     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        1     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0       21     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      275     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        3     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                         0       18     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     296
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      264     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1       10     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0       19     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        1     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      126     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        2     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        7     135
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     135
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      278     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       50     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0       35     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        5     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight               0      279     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight               1       60     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                         0       51     407
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight                         1       17     407
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      211     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       33     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                         0      115     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight                         1       18     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       15      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        3      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        3      21
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      21
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      324     457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       37     457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       74     457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       22     457
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      120     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       15     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       65     211
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       11     211
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      518     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1       10     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0      150     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1        9     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      570     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        9     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0      164     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       11     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2171    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1      108    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       70    2359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1       10    2359
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1639    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      269    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                         0      159    2105
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight                         1       38    2105
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        1       1
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       1
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0      107     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                         0        8     115
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         Low birth weight                         1        0     115
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight               0       15      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Normal or high birthweight               1        0      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                         0        1      16
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           Low birth weight                         1        0      16
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0     8031    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1       82    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0    10401   12416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      393   12416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0     1547   12416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1       75   12416
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      377     435
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1        9     435
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       46     435
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1        3     435
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     5052    6504
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      243    6504
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                         0     1122    6504
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight                         1       87    6504
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2418    2895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      210    2895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0      229    2895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       38    2895
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     7581   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      254   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     4887   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      240   12962
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0      867    1177
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1       26    1177
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      259    1177
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1       25    1177
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      196     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        7     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       51     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        0     254
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      215     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        2     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0       12     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      192     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        5     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       36     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        0     233
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      207     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      277     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        1     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                         0       18     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     296
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      271     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1        2     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0       19     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        1     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      126     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        2     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        7     135
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     135
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      285     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        0     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight               0      276     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight               1       52     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                         0       55     388
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight                         1        5     388
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      230     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       12     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                         0      127     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Low birth weight                         1        4     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       16      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        2      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        3      21
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      21
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      349     449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       11     449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       84     449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1        5     449
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      129     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1        4     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       69     203
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1        1     203
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      523     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0      154     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1        1     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      576     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0      172     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     2235    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       37    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       76    2351
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        3    2351
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1683    1930
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1       71    1930
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                         0      166    1930
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight                         1       10    1930
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        1       1
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       1
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0       91      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                         0        6      97
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         Low birth weight                         1        0      97
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight               0       15      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Normal or high birthweight               1        0      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                         0        1      16
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           Low birth weight                         1        0      16
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0     7904    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1       75    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     9822   11405
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      121   11405
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0     1452   11405
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1       10   11405
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      353     397
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1        1     397
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       43     397
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1        0     397
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4790    5885
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight               1       96    5885
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                         0      978    5885
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight                         1       21    5885
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2532    2851
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1       60    2851
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0      253    2851
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1        6    2851
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     7641   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      145   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     4934   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1       90   12810
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0      871    1127
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1        3    1127
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      252    1127
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1        1    1127
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               0      184     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight               1        2     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         0       46     235
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight                         1        3     235
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               0      195     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight               1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         Low birth weight                         1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               0      188     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight               1        4     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                         0       36     228
6-24 months                   ki0047075b-MAL-ED          INDIA                          Low birth weight                         1        0     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               0      207     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight               1        0     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         0       21     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          Low birth weight                         1        0     228
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               0      248     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Normal or high birthweight               1        2     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                         0       17     267
6-24 months                   ki0047075b-MAL-ED          PERU                           Low birth weight                         1        0     267
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               0      234     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight               1        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         0       16     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight                         1        0     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0      118     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1        0     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0        5     123
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        0     123
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               0      305     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight               1       25     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         0       38     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight                         1        5     373
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight               0      326     408
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight               1       13     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                         0       56     408
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight                         1       13     408
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight               0      218     375
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight               1       24     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                         0      118     375
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight                         1       15     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               0       13      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Normal or high birthweight               1        1      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                         0        2      16
6-24 months                   ki1000109-ResPak           PAKISTAN                       Low birth weight                         1        0      16
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               0      314     431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight               1       28     431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         0       70     431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight                         1       19     431
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               0      106     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight               1       11     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         0       53     180
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight                         1       10     180
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               0      462     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight               1        5     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         0      140     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight                         1        8     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               0      550     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight               1        9     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         0      160     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight                         1       11     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               0     1860    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight               1       73    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         0       57    1998
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight                         1        8    1998
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               0     1645    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight               1      212    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                         0      151    2040
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight                         1       32    2040
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               0        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight               1        0       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                         0        1       1
6-24 months                   ki1114097-CMIN             BANGLADESH                     Low birth weight                         1        0       1
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               0      107     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Normal or high birthweight               1        0     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                         0        8     115
6-24 months                   ki1114097-CMIN             BRAZIL                         Low birth weight                         1        0     115
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Normal or high birthweight               1        0       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         0        1       2
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  Low birth weight                         1        0       2
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight               0       13      14
6-24 months                   ki1114097-CMIN             PERU                           Normal or high birthweight               1        0      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                         0        1      14
6-24 months                   ki1114097-CMIN             PERU                           Low birth weight                         1        0      14
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight               0        2       2
6-24 months                   ki1114097-CONTENT          PERU                           Normal or high birthweight               1        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                         0        0       2
6-24 months                   ki1114097-CONTENT          PERU                           Low birth weight                         1        0       2
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               0     7967    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Normal or high birthweight               1        8    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                         0        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Low birth weight                         1        0    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               0     8998   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight               1      277   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         0     1314   10659
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight                         1       70   10659
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               0      347     401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight               1        8     401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         0       43     401
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Low birth weight                         1        3     401
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight               0     4877    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight               1      157    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                         0     1181    6299
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight                         1       84    6299
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               0     2357    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight               1      155    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         0      222    2766
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight                         1       32    2766
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               0     5104    8513
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight               1      113    8513
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         0     3128    8513
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight                         1      168    8513
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               0      869    1185
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight               1       25    1185
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         0      264    1185
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight                         1       27    1185


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d7ae17b4-fcc0-4db3-8fcc-68e5c4476720/587d8563-bb9e-4ef6-a9e8-2382407ee9b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d7ae17b4-fcc0-4db3-8fcc-68e5c4476720/587d8563-bb9e-4ef6-a9e8-2382407ee9b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d7ae17b4-fcc0-4db3-8fcc-68e5c4476720/587d8563-bb9e-4ef6-a9e8-2382407ee9b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d7ae17b4-fcc0-4db3-8fcc-68e5c4476720/587d8563-bb9e-4ef6-a9e8-2382407ee9b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1524390   0.1134865   0.1913915
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1250000   0.0223715   0.2276285
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1769912   0.1363131   0.2176692
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             NA                0.2500000   0.1469546   0.3530454
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.1352459   0.0922786   0.1782132
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1353383   0.0771237   0.1935530
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.1024931   0.0717609   0.1332253
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2291667   0.1696459   0.2886874
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1111111   0.0579719   0.1642503
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1447368   0.0654480   0.2240257
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0189394   0.0073041   0.0305747
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0566038   0.0206590   0.0925485
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0155440   0.0054613   0.0256267
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0628571   0.0268741   0.0988402
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0473892   0.0386642   0.0561142
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1250000   0.0525140   0.1974860
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1409853   0.1253665   0.1566042
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1928934   0.1377819   0.2480049
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0364091   0.0328754   0.0399428
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0462392   0.0360189   0.0564595
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0458924   0.0402558   0.0515290
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0719603   0.0573924   0.0865282
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0799087   0.0695400   0.0902773
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1423221   0.1004075   0.1842367
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0324186   0.0281366   0.0367007
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0468110   0.0401753   0.0534467
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0291153   0.0169189   0.0413117
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0880282   0.0524520   0.1236043
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.1585366   0.1189586   0.1981146
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             NA                0.0833333   0.0133092   0.1533575
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0305556   0.0223354   0.0387757
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.0561798   0.0036418   0.1087178
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.0404789   0.0312535   0.0497044
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.0568182   0.0226088   0.0910276
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0121694   0.0100142   0.0143245
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0068399   0.0026149   0.0110650
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0196480   0.0157561   0.0235398
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0210210   0.0121246   0.0299175
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0231481   0.0173581   0.0289382
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.0231660   0.0048424   0.0414896
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0186232   0.0152706   0.0219758
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0179140   0.0138973   0.0219307
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.0757576   0.0471698   0.1043453
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             NA                0.1162791   0.0203379   0.2122203
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                0.0383481   0.0178807   0.0588154
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             NA                0.1884058   0.0960268   0.2807847
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                0.0991736   0.0614651   0.1368820
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             NA                0.1127820   0.0589504   0.1666135
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                0.0818713   0.0499409   0.1138018
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             NA                0.2134831   0.1690919   0.2578744
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.0940171   0.0409863   0.1470479
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             NA                0.1587302   0.0682434   0.2492169
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                0.0107066   0.0013648   0.0200485
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             NA                0.0540541   0.0175940   0.0905142
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                0.0161002   0.0056595   0.0265409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             NA                0.0643275   0.0275309   0.1011241
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.0377651   0.0292650   0.0462653
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             NA                0.1230769   0.0431912   0.2029626
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                0.1141626   0.0996953   0.1286299
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             NA                0.1748634   0.1198154   0.2299114
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.0298652   0.0264010   0.0333295
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             NA                0.0505780   0.0390326   0.0621235
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                0.0311879   0.0263857   0.0359901
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             NA                0.0664032   0.0526814   0.0801250
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                0.0617038   0.0522927   0.0711150
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             NA                0.1259843   0.0851685   0.1668000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                0.0216600   0.0170950   0.0262249
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             NA                0.0509709   0.0426472   0.0592946
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                0.0279642   0.0165582   0.0393702
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             NA                0.0927835   0.0566523   0.1289147


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1891892   0.1510920   0.2272864
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1291028   0.0929768   0.1652289
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1232227   0.0787669   0.1676786
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500212   0.0412227   0.0588197
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1458432   0.1307620   0.1609245
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0376933   0.0343432   0.0410434
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0507380   0.0454040   0.0560720
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0856649   0.0754684   0.0958615
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0381114   0.0342842   0.0419386
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0433305   0.0311576   0.0555034
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1469072   0.1116367   0.1821778
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0356347   0.0207751   0.0504943
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0419689   0.0330207   0.0509171
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0114862   0.0095305   0.0134419
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0198811   0.0163143   0.0234478
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0231498   0.0176288   0.0286707
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0183450   0.0155705   0.0211195
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.0637255   0.0399949   0.0874561
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1090487   0.0727461   0.1453513
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1166667   0.0696386   0.1636948
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0405405   0.0318905   0.0491906
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1196078   0.1055228   0.1336929
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325546   0.0291854   0.0359239
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0382600   0.0335226   0.0429975
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0676067   0.0582484   0.0769649
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0330083   0.0287064   0.0373103
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0438819   0.0318982   0.0558655


### Parameter: RR


agecat                        studyid                    country                        intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    0.8200000   0.3470369    1.937546
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    1.4125000   0.8811154    2.264353
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.0006835   0.5862182    1.708182
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.2359234   1.7855864    2.799838
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.3026316   0.6295072    2.695520
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    2.9886792   1.2352498    7.231091
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    4.0438095   1.7024219    9.605372
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    2.6377314   1.4354880    4.846872
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.3681807   1.0070708    1.858775
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.2699899   0.9976105    1.616738
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.5680237   1.2374184    1.986958
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.7810594   1.2909586    2.457222
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    1.4439535   1.1989399    1.739038
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.0234290   1.6475078    5.548455
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    0.5256410   0.2187716    1.262954
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    1.8386108   0.8283437    4.081023
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.4036492   0.7373432    2.672068
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    0.5620626   0.2956062    1.068700
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    1.0698824   0.6705025    1.707150
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    1.0007722   0.4365714    2.294115
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    0.9619207   0.7392768    1.251617
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight             Normal or high birthweight    1.5348837   0.6195028    3.802837
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-IRC              INDIA                          Low birth weight             Normal or high birthweight    4.9130435   2.3800805   10.141672
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       Low birth weight             Normal or high birthweight    1.1372180   0.6177595    2.093476
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight             Normal or high birthweight    2.6075441   1.9993258    3.400790
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Low birth weight             Normal or high birthweight    1.6883117   0.7571248    3.764765
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight             Normal or high birthweight    5.0486486   1.6757724   15.210211
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Low birth weight             Normal or high birthweight    3.9954516   1.6827630    9.486561
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birth weight             Normal or high birthweight    3.2590095   1.6395696    6.478007
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Low birth weight             Normal or high birthweight    1.5317043   1.0909249    2.150577
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Low birth weight             Normal or high birthweight    1.6935425   1.3109747    2.187751
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          Low birth weight             Normal or high birthweight    2.1291307   1.6454467    2.754995
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Low birth weight             Normal or high birthweight    2.0417577   1.4272213    2.920903
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight             Normal or high birthweight    2.3532305   1.8044957    3.068832
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight    1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight             Normal or high birthweight    3.3179381   1.8439505    5.970178


### Parameter: PAR


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0029825   -0.0149462    0.0089812
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0121980   -0.0064999    0.0308960
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0000326   -0.0254929    0.0255581
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0266098    0.0190822    0.0341374
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0121116   -0.0223373    0.0465606
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0087171   -0.0001074    0.0175416
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0109812    0.0021914    0.0197709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0026320    0.0000920    0.0051720
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0048579   -0.0005417    0.0102575
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0012842   -0.0001297    0.0026981
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0048457    0.0019316    0.0077597
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0057563    0.0017200    0.0097925
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0056928    0.0026863    0.0086992
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0142152    0.0049966    0.0234337
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0116294   -0.0243594    0.0011006
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0050792   -0.0038952    0.0140536
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0014900   -0.0017479    0.0047279
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0006832   -0.0012921   -0.0000743
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0002331   -0.0014154    0.0018815
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0000016   -0.0017441    0.0017474
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0002781   -0.0021553    0.0015990
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0046714   -0.0069441    0.0162869
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0253774    0.0084682    0.0422866
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0048264   -0.0184933    0.0281462
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.0271774    0.0226807    0.0316741
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0226496   -0.0143364    0.0596355
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.0104316    0.0012562    0.0196070
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.0112971    0.0022155    0.0203787
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0027754    0.0000789    0.0054719
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0054452    0.0002842    0.0106062
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0026894    0.0011187    0.0042601
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0070721    0.0041318    0.0100124
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0059028    0.0019947    0.0098110
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.0113484    0.0076824    0.0150144
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.0159177    0.0065069    0.0253284


### Parameter: PAF


agecat                        studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0199557   -0.1031258    0.0569439
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.0644753   -0.0392308    0.1578326
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0002411   -0.2074286    0.1721930
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.2061130    0.1655389    0.2447142
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0982906   -0.2271694    0.3374347
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.3151914   -0.0430123    0.5503765
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4139896    0.0540478    0.6369709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0526175    0.0012597    0.1013343
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0333091   -0.0043208    0.0695290
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0340693   -0.0040621    0.0707525
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0955035    0.0370579    0.1504017
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0671951    0.0194611    0.1126053
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.1493718    0.0690016    0.2228039
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.3280636    0.0984683    0.4991873
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0791613   -0.1679596    0.0028857
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.1425347   -0.0849704    0.3223348
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0355026   -0.0444472    0.1093325
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0594780   -0.1128354   -0.0086789
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.0117237   -0.0747411    0.0912323
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0000701   -0.0782569    0.0727074
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.0151609   -0.1228442    0.0821954
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0580808   -0.0966511    0.1909808
6-24 months                   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                 0.3982301    0.1267138    0.5853284
6-24 months                   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                 0.0464081   -0.2059581    0.2459626
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                 0.2492223    0.2042480    0.2916548
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1941392   -0.1829383    0.4510182
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                 0.4934937   -0.0019911    0.7439611
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.4123435    0.0515703    0.6358821
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0684601    0.0011170    0.1312630
6-24 months                   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0455256    0.0016445    0.0874779
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0826125    0.0338275    0.1289341
6-24 months                   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                 0.1848435    0.1078253    0.2552130
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                 0.0873114    0.0288125    0.1422867
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                 0.3438035    0.2309856    0.4400705
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                 0.3627388    0.1396907    0.5279583
