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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enstunt    sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       38     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      170     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       13     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        8     191
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      173     206
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0     206
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       26     206
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        7     206
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       12     173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        6     173
Birth       ki0047075b-MAL-ED          PERU                           0                 0      253     287
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0     287
Birth       ki0047075b-MAL-ED          PERU                           1                 0       26     287
Birth       ki0047075b-MAL-ED          PERU                           1                 1        8     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      234     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       26     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      105     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        6     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       74      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        3      90
Birth       ki1000108-IRC              INDIA                          0                 0      343     388
Birth       ki1000108-IRC              INDIA                          0                 1        0     388
Birth       ki1000108-IRC              INDIA                          1                 0       29     388
Birth       ki1000108-IRC              INDIA                          1                 1       16     388
Birth       ki1000109-EE               PAKISTAN                       0                 0        2       4
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                 0        2       4
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       4
Birth       ki1000109-ResPak           PAKISTAN                       0                 0        5       7
Birth       ki1000109-ResPak           PAKISTAN                       0                 1        0       7
Birth       ki1000109-ResPak           PAKISTAN                       1                 0        2       7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        0       7
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0      141     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       35     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1       11     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 0       27      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                 1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                 1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 0       22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        1      27
Birth       ki1101329-Keneba           GAMBIA                         0                 0     1459    1541
Birth       ki1101329-Keneba           GAMBIA                         0                 1        0    1541
Birth       ki1101329-Keneba           GAMBIA                         1                 0       53    1541
Birth       ki1101329-Keneba           GAMBIA                         1                 1       29    1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 0        7      13
Birth       ki1114097-CMIN             BANGLADESH                     0                 1        0      13
Birth       ki1114097-CMIN             BANGLADESH                     1                 0        1      13
Birth       ki1114097-CMIN             BANGLADESH                     1                 1        5      13
Birth       ki1114097-CMIN             BRAZIL                         0                 0      110     115
Birth       ki1114097-CMIN             BRAZIL                         0                 1        0     115
Birth       ki1114097-CMIN             BRAZIL                         1                 0        2     115
Birth       ki1114097-CMIN             BRAZIL                         1                 1        3     115
Birth       ki1114097-CMIN             PERU                           0                 0       10      10
Birth       ki1114097-CMIN             PERU                           0                 1        0      10
Birth       ki1114097-CMIN             PERU                           1                 0        0      10
Birth       ki1114097-CMIN             PERU                           1                 1        0      10
Birth       ki1114097-CONTENT          PERU                           0                 0        2       2
Birth       ki1114097-CONTENT          PERU                           0                 1        0       2
Birth       ki1114097-CONTENT          PERU                           1                 0        0       2
Birth       ki1114097-CONTENT          PERU                           1                 1        0       2
Birth       ki1119695-PROBIT           BELARUS                        0                 0    13851   13884
Birth       ki1119695-PROBIT           BELARUS                        0                 1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 0       28   13884
Birth       ki1119695-PROBIT           BELARUS                        1                 1        5   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 0    12398   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                 1        0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      991   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      441   13830
Birth       ki1135781-COHORTS          GUATEMALA                      0                 0      802     852
Birth       ki1135781-COHORTS          GUATEMALA                      0                 1        0     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                 0       39     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                 1       11     852
Birth       ki1135781-COHORTS          INDIA                          0                 0     5848    6640
Birth       ki1135781-COHORTS          INDIA                          0                 1        0    6640
Birth       ki1135781-COHORTS          INDIA                          1                 0      586    6640
Birth       ki1135781-COHORTS          INDIA                          1                 1      206    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0                 0     2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    0                 1        0    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                 0      141    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                 1       46    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0    26550   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1        0   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8594   39226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4082   39226
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1150    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      366    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      128    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       31     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      188     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      195     236
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       32     236
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        7     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      209     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       26     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        1     236
6 months    ki0047075b-MAL-ED          PERU                           0                 0      236     273
6 months    ki0047075b-MAL-ED          PERU                           0                 1        3     273
6 months    ki0047075b-MAL-ED          PERU                           1                 0       25     273
6 months    ki0047075b-MAL-ED          PERU                           1                 1        9     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      226     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      203     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        5     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        9     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      272     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       24     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       55     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       18     369
6 months    ki1000108-IRC              INDIA                          0                 0      343     407
6 months    ki1000108-IRC              INDIA                          0                 1       18     407
6 months    ki1000108-IRC              INDIA                          1                 0       35     407
6 months    ki1000108-IRC              INDIA                          1                 1       11     407
6 months    ki1000109-EE               PAKISTAN                       0                 0      448     744
6 months    ki1000109-EE               PAKISTAN                       0                 1       44     744
6 months    ki1000109-EE               PAKISTAN                       1                 0      108     744
6 months    ki1000109-EE               PAKISTAN                       1                 1      144     744
6 months    ki1000109-ResPak           PAKISTAN                       0                 0      146     235
6 months    ki1000109-ResPak           PAKISTAN                       0                 1       27     235
6 months    ki1000109-ResPak           PAKISTAN                       1                 0       45     235
6 months    ki1000109-ResPak           PAKISTAN                       1                 1       17     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0      936    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1       36    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      272    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       92    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       94     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       54     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0      437     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0       65     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       20     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      516     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0       53     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        7     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      602     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       12     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1879    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       11    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      131    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2029
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1852    2089
6 months    ki1101329-Keneba           GAMBIA                         0                 1       40    2089
6 months    ki1101329-Keneba           GAMBIA                         1                 0      167    2089
6 months    ki1101329-Keneba           GAMBIA                         1                 1       30    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 0      228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 0       44     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 1       27     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      998    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       10    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       88    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       30    1126
6 months    ki1114097-CMIN             BANGLADESH                     0                 0      147     243
6 months    ki1114097-CMIN             BANGLADESH                     0                 1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 0       68     243
6 months    ki1114097-CMIN             BANGLADESH                     1                 1       24     243
6 months    ki1114097-CMIN             BRAZIL                         0                 0      102     108
6 months    ki1114097-CMIN             BRAZIL                         0                 1        2     108
6 months    ki1114097-CMIN             BRAZIL                         1                 0        3     108
6 months    ki1114097-CMIN             BRAZIL                         1                 1        1     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                 0      744     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                 1        4     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                 0       86     848
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                 1       14     848
6 months    ki1114097-CMIN             PERU                           0                 0      600     637
6 months    ki1114097-CMIN             PERU                           0                 1        5     637
6 months    ki1114097-CMIN             PERU                           1                 0       29     637
6 months    ki1114097-CMIN             PERU                           1                 1        3     637
6 months    ki1114097-CONTENT          PERU                           0                 0      197     215
6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
6 months    ki1114097-CONTENT          PERU                           1                 0       14     215
6 months    ki1114097-CONTENT          PERU                           1                 1        4     215
6 months    ki1119695-PROBIT           BELARUS                        0                 0    15408   15761
6 months    ki1119695-PROBIT           BELARUS                        0                 1      224   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 0      110   15761
6 months    ki1119695-PROBIT           BELARUS                        1                 1       19   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     7208    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      238    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      741    8295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1      108    8295
6 months    ki1135781-COHORTS          GUATEMALA                      0                 0      754     961
6 months    ki1135781-COHORTS          GUATEMALA                      0                 1       55     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                 0       83     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                 1       69     961
6 months    ki1135781-COHORTS          INDIA                          0                 0     5919    6860
6 months    ki1135781-COHORTS          INDIA                          0                 1      129    6860
6 months    ki1135781-COHORTS          INDIA                          1                 0      630    6860
6 months    ki1135781-COHORTS          INDIA                          1                 1      182    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0                 0     2452    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    0                 1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      124    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1       32    2708
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      530     839
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      238     839
6 months    ki1148112-LCNI-5           MALAWI                         1                 1       71     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    23141   33577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      326   33577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8399   33577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1711   33577
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     6729    9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       62    9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2197    9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      464    9452
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      162     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       24     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      152     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      173     227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       26     227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       11     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      200     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        5     228
24 months   ki0047075b-MAL-ED          PERU                           0                 0      167     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     201
24 months   ki0047075b-MAL-ED          PERU                           1                 0       19     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        8     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      193     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        3     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      132     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       49     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       13     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1       20     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      212     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       85     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       38     372
24 months   ki1000108-IRC              INDIA                          0                 0      332     409
24 months   ki1000108-IRC              INDIA                          0                 1       30     409
24 months   ki1000108-IRC              INDIA                          1                 0       36     409
24 months   ki1000108-IRC              INDIA                          1                 1       11     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0      298     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0       38     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       36     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      484     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       34     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0       44     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       15     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      425     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       19     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       54     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         0                 0     1455    1725
24 months   ki1101329-Keneba           GAMBIA                         0                 1       94    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 0      133    1725
24 months   ki1101329-Keneba           GAMBIA                         1                 1       43    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      824     998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       72     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       66     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       36     998
24 months   ki1114097-CMIN             BANGLADESH                     0                 0      121     242
24 months   ki1114097-CMIN             BANGLADESH                     0                 1       32     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 0       53     242
24 months   ki1114097-CMIN             BANGLADESH                     1                 1       36     242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                 0      428     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                 1       22     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                 0       68     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                 1       33     551
24 months   ki1114097-CMIN             PERU                           0                 0      333     429
24 months   ki1114097-CMIN             PERU                           0                 1       10     429
24 months   ki1114097-CMIN             PERU                           1                 0       66     429
24 months   ki1114097-CMIN             PERU                           1                 1       20     429
24 months   ki1114097-CONTENT          PERU                           0                 0      146     164
24 months   ki1114097-CONTENT          PERU                           0                 1        1     164
24 months   ki1114097-CONTENT          PERU                           1                 0       15     164
24 months   ki1114097-CONTENT          PERU                           1                 1        2     164
24 months   ki1119695-PROBIT           BELARUS                        0                 0     3960    4035
24 months   ki1119695-PROBIT           BELARUS                        0                 1       64    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 0       10    4035
24 months   ki1119695-PROBIT           BELARUS                        1                 1        1    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      269     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       87     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0       57     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       44     457
24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      490    1073
24 months   ki1135781-COHORTS          GUATEMALA                      0                 1      252    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      122    1073
24 months   ki1135781-COHORTS          GUATEMALA                      1                 1      209    1073
24 months   ki1135781-COHORTS          INDIA                          0                 0     4005    5340
24 months   ki1135781-COHORTS          INDIA                          0                 1      694    5340
24 months   ki1135781-COHORTS          INDIA                          1                 0      366    5340
24 months   ki1135781-COHORTS          INDIA                          1                 1      275    5340
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     1696    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      614    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       60    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       75    2445
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      365     579
24 months   ki1148112-LCNI-5           MALAWI                         0                 1       12     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      147     579
24 months   ki1148112-LCNI-5           MALAWI                         1                 1       55     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    10881   17226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     1018   17226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     3661   17226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1666   17226
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     6325    9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      292    9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2099    9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      563    9279


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b69edd67-f8ae-422b-81d6-3ea682c11b58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b69edd67-f8ae-422b-81d6-3ea682c11b58/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b69edd67-f8ae-422b-81d6-3ea682c11b58/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b69edd67-f8ae-422b-81d6-3ea682c11b58/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0240385   0.0031807   0.0448962
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307692   0.0982698   0.3632687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0810811   0.0499431   0.1122190
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2465753   0.1475673   0.3455834
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0498615   0.0273811   0.0723419
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2391304   0.1157132   0.3625477
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0894309   0.0537229   0.1251389
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5714286   0.4849039   0.6579532
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1560694   0.1018739   0.2102649
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2741935   0.1629135   0.3854736
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0370370   0.0224368   0.0516373
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2527473   0.2155600   0.2899345
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0331858   0.0166574   0.0497143
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2352941   0.1450340   0.3255543
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0133843   0.0035274   0.0232413
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1166667   0.0353685   0.1979649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0179445   0.0074284   0.0284607
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1176471   0.0550774   0.1802167
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0058201   0.0023899   0.0092503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0575540   0.0188270   0.0962809
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0211416   0.0146580   0.0276253
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1522843   0.1020995   0.2024690
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0099206   0.0012605   0.0185807
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2542373   0.1430313   0.3654433
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0143296   0.0091070   0.0195522
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1472868   0.0560408   0.2385328
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0319635   0.0279678   0.0359591
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1272085   0.1047937   0.1496232
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0679852   0.0506304   0.0853399
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4539474   0.3747570   0.5331377
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0213294   0.0176879   0.0249709
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2241379   0.1954531   0.2528227
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0391850   0.0316554   0.0467145
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2051282   0.1417519   0.2685046
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0138918   0.0115363   0.0162474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1692384   0.1586442   0.1798325
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0091297   0.0053339   0.0129256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1743705   0.1531306   0.1956105
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0949721   0.0519217   0.1380225
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2727273   0.1204165   0.4250381
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0894737   0.0487990   0.1301483
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2972973   0.1496970   0.4448976
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0402299   0.0109604   0.0694993
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2962963   0.1236301   0.4689625
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2707182   0.2058350   0.3356014
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6060606   0.4389589   0.7731623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2861953   0.2347228   0.3376678
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5066667   0.3933658   0.6199676
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0828729   0.0544384   0.1113075
24 months   ki1000108-IRC              INDIA                          1                    NA                0.2340426   0.1128487   0.3552364
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1605634   0.1223287   0.1987981
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4864865   0.3724746   0.6004984
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0656371   0.0442923   0.0869819
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2542373   0.1430337   0.3654409
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0427928   0.0239490   0.0616366
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2285714   0.1301067   0.3270362
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0606843   0.0487913   0.0725773
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2443182   0.1808194   0.3078169
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0803571   0.0551591   0.1055552
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3529412   0.2216542   0.4842282
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2091503   0.1445733   0.2737273
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4044944   0.3023178   0.5066710
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0488889   0.0289474   0.0688304
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3267327   0.2351798   0.4182855
24 months   ki1114097-CMIN             PERU                           0                    NA                0.0291545   0.0113293   0.0469798
24 months   ki1114097-CMIN             PERU                           1                    NA                0.2325581   0.1431671   0.3219492
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2443820   0.1996947   0.2890694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4356436   0.3388369   0.5324503
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3396226   0.3055314   0.3737139
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6314199   0.5794249   0.6834149
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1476910   0.1375458   0.1578362
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4290172   0.3906987   0.4673357
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2658009   0.2477825   0.2838193
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5555556   0.4717172   0.6393939
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0318302   0.0140945   0.0495659
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2722772   0.2108393   0.3337151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0855534   0.0776178   0.0934890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3127464   0.2936164   0.3318764
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0441288   0.0357556   0.0525019
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2114951   0.1866568   0.2363334


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417119   0.0374091   0.0460146
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0606665   0.0568133   0.0645198
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0556496   0.0487560   0.0625432
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0746269   0.0382069   0.1110468
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0794203   0.0666566   0.0921840
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0998185   0.0747668   0.1248702
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0699301   0.0457690   0.0940911
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2866521   0.2451477   0.3281565
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4296365   0.4000034   0.4592696
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1814607   0.1711228   0.1917985
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1157168   0.0896385   0.1417950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1558110   0.1470514   0.1645706
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0921436   0.0826637   0.1016234


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  9.600000    3.391639   27.172702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  3.041096    1.744730    5.300683
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  4.795894    2.416830    9.516845
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  6.389610    4.168875    9.793318
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.756870    1.029841    2.997154
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  6.824176    4.815626    9.670472
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.090196    3.781243   13.294804
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.716667    3.162480   24.025537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.556150    2.971351   14.465843
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.888816    4.042664   24.189171
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.203046    4.592090   11.298531
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 25.627119    9.652859   68.036752
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 10.278516    5.493149   19.232663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.979808    3.206533    4.939563
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  6.677153    4.901323    9.096396
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 10.508420    8.489312   13.007755
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.234872    3.638251    7.532159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 12.182567   10.195738   14.556568
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 19.099199   12.355021   29.524791
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.871658    1.398788    5.895404
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  3.322735    1.694905    6.513974
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.365079    2.899635   18.707319
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.238714    1.553603    3.225947
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.770353    1.328709    2.358793
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  2.824114    1.517417    5.256048
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.029872    2.169315    4.231808
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.873380    2.245853    6.680344
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  5.341353    2.884808    9.889760
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.026052    2.907445    5.575031
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.392157    2.700140    7.144459
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.933989    1.297787    2.882069
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.683168    4.074407   10.962267
24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             PERU                           1                    0                  7.976744    3.874182   16.423713
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.782633    1.336845    2.377076
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.859181    1.632809    2.116938
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  2.904829    2.595288    3.251290
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.090119    1.771428    2.466146
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  8.554043    4.689153   15.604449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.655569    3.282352    4.071223
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.792682    3.820794    6.011788


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0326417    0.0094626   0.0558208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0327401    0.0111306   0.0543495
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0213916    0.0060617   0.0367215
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1632573    0.1239639   0.2025507
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0311647   -0.0021652   0.0644946
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0587713    0.0458331   0.0717096
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0319911    0.0161807   0.0478014
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0106294    0.0018240   0.0194348
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0142233    0.0048177   0.0236289
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0035441    0.0008206   0.0062676
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0123672    0.0073200   0.0174144
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0256033    0.0123778   0.0388288
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0010882    0.0002614   0.0019150
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0097484    0.0073367   0.0121601
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0610471    0.0454333   0.0766609
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0240059    0.0202485   0.0277633
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0095595    0.0056049   0.0135141
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0467747    0.0433332   0.0502162
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0465199    0.0401069   0.0529328
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0276694    0.0015425   0.0537964
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0338743    0.0069874   0.0607613
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0343970    0.0079419   0.0608520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0517117    0.0196396   0.0837838
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0444499    0.0177946   0.0711052
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0173716    0.0023210   0.0324221
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0562198    0.0324216   0.0800181
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0192849    0.0068015   0.0317684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0253006    0.0105762   0.0400249
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0187360    0.0116416   0.0258304
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0278593    0.0123910   0.0433276
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0718414    0.0258249   0.1178579
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0509296    0.0315463   0.0703129
24 months   ki1114097-CMIN             PERU                           0                    NA                0.0407756    0.0209410   0.0606101
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0422701    0.0176056   0.0669345
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0900139    0.0692065   0.1108213
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0337697    0.0284166   0.0391227
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0159987    0.0105855   0.0214119
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0838865    0.0596997   0.1080733
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0702576    0.0635810   0.0769342
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0480148    0.0400919   0.0559377


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5758929    0.1551277   0.7871076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2876448    0.0895472   0.4426400
6 months    ki1000108-IRC              INDIA                          0                    NA                0.3002197    0.0810070   0.4671423
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.6460820    0.5028934   0.7480260
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1664477   -0.0277394   0.3239440
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6134259    0.4830009   0.7109482
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4908344    0.2615395   0.6489323
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4426386    0.0644328   0.6679536
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4421590    0.1505775   0.6336492
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3784740    0.0897894   0.5755986
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3690728    0.2301006   0.4829595
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7207341    0.4071824   0.8684428
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0705822    0.0164597   0.1217265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2337081    0.1789171   0.2848429
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4731150    0.3657983   0.5622720
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.5295195    0.4644904   0.5866518
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1961148    0.1176543   0.2675983
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7710130    0.7338333   0.8029992
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8359426    0.7592012   0.8882269
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2256124   -0.0032028   0.4022383
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2746241    0.0434695   0.4499179
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4609195    0.0905879   0.6804444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1603811    0.0558926   0.2533055
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1344338    0.0503185   0.2110988
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1732920    0.0170865   0.3046732
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2593367    0.1479652   0.3561505
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2270901    0.0786610   0.3516070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3715573    0.1575911   0.5311775
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2359092    0.1492971   0.3137032
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2574405    0.1150105   0.3769478
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2556709    0.0767711   0.3999042
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.5102222    0.3320495   0.6408682
24 months   ki1114097-CMIN             PERU                           0                    NA                0.5830904    0.3167840   0.7455949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1474612    0.0578527   0.2285469
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2095117    0.1591313   0.2568736
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1860991    0.1573472   0.2138701
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0567734    0.0374565   0.0757027
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7249297    0.5464658   0.8331688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4509154    0.4122614   0.4870273
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5210868    0.4432465   0.5880442
