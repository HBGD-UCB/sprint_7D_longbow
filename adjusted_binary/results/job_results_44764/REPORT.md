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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        enstunt    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0      205     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1       10     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0       44     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0      202     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0       24     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0      195     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0       37     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1        3     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      209     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       26     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      260     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1        3     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       36     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      254     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        9     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       29     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        2     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      214     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       41     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      251     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       44     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       62     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       11     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0      291     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1       70     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0       41     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1        7     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                     0      218     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                     1       28     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                     0      108     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                     1       23     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                     0      166     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                     1       32     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                     0       55     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                     1       20     273
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                     0      303     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                     1       33     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                     0       96     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                     1       26     458
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0       55     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       32     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        8     100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     0      461     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     1       43     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     0       83     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     1       11     598
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0      607     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       15     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0       61     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1        4     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      637     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       12     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       97     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        8     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2117    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      105    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      146    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       16    2384
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                     0     2215    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                     1      335    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                     0      267    2867
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                     1       50    2867
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      239     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       72     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        2     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0      586     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1        3     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      133     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1        3     725
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      427     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1       99     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       46     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       18     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                     0      144     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                     1       17     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                     0       82     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                     1       20     263
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                     0      114     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                     1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                     0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                     0     1196    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                     1       46    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      242    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       16    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                     0      798     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                     1        4     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                     0      122     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                     1        3     927
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0      197     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     0     7961    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     1       82    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     0       70    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     1        0    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    10727   12460
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      405   12460
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1264   12460
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       64   12460
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                     0      471     634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                     1        9     634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                     0      145     634
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                     1        9     634
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                     0     5995    7115
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                     1      274    7115
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                     0      783    7115
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                     1       63    7115
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                     0     2540    2939
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                     1      228    2939
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                     0      150    2939
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                     1       21    2939
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     0      526     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                     1        4     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     0      303     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                     1        4     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     8375   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      302   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     4141   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      192   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1002    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       34    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      359    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       26    1421
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0      207     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0       46     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0      203     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        2     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0       24     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0      196     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        5     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0       40     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      208     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       27     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        1     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      262     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       36     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      260     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       30     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      217     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       42     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      256     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       26     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       64     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        4     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0      288     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1       54     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0       45     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1        3     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                     0      236     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                     1        8     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                     0      121     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                     1        8     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                     0      187     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                     1       10     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                     0       62     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                     1       12     271
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                     0      322     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                     1       11     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                     0      112     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                     1        5     450
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     0       52      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       37      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0      89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     0      482     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        9     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     0       89     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     1        0     580
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      614     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        5     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0       63     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      644     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      104     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        0     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2176    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       38    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      158    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        4    2376
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                     0     2091    2408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                     1       84    2408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                     0      218    2408
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                     1       15    2408
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                     0      223     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       67     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      490     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1       15     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0       60     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1        2     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                     0      158     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                     1        3     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                     0       95     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                     1        6     262
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                     0       96     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                     1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                     0        5     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                     1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                     0      829     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                     1        5     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                     0      122     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                     1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                     0      650     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                     1        3     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                     0       40     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                     1        1     694
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0      197     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     0     7835    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     1       75    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     0       69    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     1        0    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0    10117   11446
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      120   11446
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1198   11446
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       11   11446
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                     0      408     465
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                     1        1     465
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                     0       56     465
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                     1        0     465
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                     0     5523    6342
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                     1      104    6342
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                     0      702    6342
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                     1       13    6342
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                     0     2663    2895
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                     1       63    2895
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                     0      166    2895
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                     1        3    2895
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                     0      171     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                     1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                     0       97     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                     1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     8404   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1      162   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     4197   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1       73   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      939    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        3    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0      333    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        1    1276
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0      198     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0       37     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1        2     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0      184     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0       21     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0      194     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        2     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0       36     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      207     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0       26     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1        1     235
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      234     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       34     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      225     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        8     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       25     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        1     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      203     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        3     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       38     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0      277     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       66     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        9     373
6-24 months                   ki1000108-IRC              INDIA                          0                     0      340     410
6-24 months                   ki1000108-IRC              INDIA                          0                     1       22     410
6-24 months                   ki1000108-IRC              INDIA                          1                     0       44     410
6-24 months                   ki1000108-IRC              INDIA                          1                     1        4     410
6-24 months                   ki1000109-EE               PAKISTAN                       0                     0      223     375
6-24 months                   ki1000109-EE               PAKISTAN                       0                     1       22     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                     0      113     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                     1       17     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                     0      147     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                     1       22     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                     0       50     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                     1       11     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                     0      294     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                     1       25     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                     0       91     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                     1       22     432
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0       52     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1        9     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       33     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        9     103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0      419     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       36     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0       75     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1       11     541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0      544     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1       10     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0       58     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1        3     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      615     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       12     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       95     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        8     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1810    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       70    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      125    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       13    2018
6-24 months                   ki1101329-Keneba           GAMBIA                         0                     0     2156    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         0                     1      274    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                     0      261    2738
6-24 months                   ki1101329-Keneba           GAMBIA                         1                     1       47    2738
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                     0      211     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                     1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       64     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        2     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     0      612     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                     1       16     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      142     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       27     797
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     0      432     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     1       93     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     0       45     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     1       20     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                     0      144     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                     1       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                     0       79     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                     1       15     252
6-24 months                   ki1114097-CMIN             BRAZIL                         0                     0      114     119
6-24 months                   ki1114097-CMIN             BRAZIL                         0                     1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                     0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                     1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                     0     1180    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                     1       45    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      235    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       22    1482
6-24 months                   ki1114097-CMIN             PERU                           0                     0      757     878
6-24 months                   ki1114097-CMIN             PERU                           0                     1        2     878
6-24 months                   ki1114097-CMIN             PERU                           1                     0      116     878
6-24 months                   ki1114097-CMIN             PERU                           1                     1        3     878
6-24 months                   ki1114097-CONTENT          PERU                           0                     0      197     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     0     7905    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     1        8    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     0       62    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     1        0    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     9268   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      292   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1078   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1       56   10694
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                     0      431     597
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                     1       10     597
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                     0      145     597
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                     1       11     597
6-24 months                   ki1135781-COHORTS          INDIA                          0                     0     5909    6941
6-24 months                   ki1135781-COHORTS          INDIA                          0                     1      192    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                     0      776    6941
6-24 months                   ki1135781-COHORTS          INDIA                          1                     1       64    6941
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                     0     2476    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                     1      170    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                     0      145    2809
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                     1       18    2809
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     0      514     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                     1        4     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     0      303     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                     1        5     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     5696    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      155    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2578    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      126    8555
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1005    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       36    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      363    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       28    1432


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/380d3f55-463a-409d-972b-141c35735a4b/5f82fca1-dc48-42f6-b331-db67c3450f9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/380d3f55-463a-409d-972b-141c35735a4b/5f82fca1-dc48-42f6-b331-db67c3450f9a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/380d3f55-463a-409d-972b-141c35735a4b/5f82fca1-dc48-42f6-b331-db67c3450f9a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/380d3f55-463a-409d-972b-141c35735a4b/5f82fca1-dc48-42f6-b331-db67c3450f9a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1491525   0.1084455   0.1898595
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1506849   0.0685086   0.2328613
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.1939058   0.1530725   0.2347391
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1458333   0.0458659   0.2458008
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.1138211   0.0740810   0.1535613
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.1755725   0.1103356   0.2408095
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1616162   0.1102501   0.2129822
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2666667   0.1664017   0.3669317
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0982143   0.0705057   0.1259229
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2131148   0.1276399   0.2985896
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0833333   0.0130471   0.1536195
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2000000   0.0754165   0.3245835
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0853175   0.0609084   0.1097265
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1170213   0.0519851   0.1820575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0184900   0.0081188   0.0288612
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0761905   0.0254116   0.1269694
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0472547   0.0384305   0.0560790
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0987654   0.0528136   0.1447173
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.1313725   0.1182589   0.1444862
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.1577287   0.1175981   0.1978593
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1882129   0.1547804   0.2216455
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2812500   0.1710043   0.3914957
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1055901   0.0580300   0.1531501
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1960784   0.1188820   0.2732748
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0370370   0.0265306   0.0475435
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0620155   0.0325760   0.0914550
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0363816   0.0329033   0.0398599
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0481928   0.0366733   0.0597122
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0187500   0.0066060   0.0308940
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0584416   0.0213637   0.0955195
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.0437071   0.0386460   0.0487683
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.0744681   0.0567762   0.0921600
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0823699   0.0721262   0.0926136
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1228070   0.0736050   0.1720091
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0348047   0.0305989   0.0390104
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0443111   0.0372914   0.0513308
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0328185   0.0206678   0.0449692
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0675325   0.0398560   0.0952089
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.0327869   0.0104127   0.0551611
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.0620155   0.0203397   0.1036913
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0507614   0.0200520   0.0814709
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.1621622   0.0780246   0.2462997
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0330330   0.0172592   0.0488069
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0427350   0.0282975   0.0571726
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.0386207   0.0305210   0.0467203
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.0643777   0.0328583   0.0958971
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0117222   0.0096371   0.0138073
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0090984   0.0037460   0.0144509
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0184823   0.0149629   0.0220017
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0181818   0.0083877   0.0279759
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0189120   0.0155535   0.0222704
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0170960   0.0130702   0.0211219
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0704698   0.0413723   0.0995673
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1200000   0.0463568   0.1936432
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.0897959   0.0539498   0.1256421
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.1307692   0.0727360   0.1888024
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1301775   0.0793342   0.1810209
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1803279   0.0836380   0.2770177
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0783699   0.0514705   0.1052693
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1946903   0.1083753   0.2810052
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1475410   0.0581086   0.2369734
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2142857   0.0895844   0.3389870
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0791209   0.0542958   0.1039460
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1279070   0.0572542   0.1985597
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0191388   0.0084070   0.0298706
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0372340   0.0286734   0.0457947
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0942029   0.0454541   0.1429517
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.1127572   0.1001790   0.1253354
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.1525974   0.1124303   0.1927645
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0254777   0.0119081   0.0390473
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1597633   0.1051034   0.2144232
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1771429   0.1444569   0.2098288
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3076923   0.1953954   0.4199892
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0886076   0.0442088   0.1330064
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1595745   0.0853958   0.2337531
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0367347   0.0261972   0.0472722
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0856031   0.0513862   0.1198200
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0305439   0.0270944   0.0339935
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0493827   0.0367716   0.0619938
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0226757   0.0087700   0.0365814
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0705128   0.0303055   0.1107202
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.0314703   0.0270891   0.0358514
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.0761905   0.0582480   0.0941329
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0642479   0.0549038   0.0735921
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1104294   0.0623052   0.1585537
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0264912   0.0222672   0.0307152
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0465976   0.0371304   0.0560648
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0345821   0.0225066   0.0466576
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0716113   0.0439718   0.0992507


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.1352785   0.1007079   0.1698491
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1904762   0.1438104   0.2371420
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1288210   0.0926214   0.1650205
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1300000   0.0637537   0.1962463
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0903010   0.0673101   0.1132919
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1342867   0.1218039   0.1467696
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1983051   0.1661046   0.2305055
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1406844   0.0985830   0.1827858
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0413333   0.0312563   0.0514103
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0376404   0.0342985   0.0409824
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0283912   0.0154527   0.0413297
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.0473647   0.0424286   0.0523008
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0847227   0.0746534   0.0947920
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0379708   0.0341625   0.0417790
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0422238   0.0310459   0.0534017
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.0428954   0.0223052   0.0634857
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.0811808   0.0486040   0.1137576
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0355556   0.0206290   0.0504821
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0411130   0.0331809   0.0490450
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0114450   0.0094963   0.0133938
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0184484   0.0151363   0.0217606
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0183079   0.0155421   0.0210736
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.1040000   0.0730627   0.1349373
6-24 months                   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1434783   0.0980744   0.1888821
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1087963   0.0724447   0.1451479
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1747573   0.1010591   0.2484554
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0411298   0.0324631   0.0497965
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0539523   0.0374280   0.0704766
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0452092   0.0346279   0.0557905
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325416   0.0291786   0.0359047
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0351759   0.0203858   0.0499660
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.0368823   0.0324481   0.0413165
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0328463   0.0285768   0.0371158
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0446927   0.0336526   0.0557329


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0102740   0.5490253    1.859028
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.7520833   0.3671386    1.540643
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.5425300   0.9264054    2.568421
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.6500000   1.0084843    2.699596
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.1698956   1.4882436    3.163761
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.4000000   0.8410892    6.848263
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.3715982   0.7341051    2.562687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.1206348   1.7244576    9.846361
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.0900646   1.2659925    3.450550
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    0                 1.2006215   0.9135023    1.577984
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.4943182   0.9717231    2.297966
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.8569781   1.0209355    3.377655
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.6744186   0.9631497    2.910947
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3246467   1.0239888    1.713582
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 3.1168831   1.2588363    7.717413
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.7037971   1.3080853    2.219216
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4909203   0.9800917    2.267995
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2731372   1.0525338    1.539977
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.0577540   1.1582599    3.655787
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 1.8914729   0.7258566    4.928893
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 3.1945946   1.4397448    7.088364
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2937063   1.0371885    1.613666
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 1.6669221   0.9785826    2.839443
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7761718   0.4198039    1.435057
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 0.9837413   0.5555854    1.741851
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9039784   0.6868837    1.189688
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.7028571   0.8127249    3.567902
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.4562937   0.8017048    2.645352
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0                 1.3852459   0.7135663    2.689177
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.4842478   1.6117660    3.829022
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.4523810   0.6268311    3.365198
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.6166021   0.8564650    3.051382
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 4.0582524   1.6992153    9.692363
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.5300207   1.4361480    4.457065
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    0                 1.3533273   1.0168219    1.801195
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 6.2707101   3.0920212   12.717185
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.7369727   1.1539451    2.614573
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    0                 1.8009119   0.9091921    3.567215
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 2.3303070   1.4247644    3.811389
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6167766   1.2228710    2.137565
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 3.1096154   1.3459730    7.184177
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.4210317   1.8415871    3.182795
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7188019   1.0856804    2.721132
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7589855   1.3691525    2.259814
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.0707587   1.1984731    3.577921


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0003040   -0.0178878   0.0184958
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0056418   -0.0184035   0.0071200
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0214574   -0.0052518   0.0481666
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0288600   -0.0025873   0.0603074
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0306067    0.0081151   0.0530982
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0466667   -0.0116475   0.1049809
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0049835   -0.0059750   0.0159421
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0080352    0.0006782   0.0153922
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0035003    0.0002784   0.0067222
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0029142   -0.0017637   0.0075920
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0100922   -0.0026211   0.0228054
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0350943   -0.0004738   0.0706625
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0042963   -0.0011012   0.0096938
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012588   -0.0000253   0.0025429
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0096412    0.0000718   0.0192105
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0036576    0.0014574   0.0058578
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0023528   -0.0005913   0.0052968
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0031661    0.0005430   0.0057893
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0094053    0.0009048   0.0179057
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0101086   -0.0063115   0.0265286
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0304194    0.0052557   0.0555830
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0025225    0.0005940   0.0044511
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0024923   -0.0006713   0.0056559
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0002771   -0.0008841   0.0003298
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0000339   -0.0012072   0.0011394
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0006041   -0.0022248   0.0010167
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0099592   -0.0060897   0.0260080
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0142041   -0.0095250   0.0379331
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0133007   -0.0158139   0.0424154
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0304264    0.0076455   0.0532073
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0272163   -0.0356807   0.0901133
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0077553   -0.0042439   0.0197544
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0082585    0.0006596   0.0158574
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038958    0.0004534   0.0073381
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0044817   -0.0002766   0.0092399
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0284746    0.0130323   0.0439170
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0143826    0.0010813   0.0276838
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0264718   -0.0060540   0.0589976
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0084745    0.0021947   0.0147543
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019977    0.0006069   0.0033884
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0125001    0.0012558   0.0237445
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0054120    0.0031507   0.0076734
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0026798   -0.0001928   0.0055524
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0063551    0.0031433   0.0095668
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0101106    0.0015808   0.0186404


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0020339   -0.1274193   0.1166229
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0299673   -0.0998838   0.0355049
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.1586163   -0.0600117   0.3321521
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1515152   -0.0276763   0.2994617
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2375908    0.0825037   0.3664630
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3589744   -0.2291799   0.6657008
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0551881   -0.0735528   0.1684904
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3029276    0.0082660   0.5100400
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0689647    0.0043674   0.1293710
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0217010   -0.0137194   0.0558838
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0508921   -0.0151292   0.1126195
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2494544   -0.0393884   0.4580287
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1039427   -0.0339932   0.2234777
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0334440   -0.0011562   0.0668484
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3395833   -0.0416834   0.5813025
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0772219    0.0302503   0.1219182
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0277700   -0.0074745   0.0617817
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0833835    0.0127594   0.1489553
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2227477    0.0018025   0.3947880
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.2356557   -0.2352502   0.5270414
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.3747116    0.0283346   0.5976129
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0709459   -0.0031355   0.1395565
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0606200   -0.0186769   0.1337442
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0242147   -0.0784758   0.0273164
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0018364   -0.0674975   0.0597859
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0329963   -0.1249718   0.0514594
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1238255   -0.0954049   0.2991799
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.1365777   -0.1207890   0.3348453
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0927022   -0.1328493   0.2733461
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2796638    0.0982155   0.4246029
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1557377   -0.2871430   0.4462318
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0892682   -0.0577862   0.2158789
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3014354    0.0063132   0.5089071
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0947193    0.0094706   0.1726312
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0382267   -0.0030795   0.0778320
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.5277737    0.2464882   0.7040555
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0750948    0.0036518   0.1414150
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.2300306   -0.0986101   0.4603609
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1874505    0.0437055   0.3095886
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0613884    0.0181264   0.1027443
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3553612   -0.0021810   0.5853452
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1467382    0.0857648   0.2036451
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0400404   -0.0035321   0.0817210
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1934797    0.0971872   0.2795018
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2262248    0.0179458   0.3903309
