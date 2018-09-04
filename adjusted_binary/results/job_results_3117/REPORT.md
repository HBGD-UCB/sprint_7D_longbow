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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b82b95cd-650e-49bc-8d3a-f83a691c76b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b82b95cd-650e-49bc-8d3a-f83a691c76b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b82b95cd-650e-49bc-8d3a-f83a691c76b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b82b95cd-650e-49bc-8d3a-f83a691c76b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1081707   0.0655100   0.1508314
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5733522   0.4365876   0.7101168
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1427201   0.0938333   0.1916069
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4711078   0.3189969   0.6232186
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1640417   0.1170809   0.2110026
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6067444   0.4499078   0.7635810
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1790393   0.1292860   0.2287927
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3600000   0.1714720   0.5485280
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1581663   0.1084603   0.2078724
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6420672   0.4926667   0.7914676
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2309391   0.1833978   0.2784804
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4942665   0.4017881   0.5867450
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2059764   0.1642988   0.2476540
6 months    ki1000108-IRC              INDIA                          1                    NA                0.5779122   0.4469638   0.7088605
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3382349   0.2795152   0.3969546
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.8557277   0.7980591   0.9133963
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.3167817   0.2473688   0.3861947
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4582639   0.3349102   0.5816176
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1536884   0.1340680   0.1733088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6141542   0.5807425   0.6475659
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1335190   0.0896727   0.1773652
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.8920890   0.8420935   0.9420845
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1929690   0.1567493   0.2291888
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6714296   0.5789141   0.7639450
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1195790   0.0918077   0.1473503
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4591129   0.3470262   0.5711995
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1569835   0.1282326   0.1857344
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5246228   0.4280271   0.6212185
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0724084   0.0607683   0.0840485
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4649813   0.3977925   0.5321700
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1093545   0.0953317   0.1233773
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4867718   0.4286604   0.5448833
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1140351   0.0727079   0.1553623
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9014084   0.8319497   0.9708672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1435684   0.1129622   0.1741746
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7213284   0.6264412   0.8162156
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1846035   0.1229895   0.2462175
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.7082342   0.6160538   0.8004146
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0321593   0.0195093   0.0448093
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5080325   0.4115124   0.6045526
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0446640   0.0281852   0.0611429
6 months    ki1114097-CMIN             PERU                           1                    NA                0.5112806   0.3410582   0.6815031
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0609137   0.0274374   0.0943900
6 months    ki1114097-CONTENT          PERU                           1                    NA                0.3888889   0.1631549   0.6146229
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0604491   0.0466388   0.0742594
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3075455   0.2132585   0.4018325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1391392   0.1312892   0.1469893
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3998423   0.3677243   0.4319603
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3193677   0.2872795   0.3514558
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9074171   0.8630708   0.9517635
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1293845   0.1209561   0.1378129
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.5940711   0.5625697   0.6255725
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1841856   0.1691678   0.1992034
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6584339   0.5970324   0.7198354
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1232112   0.1163814   0.1300410
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5456862   0.5311689   0.5602036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1210498   0.1078528   0.1342468
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5856752   0.5561029   0.6152474
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4078212   0.3356591   0.4799834
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7575758   0.6110146   0.9041369
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3773906   0.3088327   0.4459485
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6825921   0.5572907   0.8078935
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1674031   0.1157168   0.2190895
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5900371   0.3995020   0.7805722
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3287366   0.2589524   0.3985207
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6292584   0.4636255   0.7948914
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3472222   0.2835981   0.4108464
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4090909   0.2032075   0.6149743
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6938480   0.6415774   0.7461186
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7471180   0.6578580   0.8363779
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3951119   0.3446919   0.4455319
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5738029   0.4324097   0.7151961
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4970602   0.4451492   0.5489712
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8121353   0.7296844   0.8945862
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3028159   0.2632147   0.3424171
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5621298   0.4353869   0.6888727
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2212024   0.1827903   0.2596146
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4751376   0.3626288   0.5876463
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2999635   0.2771838   0.3227432
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6467408   0.5829479   0.7105337
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4170370   0.3716071   0.4624669
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4953387   0.4012622   0.5894152
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6019495   0.5242876   0.6796114
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8184889   0.7386292   0.8983486
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.2230190   0.1845463   0.2614918
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.8580501   0.7903380   0.9257621
24 months   ki1114097-CMIN             PERU                           0                    NA                0.1840471   0.1429960   0.2250982
24 months   ki1114097-CMIN             PERU                           1                    NA                0.8607120   0.7875495   0.9338745
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0952381   0.0476399   0.1428362
24 months   ki1114097-CONTENT          PERU                           1                    NA                0.4117647   0.1770978   0.6464316
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6034344   0.5526449   0.6542239
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8222892   0.7482852   0.8962932
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7127768   0.6802795   0.7452742
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9696040   0.9513324   0.9878757
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4246220   0.4105968   0.4386472
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7156458   0.6848409   0.7464508
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6003880   0.5804131   0.6203630
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9195423   0.8763335   0.9627512
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2713341   0.2273150   0.3153532
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7721079   0.7166020   0.8276137
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3933287   0.3781406   0.4085168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7158883   0.6975566   0.7342199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2923078   0.2738568   0.3107589
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6355056   0.6051918   0.6658193


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
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  5.300439    3.3437426    8.402158
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  3.300922    2.0610475    5.286673
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  3.698720    2.5143259    5.441032
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  2.010732    1.1114293    3.637696
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  4.059443    2.7475389    5.997758
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.140246    1.6206733    2.826389
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  2.805720    2.0711118    3.800888
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  2.529980    2.1011750    3.046296
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.446624    1.0230114    2.045646
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.996100    3.5391082    4.512101
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.681366    4.7889911    9.321515
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.479468    2.7611534    4.384652
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.839411    2.7406567    5.378665
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  3.341897    2.5790111    4.330450
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  6.421646    5.1768415    7.965771
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  4.451319    3.7381299    5.300576
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  7.904659    5.4572418   11.449672
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  5.024285    3.9111343    6.454250
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  3.836515    2.6877844    5.476202
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 15.797374   10.2078805   24.447486
6 months    ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CMIN             PERU                           1                    0                 11.447252    6.9630084   18.819392
6 months    ki1114097-CONTENT          PERU                           0                    0                  1.000000    1.0000000    1.000000
6 months    ki1114097-CONTENT          PERU                           1                    0                  6.384259    2.8705001   14.199186
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  5.087680    3.6509988    7.089700
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.873685    2.6053509    3.169656
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  2.841293    2.5409396    3.177150
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  4.591517    4.2234752    4.991631
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  3.574839    3.1592896    4.045047
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.428869    4.1822724    4.690005
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.838299    4.2761188    5.474390
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.857617    1.4292039    2.414450
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.808715    1.3996310    2.337367
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  3.524648    2.2554420    5.508075
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  1.914172    1.3648630    2.684560
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.178182    0.6896176    2.012873
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.076775    0.9347731    1.240348
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  1.452254    1.1003858    1.916639
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.633877    1.4124543    1.890011
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  1.856342    1.4305178    2.408921
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.147976    1.6050768    2.874506
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.156065    1.9042383    2.441195
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.187757    0.9557699    1.476053
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.359730    1.1570040    1.597978
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  3.847430    3.1834279    4.649930
24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           1                    0                  4.676586    3.6834625    5.937471
24 months   ki1114097-CONTENT          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki1114097-CONTENT          PERU                           1                    0                  4.323529    2.0260059    9.226482
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.362682    1.2046500    1.541446
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.360319    1.2948691    1.429078
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.685372    1.5977483    1.777800
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.531580    1.4458651    1.622377
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  2.845599    2.3830328    3.397952
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.820077    1.7421628    1.901475
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.174097    2.0122367    2.348977


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0785513    0.0441054   0.1129972
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0521952    0.0211321   0.0832582
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0557385    0.0280518   0.0834251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0178111   -0.0024971   0.0381193
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0766515    0.0432954   0.1100075
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0698739    0.0413300   0.0984178
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0397238    0.0197010   0.0597466
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1805823    0.1424906   0.2186740
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0364097   -0.0017614   0.0745809
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1307427    0.1146609   0.1468246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2954284    0.2500910   0.3407658
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0751874    0.0531820   0.0971928
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0416560    0.0251057   0.0582062
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0528067    0.0355765   0.0700370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0246837    0.0177799   0.0315876
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0318614    0.0240047   0.0397181
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1869683    0.1443605   0.2295760
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0677993    0.0478656   0.0877330
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1981125    0.1456312   0.2505939
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0574633    0.0417346   0.0731921
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0228399    0.0111651   0.0345147
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.0274584    0.0048058   0.0501110
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0022373    0.0010304   0.0034442
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0271055    0.0232384   0.0309726
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0906219    0.0745245   0.1067194
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0560383    0.0506106   0.0614659
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0270404    0.0210453   0.0330355
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1282109    0.1225511   0.1338707
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1318067    0.1204588   0.1431547
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0544429    0.0237941   0.0850918
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0411116    0.0117080   0.0705153
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0475092    0.0192042   0.0758141
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0394226    0.0095742   0.0692711
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0057190   -0.0143305   0.0257684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0212058   -0.0008771   0.0432887
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0205360    0.0024225   0.0386495
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0577183    0.0365855   0.0788512
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0264735    0.0114556   0.0414914
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0356069    0.0173464   0.0538674
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0345293    0.0255493   0.0435092
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0298568    0.0142319   0.0454817
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0798687    0.0369384   0.1227990
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1163639    0.0914054   0.1413224
24 months   ki1114097-CMIN             PERU                           0                    NA                0.1353002    0.1046305   0.1659700
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.0328107    0.0039066   0.0617148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0486444    0.0270154   0.0702734
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0784627    0.0649764   0.0919490
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0375503    0.0325417   0.0425590
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0163809    0.0123019   0.0204598
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1708075    0.1390375   0.2025776
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0973830    0.0895827   0.1051833
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1007302    0.0899179   0.1115426


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4206858    0.2402049   0.5582955
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.2677840    0.1025323   0.4026077
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2536101    0.1257257   0.3627882
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0904803   -0.0172293   0.1867851
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3264295    0.1824318   0.4450651
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2322835    0.1350132   0.3186155
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1616760    0.0785466   0.2373058
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3480654    0.2673269   0.4199067
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1030878   -0.0117569   0.2048965
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4596639    0.4025888   0.5112862
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6887288    0.5867527   0.7655405
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2803863    0.1984982   0.3539081
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2583558    0.1577547   0.3469407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2517120    0.1704018   0.3250528
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2542299    0.1874979   0.3154812
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.2256218    0.1722183   0.2755800
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.6211501    0.4925719   0.7171476
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.3207648    0.2303163   0.4005843
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.5176489    0.3725395   0.6291996
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.6411699    0.5055956   0.7395673
6 months    ki1114097-CMIN             PERU                           0                    NA                0.3383489    0.1751604   0.4692517
6 months    ki1114097-CONTENT          PERU                           0                    NA                0.3107133    0.0459028   0.5020255
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0356906    0.0151602   0.0557930
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1630458    0.1403965   0.1850983
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2210347    0.1804754   0.2595867
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3022189    0.2751855   0.3282440
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1280164    0.1000451   0.1551184
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5099428    0.4904889   0.5286540
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5212708    0.4794774   0.5597086
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1177745    0.0476933   0.1826983
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0982352    0.0247126   0.1662152
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2210630    0.0853437   0.3366439
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.1070804    0.0222677   0.1845361
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0162037   -0.0422806   0.0714063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0296562   -0.0019141   0.0602318
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0494072    0.0046760   0.0921282
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1040385    0.0639295   0.1424290
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0803959    0.0337400   0.1247989
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1386511    0.0659694   0.2056772
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1032287    0.0760923   0.1295681
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0668096    0.0309827   0.1013120
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1171408    0.0494761   0.1799885
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3428690    0.2690297   0.4092495
24 months   ki1114097-CMIN             PERU                           0                    NA                0.4236773    0.3292565   0.5048065
24 months   ki1114097-CONTENT          PERU                           0                    NA                0.2562358    0.0179802   0.4366864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0745989    0.0398995   0.1080443
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0991643    0.0804104   0.1175357
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0812474    0.0702172   0.0921469
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0265592    0.0198141   0.0332579
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.3863186    0.3112964   0.4531685
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1984526    0.1815765   0.2149808
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2562862    0.2281386   0.2834073
