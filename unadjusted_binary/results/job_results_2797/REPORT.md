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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1       47     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0      170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1       21     191
Birth       ki0047075b-MAL-ED          INDIA                          0                0      173     206
Birth       ki0047075b-MAL-ED          INDIA                          0                1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                1       33     206
Birth       ki0047075b-MAL-ED          NEPAL                          0                0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                1       18     173
Birth       ki0047075b-MAL-ED          PERU                           0                0      253     287
Birth       ki0047075b-MAL-ED          PERU                           0                1        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                0        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                1       34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       28     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       18     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       16      90
Birth       ki1000108-IRC              INDIA                          0                0      343     388
Birth       ki1000108-IRC              INDIA                          0                1        0     388
Birth       ki1000108-IRC              INDIA                          1                0        0     388
Birth       ki1000108-IRC              INDIA                          1                1       45     388
Birth       ki1000109-EE               PAKISTAN                       0                0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                0        0       4
Birth       ki1000109-EE               PAKISTAN                       1                1        2       4
Birth       ki1000109-ResPak           PAKISTAN                       0                0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       0                1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                0        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                1        2       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0      141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1       46     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        5      27
Birth       ki1101329-Keneba           GAMBIA                         0                0     1459    1541
Birth       ki1101329-Keneba           GAMBIA                         0                1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                0        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                1       82    1541
Birth       ki1114097-CMIN             BANGLADESH                     0                0        7      13
Birth       ki1114097-CMIN             BANGLADESH                     0                1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                1        6      13
Birth       ki1114097-CMIN             BRAZIL                         0                0      110     115
Birth       ki1114097-CMIN             BRAZIL                         0                1        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                0        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                1        5     115
Birth       ki1114097-CMIN             PERU                           0                0       10      10
Birth       ki1114097-CMIN             PERU                           0                1        0      10
Birth       ki1114097-CMIN             PERU                           1                0        0      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CONTENT          PERU                           0                0        2       2
Birth       ki1114097-CONTENT          PERU                           0                1        0       2
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1       33   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1432   13830
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      802     852
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                0        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1       50     852
Birth       ki1135781-COHORTS          INDIA                          0                0     5848    6640
Birth       ki1135781-COHORTS          INDIA                          0                1        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                0        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                1      792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1      187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0    26550   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0        0   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1    12676   39226
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     1150    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      494    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      180     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1       23     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      169     236
6 months    ki0047075b-MAL-ED          INDIA                          0                1       28     236
6 months    ki0047075b-MAL-ED          INDIA                          1                0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      207     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1       10     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      200     273
6 months    ki0047075b-MAL-ED          PERU                           0                1       39     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       13     273
6 months    ki0047075b-MAL-ED          PERU                           1                1       21     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      188     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       41     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       16     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      175     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       33     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       25     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      227     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       69     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       31     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       42     369
6 months    ki1000108-IRC              INDIA                          0                0      287     407
6 months    ki1000108-IRC              INDIA                          0                1       74     407
6 months    ki1000108-IRC              INDIA                          1                0       20     407
6 months    ki1000108-IRC              INDIA                          1                1       26     407
6 months    ki1000109-EE               PAKISTAN                       0                0      324     744
6 months    ki1000109-EE               PAKISTAN                       0                1      168     744
6 months    ki1000109-EE               PAKISTAN                       1                0       34     744
6 months    ki1000109-EE               PAKISTAN                       1                1      218     744
6 months    ki1000109-ResPak           PAKISTAN                       0                0      118     235
6 months    ki1000109-ResPak           PAKISTAN                       0                1       55     235
6 months    ki1000109-ResPak           PAKISTAN                       1                0       34     235
6 months    ki1000109-ResPak           PAKISTAN                       1                1       28     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      819    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1      153    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      137    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      227    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0      201     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1      132     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                0      365     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                1       87     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       28     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1       57     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      460     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       63     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0       29     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       31     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      517     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       96     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0       48     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       54     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1754    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1      136    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       78    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       61    2029
6 months    ki1101329-Keneba           GAMBIA                         0                0     1685    2089
6 months    ki1101329-Keneba           GAMBIA                         0                1      207    2089
6 months    ki1101329-Keneba           GAMBIA                         1                0      109    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1       88    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      202     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       26     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0        7     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1       64     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      862    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1      146    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0       26    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       92    1126
6 months    ki1114097-CMIN             BANGLADESH                     0                0      123     243
6 months    ki1114097-CMIN             BANGLADESH                     0                1       28     243
6 months    ki1114097-CMIN             BANGLADESH                     1                0       27     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1       65     243
6 months    ki1114097-CMIN             BRAZIL                         0                0       95     108
6 months    ki1114097-CMIN             BRAZIL                         0                1        9     108
6 months    ki1114097-CMIN             BRAZIL                         1                0        3     108
6 months    ki1114097-CMIN             BRAZIL                         1                1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                0      724     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                1       24     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0       48     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1       52     848
6 months    ki1114097-CMIN             PERU                           0                0      578     637
6 months    ki1114097-CMIN             PERU                           0                1       27     637
6 months    ki1114097-CMIN             PERU                           1                0       16     637
6 months    ki1114097-CMIN             PERU                           1                1       16     637
6 months    ki1114097-CONTENT          PERU                           0                0      185     215
6 months    ki1114097-CONTENT          PERU                           0                1       12     215
6 months    ki1114097-CONTENT          PERU                           1                0       11     215
6 months    ki1114097-CONTENT          PERU                           1                1        7     215
6 months    ki1119695-PROBIT           BELARUS                        0                0    14691   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      941   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0       82   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1       47   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     6412    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1     1034    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      504    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      345    8295
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      551     961
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      258     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       16     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                1      136     961
6 months    ki1135781-COHORTS          INDIA                          0                0     5269    6860
6 months    ki1135781-COHORTS          INDIA                          0                1      779    6860
6 months    ki1135781-COHORTS          INDIA                          1                0      319    6860
6 months    ki1135781-COHORTS          INDIA                          1                1      493    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2082    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      470    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       54    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1      102    2708
6 months    ki1148112-LCNI-5           MALAWI                         0                0      530     839
6 months    ki1148112-LCNI-5           MALAWI                         0                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                0        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1      309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0    20601   33577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1     2866   33577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     4534   33577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     5576   33577
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     5971    9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      820    9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     1091    9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     1570    9452
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      106     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       73     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1       25     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      119     227
24 months   ki0047075b-MAL-ED          INDIA                          0                1       71     227
24 months   ki0047075b-MAL-ED          INDIA                          1                0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1       24     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      168     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1       34     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       11     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1       15     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      117     201
24 months   ki0047075b-MAL-ED          PERU                           0                1       57     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       10     201
24 months   ki0047075b-MAL-ED          PERU                           1                1       17     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      141     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       75     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       13     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        9     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1      122     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1       31     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       90     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      207     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1       59     372
24 months   ki1000108-IRC              INDIA                          0                0      219     409
24 months   ki1000108-IRC              INDIA                          0                1      143     409
24 months   ki1000108-IRC              INDIA                          1                0       20     409
24 months   ki1000108-IRC              INDIA                          1                1       27     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                0      178     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                1      177     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1       61     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      361     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1      157     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       33     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      346     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       98     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0       36     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       34     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                0     1084    1725
24 months   ki1101329-Keneba           GAMBIA                         0                1      465    1725
24 months   ki1101329-Keneba           GAMBIA                         1                0       64    1725
24 months   ki1101329-Keneba           GAMBIA                         1                1      112    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      520     998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1      376     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0       32     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       70     998
24 months   ki1114097-CMIN             BANGLADESH                     0                0       61     242
24 months   ki1114097-CMIN             BANGLADESH                     0                1       92     242
24 months   ki1114097-CMIN             BANGLADESH                     1                0       16     242
24 months   ki1114097-CMIN             BANGLADESH                     1                1       73     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                0      350     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                1      100     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       14     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1       87     551
24 months   ki1114097-CMIN             PERU                           0                0      280     429
24 months   ki1114097-CMIN             PERU                           0                1       63     429
24 months   ki1114097-CMIN             PERU                           1                0       12     429
24 months   ki1114097-CMIN             PERU                           1                1       74     429
24 months   ki1114097-CONTENT          PERU                           0                0      133     164
24 months   ki1114097-CONTENT          PERU                           0                1       14     164
24 months   ki1114097-CONTENT          PERU                           1                0       10     164
24 months   ki1114097-CONTENT          PERU                           1                1        7     164
24 months   ki1119695-PROBIT           BELARUS                        0                0     3684    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1      340    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0        7    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1        4    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0      141     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      215     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       18     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       83     457
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      214    1073
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      528    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       10    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                1      321    1073
24 months   ki1135781-COHORTS          INDIA                          0                0     2712    5340
24 months   ki1135781-COHORTS          INDIA                          0                1     1987    5340
24 months   ki1135781-COHORTS          INDIA                          1                0      160    5340
24 months   ki1135781-COHORTS          INDIA                          1                1      481    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0      923    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1     1387    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       14    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1      121    2445
24 months   ki1148112-LCNI-5           MALAWI                         0                0      275     579
24 months   ki1148112-LCNI-5           MALAWI                         0                1      102     579
24 months   ki1148112-LCNI-5           MALAWI                         1                0       48     579
24 months   ki1148112-LCNI-5           MALAWI                         1                1      154     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0     7246   17226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1     4653   17226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1527   17226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     3800   17226
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     4686    9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1     1931    9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      946    9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1716    9279


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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a8d30ebe-595b-41e4-aaf2-bded1995d165/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8d30ebe-595b-41e4-aaf2-bded1995d165/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a8d30ebe-595b-41e4-aaf2-bded1995d165/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a8d30ebe-595b-41e4-aaf2-bded1995d165/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1089109   0.0658611   0.1519607
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5897436   0.4350480   0.7444392
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1421320   0.0932675   0.1909964
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4615385   0.3047482   0.6183287
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1631799   0.1162451   0.2101148
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6176471   0.4540001   0.7812940
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1790393   0.1292860   0.2287927
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3600000   0.1714720   0.5485280
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1586538   0.1089019   0.2084058
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6410256   0.4901684   0.7918829
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2331081   0.1848759   0.2813403
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5753425   0.4617999   0.6888850
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2049861   0.1632917   0.2466806
6 months    ki1000108-IRC              INDIA                          1                    NA                0.5652174   0.4217850   0.7086498
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3414634   0.2821262   0.4008006
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.8650794   0.8053463   0.9248124
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3179191   0.2483803   0.3874579
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4516129   0.3274748   0.5757510
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1574074   0.1375016   0.1773132
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6236264   0.5893059   0.6579468
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1336207   0.0897810   0.1774604
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8918919   0.8417992   0.9419846
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1924779   0.1560988   0.2288569
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6705882   0.5705788   0.7705977
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1204589   0.0925388   0.1483790
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5166667   0.3901133   0.6432201
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1566069   0.1278168   0.1853969
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5294118   0.4324793   0.6263442
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0719577   0.0603044   0.0836109
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4388489   0.3563316   0.5213662
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1094080   0.0953393   0.1234768
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4467005   0.3772609   0.5161401
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1140351   0.0727079   0.1553623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9014084   0.8319497   0.9708672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1448413   0.1140882   0.1755943
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7796610   0.6738072   0.8855149
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1854305   0.1233136   0.2475474
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.7065217   0.6132821   0.7997613
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0320856   0.0194491   0.0447221
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5200000   0.4220224   0.6179776
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0446281   0.0281616   0.0610946
6 months    ki1114097-CMIN             PERU                           1                    NA                0.5000000   0.3266259   0.6733741
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0609137   0.0274374   0.0943900
6 months    ki1114097-CONTENT          PERU                           1                    NA                0.3888889   0.1631549   0.6146229
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0601970   0.0463919   0.0740021
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3643411   0.2515405   0.4771417
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1388665   0.1310115   0.1467215
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4063604   0.3733206   0.4394002
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3189122   0.2867803   0.3510442
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8947368   0.8459235   0.9435501
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1288029   0.1203599   0.1372459
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.6071429   0.5735486   0.6407371
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1841693   0.1691276   0.1992110
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6538462   0.5791775   0.7285148
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1221289   0.1153205   0.1289374
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5515331   0.5365898   0.5664765
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1207480   0.1075086   0.1339875
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5900038   0.5594139   0.6205937
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4078212   0.3356591   0.4799834
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7575758   0.6110146   0.9041369
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3736842   0.3047430   0.4426254
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6486486   0.4944852   0.8028121
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1683168   0.1166074   0.2200262
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5769231   0.3866030   0.7672431
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3275862   0.2576765   0.3974959
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6296296   0.4470258   0.8122335
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3472222   0.2835981   0.4108464
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4090909   0.2032075   0.6149743
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6969697   0.6446332   0.7493062
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7866667   0.6938285   0.8795049
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3950276   0.3446072   0.4454481
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5744681   0.4329442   0.7159920
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4985915   0.4465190   0.5506641
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8243243   0.7375195   0.9111291
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3030888   0.2634762   0.3427014
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5593220   0.4325305   0.6861136
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2207207   0.1821065   0.2593350
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4857143   0.3685178   0.6029108
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3001937   0.2773620   0.3230254
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6363636   0.5652744   0.7074529
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4196429   0.3738991   0.4653867
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6862745   0.5588003   0.8137488
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6013072   0.5235628   0.6790516
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8202247   0.7402811   0.9001683
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.2222222   0.1837756   0.2606688
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.8613861   0.7939358   0.9288365
24 months   ki1114097-CMIN             PERU                           0                    NA                0.1836735   0.1426471   0.2246998
24 months   ki1114097-CMIN             PERU                           1                    NA                0.8604651   0.7871466   0.9337836
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0952381   0.0476399   0.1428362
24 months   ki1114097-CONTENT          PERU                           1                    NA                0.4117647   0.1770978   0.6464316
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6039326   0.5530724   0.6547927
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8217822   0.7470656   0.8964988
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7115903   0.6789790   0.7442016
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9697885   0.9513400   0.9882370
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4228559   0.4087298   0.4369821
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7503900   0.7168831   0.7838969
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6004329   0.5804546   0.6204112
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8962963   0.8448572   0.9477353
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2705570   0.2256744   0.3154396
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7623762   0.7036304   0.8211221
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3910413   0.3757051   0.4063774
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7133471   0.6935456   0.7331486
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2918241   0.2733340   0.3103142
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6446281   0.6137065   0.6755497


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3010033   0.2489243   0.3530824
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0896226   0.0703861   0.1088591
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0675039   0.0480051   0.0870027
6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.0883721   0.0503437   0.1264005
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662447   0.1582324   0.1742571
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1854227   0.1762253   0.1946201
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514221   0.2433018   0.2595424
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2528565   0.2387323   0.2669808
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3344928   0.3122213   0.3567642
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3393829   0.2998111   0.3789548
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3193473   0.2751780   0.3635166
24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.1280488   0.0767522   0.1793453
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6520788   0.6083612   0.6957964
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7912395   0.7669103   0.8155688
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4621723   0.4487989   0.4755457
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907117   0.4775909   0.5038326
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3930380   0.3758543   0.4102217


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  5.414918    3.3694989    8.701989
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  3.247253    2.0026815    5.265266
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  3.785068    2.5599890    5.596406
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  2.010732    1.1114293    3.637696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  4.040404    2.7299190    5.979981
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.468136    1.8543428    3.285096
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  2.757344    1.9918162    3.817093
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.533447    2.1013744    3.054359
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.420528    0.9997441    2.018416
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.961862    3.4899143    4.497631
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.674804    4.7849562    9.311058
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.483976    2.7385169    4.432358
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.289153    3.0613822    6.009324
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.380515    2.6079593    4.381924
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  6.098709    4.7584384    7.816483
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  4.082886    3.3369644    4.995545
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  7.904659    5.4572418   11.449672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  5.382865    4.1837198    6.925712
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  3.810171    2.6581453    5.461478
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 16.206667   10.4733523   25.078508
6 months    ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             PERU                           1                    0                 11.203703    6.7524792   18.589168
6 months    ki1114097-CONTENT          PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CONTENT          PERU                           1                    0                  6.384259    2.8705001   14.199186
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  6.052476    4.3419772    8.436816
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.926267    2.6503190    3.230946
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  2.805590    2.5018655    3.146185
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  4.713736    4.3262453    5.135932
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  3.550245    3.0852032    4.085385
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.515990    4.2617222    4.785429
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.886238    4.3132784    5.535308
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.857617    1.4292039    2.414450
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.735820    1.2848081    2.345153
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  3.427602    2.1838206    5.379771
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  1.922027    1.3408531    2.755103
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.178182    0.6896176    2.012873
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.128696    0.9813594    1.298152
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  1.454248    1.1018945    1.919274
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.653306    1.4254171    1.917628
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  1.845406    1.4205353    2.397353
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.200583    1.6334368    2.964649
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.119844    1.8518730    2.426590
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.635378    1.3185101    2.028395
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.364069    1.1601610    1.603816
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  3.876238    3.2057946    4.686894
24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           1                    0                  4.684755    3.6886012    5.949932
24 months   ki1114097-CONTENT          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CONTENT          PERU                           1                    0                  4.323529    2.0260059    9.226482
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.360718    1.2021154    1.540247
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.362847    1.2968724    1.432177
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.774576    1.6783237    1.876349
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.492750    1.3969366    1.595135
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  2.817802    2.3467812    3.383362
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.824225    1.7426694    1.909597
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.208961    2.0432911    2.388064


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0778111    0.0435013   0.1121209
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0527833    0.0216931   0.0838734
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0566003    0.0288948   0.0843058
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0178111   -0.0024971   0.0381193
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0761640    0.0428142   0.1095137
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0677049    0.0396046   0.0958052
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0407141    0.0205129   0.0609153
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1773538    0.1392862   0.2154214
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0352724   -0.0030190   0.0735638
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1270237    0.1101277   0.1439197
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2953267    0.2499623   0.3406911
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0756785    0.0532727   0.0980844
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0407761    0.0242367   0.0573155
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531834    0.0358761   0.0704906
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0251345    0.0181442   0.0321248
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0318079    0.0239010   0.0397147
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1869683    0.1443605   0.2295760
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0665264    0.0467309   0.0863219
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1972856    0.1442454   0.2503257
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0575371    0.0417884   0.0732858
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0228758    0.0112011   0.0345505
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0274584    0.0048058   0.0501110
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0024893    0.0012321   0.0037466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0273782    0.0234889   0.0312675
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0910774    0.0748877   0.1072670
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0566198    0.0511258   0.0621138
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0270567    0.0210361   0.0330773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1292932    0.1235866   0.1349997
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1321085    0.1206747   0.1435423
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0544429    0.0237941   0.0850918
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0448180    0.0142727   0.0753633
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0465954    0.0184663   0.0747246
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0405730    0.0106796   0.0704664
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0057190   -0.0143305   0.0257684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0180841   -0.0037125   0.0398806
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0206203    0.0024848   0.0387558
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0561870    0.0351915   0.0771825
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0262006    0.0112110   0.0411902
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0360886    0.0175345   0.0546427
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0342991    0.0252932   0.0433050
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0272509    0.0116972   0.0428046
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0805110    0.0373888   0.1236332
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1171607    0.0920671   0.1422543
24 months   ki1114097-CMIN             PERU                           0                    NA                0.1356738    0.1049721   0.1663756
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0328107    0.0039066   0.0617148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0481462    0.0265163   0.0697761
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0796492    0.0660642   0.0932342
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0393164    0.0341005   0.0445323
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0163360    0.0122788   0.0203932
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1715846    0.1394844   0.2036848
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0996705    0.0916829   0.1076580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1012140    0.0902687   0.1121592


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4167217    0.2355197   0.5549740
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2708011    0.1053295   0.4056684
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2575314    0.1294746   0.3667506
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0904803   -0.0172293   0.1867851
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3243534    0.1803654   0.4430466
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2250730    0.1282938   0.3111076
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1657064    0.0817735   0.2419671
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3418425    0.2607048   0.4140754
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0998677   -0.0153205   0.2019877
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4465887    0.3872813   0.5001555
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6884916    0.5865198   0.7653153
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2822179    0.1986919   0.3570374
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2528986    0.1519998   0.3417920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2535073    0.1717449   0.3271985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2588725    0.1912212   0.3208651
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.2252428    0.1713755   0.2756082
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6211501    0.4925719   0.7171476
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3147426    0.2245946   0.3944100
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5154881    0.3684446   0.6282959
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.6419927    0.5063513   0.7403635
6 months    ki1114097-CMIN             PERU                           0                    NA                0.3388814    0.1758026   0.4696929
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.3107133    0.0459028   0.5020255
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0397111    0.0181632   0.0607861
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1646862    0.1419018   0.1868657
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2221455    0.1813324   0.2609240
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3053554    0.2779773   0.3316953
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1280937    0.0999714   0.1553373
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5142474    0.4947135   0.5330261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5224642    0.4803312   0.5611812
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1177745    0.0476933   0.1826983
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1070914    0.0304659   0.1776610
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2168115    0.0820057   0.3318213
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1102050    0.0250883   0.1878905
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0162037   -0.0422806   0.0714063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0252905   -0.0058469   0.0554640
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0496100    0.0048238   0.0923807
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1012783    0.0613818   0.1394789
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0795672    0.0329972   0.1238943
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1405269    0.0664728   0.2087065
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1025406    0.0752961   0.1289824
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0609785    0.0252487   0.0953987
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1180828    0.0501048   0.1811960
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3452169    0.2710464   0.4118406
24 months   ki1114097-CMIN             PERU                           0                    NA                0.4248473    0.3303598   0.5060025
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.2562358    0.0179802   0.4366864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0738349    0.0391291   0.1072872
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1006639    0.0817456   0.1191924
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0850686    0.0735585   0.0964357
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0264864    0.0197751   0.0331519
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.3880761    0.3112864   0.4563040
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2031141    0.1857875   0.2200720
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2575169    0.2290521   0.2849308
