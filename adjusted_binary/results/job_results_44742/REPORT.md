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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        enstunt    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0      172     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       31     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       15     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    0      195     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    1       10     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    0       22     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0      132     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    1       70     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0       21     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    1       19     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0      174     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    1       36     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0       19     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    1        9     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0      249     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    1       14     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0       30     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    1        6     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      224     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       39     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       26     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      196     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       23     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       35     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      167     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      128     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       35     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       38     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0      177     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1      184     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0       19     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1       29     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      148     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1       98     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0       64     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1       67     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0      112     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    1       86     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0       36     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    1       39     273
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      229     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    1      107     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0       69     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1       53     458
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       42     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       18     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       18     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       22     100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0      356     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    1      148     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0       64     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    1       30     598
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      524     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       98     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0       41     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       24     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      564     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       85     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       82     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       23     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1796    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      426    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      114    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       48    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0     1685    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    1      865    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0      198    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    1      119    2867
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      224     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       15     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       63     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       11     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      562     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1       27     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      121     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       15     725
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      258     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1      268     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0       20     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1       44     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0       98     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    1       63     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0       50     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    1       52     263
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                    0      110     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                    1        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                    0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                    1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0     1060    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      182    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      204    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       54    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    0      765     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    1       37     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    0      114     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    1       11     927
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    0      192     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    1        5     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    1        2     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0     7549    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1      494    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0       67    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1        3    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9952   12460
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1180   12460
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1149   12460
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      179   12460
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0      409     634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    1       71     634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0      120     634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    1       34     634
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0     5170    7115
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    1     1099    7115
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0      635    7115
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    1      211    7115
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0     1927    2939
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    1      841    2939
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0       96    2939
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    1       75    2939
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0      512     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    1       18     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0      269     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    1       38     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     7193   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     1484   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     3551   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      782   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      794    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      242    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      244    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      141    1421
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      200     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       14     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       41     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        5     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    0      198     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    1        7     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    0       24     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0      168     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    1       33     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0       35     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    1        5     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    0      197     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    1       11     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    0       24     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    1        4     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    0      260     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    1        3     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    0       34     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    1        2     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      252     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       10     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       29     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      211     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       42     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      193     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       89     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       49     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       19     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0      223     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1      119     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0       34     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1       14     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      200     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       44     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      101     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1       28     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0      158     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    1       39     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0       51     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    1       23     271
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      280     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    1       53     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      100     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       17     450
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       52      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       37      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0      89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0      455     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    1       36     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0       79     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    1       10     580
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      589     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       30     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0       58     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        6     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      626     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       19     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      103     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        1     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2026    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      188    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      146    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       16    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0     1901    2408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    1      274    2408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0      205    2408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    1       28    2408
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      219     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       66     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      432     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1       73     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0       54     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1        8     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0      142     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    1       19     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0       89     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    1       12     262
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                    0       95     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                    1        1     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                    0        5     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                    1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                    0      816     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       18     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                    0      118     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        4     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                    0      638     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                    1       15     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                    0       38     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                    1        3     694
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    0      194     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0     7474    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1      436    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0       66    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1        3    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9848   11446
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      389   11446
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1171   11446
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       38   11446
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    0      397     465
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    1       12     465
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    0       56     465
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    1        0     465
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     5134    6342
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1      493    6342
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0      675    6342
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    1       40    6342
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0     2453    2895
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    1      273    2895
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0      158    2895
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    1       11    2895
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    0      171     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    0       97     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     7853   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      713   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4016   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      254   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      916    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       26    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      329    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1        5    1276
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0      168     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    1       33     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0       28     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    1       11     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    0      182     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                    1        4     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0      148     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    1       48     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    1       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0      180     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    1       28     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    1        8     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0      224     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    1       12     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0       29     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    1        5     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      202     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       31     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      187     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       19     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       32     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      227     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       71     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       47     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       28     373
6-24 months                   ki1000108-IRC              INDIA                          0                    0      254     410
6-24 months                   ki1000108-IRC              INDIA                          0                    1      108     410
6-24 months                   ki1000108-IRC              INDIA                          1                    0       29     410
6-24 months                   ki1000108-IRC              INDIA                          1                    1       19     410
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      171     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1       74     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0       80     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1       50     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0      107     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    1       62     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0       39     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    1       22     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0      244     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1       75     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0       71     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1       42     432
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       43     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       18     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       20     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       22     103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0      325     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    1      130     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0       57     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    1       29     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      476     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1       78     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0       40     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1       21     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      554     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       73     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       80     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       23     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1593    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      287    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      101    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       37    2018
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0     1684    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    1      746    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0      186    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    1      122    2738
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      198     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       13     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       56     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       10     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0      521     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      107     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0       92     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       77     797
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      284     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1      241     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0       27     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       38     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0      106     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    1       52     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0       49     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    1       45     252
6-24 months                   ki1114097-CMIN             BRAZIL                         0                    0      110     119
6-24 months                   ki1114097-CMIN             BRAZIL                         0                    1        4     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                    0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                    1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    0     1045    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      180    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      190    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       67    1482
6-24 months                   ki1114097-CMIN             PERU                           0                    0      734     878
6-24 months                   ki1114097-CMIN             PERU                           0                    1       25     878
6-24 months                   ki1114097-CMIN             PERU                           1                    0      109     878
6-24 months                   ki1114097-CMIN             PERU                           1                    1       10     878
6-24 months                   ki1114097-CONTENT          PERU                           0                    0      195     215
6-24 months                   ki1114097-CONTENT          PERU                           0                    1        2     215
6-24 months                   ki1114097-CONTENT          PERU                           1                    0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           1                    1        2     215
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0     7847    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1       66    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0       62    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1        0    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8707   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      853   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      982   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      152   10694
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0      378     597
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    1       63     597
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0      116     597
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    1       40     597
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0     5433    6941
6-24 months                   ki1135781-COHORTS          INDIA                          0                    1      668    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0      656    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                    1      184    6941
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0     1967    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    1      679    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0       93    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    1       70    2809
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0      497     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    1       21     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0      265     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    1       43     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     4998    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      853    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2144    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      560    8555
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      811    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      230    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      252    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      139    1432


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/cd2bb7c6-9fa1-428d-a67f-baf2a869362e/6157cba3-499c-4a71-8363-072e33c72ff9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cd2bb7c6-9fa1-428d-a67f-baf2a869362e/6157cba3-499c-4a71-8363-072e33c72ff9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cd2bb7c6-9fa1-428d-a67f-baf2a869362e/6157cba3-499c-4a71-8363-072e33c72ff9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cd2bb7c6-9fa1-428d-a67f-baf2a869362e/6157cba3-499c-4a71-8363-072e33c72ff9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2000000    0.1464299   0.2535701
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3260870    0.1903583   0.4618156
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3465347    0.2807755   0.4122938
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4750000    0.3199243   0.6300757
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1714286    0.1203476   0.2225096
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3214286    0.1480787   0.4947784
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                0.0532319    0.0260547   0.0804092
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667    0.0447233   0.2886100
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1482890    0.1052650   0.1913130
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1612903    0.0315972   0.2909835
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1050228    0.0643403   0.1457053
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667    0.0537415   0.2795918
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4338983    0.3772654   0.4905313
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5205479    0.4057906   0.6353053
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.5096953    0.4580638   0.5613268
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.6041667    0.4656527   0.7426806
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.3983740    0.3371155   0.4596324
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.5114504    0.4257377   0.5971631
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4343434    0.3651754   0.5035115
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5200000    0.4067243   0.6332757
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3184524    0.2504129   0.3864919
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4344262    0.2482198   0.6206326
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3000000    0.1834628   0.4165372
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5500000    0.3950512   0.7049488
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2936508    0.2538564   0.3334452
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3191489    0.2248362   0.4134617
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1575563    0.1289041   0.1862084
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3692308    0.2518243   0.4866372
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1309707    0.1049980   0.1569435
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2190476    0.1398845   0.2982108
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1917192    0.1753480   0.2080904
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2962963    0.2259664   0.3666262
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.3392157    0.3208367   0.3575947
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.3753943    0.3220804   0.4287083
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0627615    0.0319640   0.0935590
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1486486    0.0674662   0.2298311
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0458404    0.0325707   0.0591102
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1102941    0.0479955   0.1725928
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5095057    0.4667479   0.5522635
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6875000    0.5738452   0.8011548
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3913043    0.3157743   0.4668344
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5098039    0.4126049   0.6070029
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1465378    0.1268635   0.1662121
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2093023    0.1596459   0.2589587
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                0.0461347    0.0316084   0.0606609
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    NA                0.0880000    0.0383103   0.1376897
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1060007    0.1002820   0.1117195
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1347892    0.1164214   0.1531569
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1479167    0.1161318   0.1797015
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2207792    0.1552191   0.2863394
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1753071    0.1658941   0.1847200
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2494090    0.2202514   0.2785665
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3038295    0.2866934   0.3209656
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4385965    0.3642100   0.5129830
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0339623    0.0185323   0.0493922
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1237785    0.0869174   0.1606396
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1710269    0.1617337   0.1803200
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1804754    0.1675232   0.1934277
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2335907    0.2036132   0.2635683
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3662338    0.3154199   0.4170477
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0654206    0.0322278   0.0986133
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1086957    0.0185748   0.1988165
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1641791    0.1128612   0.2154970
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1250000    0.0222977   0.2277023
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3156028    0.2612816   0.3699240
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2794118    0.1726094   0.3862141
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.3479532    0.2974066   0.3984999
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.2916667    0.1629167   0.4204167
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.1803279    0.1320234   0.2286324
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.2170543    0.1458205   0.2882881
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1979695    0.1422237   0.2537154
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3108108    0.2051650   0.4164566
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1591592    0.0915698   0.2267485
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1452991    0.0956628   0.1949355
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0733198    0.0502439   0.0963956
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1123596    0.0466919   0.1780272
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0484653    0.0315356   0.0653949
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0937500    0.0222862   0.1652138
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0849142    0.0733005   0.0965279
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0987654    0.0528135   0.1447173
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.1259770    0.1120289   0.1399251
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.1201717    0.0784117   0.1619317
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1445545    0.1138573   0.1752516
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1290323    0.0455132   0.2125513
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1180124    0.0680825   0.1679423
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.1188119    0.0555879   0.1820359
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0379994    0.0342955   0.0417033
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0314309    0.0215954   0.0412665
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0876133    0.0802254   0.0950011
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0559441    0.0390977   0.0727904
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1001467    0.0888757   0.1114178
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0650888    0.0278909   0.1022866
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0832360    0.0760944   0.0903777
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0594848    0.0517521   0.0672174
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0276008    0.0163490   0.0388527
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0149701   -0.0038890   0.0338291
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1641791    0.1128608   0.2154974
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2820513    0.1405263   0.4235763
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2448980    0.1845668   0.3052291
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4102564    0.2555526   0.5649602
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1346154    0.0881324   0.1810984
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2962963    0.1236925   0.4689001
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                0.0508475    0.0227672   0.0789277
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588    0.0277921   0.2663256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1330472    0.0893543   0.1767401
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1923077    0.0405248   0.3440906
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0922330    0.0526387   0.1318273
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872    0.0587994   0.3001750
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2382550    0.1898212   0.2866889
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3733333    0.2637191   0.4829476
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.2983425    0.2511532   0.3455319
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3958333    0.2573198   0.5343469
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3020408    0.2444713   0.3596104
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3846154    0.3008735   0.4683573
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3668639    0.2940437   0.4396841
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3606557    0.2398902   0.4814213
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2351097    0.2116653   0.2585541
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3716814    0.2170739   0.5262890
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2950820    0.1800702   0.4100938
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5238095    0.3720280   0.6755911
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2857143    0.2441667   0.3272619
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3372093    0.2372004   0.4372182
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1407942    0.1118083   0.1697802
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3442623    0.2249332   0.4635914
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1164274    0.0913051   0.1415498
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2233010    0.1428190   0.3037830
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1526596    0.1363978   0.1689213
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2681159    0.1941897   0.3420422
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.3069959    0.2886534   0.3253384
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.3961039    0.3414731   0.4507347
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0616114    0.0291091   0.0941137
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1515152    0.0648566   0.2381737
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1703822    0.1376562   0.2031082
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4556213    0.3641151   0.5471275
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4590476    0.4163852   0.5017100
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5846154    0.4647151   0.7045156
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3291139    0.2556997   0.4025282
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4787234    0.3775366   0.5799102
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1469388    0.1271059   0.1667716
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2607004    0.2070084   0.3143923
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                0.0329381    0.0202338   0.0456424
6-24 months                   ki1114097-CMIN             PERU                           1                    NA                0.0840336    0.0341580   0.1339092
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0892259    0.0835113   0.0949406
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1340388    0.1142086   0.1538690
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1428571    0.1101705   0.1755438
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2564103    0.1878324   0.3249882
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1094902    0.1016544   0.1173261
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.2190476    0.1910758   0.2470195
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2566138    0.2399690   0.2732585
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4294479    0.3534442   0.5054515
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0405405    0.0235462   0.0575349
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1396104    0.1008809   0.1783399
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1457870    0.1358646   0.1557095
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2071006    0.1902885   0.2239127
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2209414    0.1918793   0.2500035
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3554987    0.3038932   0.4071042


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2222222   0.1716883   0.2727561
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3677686   0.3068900   0.4286472
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1890756   0.1392237   0.2389275
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0668896   0.0385244   0.0952548
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1496599   0.1088126   0.1905072
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1149425   0.0761733   0.1537118
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3493450   0.2536096   0.4450804
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4000000   0.3034980   0.4965020
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2976589   0.2609818   0.3343359
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3432159   0.3258337   0.3605981
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830671   0.0524436   0.1136905
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0579310   0.0392445   0.0766175
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5288136   0.4885012   0.5691259
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4372624   0.3771974   0.4973274
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           NA                   NA                0.0517799   0.0375082   0.0660517
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090690   0.1035953   0.1145427
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1656151   0.1366564   0.1945739
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1841181   0.1751116   0.1931245
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3116706   0.2949224   0.3284188
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0669056   0.0499685   0.0838427
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1741737   0.1663519   0.1819955
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2695285   0.2427999   0.2962571
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0730769   0.0413805   0.1047733
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1576763   0.1115695   0.2037832
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1555556   0.0935813   0.2175298
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0793103   0.0572998   0.1013209
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1254153   0.1121845   0.1386461
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1428571   0.1140289   0.1716853
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1183206   0.0791362   0.1575050
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0373056   0.0338337   0.0407775
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0840429   0.0772139   0.0908719
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0981002   0.0872631   0.1089373
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0753350   0.0700333   0.0806367
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0242947   0.0148797   0.0337096
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0629630   0.0339366   0.0919893
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1061224   0.0674772   0.1447677
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3652174   0.3028556   0.4275792
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2708333   0.2169112   0.3247555
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3883495   0.2937670   0.4829321
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3170197   0.2995873   0.3344522
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2308657   0.1897291   0.2720024
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1114097-CMIN             PERU                           NA                   NA                0.0398633   0.0269154   0.0528113
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939779   0.0884472   0.0995086
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1725293   0.1421951   0.2028635
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1227489   0.1150285   0.1304693
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months                   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1651666   0.1559963   0.1743368
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6304348   0.9938958   2.6746442
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0                 1.3707143   0.9396137   1.9996065
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.8750000   1.0125344   3.4721042
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0                 3.1309524   1.2829462   7.6408992
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0876758   0.4626441   2.5571245
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5869565   0.7271305   3.4635202
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1997003   0.9285568   1.5500193
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.1853487   0.9225539   1.5230021
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.2838448   1.0226675   1.6117237
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.1972093   0.9140723   1.5680490
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.3641796   1.0700176   1.7392106
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.8333333   1.1345922   2.9623958
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.0868315   0.7851838   1.5043647
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.3434851   1.6247180   3.3802312
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6724930   1.1074766   2.5257715
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5454704   1.2009013   1.9889050
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.1066538   0.9505976   1.2883291
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.3684685   1.1365957   4.9354777
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.4060457   1.4411571   4.0169499
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3493470   1.1210031   1.6242037
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.3028322   0.9932550   1.7088985
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.4283159   1.0875129   1.8759192
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    0                 1.9074594   0.9992618   3.6410894
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2715872   1.0982356   1.4723015
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.4925919   1.0345552   2.1534189
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.4226978   1.2509551   1.6180190
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4435613   1.2072922   1.7260688
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0                 3.6445892   2.1170324   6.2743633
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0552461   0.9677112   1.1506991
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5678437   1.3114539   1.8743579
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6614907   0.6285615   4.3918552
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7613636   0.3160956   1.8338586
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8853272   0.5821644   1.3463624
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.8382353   0.5266739   1.3341052
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 1.2036646   0.7880010   1.8385870
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.5699931   1.0097268   2.4411339
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9129173   0.7446165   1.1192580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5324594   0.7890519   2.9762705
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.9343750   0.8363385   4.4740336
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1631206   0.7161665   1.8890153
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 0.9539175   0.6623951   1.3737398
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8926204   0.4516663   1.7640705
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.0067744   0.5101340   1.9869184
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8271426   0.5959893   1.1479484
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 0.6385339   0.4670625   0.8729570
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.6499339   0.3629989   1.1636786
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7146516   0.6093992   0.8380828
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.5423768   0.1416534   2.0767073
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.7179487   0.9511964   3.1027743
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    0                 1.6752137   1.0677048   2.6283865
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    0                 2.2010582   1.1182333   4.3324209
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    0                 2.8921569   1.0841767   7.7151369
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4454094   0.6147907   3.3982436
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9460189   0.8763681   4.3212316
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.5669484   1.0963804   2.2394846
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 1.3267747   0.9036931   1.9479302
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.2733888   0.9534309   1.7007199
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9830777   0.6660914   1.4509147
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.5808850   1.1276995   2.2161908
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.7751323   1.0922088   2.8850662
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.1802326   0.8482344   1.6421745
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.4451450   1.6338715   3.6592437
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9179412   1.2600842   2.9192481
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7562996   1.3068538   2.3603162
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.2902580   1.1101955   1.4995248
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.4592075   1.1294748   5.3544368
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.6741138   2.1209485   3.3715503
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2735397   1.0167723   1.5951491
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.4545827   1.0697405   1.9778728
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.7742110   1.3869615   2.2695833
6-24 months                   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             PERU                           1                    0                 2.5512605   1.2570291   5.1780268
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5022403   1.2785742   1.7650331
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.7948718   1.2623335   2.5520710
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.0006131   1.7281804   2.3159924
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.6735184   1.3860203   2.0206515
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0                 3.4437229   2.0831470   5.6929385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4205692   1.2869340   1.5680812
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6090181   1.3383415   1.9344384


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0222222   -0.0041498    0.0485942
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0212339   -0.0072521    0.0497199
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0176471   -0.0044864    0.0397805
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0136577   -0.0019577    0.0292730
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0013709   -0.0130443    0.0157861
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0099197   -0.0095907    0.0294301
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0171887   -0.0084418    0.0428191
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0110871   -0.0065105    0.0286847
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0392918    0.0022814    0.0763022
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0235320   -0.0132126    0.0602766
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0308926   -0.0011579    0.0629431
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1000000    0.0187815    0.1812185
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0040081   -0.0120999    0.0201160
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0200274    0.0076890    0.0323659
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0122654    0.0004605    0.0240702
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071063    0.0020869    0.0121257
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0040002   -0.0022489    0.0102493
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0203056   -0.0006179    0.0412291
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0120906    0.0023067    0.0218746
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0193079    0.0053978    0.0332180
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0459580   -0.0022916    0.0942076
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0107955    0.0015307    0.0200603
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                 0.0056453   -0.0013960    0.0126865
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0030683    0.0010120    0.0051246
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0176985   -0.0001657    0.0355627
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0088110    0.0051255    0.0124965
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0078412    0.0032556    0.0124267
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0329434    0.0179957    0.0478910
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0031469   -0.0019732    0.0082669
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0359378    0.0209762    0.0508994
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0076564   -0.0094538    0.0247665
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0065028   -0.0256473    0.0126418
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0070314   -0.0303597    0.0162969
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0069276   -0.0240501    0.0101949
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0127016   -0.0171172    0.0425204
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0308127   -0.0023516    0.0639771
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0036036   -0.0120945    0.0048873
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0059906   -0.0047514    0.0167325
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0042434   -0.0027093    0.0111961
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009444   -0.0022902    0.0041791
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0005617   -0.0048224    0.0036990
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016973   -0.0114354    0.0080408
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0003082   -0.0307483    0.0313646
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0006938   -0.0018045    0.0004169
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0035704   -0.0056589   -0.0014819
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0020466   -0.0043352    0.0002421
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0079011   -0.0114770   -0.0043251
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0033062   -0.0091334    0.0025210
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0191542   -0.0059223    0.0442308
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0274425   -0.0012202    0.0561051
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0185761   -0.0029978    0.0401500
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0121155   -0.0037784    0.0280094
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0059489   -0.0100549    0.0219528
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0138894   -0.0067225    0.0345013
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0271605    0.0024443    0.0518767
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0114136   -0.0059851    0.0288123
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0286259   -0.0068274    0.0640791
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0016465   -0.0390496    0.0357566
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0357236    0.0012847    0.0701625
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0932675    0.0126090    0.1739261
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0081859   -0.0091024    0.0254742
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0201814    0.0070857    0.0332771
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0150794    0.0028806    0.0272782
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078954    0.0025652    0.0132257
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0100238    0.0034560    0.0165917
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0214211   -0.0010895    0.0439317
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0604836    0.0384128    0.0825544
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0138337   -0.0005419    0.0282094
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0558067    0.0083233    0.1032901
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0197279    0.0095625    0.0298932
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                 0.0069252   -0.0001459    0.0139964
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0047520    0.0025480    0.0069559
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0296722    0.0094208    0.0499235
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0132586    0.0096440    0.0168732
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0100292    0.0052734    0.0147850
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0369413    0.0208354    0.0530472
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0193795    0.0135617    0.0251974
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0367402    0.0217608    0.0517195


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1000000   -0.0256416    0.2102504
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0577372   -0.0230533    0.1321477
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0933333   -0.0299130    0.2018312
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.2041825   -0.0476029    0.3954527
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0091600   -0.0919736    0.1009272
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0863014   -0.0979263    0.2396164
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0381050   -0.0205264    0.0933678
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0212893   -0.0131592    0.0545666
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0897758    0.0008742    0.1707670
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0513939   -0.0325288    0.1284955
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0884301    0.0151085    0.1562931
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2500000    0.0168108    0.4278822
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0134653   -0.0421575    0.0661194
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1127774    0.0421041    0.1782365
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0856303    0.0004231    0.1635742
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0357415    0.0102511    0.0605755
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0116551   -0.0067215    0.0296962
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2444480   -0.0347093    0.4482906
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2087072    0.0699852    0.3267374
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0365117    0.0096695    0.0626262
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1051040   -0.0127490    0.2092425
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0686154    0.0082100    0.1253418
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                 0.1090243   -0.0343616    0.2325337
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0281317    0.0091359    0.0467634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1068651   -0.0066006    0.2075407
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0478551    0.0277060    0.0675867
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0251585    0.0103415    0.0397536
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4923854    0.2642126    0.6498003
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0180674   -0.0117739    0.0470285
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1333357    0.0750358    0.1879610
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1047713   -0.1578899    0.3078492
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0412412   -0.1696095    0.0730383
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0227870   -0.1012442    0.0500807
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0203139   -0.0717832    0.0286837
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0658015   -0.1017875    0.2078991
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1346815   -0.0213947    0.2669082
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0231660   -0.0737441    0.0250296
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0755335   -0.0687471    0.2003363
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0805062   -0.0587370    0.2014363
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0109995   -0.0273780    0.0479434
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0044790   -0.0390304    0.0289236
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0118812   -0.0823666    0.0540141
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0026047   -0.2976482    0.2333843
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0185979   -0.0487634    0.0107000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0424831   -0.0674324   -0.0181170
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0208620   -0.0443696    0.0021165
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1048789   -0.1519043   -0.0597733
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1360866   -0.4078934    0.0832455
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1044776   -0.0413016    0.2298482
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1007653   -0.0101070    0.1994679
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1212607   -0.0276514    0.2485947
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1924227   -0.0845409    0.3986570
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0427992   -0.0789778    0.1508321
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1308813   -0.0809017    0.3011692
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1023320    0.0048358    0.1902766
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.0368469   -0.0209559    0.0913771
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0865701   -0.0271139    0.1876712
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0045083   -0.1123247    0.0928576
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1319026    0.0232166    0.2284952
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2401639    0.0016894    0.4216721
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0278527   -0.0327644    0.0849119
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1253692    0.0424382    0.2011178
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1146664    0.0188933    0.2010904
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0491759    0.0156305    0.0815780
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0316190    0.0106858    0.0521092
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2579848   -0.0452562    0.4732520
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2619859    0.1812477    0.3347625
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0292541   -0.0017052    0.0592566
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1449824    0.0121120    0.2599818
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1183673    0.0562571    0.1763900
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                 0.1737248   -0.0135769    0.3264145
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0505650    0.0269770    0.0735811
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1719834    0.0488435    0.2791811
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1080143    0.0786896    0.1364056
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0376128    0.0196563    0.0552403
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4767736    0.2646305    0.6277166
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1173332    0.0820130    0.1512944
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1425797    0.0818340    0.1993065
