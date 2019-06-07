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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        sex       pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            0      116    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            1        9    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              0      119    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              1        4    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            0      105    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            1        2    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              0      110    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              1        0    217
0-24 months   ki0047075b-MAL-ED          INDIA                          Female            0      125    241
0-24 months   ki0047075b-MAL-ED          INDIA                          Female            1        8    241
0-24 months   ki0047075b-MAL-ED          INDIA                          Male              0       95    241
0-24 months   ki0047075b-MAL-ED          INDIA                          Male              1       13    241
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female            0      110    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female            1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male              0      124    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male              1        4    238
0-24 months   ki0047075b-MAL-ED          PERU                           Female            0      131    284
0-24 months   ki0047075b-MAL-ED          PERU                           Female            1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           Male              0      152    284
0-24 months   ki0047075b-MAL-ED          PERU                           Male              1        1    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      139    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0    253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      179    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            1        8    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      171    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       15    373
0-24 months   ki1000108-IRC              INDIA                          Female            0      165    410
0-24 months   ki1000108-IRC              INDIA                          Female            1       20    410
0-24 months   ki1000108-IRC              INDIA                          Male              0      197    410
0-24 months   ki1000108-IRC              INDIA                          Male              1       28    410
0-24 months   ki1000109-EE               PAKISTAN                       Female            0      170    377
0-24 months   ki1000109-EE               PAKISTAN                       Female            1       12    377
0-24 months   ki1000109-EE               PAKISTAN                       Male              0      179    377
0-24 months   ki1000109-EE               PAKISTAN                       Male              1       16    377
0-24 months   ki1000109-ResPak           PAKISTAN                       Female            0      109    251
0-24 months   ki1000109-ResPak           PAKISTAN                       Female            1        9    251
0-24 months   ki1000109-ResPak           PAKISTAN                       Male              0      108    251
0-24 months   ki1000109-ResPak           PAKISTAN                       Male              1       25    251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            0      181    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            1       14    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              0      215    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              1       18    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            0       45     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            1        8     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              0       31     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              1       10     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            0      228    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            1       15    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              0      259    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              1       32    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            0      299    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            1        5    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              0      326    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              1       10    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      358    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            1       11    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      346    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              1       15    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1053   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       19   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1055   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       39   2166
0-24 months   ki1101329-Keneba           GAMBIA                         Female            0     1127   2441
0-24 months   ki1101329-Keneba           GAMBIA                         Female            1       55   2441
0-24 months   ki1101329-Keneba           GAMBIA                         Male              0     1182   2441
0-24 months   ki1101329-Keneba           GAMBIA                         Male              1       77   2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            0      133    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              0      119    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              1        3    256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            0      246    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            1       39    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              0      261    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              1       46    592
0-24 months   ki1114097-CMIN             BANGLADESH                     Female            0      102    257
0-24 months   ki1114097-CMIN             BANGLADESH                     Female            1        7    257
0-24 months   ki1114097-CMIN             BANGLADESH                     Male              0      135    257
0-24 months   ki1114097-CMIN             BANGLADESH                     Male              1       13    257
0-24 months   ki1114097-CMIN             BRAZIL                         Female            0       62    119
0-24 months   ki1114097-CMIN             BRAZIL                         Female            1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         Male              0       57    119
0-24 months   ki1114097-CMIN             BRAZIL                         Male              1        0    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            0      564   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            1       16   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              0      553   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              1       20   1153
0-24 months   ki1114097-CMIN             PERU                           Female            0      389    830
0-24 months   ki1114097-CMIN             PERU                           Female            1        1    830
0-24 months   ki1114097-CMIN             PERU                           Male              0      436    830
0-24 months   ki1114097-CMIN             PERU                           Male              1        4    830
0-24 months   ki1114097-CONTENT          PERU                           Female            0      106    215
0-24 months   ki1114097-CONTENT          PERU                           Female            1        0    215
0-24 months   ki1114097-CONTENT          PERU                           Male              0      109    215
0-24 months   ki1114097-CONTENT          PERU                           Male              1        0    215
0-24 months   ki1119695-PROBIT           BELARUS                        Female            0     4111   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Female            1       26   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Male              0     3766   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Male              1       69   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            0     4573   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            1       61   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              0     4593   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              1      106   9333
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female            0      233    515
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female            1        9    515
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male              0      256    515
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male              1       17    515
0-24 months   ki1135781-COHORTS          INDIA                          Female            0     2511   5705
0-24 months   ki1135781-COHORTS          INDIA                          Female            1      253   5705
0-24 months   ki1135781-COHORTS          INDIA                          Male              0     2644   5705
0-24 months   ki1135781-COHORTS          INDIA                          Male              1      297   5705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            0     1276   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            1       53   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              0     1391   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              1       91   2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Female            0      358    719
0-24 months   ki1148112-LCNI-5           MALAWI                         Female            1        2    719
0-24 months   ki1148112-LCNI-5           MALAWI                         Male              0      355    719
0-24 months   ki1148112-LCNI-5           MALAWI                         Male              1        4    719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            0     3611   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            1      200   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              0     3698   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              1      251   7760
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            0      651   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            1       60   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              0      615   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              1       52   1378
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female            0      120    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female            1        5    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male              0      121    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male              1        2    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female            0      106    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female            1        1    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male              0      110    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male              1        0    217
0-6 months    ki0047075b-MAL-ED          INDIA                          Female            0      121    240
0-6 months    ki0047075b-MAL-ED          INDIA                          Female            1       12    240
0-6 months    ki0047075b-MAL-ED          INDIA                          Male              0      100    240
0-6 months    ki0047075b-MAL-ED          INDIA                          Male              1        7    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female            0      109    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female            1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male              0      123    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male              1        4    237
0-6 months    ki0047075b-MAL-ED          PERU                           Female            0      131    284
0-6 months    ki0047075b-MAL-ED          PERU                           Female            1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           Male              0      153    284
0-6 months    ki0047075b-MAL-ED          PERU                           Male              1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      137    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0    253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      158    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female            1       21    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      150    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       29    358
0-6 months    ki1000108-IRC              INDIA                          Female            0      155    402
0-6 months    ki1000108-IRC              INDIA                          Female            1       25    402
0-6 months    ki1000108-IRC              INDIA                          Male              0      183    402
0-6 months    ki1000108-IRC              INDIA                          Male              1       39    402
0-6 months    ki1000109-EE               PAKISTAN                       Female            0      163    366
0-6 months    ki1000109-EE               PAKISTAN                       Female            1       11    366
0-6 months    ki1000109-EE               PAKISTAN                       Male              0      176    366
0-6 months    ki1000109-EE               PAKISTAN                       Male              1       16    366
0-6 months    ki1000109-ResPak           PAKISTAN                       Female            0      104    240
0-6 months    ki1000109-ResPak           PAKISTAN                       Female            1       10    240
0-6 months    ki1000109-ResPak           PAKISTAN                       Male              0      111    240
0-6 months    ki1000109-ResPak           PAKISTAN                       Male              1       15    240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female            0       70    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Female            1        4    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male              0       88    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Male              1        7    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female            0      299    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female            1        4    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male              0      324    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male              1       10    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      133    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female            1        2    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      112    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male              1        3    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1000   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       16   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1009   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       36   2061
0-6 months    ki1101329-Keneba           GAMBIA                         Female            0      963   2037
0-6 months    ki1101329-Keneba           GAMBIA                         Female            1       25   2037
0-6 months    ki1101329-Keneba           GAMBIA                         Male              0     1023   2037
0-6 months    ki1101329-Keneba           GAMBIA                         Male              1       26   2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female            0      227    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female            1       32    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male              0      250    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male              1       33    542
0-6 months    ki1114097-CMIN             BANGLADESH                     Female            0       92    234
0-6 months    ki1114097-CMIN             BANGLADESH                     Female            1        3    234
0-6 months    ki1114097-CMIN             BANGLADESH                     Male              0      133    234
0-6 months    ki1114097-CMIN             BANGLADESH                     Male              1        6    234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female            0        4     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female            1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male              0        7     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male              1        0     11
0-6 months    ki1114097-CMIN             PERU                           Female            0      260    558
0-6 months    ki1114097-CMIN             PERU                           Female            1        4    558
0-6 months    ki1114097-CMIN             PERU                           Male              0      286    558
0-6 months    ki1114097-CMIN             PERU                           Male              1        8    558
0-6 months    ki1114097-CONTENT          PERU                           Female            0      106    215
0-6 months    ki1114097-CONTENT          PERU                           Female            1        0    215
0-6 months    ki1114097-CONTENT          PERU                           Male              0      109    215
0-6 months    ki1114097-CONTENT          PERU                           Male              1        0    215
0-6 months    ki1119695-PROBIT           BELARUS                        Female            0     3195   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Female            1      260   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Male              0     2835   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Male              1      367   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female            0      290    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female            1        3    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male              0      306    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male              1       11    610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female            0      397    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female            1       17    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male              0      404    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male              1       35    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female            0       10     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female            1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male              0       13     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male              1        2     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            0      116    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            1        9    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              0      119    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              1        4    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            0      105    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            1        2    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              0      110    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              1        0    217
6-24 months   ki0047075b-MAL-ED          INDIA                          Female            0      125    241
6-24 months   ki0047075b-MAL-ED          INDIA                          Female            1        8    241
6-24 months   ki0047075b-MAL-ED          INDIA                          Male              0       95    241
6-24 months   ki0047075b-MAL-ED          INDIA                          Male              1       13    241
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female            0      110    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female            1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male              0      124    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male              1        4    238
6-24 months   ki0047075b-MAL-ED          PERU                           Female            0      131    284
6-24 months   ki0047075b-MAL-ED          PERU                           Female            1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           Male              0      152    284
6-24 months   ki0047075b-MAL-ED          PERU                           Male              1        1    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      139    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0    253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      179    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            1        8    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      171    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       15    373
6-24 months   ki1000108-IRC              INDIA                          Female            0      165    410
6-24 months   ki1000108-IRC              INDIA                          Female            1       20    410
6-24 months   ki1000108-IRC              INDIA                          Male              0      197    410
6-24 months   ki1000108-IRC              INDIA                          Male              1       28    410
6-24 months   ki1000109-EE               PAKISTAN                       Female            0      170    377
6-24 months   ki1000109-EE               PAKISTAN                       Female            1       12    377
6-24 months   ki1000109-EE               PAKISTAN                       Male              0      179    377
6-24 months   ki1000109-EE               PAKISTAN                       Male              1       16    377
6-24 months   ki1000109-ResPak           PAKISTAN                       Female            0      109    251
6-24 months   ki1000109-ResPak           PAKISTAN                       Female            1        9    251
6-24 months   ki1000109-ResPak           PAKISTAN                       Male              0      108    251
6-24 months   ki1000109-ResPak           PAKISTAN                       Male              1       25    251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            0      181    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            1       14    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              0      215    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              1       18    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            0       45     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            1        8     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              0       31     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              1       10     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            0      228    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            1       15    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              0      259    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              1       32    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            0      299    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            1        5    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              0      326    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              1       10    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      358    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            1       11    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      346    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              1       15    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1053   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       19   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1055   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       39   2166
6-24 months   ki1101329-Keneba           GAMBIA                         Female            0     1127   2441
6-24 months   ki1101329-Keneba           GAMBIA                         Female            1       55   2441
6-24 months   ki1101329-Keneba           GAMBIA                         Male              0     1182   2441
6-24 months   ki1101329-Keneba           GAMBIA                         Male              1       77   2441
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            0      133    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              0      119    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              1        3    256
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            0      246    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            1       39    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              0      261    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              1       46    592
6-24 months   ki1114097-CMIN             BANGLADESH                     Female            0      102    257
6-24 months   ki1114097-CMIN             BANGLADESH                     Female            1        7    257
6-24 months   ki1114097-CMIN             BANGLADESH                     Male              0      135    257
6-24 months   ki1114097-CMIN             BANGLADESH                     Male              1       13    257
6-24 months   ki1114097-CMIN             BRAZIL                         Female            0       62    119
6-24 months   ki1114097-CMIN             BRAZIL                         Female            1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         Male              0       57    119
6-24 months   ki1114097-CMIN             BRAZIL                         Male              1        0    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            0      564   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            1       16   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              0      553   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              1       20   1153
6-24 months   ki1114097-CMIN             PERU                           Female            0      389    830
6-24 months   ki1114097-CMIN             PERU                           Female            1        1    830
6-24 months   ki1114097-CMIN             PERU                           Male              0      436    830
6-24 months   ki1114097-CMIN             PERU                           Male              1        4    830
6-24 months   ki1114097-CONTENT          PERU                           Female            0      106    215
6-24 months   ki1114097-CONTENT          PERU                           Female            1        0    215
6-24 months   ki1114097-CONTENT          PERU                           Male              0      109    215
6-24 months   ki1114097-CONTENT          PERU                           Male              1        0    215
6-24 months   ki1119695-PROBIT           BELARUS                        Female            0     4111   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Female            1       26   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Male              0     3766   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Male              1       69   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            0     4573   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            1       61   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              0     4593   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              1      106   9333
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female            0      233    515
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female            1        9    515
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male              0      256    515
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male              1       17    515
6-24 months   ki1135781-COHORTS          INDIA                          Female            0     2511   5705
6-24 months   ki1135781-COHORTS          INDIA                          Female            1      253   5705
6-24 months   ki1135781-COHORTS          INDIA                          Male              0     2644   5705
6-24 months   ki1135781-COHORTS          INDIA                          Male              1      297   5705
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            0     1276   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            1       53   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              0     1391   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              1       91   2811
6-24 months   ki1148112-LCNI-5           MALAWI                         Female            0      358    719
6-24 months   ki1148112-LCNI-5           MALAWI                         Female            1        2    719
6-24 months   ki1148112-LCNI-5           MALAWI                         Male              0      355    719
6-24 months   ki1148112-LCNI-5           MALAWI                         Male              1        4    719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            0     3611   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            1      200   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              0     3698   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              1      251   7760
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            0      651   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            1       60   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              0      615   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              1       52   1378


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/30d9584e-21ee-4f34-aa0b-b5941cac2170/e759ba46-1044-4957-ab66-3688a0f0da6f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30d9584e-21ee-4f34-aa0b-b5941cac2170/e759ba46-1044-4957-ab66-3688a0f0da6f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30d9584e-21ee-4f34-aa0b-b5941cac2170/e759ba46-1044-4957-ab66-3688a0f0da6f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30d9584e-21ee-4f34-aa0b-b5941cac2170/e759ba46-1044-4957-ab66-3688a0f0da6f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0601504   0.0196580   0.1006428
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1203704   0.0588741   0.1818666
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0427808   0.0137378   0.0718237
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0806452   0.0414615   0.1198288
0-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1081081   0.0633081   0.1529081
0-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1244444   0.0812611   0.1676278
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0659341   0.0298319   0.1020362
0-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.0820513   0.0434804   0.1206222
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0762712   0.0282839   0.1242585
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1879699   0.1214396   0.2545002
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0717949   0.0377491   0.1058406
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0772532   0.0205319   0.1339745
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1509434   0.0540469   0.2478399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.2439024   0.1117499   0.3760550
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0617284   0.0314412   0.0920156
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1099656   0.0739873   0.1459439
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0164474   0.0021387   0.0307560
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0297619   0.0115780   0.0479458
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0298103   0.0124465   0.0471741
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0415512   0.0209512   0.0621513
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0177239   0.0098235   0.0256242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0356490   0.0246594   0.0466386
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0465313   0.0345210   0.0585416
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0611597   0.0479207   0.0743986
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1368421   0.0969076   0.1767766
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1498371   0.1098789   0.1897954
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0642202   0.0181092   0.1103311
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0878378   0.0421458   0.1335299
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0275862   0.0142512   0.0409212
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0349040   0.0198698   0.0499383
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0062847   0.0026736   0.0098959
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0179922   0.0061125   0.0298718
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0131636   0.0098818   0.0164453
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0225580   0.0183121   0.0268038
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0371901   0.0133259   0.0610543
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0622711   0.0335784   0.0909637
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0915340   0.0807827   0.1022854
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1009861   0.0900954   0.1118767
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0398796   0.0293575   0.0504017
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0614035   0.0491788   0.0736282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0524797   0.0447783   0.0601810
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0635604   0.0553769   0.0717439
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0843882   0.0635855   0.1051909
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0779610   0.0525426   0.1033794
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0902256   0.0414322   0.1390189
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.0654206   0.0184714   0.1123698
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1173184   0.0701106   0.1645263
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1620112   0.1079581   0.2160643
0-6 months    ki1000108-IRC              INDIA                          Female               NA                0.1388889   0.0883046   0.1894732
0-6 months    ki1000108-IRC              INDIA                          Male                 NA                0.1756757   0.1255550   0.2257964
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.0632184   0.0270101   0.0994267
0-6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.0833333   0.0441856   0.1224811
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.0877193   0.0356821   0.1397565
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1190476   0.0623838   0.1757115
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0157480   0.0080908   0.0234053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0344498   0.0233892   0.0455103
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0253036   0.0155087   0.0350986
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0247855   0.0153749   0.0341961
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1235521   0.0834389   0.1636653
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1166078   0.0791798   0.1540358
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0752533   0.0304628   0.1200437
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1146159   0.0613428   0.1678889
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0410628   0.0219369   0.0601887
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0797267   0.0543736   0.1050797
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0601504   0.0196580   0.1006428
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1203704   0.0588741   0.1818666
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0427808   0.0137378   0.0718237
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0806452   0.0414615   0.1198288
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1081081   0.0633081   0.1529081
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1244444   0.0812611   0.1676278
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0659341   0.0298319   0.1020362
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.0820513   0.0434804   0.1206222
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0762712   0.0282839   0.1242585
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1879699   0.1214396   0.2545002
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0717949   0.0377491   0.1058406
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0772532   0.0205319   0.1339745
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1509434   0.0540469   0.2478399
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.2439024   0.1117499   0.3760550
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0617284   0.0314412   0.0920156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1099656   0.0739873   0.1459439
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0164474   0.0021387   0.0307560
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0297619   0.0115780   0.0479458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0298103   0.0124465   0.0471741
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0415512   0.0209512   0.0621513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0177239   0.0098235   0.0256242
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0356490   0.0246594   0.0466386
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0465313   0.0345210   0.0585416
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0611597   0.0479207   0.0743986
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1368421   0.0969076   0.1767766
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1498371   0.1098789   0.1897954
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0642202   0.0181092   0.1103311
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0878378   0.0421458   0.1335299
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0275862   0.0142512   0.0409212
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0349040   0.0198698   0.0499383
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0062847   0.0026736   0.0098959
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0179922   0.0061125   0.0298718
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0131636   0.0098818   0.0164453
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0225580   0.0183121   0.0268038
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0371901   0.0133259   0.0610543
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0622711   0.0335784   0.0909637
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0915340   0.0807827   0.1022854
6-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1009861   0.0900954   0.1118767
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0398796   0.0293575   0.0504017
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0614035   0.0491788   0.0736282
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0524797   0.0447783   0.0601810
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0635604   0.0553769   0.0717439
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0843882   0.0635855   0.1051909
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0779610   0.0525426   0.1033794


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0747664   0.0516226   0.0979101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1914894   0.1115203   0.2714584
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0504854   0.0315576   0.0694132
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581186   0.0523097   0.0639274
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0812772   0.0652971   0.0972574
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0941866   0.0454872   0.1428859
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0747664   0.0516226   0.0979101
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1914894   0.1115203   0.2714584
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0504854   0.0315576   0.0694132
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0581186   0.0523097   0.0639274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0812772   0.0652971   0.0972574


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0011574   0.8595278   4.659106
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.8850805   0.8180218   4.344051
0-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.1511111   0.6704712   1.976307
0-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.2444444   0.6047338   2.560865
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            2.4644946   1.1973330   5.072719
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0760270   0.3534696   3.275625
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.6158537   0.6975558   3.743046
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.7814433   0.9877665   3.212845
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.8095236   0.6249935   5.239056
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.3938555   0.6486737   2.995085
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.0113537   1.1698166   3.458272
0-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.3143765   0.9384702   1.840853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949637   0.7374161   1.625874
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3677606   0.5635671   3.319514
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2652705   0.6622111   2.417521
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            2.8628319   1.8809598   4.357247
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7136677   1.2539013   2.342016
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.6743997   0.7599351   3.689281
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1032627   0.9406498   1.293987
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5397219   1.1063554   2.142841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.2111433   1.0025370   1.463156
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            0.9238381   0.6091484   1.401098
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            0.7250779   0.2952078   1.780908
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.3809524   0.8187773   2.329119
0-6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Male                 Female            1.2648649   0.7963758   2.008955
0-6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.3181818   0.6284435   2.764931
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.3571429   0.6343277   2.903605
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.1875598   1.2215434   3.917518
0-6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            0.9795234   0.5695505   1.684602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9437942   0.5978647   1.489881
0-6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            1.5230685   1.2666453   1.831403
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.9415783   1.1046476   3.412605
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0011574   0.8595278   4.659106
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.8850805   0.8180218   4.344051
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.1511111   0.6704712   1.976307
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.2444444   0.6047338   2.560865
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            2.4644946   1.1973330   5.072719
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0760270   0.3534696   3.275625
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.6158537   0.6975558   3.743046
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.7814433   0.9877665   3.212845
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.8095236   0.6249935   5.239056
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.3938555   0.6486737   2.995085
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.0113537   1.1698166   3.458272
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.3143765   0.9384702   1.840853
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949637   0.7374161   1.625874
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3677606   0.5635671   3.319514
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2652705   0.6622111   2.417521
6-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            2.8628319   1.8809598   4.357247
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7136677   1.2539013   2.342016
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.6743997   0.7599351   3.689281
6-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1032627   0.9406498   1.293987
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5397219   1.1063554   2.142841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.2111433   1.0025370   1.463156
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            0.9238381   0.6091484   1.401098


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0269866   -0.0062264   0.0601995
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0188814   -0.0055159   0.0432788
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0089651   -0.0251914   0.0431215
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0083365   -0.0190018   0.0356748
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0591870    0.0151745   0.1031995
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0029715   -0.0426429   0.0485859
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0405460   -0.0315405   0.1126324
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0262866    0.0005773   0.0519959
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0069901   -0.0051685   0.0191488
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0058061   -0.0075240   0.0191363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0090536    0.0022071   0.0159001
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0075449   -0.0016791   0.0167689
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0067390   -0.0225617   0.0360397
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0136008   -0.0238096   0.0510112
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0036367   -0.0063526   0.0136260
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0056320    0.0011060   0.0101579
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047299    0.0020264   0.0074334
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0132954   -0.0065173   0.0331080
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0048727   -0.0030174   0.0127628
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0113477    0.0028348   0.0198606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0056389    0.0000892   0.0111886
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0031110   -0.0193441   0.0131222
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0110589   -0.0412879   0.0191701
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0223464   -0.0136113   0.0583040
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0203151   -0.0190506   0.0596807
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0105521   -0.0174408   0.0385450
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0164474   -0.0239911   0.0568858
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0094824    0.0026496   0.0163153
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0002668   -0.0072618   0.0067281
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0036259   -0.0322735   0.0250216
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0189333    0.0115572   0.0263094
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0198985    0.0035026   0.0362944
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0269866   -0.0062264   0.0601995
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0188814   -0.0055159   0.0432788
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0089651   -0.0251914   0.0431215
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0083365   -0.0190018   0.0356748
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0591870    0.0151745   0.1031995
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0029715   -0.0426429   0.0485859
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0405460   -0.0315405   0.1126324
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0262866    0.0005773   0.0519959
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0069901   -0.0051685   0.0191488
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0058061   -0.0075240   0.0191363
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0090536    0.0022071   0.0159001
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0075449   -0.0016791   0.0167689
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0067390   -0.0225617   0.0360397
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0136008   -0.0238096   0.0510112
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0036367   -0.0063526   0.0136260
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0056320    0.0011060   0.0101579
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047299    0.0020264   0.0074334
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0132954   -0.0065173   0.0331080
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0048727   -0.0030174   0.0127628
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0113477    0.0028348   0.0198606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0056389    0.0000892   0.0111886
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0031110   -0.0193441   0.0131222


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3097028   -0.1668719   0.5916345
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3062078   -0.1969410   0.5978519
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0765766   -0.2657912   0.3263416
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1122449   -0.3410611   0.4123242
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.4369392    0.0402860   0.6696542
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0397436   -0.7968132   0.4868179
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.2117400   -0.2602590   0.5069634
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2986604   -0.0485677   0.5309055
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2982456   -0.4260208   0.6546619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1630186   -0.3014730   0.4617346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3381047    0.0468217   0.5403742
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1395234   -0.0473989   0.2930869
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0469350   -0.1804539   0.2305223
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1747706   -0.4689051   0.5363870
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1164751   -0.2660807   0.3834388
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.4726104    0.2853886   0.6107818
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2643375    0.1029446   0.3966936
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2633503   -0.2353140   0.5607167
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0505427   -0.0348444   0.1288843
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2215168    0.0405422   0.3683557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0970240   -0.0033686   0.1873717
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0382761   -0.2601869   0.1445577
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1396913   -0.5878942   0.1820007
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1600000   -0.1380044   0.3799672
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.1276042   -0.1567787   0.3420742
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1430396   -0.3295347   0.4476405
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1578947   -0.3296152   0.4666568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3758328    0.0653954   0.5831556
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0106573   -0.3324594   0.2334264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0302346   -0.2989848   0.1829132
0-6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.2010193    0.1100504   0.2826895
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3264121    0.0148310   0.5394489
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3097028   -0.1668719   0.5916345
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3062078   -0.1969410   0.5978519
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0765766   -0.2657912   0.3263416
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1122449   -0.3410611   0.4123242
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.4369392    0.0402860   0.6696542
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0397436   -0.7968132   0.4868179
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.2117400   -0.2602590   0.5069634
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2986604   -0.0485677   0.5309055
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2982456   -0.4260208   0.6546619
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1630186   -0.3014730   0.4617346
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3381047    0.0468217   0.5403742
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1395234   -0.0473989   0.2930869
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0469350   -0.1804539   0.2305223
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1747706   -0.4689051   0.5363870
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1164751   -0.2660807   0.3834388
6-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.4726104    0.2853886   0.6107818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2643375    0.1029446   0.3966936
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2633503   -0.2353140   0.5607167
6-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0505427   -0.0348444   0.1288843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2215168    0.0405422   0.3683557
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0970240   -0.0033686   0.1873717
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0382761   -0.2601869   0.1445577
