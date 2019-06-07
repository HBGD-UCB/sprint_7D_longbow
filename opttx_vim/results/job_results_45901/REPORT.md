---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9fe8232c-bc6d-4639-a351-d91ce5606ca8/372730e1-1777-4e1b-a619-6356e0137466/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fe8232c-bc6d-4639-a351-d91ce5606ca8/372730e1-1777-4e1b-a619-6356e0137466/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2008831    0.1472336   0.2545325
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3499985    0.2840661   0.4159309
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1715711    0.1204302   0.2227119
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0534169    0.0261746   0.0806591
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1965766    0.0970723   0.2960810
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1053622    0.0645825   0.1461419
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4364621    0.3793940   0.4935302
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.5065539    0.4549414   0.5581665
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.4144545    0.3481137   0.4807953
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4342427    0.3647716   0.5037138
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3490849    0.2175387   0.4806311
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2776777    0.1601092   0.3952461
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3155474    0.2563763   0.3747185
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1538003    0.1254093   0.1821912
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1312585    0.1052532   0.1572637
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1917974    0.1754208   0.2081740
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3411424    0.3090424   0.3732424
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0625267    0.0315655   0.0934880
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.0458208    0.0324969   0.0591447
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4855874    0.4326083   0.5385664
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.3935807    0.3174772   0.4696842
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1467416    0.1270559   0.1664273
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           optimal              NA                0.0462845    0.0317274   0.0608416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1114404    0.1021341   0.1207467
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1478772    0.1160566   0.1796979
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1751801    0.1651325   0.1852276
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2889501    0.2604527   0.3174475
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0349578    0.0189736   0.0509420
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1660704    0.1557507   0.1763901
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2362720    0.2062246   0.2663194
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.0660492    0.0326252   0.0994731
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1305523    0.0209285   0.2401762
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2699320    0.1636080   0.3762561
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.2876477    0.1807047   0.3945907
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                0.1875921    0.1347245   0.2404597
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.1964822    0.1407184   0.2522460
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1578080    0.1138374   0.2017786
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.0282425    0.0136420   0.0428429
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0855633    0.0316771   0.1394496
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0803661    0.0499955   0.1107367
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1765001    0.1379485   0.2150517
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1789626    0.1018087   0.2561164
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.0990694    0.0468896   0.1512492
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0325954    0.0238272   0.0413636
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0565795    0.0396118   0.0735471
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0598675    0.0277739   0.0919610
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0620422    0.0542196   0.0698648
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0148256   -0.0039854   0.0336365
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1652872    0.0995588   0.2310156
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2453743    0.1850992   0.3056494
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1357293    0.0890039   0.1824547
6-24 months                   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0509198    0.0228110   0.0790285
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1327874    0.0890836   0.1764911
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0920669    0.0524442   0.1316895
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2389196    0.1902914   0.2875478
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.2992244    0.2518328   0.3466161
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                0.3105542    0.2499104   0.3711979
6-24 months                   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4295160    0.3210333   0.5379987
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2356779    0.1975967   0.2737591
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2928381    0.1751630   0.4105132
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3134778    0.2672279   0.3597278
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1370421    0.1083799   0.1657042
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1161828    0.0910676   0.1412980
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1523410    0.1360847   0.1685972
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3061162    0.2878047   0.3244276
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0723590    0.0306709   0.1140471
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1701117    0.1373168   0.2029066
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4465038    0.3825218   0.5104858
6-24 months                   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.3281573    0.2542706   0.4020440
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1472435    0.1273926   0.1670944
6-24 months                   ki1114097-CMIN             PERU                           optimal              NA                0.0329973    0.0202735   0.0457211
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0887724    0.0828558   0.0946889
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1422726    0.1095652   0.1749800
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1092487    0.1014207   0.1170767
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2422377    0.2258804   0.2585950
6-24 months                   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0474431    0.0283473   0.0665390
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1419474    0.1316207   0.1522742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2249988    0.1955566   0.2544410


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2222222   0.1716883   0.2727561
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          observed             NA                0.3677686   0.3068900   0.4286472
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1890756   0.1392237   0.2389275
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           observed             NA                0.0668896   0.0385244   0.0952548
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1496599   0.1088126   0.1905072
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1149425   0.0761733   0.1537118
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3493450   0.2536096   0.4450804
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.4000000   0.3034980   0.4965020
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2976589   0.2609818   0.3343359
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             NA                0.3432159   0.3258337   0.3605981
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.0830671   0.0524436   0.1136905
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.0579310   0.0392445   0.0766175
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5288136   0.4885012   0.5691259
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     observed             NA                0.4372624   0.3771974   0.4973274
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           observed             NA                0.0517799   0.0375082   0.0660517
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1090690   0.1035953   0.1145427
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1656151   0.1366564   0.1945739
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             NA                0.1841181   0.1751116   0.1931245
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.3116706   0.2949224   0.3284188
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0669056   0.0499685   0.0838427
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1741737   0.1663519   0.1819955
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2695285   0.2427999   0.2962571
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.0730769   0.0413805   0.1047733
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          observed             NA                0.1576763   0.1115695   0.2037832
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1555556   0.0935813   0.2175298
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.0793103   0.0572998   0.1013209
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             NA                0.1254153   0.1121845   0.1386461
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.1428571   0.1140289   0.1716853
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     observed             NA                0.1183206   0.0791362   0.1575050
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0373056   0.0338337   0.0407775
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             NA                0.0840429   0.0772139   0.0908719
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.0981002   0.0872631   0.1089373
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.0753350   0.0700333   0.0806367
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0242947   0.0148797   0.0337096
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki0047075b-MAL-ED          PERU                           observed             NA                0.0629630   0.0339366   0.0919893
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1389961   0.0967835   0.1812087
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1061224   0.0674772   0.1447677
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1000109-EE               PAKISTAN                       observed             NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000109-ResPak           PAKISTAN                       observed             NA                0.3652174   0.3028556   0.4275792
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2708333   0.2169112   0.3247555
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3883495   0.2937670   0.4829321
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             NA                0.3170197   0.2995873   0.3344522
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.0830325   0.0504792   0.1155858
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2308657   0.1897291   0.2720024
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4728814   0.4325613   0.5132014
6-24 months                   ki1114097-CMIN             BANGLADESH                     observed             NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1114097-CMIN             PERU                           observed             NA                0.0398633   0.0269154   0.0528113
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0939779   0.0884472   0.0995086
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1725293   0.1421951   0.2028635
6-24 months                   ki1135781-COHORTS          INDIA                          observed             NA                0.1227489   0.1150285   0.1304693
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months                   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0774818   0.0592383   0.0957254
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1651666   0.1559963   0.1743368
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1062268   0.9706754   1.2607074
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0507720   0.9672776   1.1414736
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1020252   0.9699551   1.2520782
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2522192   0.9520340   1.6470555
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7613309   0.4977288   1.1645394
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0909275   0.9081447   1.3104991
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0335078   0.9734511   1.0972697
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.0280888   0.9919287   1.0655670
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           1.0560045   0.9514958   1.1719920
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0544230   0.9684586   1.1480179
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0007450   0.8942427   1.1199315
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.4405192   1.0628930   1.9523090
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9433095   0.8080528   1.1012063
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1546383   1.0649756   1.2518498
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0912522   0.9985788   1.1925262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0366433   1.0098330   1.0641654
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0060781   0.9277820   1.0909815
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.3285052   0.9658639   1.8273030
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.2642957   1.0742176   1.4880073
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0890184   1.0116464   1.1723078
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1109852   0.9813942   1.2576884
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0721792   1.0068245   1.1417763
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           observed             optimal           1.1187316   0.9637403   1.2986490
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9787206   0.9154119   1.0464076
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1199501   0.9932730   1.2627830
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.0510217   1.0211294   1.0817892
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0786314   0.9944189   1.1699755
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.9138964   1.3175208   2.7802214
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0487945   1.0059396   1.0934750
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1407550   1.0693655   1.2169103
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1064022   0.8561192   1.4298544
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2077634   0.5531612   2.6370116
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1431449   0.7998182   1.6338466
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           1.1855670   0.8469155   1.6596333
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             optimal           1.0289853   0.8303635   1.2751172
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.1643921   0.9851288   1.3762759
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9857269   0.8292543   1.1717243
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           2.8081947   1.8270164   4.3163036
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.6160189   0.3606282   1.0522731
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0683429   0.7502843   1.5212323
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             optimal           0.7105678   0.5821702   0.8672836
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.7982514   0.5334690   1.1944562
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1943204   0.7946786   1.7949411
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1445052   0.8891220   1.4732423
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.4853959   1.1135928   1.9813355
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.6386219   0.9701769   2.7676207
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2142544   1.0868437   1.3566015
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.6387003   0.5255222   5.1098484
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1091805   0.8303208   1.4816940
6-24 months                   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1098978   0.9871652   1.2478896
6-24 months                   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1286545   0.9650427   1.3200049
6-24 months                   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2365134   0.9210161   1.6600855
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0467573   0.9279832   1.1807335
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1526671   0.9259548   1.4348879
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1108990   1.0015781   1.2321521
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.0351966   0.9762769   1.0976721
6-24 months                   ki1000109-EE               PAKISTAN                       observed             optimal           1.0647632   0.9389355   1.2074532
6-24 months                   ki1000109-ResPak           PAKISTAN                       observed             optimal           0.8502999   0.6892807   1.0489338
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1491673   1.0363632   1.2742497
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3261577   0.9990054   1.7604452
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9375470   0.8628855   1.0186685
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1746437   1.0670168   1.2931267
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1318959   1.0212862   1.2544850
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0539188   1.0177907   1.0913293
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0356189   1.0111643   1.0606650
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.1475068   0.7670616   1.7166442
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.3571420   1.2269489   1.5011501
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0590758   0.9467862   1.1846831
6-24 months                   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1729759   1.0133307   1.3577724
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.1319120   1.0574830   1.2115796
6-24 months                   ki1114097-CMIN             PERU                           observed             optimal           1.2080778   0.9850307   1.4816309
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0586396   1.0269438   1.0913135
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2126669   1.0544402   1.3946367
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.1235728   1.0879131   1.1604013
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1007490   1.0728069   1.1294188
6-24 months                   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.6331520   1.1845452   2.2516537
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1635756   1.1127652   1.2167061
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1452575   1.0670462   1.2292014


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0213392   -0.0051610    0.0478393
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0177701   -0.0112253    0.0467655
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0175046   -0.0046738    0.0396830
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0134728   -0.0021242    0.0290697
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0469168   -0.1314997    0.0376662
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0095803   -0.0099472    0.0291078
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0146249   -0.0114620    0.0407117
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0142285   -0.0038707    0.0323277
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0232113   -0.0198797    0.0663023
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0236328   -0.0131950    0.0604606
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0002601   -0.0389573    0.0394774
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1223223    0.0385118    0.2061329
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0178885   -0.0665447    0.0307676
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0237834    0.0110024    0.0365644
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0119776    0.0001996    0.0237556
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0070281    0.0019851    0.0120711
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0020735   -0.0255690    0.0297159
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0205404   -0.0005504    0.0416311
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0121102    0.0022850    0.0219355
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0432262    0.0074817    0.0789707
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0436816   -0.0049496    0.0923129
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0105917    0.0013062    0.0198772
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           optimal              NA                 0.0054954   -0.0015584    0.0125492
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0023714   -0.0098243    0.0050815
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0177379   -0.0001849    0.0356607
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0089380    0.0038745    0.0140015
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0227206   -0.0007676    0.0462087
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0319478    0.0167963    0.0470993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0081033    0.0011755    0.0150311
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0332565    0.0181890    0.0483240
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0070278   -0.0101538    0.0242093
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0271240   -0.0749593    0.1292073
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0386394   -0.0578005    0.1350793
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0533779   -0.0431850    0.1499408
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0054374   -0.0349336    0.0458084
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0323001   -0.0008603    0.0654605
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0022524   -0.0288122    0.0243074
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0510679    0.0326187    0.0695171
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0328547   -0.0801051    0.0143957
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0054925   -0.0229137    0.0338986
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0510848   -0.0862717   -0.0158979
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0361054   -0.1078239    0.0356130
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0192512   -0.0215683    0.0600708
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0047102   -0.0035321    0.0129525
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0274634    0.0110273    0.0438996
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0382327    0.0065878    0.0698775
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0132928    0.0062726    0.0203130
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0094691   -0.0070957    0.0260339
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0180461   -0.0299747    0.0660670
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0269661   -0.0020259    0.0559581
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0174622   -0.0042596    0.0391839
6-24 months                   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0120432   -0.0038466    0.0279330
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0062088   -0.0098541    0.0222716
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0140556   -0.0066024    0.0347136
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0264959    0.0016110    0.0513809
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0105317   -0.0070043    0.0280677
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0201125   -0.0189288    0.0591537
6-24 months                   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0642986   -0.1536908    0.0250936
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0351554    0.0061299    0.0641810
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0955114    0.0129898    0.1780330
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0195776   -0.0454564    0.0063011
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0239335    0.0102995    0.0375676
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0153240    0.0031381    0.0275099
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0082140    0.0028622    0.0135659
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0109035    0.0035600    0.0182470
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0106735   -0.0185598    0.0399067
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0607540    0.0392912    0.0822169
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0263776   -0.0236339    0.0763891
6-24 months                   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0567633    0.0088710    0.1046556
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0194232    0.0092480    0.0295983
6-24 months                   ki1114097-CMIN             PERU                           optimal              NA                 0.0068660   -0.0002044    0.0139364
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0052056    0.0024944    0.0079167
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0302567    0.0099176    0.0505958
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0135002    0.0099040    0.0170964
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0244052    0.0180624    0.0307480
6-24 months                   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0300387    0.0133867    0.0466908
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0232191    0.0168068    0.0296314
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0326828    0.0168264    0.0485391


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0960262   -0.0302105    0.2067946
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0483187   -0.0338294    0.1239394
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0925798   -0.0309756    0.2013279
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2014177   -0.0503827    0.3928559
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.3134893   -1.0091263    0.1412914
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0833488   -0.1011461    0.2369319
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0324214   -0.0272730    0.0886470
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0273213   -0.0081369    0.0615325
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0530343   -0.0509768    0.1467518
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0516140   -0.0325687    0.1289335
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0007445   -0.1182646    0.1070882
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3058059    0.0591715    0.4877860
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0600974   -0.2375429    0.0919050
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1339279    0.0610114    0.2011821
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0836216   -0.0014232    0.1614440
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0353481    0.0097373    0.0602965
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0060413   -0.0778394    0.0833942
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.2472743   -0.0353426    0.4527454
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.2090458    0.0690899    0.3279603
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0817418    0.0115123    0.1469817
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0998980   -0.0189585    0.2048905
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0673201    0.0067782    0.1241717
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           optimal              NA                 0.1061306   -0.0376239    0.2299690
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0217421   -0.0924044    0.0443494
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1071031   -0.0067725    0.2080983
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0485449    0.0206921    0.0756055
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0728993   -0.0056124    0.1452813
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4775057    0.2409987    0.6403164
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0465243    0.0059045    0.0854844
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1233875    0.0648660    0.1782468
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0961695   -0.1680617    0.3006281
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1720233   -0.8077914    0.6207829
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1252202   -0.2502842    0.3879474
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.1565217   -0.1807554    0.3974573
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0281688   -0.2042919    0.2157583
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1411828   -0.0150957    0.2734015
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0144798   -0.2059026    0.1465569
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.6438993    0.4526596    0.7683203
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.6233268   -1.7729393    0.0496763
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0639710   -0.3328282    0.3426382
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.4073252   -0.7177107   -0.1530254
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.2527381   -0.8745232    0.1627989
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1627037   -0.2583704    0.4428787
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1262600   -0.1247051    0.3212250
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.3267788    0.1020057    0.4952899
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.3897311   -0.0307398    0.6386788
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1764494    0.0799045    0.2628639
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.3897603   -0.9028692    0.8042995
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0984335   -0.2043538    0.3250968
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0990162   -0.0130016    0.1986470
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1139893   -0.0362236    0.2424270
6-24 months                   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1912744   -0.0857574    0.3976214
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0446687   -0.0776057    0.1530688
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1324468   -0.0799663    0.3030814
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0998281    0.0015756    0.1884119
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0339999   -0.0242995    0.0889811
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0608241   -0.0650359    0.1718106
6-24 months                   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1760557   -0.4507877    0.0466510
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1298047    0.0350873    0.2152245
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2459419   -0.0009956    0.4319619
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0666132   -0.1589023    0.0183264
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1486780    0.0628076    0.2266806
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1165265    0.0208426    0.2028602
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0511603    0.0174798    0.0836863
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0343939    0.0110410    0.0571953
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1285455   -0.3036762    0.4174681
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.2631574    0.1849701    0.3338441
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0557805   -0.0562047    0.1558924
6-24 months                   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1474676    0.0131553    0.2634995
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1165391    0.0543584    0.1746312
6-24 months                   ki1114097-CMIN             PERU                           optimal              NA                 0.1722387   -0.0151968    0.3250681
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0553914    0.0262369    0.0836731
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1753712    0.0516295    0.2829674
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1099820    0.0808089    0.1382292
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0915276    0.0678658    0.1145889
6-24 months                   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3876871    0.1557942    0.5558820
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1405801    0.1013378    0.1781088
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1268339    0.0628334    0.1864637
