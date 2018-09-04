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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/701f661f-f94f-4dc2-9db1-6574123142de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/701f661f-f94f-4dc2-9db1-6574123142de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/701f661f-f94f-4dc2-9db1-6574123142de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/701f661f-f94f-4dc2-9db1-6574123142de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0240385   0.0031807   0.0448962
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307692   0.0982698   0.3632687
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0811647   0.0501236   0.1122059
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2834063   0.1885732   0.3782394
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0506331   0.0279226   0.0733436
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2223926   0.1131275   0.3316577
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0902444   0.0547378   0.1257511
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5527400   0.4725643   0.6329157
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1542783   0.1005026   0.2080541
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2813080   0.1701576   0.3924584
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0362425   0.0217000   0.0507850
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2539868   0.2183290   0.2896447
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0330443   0.0166377   0.0494509
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2604811   0.1723426   0.3486197
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0133843   0.0035274   0.0232413
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1166667   0.0353685   0.1979649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0179387   0.0074225   0.0284549
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1178551   0.0552982   0.1804120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0058201   0.0023899   0.0092503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0575540   0.0188270   0.0962809
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0210565   0.0145918   0.0275212
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1710525   0.1282013   0.2139037
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0100040   0.0013080   0.0186999
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2399848   0.1349803   0.3449893
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0143897   0.0091533   0.0196260
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1499408   0.0489163   0.2509653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0321056   0.0281089   0.0361024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1275247   0.1058940   0.1491553
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0680002   0.0506827   0.0853176
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3836237   0.3161715   0.4510759
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0215030   0.0178598   0.0251462
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2016995   0.1748025   0.2285966
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0392851   0.0317550   0.0468152
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1992788   0.1444501   0.2541074
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0142128   0.0118179   0.0166078
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1649119   0.1547925   0.1750313
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0091753   0.0053710   0.0129796
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1674669   0.1468571   0.1880768
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0949721   0.0519217   0.1380225
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2727273   0.1204165   0.4250381
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0912449   0.0504015   0.1320882
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3702718   0.2356385   0.5049052
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0402299   0.0109604   0.0694993
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2962963   0.1236301   0.4689625
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2694209   0.2047368   0.3341050
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6075256   0.4490185   0.7660326
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2855205   0.2345200   0.3365210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4151784   0.3210297   0.5093270
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0823725   0.0540252   0.1107198
24 months   ki1000108-IRC              INDIA                          1                    NA                0.1753385   0.0670825   0.2835944
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1598490   0.1217192   0.1979788
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4817480   0.3731001   0.5903960
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0656644   0.0443264   0.0870023
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2510688   0.1410585   0.3610791
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0430585   0.0242203   0.0618968
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2215623   0.1230571   0.3200675
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0606349   0.0487726   0.0724973
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2587630   0.2031969   0.3143291
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0795263   0.0545492   0.1045034
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2973654   0.2014542   0.3932766
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2083233   0.1438837   0.2727629
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4032101   0.3012511   0.5051690
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0488934   0.0289476   0.0688392
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3273273   0.2359237   0.4187310
24 months   ki1114097-CMIN             PERU                           0                    NA                0.0293029   0.0114308   0.0471751
24 months   ki1114097-CMIN             PERU                           1                    NA                0.2300854   0.1414415   0.3187293
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2466706   0.2026739   0.2906674
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4278927   0.3409088   0.5148766
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3351914   0.3017238   0.3686590
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6174631   0.5686323   0.6662940
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1486033   0.1385026   0.1587041
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3968242   0.3614181   0.4322304
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2657817   0.2478076   0.2837557
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5203849   0.4532523   0.5875174
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0328831   0.0151486   0.0506176
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2867684   0.2264304   0.3471064
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0857577   0.0779001   0.0936153
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3135156   0.2954300   0.3316012
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0445960   0.0362322   0.0529597
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2104673   0.1860326   0.2349021


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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  3.491742    2.100809    5.803603
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  4.392240    2.259727    8.537213
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  6.124920    4.029729    9.309471
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.823380    1.078937    3.081473
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  7.007983    4.904621   10.013376
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.882793    4.330093   14.350370
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.716667    3.162480   24.025537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.569881    2.979260   14.487937
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.888816    4.042664   24.189171
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  8.123495    5.472481   12.058729
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 23.988983    9.083004   63.356938
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 10.420022    5.195751   20.897241
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.972032    3.219143    4.901007
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  5.641510    4.147174    7.674296
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  9.380054    7.567136   11.627307
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.072629    3.629937    7.088709
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 11.603025    9.727408   13.840295
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 18.251931   11.826434   28.168506
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.871658    1.398788    5.895404
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  4.058001    2.279354    7.224580
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  7.365079    2.899635   18.707319
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.254931    1.586106    3.205785
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.454111    1.091446    1.937281
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  2.128604    1.048758    4.320304
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.013769    2.172430    4.180941
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.823517    2.216394    6.595974
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  5.145608    2.759009    9.596666
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.267557    3.193668    5.702547
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.739208    2.387326    5.856627
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  1.935502    1.296930    2.888488
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.694713    4.083488   10.975711
24 months   ki1114097-CMIN             PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             PERU                           1                    0                  7.851955    3.819252   16.142743
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.734672    1.333670    2.256245
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.842121    1.623456    2.090237
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  2.670359    2.390289    2.983245
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.957941    1.694114    2.262854
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  8.720841    4.887492   15.560754
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.655829    3.292737    4.058961
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.719426    3.773986    5.901713


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0326417    0.0094626   0.0558208
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0326564    0.0111144   0.0541985
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0206200    0.0052963   0.0359437
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1624437    0.1234205   0.2014670
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0329557   -0.0000518   0.0659632
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0595659    0.0469134   0.0722183
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0321326    0.0163265   0.0479388
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0106294    0.0018240   0.0194348
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0142291    0.0048236   0.0236347
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0035441    0.0008206   0.0062676
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0124523    0.0074317   0.0174730
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0255200    0.0123365   0.0387035
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0010281    0.0002098   0.0018464
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0096062    0.0072044   0.0120080
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0610321    0.0454281   0.0766361
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0238323    0.0200995   0.0275650
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0094594    0.0055292   0.0133895
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0464537    0.0430119   0.0498955
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0464743    0.0400665   0.0528821
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0276694    0.0015425   0.0537964
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0321031    0.0053916   0.0588147
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0343970    0.0079419   0.0608520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0530090    0.0213602   0.0846578
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0451247    0.0182075   0.0720418
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0178720    0.0027873   0.0329567
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0569342    0.0332619   0.0806064
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0192576    0.0067786   0.0317367
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0250349    0.0103434   0.0397264
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0187854    0.0117213   0.0258495
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0286901    0.0132271   0.0441531
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0726684    0.0264180   0.1189189
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0509251    0.0315400   0.0703102
24 months   ki1114097-CMIN             PERU                           0                    NA                0.0406271    0.0208160   0.0604383
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0399814    0.0169388   0.0630240
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0944451    0.0738558   0.1150344
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0328573    0.0276639   0.0380507
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0160179    0.0106939   0.0213420
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0828336    0.0586440   0.1070233
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0700533    0.0634281   0.0766784
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0475476    0.0396513   0.0554439


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5758929    0.1551277   0.7871076
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2869099    0.0899238   0.4412583
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2893911    0.0688149   0.4577179
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.6428624    0.5015268   0.7441242
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1760134   -0.0159993   0.3317379
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6217189    0.4926783   0.7179372
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4930065    0.2653368   0.6501221
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4426386    0.0644328   0.6679536
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4423406    0.1507384   0.6338183
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3784740    0.0897894   0.5755986
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3716133    0.2336954   0.4847090
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7183886    0.4054299   0.8666179
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0666841    0.0129707   0.1174745
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2302996    0.1757237   0.2812620
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4729987    0.3659723   0.5619585
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.5256889    0.4610731   0.5825575
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1940602    0.1160896   0.2651529
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7657219    0.7279945   0.7982165
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8351237    0.7583148   0.8875223
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2256124   -0.0032028   0.4022383
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2602647    0.0307209   0.4354482
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4609195    0.0905879   0.6804444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1644047    0.0612499   0.2562244
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1364746    0.0519719   0.2134452
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1782838    0.0219449   0.3096325
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2626318    0.1519303   0.3588831
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2267686    0.0784415   0.3512221
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3676548    0.1544746   0.5270865
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2365311    0.1504506   0.3138895
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2651181    0.1236332   0.3837609
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.2586142    0.0790054   0.4031963
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.5101770    0.3319520   0.6408543
24 months   ki1114097-CMIN             PERU                           0                    NA                0.5809679    0.3145829   0.7438233
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1394772    0.0561214   0.2154717
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2198256    0.1702544   0.2664353
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1810714    0.1532117   0.2080145
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0568416    0.0378609   0.0754478
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7158310    0.5390195   0.8248255
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4496042    0.4115143   0.4852287
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5160165    0.4385606   0.5827866
