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
![](/tmp/2732cee4-34da-4b08-96ff-acdce787830d/41d018bd-d4d4-4002-b83d-df2c4d08bd28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2732cee4-34da-4b08-96ff-acdce787830d/41d018bd-d4d4-4002-b83d-df2c4d08bd28/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2002612    0.1466607   0.2538617
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3476697    0.2816768   0.4136625
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1716942    0.1205318   0.2228567
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0533280    0.0260993   0.0805566
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2214091    0.1102085   0.3326098
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1041806    0.0635419   0.1448192
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4347843    0.3779528   0.4916158
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.5172082    0.4563147   0.5781017
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.3935018    0.3277607   0.4592430
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4341071    0.3646938   0.5035205
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3490849    0.2175387   0.4806311
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2901826    0.1736397   0.4067256
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2766258    0.2195162   0.3337355
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1556919    0.1271715   0.1842123
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1310053    0.1050365   0.1569740
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1918643    0.1754890   0.2082396
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3463897    0.3176342   0.3751452
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0627996    0.0318788   0.0937205
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.0458208    0.0324969   0.0591447
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5201234    0.4759989   0.5642478
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.3911720    0.3152682   0.4670757
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1471589    0.1274498   0.1668679
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           optimal              NA                0.0460808    0.0315512   0.0606104
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1094545    0.1002179   0.1186911
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1412703    0.1090012   0.1735393
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1765890    0.1663296   0.1868484
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2885750    0.2601272   0.3170228
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0347866    0.0188287   0.0507446
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1668725    0.1561025   0.1776425
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2381187    0.2080239   0.2682134
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.0651393    0.0319462   0.0983325
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1295258    0.0193815   0.2396702
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2966940    0.1893532   0.4040347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.3317220    0.2094715   0.4539725
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                0.1508001    0.1003712   0.2012291
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.1990417    0.1428347   0.2552486
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1578080    0.1138374   0.2017786
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.0570298    0.0198705   0.0941892
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0484941    0.0315566   0.0654316
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0816841    0.0519600   0.1114083
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1197301    0.0851635   0.1542967
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.1729337    0.0873865   0.2584809
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     optimal              NA                0.0990397    0.0470120   0.1510674
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0329275    0.0240380   0.0418170
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0569715    0.0399479   0.0739952
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0564709    0.0256695   0.0872724
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0617758    0.0539931   0.0695585
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0149787   -0.0039595   0.0339169
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1641225    0.1126759   0.2155691
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2450850    0.1846792   0.3054909
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1344390    0.0879500   0.1809281
6-24 months                   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0510121    0.0228724   0.0791517
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1958249    0.1114798   0.2801701
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0927401    0.0529882   0.1324920
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2376548    0.1889715   0.2863380
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.2993071    0.2520966   0.3465177
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                0.3123885    0.2494617   0.3753154
6-24 months                   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.4371109    0.3161041   0.5581177
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2356779    0.1975967   0.2737591
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2936377    0.1772692   0.4100061
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3045202    0.2589564   0.3500841
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1401280    0.1111568   0.1690993
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1164529    0.0913261   0.1415797
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1519294    0.1356955   0.1681633
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3077434    0.2887350   0.3267518
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.0619444    0.0290325   0.0948563
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1701117    0.1373168   0.2029066
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4761685    0.4169402   0.5353967
6-24 months                   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.3278737    0.2541167   0.4016306
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1473210    0.1274747   0.1671673
6-24 months                   ki1114097-CMIN             PERU                           optimal              NA                0.0425418    0.0158315   0.0692521
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0924318    0.0847216   0.1001420
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1426499    0.1099643   0.1753354
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1092770    0.1014485   0.1171055
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2494082    0.2296513   0.2691652
6-24 months                   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0421133    0.0248243   0.0594024
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1434344    0.1329930   0.1538757
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2225440    0.1933028   0.2517852


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


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1096621   0.9739060   1.264342
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0578105   0.9731835   1.149797
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1012345   0.9692898   1.251140
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2543064   0.9522739   1.652135
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.6759425   0.4390913   1.040554
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1033008   0.9157558   1.329255
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0374960   0.9777016   1.100947
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.0069106   0.9309229   1.089101
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           1.1122331   0.9964927   1.241416
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.0547522   0.9684771   1.148713
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0007450   0.8942427   1.119932
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3784423   1.0358149   1.834404
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.0760343   0.9080788   1.275054
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1406096   1.0547980   1.233402
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0933612   1.0004819   1.194863
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0362818   1.0095707   1.063700
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9908374   0.9261434   1.060051
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.3227319   0.9642369   1.814512
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.2642957   1.0742176   1.488007
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0167079   0.9777137   1.057257
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1178264   0.9870192   1.265969
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0691394   1.0041676   1.138315
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           observed             optimal           1.1236765   0.9676742   1.304829
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9964782   0.9307742   1.066820
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1723284   1.0119927   1.358067
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.0426362   1.0113661   1.074873
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0800333   0.9954751   1.171774
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.9233136   1.3218213   2.798514
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0437533   0.9993291   1.090152
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1319084   1.0593652   1.209419
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1218553   0.8658489   1.453555
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2173350   0.5519008   2.685092
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0400327   0.7527171   1.437018
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           1.0280466   0.7334358   1.440998
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       observed             optimal           1.2800352   0.9796552   1.672517
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.1494191   0.9733939   1.357276
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9857269   0.8292543   1.171724
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3906817   0.7749124   2.495760
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0869082   0.9437845   1.251737
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0511049   0.7486676   1.475717
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0474834   0.8019750   1.368149
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8260804   0.5238566   1.302663
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1946785   0.7963430   1.792264
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1329630   0.8789853   1.460326
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.4751734   1.1071562   1.965519
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.7371800   1.0194585   2.960194
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2194896   1.0897409   1.364687
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.6219477   0.5222919   5.036866
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1170519   0.9596742   1.300238
6-24 months                   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1112079   0.9887755   1.248800
6-24 months                   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.1394867   0.9740389   1.333037
6-24 months                   ki0047075b-MAL-ED          PERU                           observed             optimal           1.2342760   0.9190220   1.657672
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7097980   0.5008623   1.005892
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1442995   0.9204919   1.422524
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1168114   1.0058966   1.239956
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.0349105   0.9765440   1.096765
6-24 months                   ki1000109-EE               PAKISTAN                       observed             optimal           1.0585109   0.9239233   1.212704
6-24 months                   ki1000109-ResPak           PAKISTAN                       observed             optimal           0.8355258   0.6718958   1.039005
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1491673   1.0363632   1.274250
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3225467   0.9997059   1.749644
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9651253   0.8760118   1.063304
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1487754   1.0494084   1.257551
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1292711   1.0193561   1.251038
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0567738   1.0200001   1.094873
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0301430   1.0029763   1.058046
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.3404367   0.9495874   1.892159
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.3571420   1.2269489   1.501150
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9930967   0.9048629   1.089934
6-24 months                   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.1739907   1.0142564   1.358882
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.1313163   1.0569163   1.210954
6-24 months                   ki1114097-CMIN             PERU                           observed             optimal           0.9370385   0.5631647   1.559120
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0167277   0.9582040   1.078826
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2094602   1.0519293   1.390582
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.1232816   1.0876213   1.160111
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0691024   1.0188372   1.121847
6-24 months                   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.8398414   1.3191085   2.566139
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1515133   1.1024951   1.202711
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1578903   1.0769467   1.244918


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0219611   -0.0044046   0.0483267
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0200989   -0.0088801   0.0490780
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0173814   -0.0048047   0.0395675
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0135616   -0.0021004   0.0292237
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0717493   -0.1685692   0.0250706
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0107619   -0.0088798   0.0304037
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0163027   -0.0094588   0.0420641
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0035742   -0.0370320   0.0441804
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0441639    0.0011740   0.0871539
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0237683   -0.0131864   0.0607230
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0002601   -0.0389573   0.0394774
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1098174    0.0267790   0.1928558
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0210330   -0.0260678   0.0681338
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0218918    0.0094186   0.0343650
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0122308    0.0004672   0.0239944
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0069612    0.0019337   0.0119887
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0031738   -0.0265576   0.0202100
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0202674   -0.0007455   0.0412804
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0121102    0.0022850   0.0219355
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0086902   -0.0116777   0.0290581
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0460904   -0.0023929   0.0945737
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0101745    0.0008943   0.0194546
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           optimal              NA                 0.0056991   -0.0013446   0.0127428
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0003855   -0.0078513   0.0070804
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0243449    0.0031343   0.0455555
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0075291    0.0021461   0.0129120
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0230956   -0.0004378   0.0466290
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0321190    0.0169549   0.0472830
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0073012    0.0000574   0.0145450
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0314098    0.0157462   0.0470735
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0079376   -0.0092163   0.0250915
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0281505   -0.0744307   0.1307317
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0118775   -0.0840361   0.1077910
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0093037   -0.1026808   0.1212881
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.0422293    0.0007351   0.0837236
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0297406   -0.0036133   0.0630945
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0022524   -0.0288122   0.0243074
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0222805   -0.0115349   0.0560959
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0042145   -0.0027506   0.0111797
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0041745   -0.0235461   0.0318950
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0056852   -0.0262870   0.0376574
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0300766   -0.1089626   0.0488095
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0192809   -0.0213525   0.0599143
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0043781   -0.0039913   0.0127476
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0270714    0.0105896   0.0435531
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0416292    0.0112285   0.0720299
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0135592    0.0064418   0.0206765
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0093160   -0.0073631   0.0259950
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0192109   -0.0060123   0.0444340
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0272554   -0.0015434   0.0560542
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0187525   -0.0028371   0.0403420
6-24 months                   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0119509   -0.0039799   0.0278817
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0568288   -0.1249803   0.0113227
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0133823   -0.0072691   0.0340338
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0277608    0.0027837   0.0527378
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0104489   -0.0069394   0.0278373
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0182781   -0.0241982   0.0607545
6-24 months                   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.0718935   -0.1679487   0.0241618
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0351554    0.0061299   0.0641810
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0947119    0.0125848   0.1768389
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0106201   -0.0399294   0.0186893
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0208476    0.0078403   0.0338549
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0150540    0.0028940   0.0272140
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0086256    0.0032009   0.0140503
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0092763    0.0010492   0.0175034
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0210881   -0.0015303   0.0437065
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0607540    0.0392912   0.0822169
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0032871   -0.0475849   0.0410107
6-24 months                   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0570470    0.0091928   0.1049011
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0193457    0.0091615   0.0295298
6-24 months                   ki1114097-CMIN             PERU                           optimal              NA                -0.0026785   -0.0244335   0.0190766
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0015462   -0.0039346   0.0070269
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0298795    0.0095115   0.0502475
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0134718    0.0098736   0.0170701
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0172347    0.0052119   0.0292575
6-24 months                   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0353685    0.0191784   0.0515586
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0217322    0.0154571   0.0280073
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0351375    0.0190141   0.0512610


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0988248   -0.0267931   0.2090746
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0546511   -0.0275554   0.1302809
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0919282   -0.0316832   0.2007290
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2027467   -0.0501180   0.3947224
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.4794157   -1.2774305   0.0389737
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0936289   -0.0919942   0.2476987
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0361408   -0.0228070   0.0916913
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0068631   -0.0742028   0.0818113
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.1009079   -0.0035196   0.1944686
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0519100   -0.0325489   0.1294605
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0007445   -0.1182646   0.1070882
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2745434    0.0345766   0.4548638
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0706616   -0.1012260   0.2157196
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1232758    0.0519512   0.1892345
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0853892    0.0004817   0.1630839
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0350115    0.0094800   0.0598849
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0092473   -0.0797465   0.0566487
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.2439889   -0.0370895   0.4488877
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.2090458    0.0690899   0.3279603
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0164334   -0.0227943   0.0541565
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1054067   -0.0131515   0.2100914
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0646683    0.0041503   0.1215086
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           optimal              NA                 0.1100642   -0.0334056   0.2336158
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0035343   -0.0743744   0.0626350
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1469967    0.0118506   0.2636593
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0408927    0.0112384   0.0696576
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0741026   -0.0045455   0.1465932
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4800640    0.2434681   0.6426675
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0419192   -0.0006713   0.0826970
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1165363    0.0560385   0.1731568
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1086194   -0.1549360   0.3120317
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1785334   -0.8119198   0.6275733
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0384918   -0.3285204   0.3041145
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0272814   -0.3634459   0.3060367
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.2187715   -0.0207673   0.4020988
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1299953   -0.0273334   0.2632303
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0144798   -0.2059026   0.1465569
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2809282   -0.2904684   0.5993205
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0799591   -0.0595640   0.2011098
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0486202   -0.3357062   0.3223633
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0453310   -0.2469217   0.2690856
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.2105359   -0.9089194   0.2323421
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1629547   -0.2557403   0.4420464
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1173587   -0.1376755   0.3152215
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.3221136    0.0967851   0.4912285
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.4243544    0.0190870   0.6621843
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1799848    0.0823507   0.2672311
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.3834573   -0.9146380   0.8014638
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1047865   -0.0420203   0.2309101
6-24 months                   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1000784   -0.0113520   0.1992314
6-24 months                   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1224119   -0.0266531   0.2498334
6-24 months                   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1898084   -0.0881132   0.3967444
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.4088516   -0.9965569   0.0058571
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1261029   -0.0863757   0.2970239
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1045937    0.0058620   0.1935199
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0337328   -0.0240194   0.0882279
6-24 months                   ki1000109-EE               PAKISTAN                       optimal              NA                 0.0552766   -0.0823409   0.1753963
6-24 months                   ki1000109-ResPak           PAKISTAN                       optimal              NA                -0.1968512   -0.4883260   0.0375410
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1298047    0.0350873   0.2152245
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2438830   -0.0002942   0.4284553
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0361349   -0.1415371   0.0595351
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1295078    0.0470821   0.2048038
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1144731    0.0189885   0.2006638
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0537237    0.0196079   0.0866523
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0292610    0.0029674   0.0548612
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.2539744   -0.0530890   0.4715032
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.2631574    0.1849701   0.3338441
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0069512   -0.1051398   0.0825135
6-24 months                   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.1482045    0.0140560   0.2641006
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1160739    0.0538513   0.1742046
6-24 months                   ki1114097-CMIN             PERU                           optimal              NA                -0.0671920   -0.7756796   0.3586124
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0164525   -0.0436191   0.0730663
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1731848    0.0493658   0.2808766
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1097513    0.0805623   0.1380136
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0646359    0.0184890   0.1086131
6-24 months                   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4564749    0.2419122   0.6103096
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1315776    0.0929665   0.1685450
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1363603    0.0714490   0.1967340
