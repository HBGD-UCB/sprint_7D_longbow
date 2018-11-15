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
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0      174     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    1       43     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0       31     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    1       15     263
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    0      197     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                    1       10     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    0       23     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     232
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0      135     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    1       70     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0       22     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    1       19     246
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0      175     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    1       36     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0       19     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    1        9     239
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0      252     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    1       14     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0       30     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    1        6     302
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      236     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       39     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       28     308
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     308
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
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      296     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1      196     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0      128     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1      134     754
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0      113     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    1       86     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0       36     274
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    1       39     274
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0      720    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    1      363    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      239    1502
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1      180    1502
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      171     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       73     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       83     397
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       70     397
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0      360     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    1      148     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0       64     602
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    1       30     602
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
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     2279    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      167    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      549    3091
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       96    3091
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      516    1180
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1      536    1180
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0       40    1180
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1       88    1180
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0      103     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    1       63     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0       50     268
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    1       52     268
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                    0      110     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0                    1        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                    0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                    1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0     1060    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    1      182    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      204    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       54    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    0      766     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    1       37     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    0      114     928
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    1       11     928
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    0      192     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                    1        5     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                    1        2     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0    15519   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1     1203   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0      148   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1        7   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11052   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1180   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1213   13624
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      179   13624
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0      910    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    1      103    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0      263    1332
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    1       56    1332
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0     5189    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    1     1099    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0      636    7135
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    1      211    7135
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0     2004    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    1      841    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0       99    3019
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    1       75    3019
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0      512     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    1       18     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0      269     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    1       38     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    30326   53012
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     5987   53012
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    13700   53012
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2999   53012
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     5809   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1689   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1956   10497
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1043   10497
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0      202     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    1       14     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0       41     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    1        5     262
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    0      200     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                    1        7     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    0       25     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0      171     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    1       33     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0       36     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    1        5     245
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    0      198     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                    1       11     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    0       24     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                    1        4     237
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    0      263     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                    1        3     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                    1        2     302
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      264     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       10     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       31     307
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        2     307
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
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      400     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       88     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      202     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1       56     746
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0      159     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    1       39     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0       51     272
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    1       23     272
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0      935    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    1      136    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      353    1473
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       49    1473
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      211     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      130     341
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     341
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0      459     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    1       36     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0       79     584
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    1       10     584
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
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0     1902    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    1      274    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0      206    2410
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    1       28    2410
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      219     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        4     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       66     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      864    1134
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1      146    1134
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0      108    1134
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1       16    1134
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0      147     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    1       19     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0       89     267
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    1       12     267
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                    0      111     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0                    1        1     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                    0        5     117
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                    1        0     117
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                    0      816     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0                    1       18     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                    0      118     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        4     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                    0      639     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0                    1       15     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                    0       38     695
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                    1        3     695
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    0      194     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                    1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                    1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0    15448   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1     1056   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0      147   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1        6   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11652   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      389   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1284   13363
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       38   13363
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    0      875    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      0                    1       17    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    0      137    1030
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      1                    1        1    1030
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     5293    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1      493    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0      684    6510
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    1       40    6510
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0     2553    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    1      273    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0      161    2998
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    1       11    2998
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    0      171     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         0                    1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    0       97     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                    1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0    33094   52476
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1     2870   52476
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    15620   52476
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      892   52476
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0     6930    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      202    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2730    9914
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       52    9914
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
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      342     750
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1      148     750
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0      160     750
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1      100     750
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    0      107     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    1       62     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    0       39     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    1       22     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0      730    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1      276    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0      234    1389
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1      149    1389
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      171     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       73     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       88     402
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       70     402
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
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0     2090    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    1      443    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0      419    3266
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1      314    3266
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      568    1180
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1      482    1180
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0       54    1180
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       76    1180
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
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0    16292   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1      166   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0      139   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1        1   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     8707   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      853   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      982   10694
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      152   10694
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    0      817    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    1       93    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0      249    1220
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    1       61    1220
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0    20606   34538
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1     3442   34538
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     8264   34538
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2226   34538
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0     5936   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1     1589   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1998   10552
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1029   10552


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
```




# Results Detail

## Results Plots
![](/tmp/df97346e-e0fd-4254-ab13-98b9d7dc66b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df97346e-e0fd-4254-ab13-98b9d7dc66b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/df97346e-e0fd-4254-ab13-98b9d7dc66b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/df97346e-e0fd-4254-ab13-98b9d7dc66b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1981567   0.1450200   0.2512934
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3260870   0.1903603   0.4618136
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3414634   0.2764178   0.4065090
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4634146   0.3104662   0.6163630
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1706161   0.1197527   0.2214795
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3214286   0.1480803   0.4947769
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                0.0526316   0.0257528   0.0795104
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1418182   0.1005188   0.1831176
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1515152   0.0289838   0.2740465
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1050228   0.0643403   0.1457053
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4338983   0.3772654   0.4905313
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5205479   0.4057906   0.6353053
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.5096953   0.4580638   0.5613268
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.6041667   0.4656527   0.7426806
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.3983740   0.3371155   0.4596324
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.5114504   0.4257377   0.5971631
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                0.4321608   0.3632082   0.5011134
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5200000   0.4067251   0.6332749
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3351801   0.2890618   0.3812983
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4295943   0.3549592   0.5042294
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2991803   0.2416535   0.3567072
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4575163   0.3784764   0.5365563
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2913386   0.2517932   0.3308840
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3191489   0.2248367   0.4134611
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1575563   0.1289041   0.1862084
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3692308   0.2518243   0.4866372
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1309707   0.1049980   0.1569435
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2190476   0.1398845   0.2982108
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1917192   0.1753480   0.2080904
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2962963   0.2259664   0.3666262
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                0.3392157   0.3208367   0.3575947
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         1                    NA                0.3753943   0.3220804   0.4287083
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0627615   0.0319640   0.0935590
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1486486   0.0674662   0.2298311
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0682747   0.0535502   0.0829992
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1488372   0.0941917   0.2034827
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5095057   0.4667479   0.5522635
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6875000   0.5738452   0.8011548
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3795181   0.3055598   0.4534763
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5098039   0.4126084   0.6069994
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1465378   0.1268635   0.1662121
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2093023   0.1596459   0.2589587
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                0.0460772   0.0315687   0.0605858
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    NA                0.0880000   0.0383103   0.1376897
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0719412   0.0598648   0.0840175
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0451613   0.0186566   0.0716660
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0964683   0.0912361   0.1017004
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1285920   0.1110062   0.1461778
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1016782   0.0830600   0.1202963
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1755486   0.1337851   0.2173121
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1747774   0.1653898   0.1841649
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2491145   0.2199857   0.2782434
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2956063   0.2788359   0.3123767
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4310345   0.3574401   0.5046288
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0339623   0.0185323   0.0493922
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1237785   0.0869174   0.1606396
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1648721   0.1586043   0.1711399
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1795916   0.1702525   0.1889307
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2252601   0.2097264   0.2407938
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3477826   0.3206033   0.3749619
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0648148   0.0319192   0.0977104
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1086957   0.0185762   0.1988151
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1617647   0.1111303   0.2123991
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1219512   0.0215829   0.2223195
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3156028   0.2612816   0.3699240
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2794118   0.1726094   0.3862141
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.3479532   0.2974066   0.3984999
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.2916667   0.1629167   0.4204167
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.1803279   0.1320234   0.2286324
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.2170543   0.1458205   0.2882881
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1969697   0.1414712   0.2524682
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3108108   0.2051657   0.4164559
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1269841   0.0963910   0.1575772
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1218905   0.0872093   0.1565718
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0727273   0.0498307   0.0956238
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1123596   0.0466923   0.1780268
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0484653   0.0315356   0.0653949
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0937500   0.0222862   0.1652138
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0849142   0.0733005   0.0965279
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0987654   0.0528135   0.1447173
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                0.1259191   0.1119769   0.1398613
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    NA                0.1196581   0.0780645   0.1612518
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1445545   0.1138573   0.1752516
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1290323   0.0455132   0.2125513
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                0.1144578   0.0659361   0.1629796
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    NA                0.1188119   0.0555901   0.1820336
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0639845   0.0525665   0.0754025
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0392157   0.0127086   0.0657228
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0323063   0.0291480   0.0354645
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0287443   0.0197371   0.0377516
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0852057   0.0780114   0.0924000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0552486   0.0386056   0.0718916
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0966030   0.0857094   0.1074965
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0639535   0.0273825   0.1005245
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0798020   0.0750581   0.0845460
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0540213   0.0486789   0.0593637
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0283231   0.0224036   0.0342425
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0186916   0.0112042   0.0261790
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1641791   0.1128608   0.2154974
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2820513   0.1405263   0.4235763
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2448980   0.1845668   0.3052291
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4102564   0.2555526   0.5649602
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1346154   0.0881324   0.1810984
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2962963   0.1236925   0.4689001
6-24 months                   ki0047075b-MAL-ED          PERU                           0                    NA                0.0508475   0.0227672   0.0789277
6-24 months                   ki0047075b-MAL-ED          PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1330472   0.0893543   0.1767401
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1923077   0.0405248   0.3440906
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0922330   0.0526387   0.1318273
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872   0.0587994   0.3001750
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2382550   0.1898212   0.2866889
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3733333   0.2637191   0.4829476
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.2983425   0.2511532   0.3455319
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3958333   0.2573198   0.5343469
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3020408   0.2444713   0.3596104
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3846154   0.3008735   0.4683573
6-24 months                   ki1000109-ResPak           PAKISTAN                       0                    NA                0.3668639   0.2940437   0.4396841
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3606557   0.2398902   0.4814213
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2743539   0.2355197   0.3131880
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3890339   0.3197132   0.4583547
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2991803   0.2416544   0.3567063
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4430380   0.3654859   0.5205901
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2857143   0.2441667   0.3272619
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3372093   0.2372004   0.4372182
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1407942   0.1118083   0.1697802
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3442623   0.2249332   0.4635914
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1164274   0.0913051   0.1415498
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2233010   0.1428190   0.3037830
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1526596   0.1363978   0.1689213
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2681159   0.1941897   0.3420422
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                0.3069959   0.2886534   0.3253384
6-24 months                   ki1101329-Keneba           GAMBIA                         1                    NA                0.3961039   0.3414731   0.4507347
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0616114   0.0291091   0.0941137
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1748914   0.1501328   0.1996501
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4283765   0.3094392   0.5473138
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4590476   0.4163852   0.5017100
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5846154   0.4647151   0.7045156
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                0.3291139   0.2556997   0.4025282
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                    NA                0.4787234   0.3775366   0.5799102
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1469388   0.1271059   0.1667716
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2607004   0.2070084   0.3143923
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                0.0329381   0.0202338   0.0456424
6-24 months                   ki1114097-CMIN             PERU                           1                    NA                0.0840336   0.0341580   0.1339092
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0892259   0.0835113   0.0949406
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1340388   0.1142086   0.1538690
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1021978   0.0825091   0.1218865
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1967742   0.1525003   0.2410481
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1094902   0.1016544   0.1173261
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.2190476   0.1910758   0.2470195
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2566138   0.2399690   0.2732585
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4294479   0.3534442   0.5054515
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0405405   0.0235462   0.0575349
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1396104   0.1008809   0.1783399
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1431304   0.1364798   0.1497810
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2122021   0.1999649   0.2244393
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2111628   0.1959992   0.2263264
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3399405   0.3126054   0.3672756


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3617886   0.3016193   0.4219579
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1882845   0.1386174   0.2379516
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0662252   0.0381322   0.0943181
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1037139   0.1820004
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1149425   0.0761733   0.1537118
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4562044   0.3971211   0.5152876
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3615180   0.3107193   0.4123167
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3432159   0.3258337   0.3605981
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830671   0.0524436   0.1136905
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0850857   0.0676201   0.1025513
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5288136   0.4885012   0.5691259
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           NA                   NA                0.0517241   0.0374673   0.0659809
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0997504   0.0947183   0.1047826
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1193694   0.1019512   0.1367875
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1836020   0.1746179   0.1925860
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3034117   0.2870099   0.3198136
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0669056   0.0499685   0.0838427
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1695088   0.1642029   0.1748147
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2602648   0.2465010   0.2740287
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1551020   0.1096803   0.2005238
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2279412   0.1779953   0.2778871
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1255940   0.0954030   0.1557851
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1253112   0.1120906   0.1385318
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1428571   0.1140289   0.1716853
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1161049   0.0776073   0.1546024
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319539   0.0289718   0.0349360
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0818740   0.0752134   0.0885347
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0947298   0.0842456   0.1052141
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0716899   0.0680353   0.0753445
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0256203   0.0209093   0.0303314
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
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3170197   0.2995873   0.3344522
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months                   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1114097-CMIN             PERU                           NA                   NA                0.0398633   0.0269154   0.0528113
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939779   0.0884472   0.0995086
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1262295   0.1075861   0.1448729
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1227489   0.1150285   0.1304693
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months                   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1641091   0.1579918   0.1702264
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2481046   0.2344735   0.2617358


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6456016   1.0029811   2.6999558
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                    0                 1.3571429   0.9271014   1.9866616
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.8839286   1.0172897   3.4888655
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                    0                 3.1666667   1.2974797   7.7286587
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0683761   0.4523033   2.5235886
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5869565   0.7271305   3.4635202
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1997003   0.9285568   1.5500193
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.1853487   0.9225539   1.5230021
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.2838448   1.0226675   1.6117237
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                    0                 1.2032558   0.9185240   1.5762512
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2816821   1.1536904   1.4238733
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.5292327   1.1808976   1.9803179
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.0954572   0.7913437   1.5164415
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
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.1799749   1.4888153   3.1919948
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3493470   1.1210031   1.6242037
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                    0                 1.3432929   1.0227540   1.7642911
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 1.4283159   1.0875129   1.8759192
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                    0                 1.9098378   1.0005035   3.6456449
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.6277532   0.3500969   1.1256143
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3329973   1.1506316   1.5442665
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.7265118   1.2787619   2.3310385
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.4253249   1.2532300   1.6210522
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4581369   1.2180388   1.7455627
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                    0                 3.6445892   2.1170324   6.2743633
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.0892784   1.0226499   1.1602478
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5439159   1.3936714   1.7103575
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.6770186   0.6343906   4.4332175
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                    0                 0.7538803   0.3125298   1.8184998
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8853272   0.5821644   1.3463624
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.8382353   0.5266739   1.3341052
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 1.2036646   0.7880010   1.8385870
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                    0                 1.5779626   1.0147417   2.4537928
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9598881   0.7996121   1.1522901
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.5449438   0.7954452   3.0006484
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.9343750   0.8363385   4.4740336
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1631206   0.7161665   1.8890153
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         1                    0                 0.9502776   0.6598032   1.3686317
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8926204   0.4516663   1.7640705
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                    0                 1.0380406   0.5257106   2.0496607
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6128938   0.3099898   1.2117778
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8897441   0.6407771   1.2354444
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 0.6484148   0.4742255   0.8865862
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.6620240   0.3696111   1.1857756
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.6769417   0.6030427   0.7598966
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.6599426   0.4182498   1.0413019
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
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4180005   1.2129836   1.6576691
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.4808393   1.1417767   1.9205900
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
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                 2.4493855   1.7855136   3.3600915
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
6-24 months                   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.9254249   1.4318083   2.5892161
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 2.0006131   1.7281804   2.3159924
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.6735184   1.3860203   2.0206515
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                    0                 3.4437229   2.0831470   5.6929385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4825787   1.3799180   1.5928771
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6098506   1.4485914   1.7890613


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0223756   -0.0037884    0.0485397
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0203252   -0.0079542    0.0486046
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0176684   -0.0043751    0.0397119
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0135936   -0.0018657    0.0290528
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0010390   -0.0128191    0.0148970
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0099197   -0.0095907    0.0294301
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0171887   -0.0084418    0.0428191
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0110871   -0.0065105    0.0286847
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0392918    0.0022814    0.0763022
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0240436   -0.0125511    0.0606383
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0263379    0.0132715    0.0394044
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0610212    0.0225892    0.0994531
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0043425   -0.0116466    0.0203315
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0200274    0.0076890    0.0323659
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0122654    0.0004605    0.0240702
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071063    0.0020869    0.0121257
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0040002   -0.0022489    0.0102493
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0203056   -0.0006179    0.0412291
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0168110    0.0082533    0.0253687
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0193079    0.0053978    0.0332180
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0495864    0.0024872    0.0966856
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0107955    0.0015307    0.0200603
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                 0.0056469   -0.0013863    0.0126801
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002459   -0.0005118    0.0000199
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0032822    0.0014004    0.0051639
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0176912    0.0066102    0.0287722
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0088246    0.0051490    0.0125002
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0078054    0.0033117    0.0122991
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0329434    0.0179957    0.0478910
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0046367    0.0011573    0.0081161
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0350048    0.0260835    0.0439261
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0077043   -0.0092607    0.0246693
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0066627   -0.0255675    0.0122422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0070314   -0.0303597    0.0162969
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0069276   -0.0240501    0.0101949
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0127016   -0.0171172    0.0425204
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0309715   -0.0020503    0.0639933
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0013901   -0.0075732    0.0047930
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0060399   -0.0046214    0.0167011
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0042434   -0.0027093    0.0111961
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009444   -0.0022902    0.0041791
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0006079   -0.0048680    0.0036521
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0016973   -0.0114354    0.0080408
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0016470   -0.0285010    0.0317950
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002275   -0.0004848    0.0000297
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003524   -0.0012968    0.0005921
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0033316   -0.0053610   -0.0013022
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0018732   -0.0040792    0.0003329
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0081121   -0.0103612   -0.0058630
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0027027   -0.0054044   -0.0000010
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
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0316216    0.0148192    0.0484241
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0565411    0.0179721    0.0951100
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0081859   -0.0091024    0.0254742
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0201814    0.0070857    0.0332771
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0150794    0.0028806    0.0272782
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078954    0.0025652    0.0132257
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0100238    0.0034560    0.0165917
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0214211   -0.0010895    0.0439317
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0568906    0.0368467    0.0769344
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0138337   -0.0005419    0.0282094
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0558067    0.0083233    0.1032901
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0197279    0.0095625    0.0298932
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                 0.0069252   -0.0001459    0.0139964
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0047520    0.0025480    0.0069559
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0240317    0.0115044    0.0365590
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0132586    0.0096440    0.0168732
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0100292    0.0052734    0.0147850
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0369413    0.0208354    0.0530472
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0209787    0.0168438    0.0251136
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0369418    0.0280411    0.0458426


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1014619   -0.0241011    0.2116299
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0561798   -0.0253562    0.1312321
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0938389   -0.0294005    0.2023241
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                    NA                 0.2052632   -0.0462934    0.3963389
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0072727   -0.0946166    0.0996780
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0863014   -0.0979263    0.2396164
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0381050   -0.0205264    0.0933678
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0212893   -0.0131592    0.0545666
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0897758    0.0008742    0.1707670
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0527035   -0.0311924    0.1297738
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0728537    0.0396683    0.1048923
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1694085    0.0557275    0.2694034
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0146864   -0.0408948    0.0672997
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1127774    0.0421041    0.1782365
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0856303    0.0004231    0.1635742
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0357415    0.0102511    0.0605755
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0116551   -0.0067215    0.0296962
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2444480   -0.0347093    0.4482906
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1975772    0.1070725    0.2789085
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0365117    0.0096695    0.0626262
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1155579   -0.0017390    0.2191201
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0686154    0.0082100    0.1253418
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0                    NA                 0.1091739   -0.0341921    0.2326657
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0034305   -0.0069801    0.0001067
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0329037    0.0139127    0.0515290
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1482054    0.0523097    0.2343975
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0480638    0.0279131    0.0677968
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0257254    0.0108117    0.0404143
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4923854    0.2642126    0.6498003
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0273538    0.0066144    0.0476602
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1344967    0.0995992    0.1680417
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1062378   -0.1560655    0.3090263
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0429567   -0.1718005    0.0717203
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0227870   -0.1012442    0.0500807
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0203139   -0.0717832    0.0286837
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                 0.0658015   -0.1017875    0.2078991
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1358749   -0.0200673    0.2679775
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0110682   -0.0616953    0.0371448
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0766798   -0.0674564    0.2013537
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0805062   -0.0587370    0.2014363
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0109995   -0.0273780    0.0479434
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0048512   -0.0394257    0.0285732
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0118812   -0.0823666    0.0540141
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0141858   -0.2828432    0.2424408
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0035684   -0.0074010    0.0002496
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0110279   -0.0410035    0.0180845
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                -0.0406921   -0.0655914   -0.0163746
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0197736   -0.0432465    0.0031711
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1131555   -0.1440295   -0.0831147
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1054911   -0.2134204   -0.0071616
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
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1033470    0.0507910    0.1529930
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1589476    0.0433879    0.2605476
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0278527   -0.0327644    0.0849119
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1253692    0.0424382    0.2011178
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1146664    0.0188933    0.2010904
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0491759    0.0156305    0.0815780
6-24 months                   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0316190    0.0106858    0.0521092
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2579848   -0.0452562    0.4732520
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2454486    0.1655907    0.3176636
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0292541   -0.0017052    0.0592566
6-24 months                   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.1449824    0.0121120    0.2599818
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1183673    0.0562571    0.1763900
6-24 months                   ki1114097-CMIN             PERU                           0                    NA                 0.1737248   -0.0135769    0.3264145
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0505650    0.0269770    0.0735811
6-24 months                   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1903810    0.0882979    0.2810340
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1080143    0.0786896    0.1364056
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0376128    0.0196563    0.0552403
6-24 months                   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4767736    0.2646305    0.6277166
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1278338    0.1028096    0.1521601
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1488962    0.1125166    0.1837845
