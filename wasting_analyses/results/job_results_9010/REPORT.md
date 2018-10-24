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

agecat        studyid                    country                        sex       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            0      116     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            1        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              0      119     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              1        4     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            0      105     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              0      110     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          Female            0      125     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Female            1        8     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Male              0       95     241
0-24 months   ki0047075b-MAL-ED          INDIA                          Male              1       13     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female            0      110     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Female            1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male              0      124     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Male              1        4     238
0-24 months   ki0047075b-MAL-ED          PERU                           Female            0      131     284
0-24 months   ki0047075b-MAL-ED          PERU                           Female            1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           Male              0      152     284
0-24 months   ki0047075b-MAL-ED          PERU                           Male              1        1     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      139     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      179     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      171     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       15     373
0-24 months   ki1000108-IRC              INDIA                          Female            0      165     410
0-24 months   ki1000108-IRC              INDIA                          Female            1       20     410
0-24 months   ki1000108-IRC              INDIA                          Male              0      197     410
0-24 months   ki1000108-IRC              INDIA                          Male              1       28     410
0-24 months   ki1000109-EE               PAKISTAN                       Female            0      340     754
0-24 months   ki1000109-EE               PAKISTAN                       Female            1       24     754
0-24 months   ki1000109-EE               PAKISTAN                       Male              0      358     754
0-24 months   ki1000109-EE               PAKISTAN                       Male              1       32     754
0-24 months   ki1000109-ResPak           PAKISTAN                       Female            0      109     251
0-24 months   ki1000109-ResPak           PAKISTAN                       Female            1        9     251
0-24 months   ki1000109-ResPak           PAKISTAN                       Male              0      108     251
0-24 months   ki1000109-ResPak           PAKISTAN                       Male              1       25     251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            0      566    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            1       48    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              0      686    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              1       66    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            0      166     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            1       31     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              0      144     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              1       34     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            0      228     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            1       15     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              0      259     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              1       32     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            0      299     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            1        5     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              0      326     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              1       10     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      358     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            1       11     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      346     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              1       15     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1053    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       19    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1055    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       39    2166
0-24 months   ki1101329-Keneba           GAMBIA                         Female            0     1127    2441
0-24 months   ki1101329-Keneba           GAMBIA                         Female            1       55    2441
0-24 months   ki1101329-Keneba           GAMBIA                         Male              0     1182    2441
0-24 months   ki1101329-Keneba           GAMBIA                         Male              1       77    2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            0      133     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              0      119     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              1        3     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            0      732    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            1       80    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              0      737    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              1      120    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            0      492    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            1       78    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              0      522    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              1       92    1184
0-24 months   ki1114097-CMIN             BANGLADESH                     Female            0      102     257
0-24 months   ki1114097-CMIN             BANGLADESH                     Female            1        7     257
0-24 months   ki1114097-CMIN             BANGLADESH                     Male              0      135     257
0-24 months   ki1114097-CMIN             BANGLADESH                     Male              1       13     257
0-24 months   ki1114097-CMIN             BRAZIL                         Female            0       62     119
0-24 months   ki1114097-CMIN             BRAZIL                         Female            1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male              0       57     119
0-24 months   ki1114097-CMIN             BRAZIL                         Male              1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            0      564    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            1       16    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              0      553    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              1       20    1153
0-24 months   ki1114097-CMIN             PERU                           Female            0      389     830
0-24 months   ki1114097-CMIN             PERU                           Female            1        1     830
0-24 months   ki1114097-CMIN             PERU                           Male              0      436     830
0-24 months   ki1114097-CMIN             PERU                           Male              1        4     830
0-24 months   ki1114097-CONTENT          PERU                           Female            0      106     215
0-24 months   ki1114097-CONTENT          PERU                           Female            1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Male              0      109     215
0-24 months   ki1114097-CONTENT          PERU                           Male              1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        Female            0     8550   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Female            1       40   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Male              0     7872   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Male              1      119   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            0     4573    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            1       61    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              0     4593    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              1      106    9333
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female            0      490    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female            1       12    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male              0      530    1056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male              1       24    1056
0-24 months   ki1135781-COHORTS          INDIA                          Female            0     2511    5705
0-24 months   ki1135781-COHORTS          INDIA                          Female            1      253    5705
0-24 months   ki1135781-COHORTS          INDIA                          Male              0     2644    5705
0-24 months   ki1135781-COHORTS          INDIA                          Male              1      297    5705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            0     1276    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            1       53    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              0     1391    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              1       91    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Female            0      358     719
0-24 months   ki1148112-LCNI-5           MALAWI                         Female            1        2     719
0-24 months   ki1148112-LCNI-5           MALAWI                         Male              0      355     719
0-24 months   ki1148112-LCNI-5           MALAWI                         Male              1        4     719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            0    14466   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female            1      850   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              0    15096   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male              1      946   31358
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            0     4801   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            1      366   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              0     4676   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              1      464   10307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female            0      120     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Female            1        5     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male              0      121     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Male              1        2     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female            0      106     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Female            1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male              0      110     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Male              1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          Female            0      121     240
0-6 months    ki0047075b-MAL-ED          INDIA                          Female            1       12     240
0-6 months    ki0047075b-MAL-ED          INDIA                          Male              0      100     240
0-6 months    ki0047075b-MAL-ED          INDIA                          Male              1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female            0      109     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Female            1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male              0      123     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          Male              1        4     237
0-6 months    ki0047075b-MAL-ED          PERU                           Female            0      131     284
0-6 months    ki0047075b-MAL-ED          PERU                           Female            1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           Male              0      153     284
0-6 months    ki0047075b-MAL-ED          PERU                           Male              1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      137     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      132     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      128     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      125     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      158     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female            1       21     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      150     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       29     358
0-6 months    ki1000108-IRC              INDIA                          Female            0      155     402
0-6 months    ki1000108-IRC              INDIA                          Female            1       25     402
0-6 months    ki1000108-IRC              INDIA                          Male              0      183     402
0-6 months    ki1000108-IRC              INDIA                          Male              1       39     402
0-6 months    ki1000109-EE               PAKISTAN                       Female            0      326     732
0-6 months    ki1000109-EE               PAKISTAN                       Female            1       22     732
0-6 months    ki1000109-EE               PAKISTAN                       Male              0      352     732
0-6 months    ki1000109-EE               PAKISTAN                       Male              1       32     732
0-6 months    ki1000109-ResPak           PAKISTAN                       Female            0      104     240
0-6 months    ki1000109-ResPak           PAKISTAN                       Female            1       10     240
0-6 months    ki1000109-ResPak           PAKISTAN                       Male              0      111     240
0-6 months    ki1000109-ResPak           PAKISTAN                       Male              1       15     240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female            0      299     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Female            1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male              0      324     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Male              1       10     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0     1000    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       16    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0     1009    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       36    2061
0-6 months    ki1101329-Keneba           GAMBIA                         Female            0      963    2037
0-6 months    ki1101329-Keneba           GAMBIA                         Female            1       25    2037
0-6 months    ki1101329-Keneba           GAMBIA                         Male              0     1023    2037
0-6 months    ki1101329-Keneba           GAMBIA                         Male              1       26    2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female            0      454    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female            1       64    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male              0      500    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Male              1       66    1084
0-6 months    ki1114097-CMIN             BANGLADESH                     Female            0       92     234
0-6 months    ki1114097-CMIN             BANGLADESH                     Female            1        3     234
0-6 months    ki1114097-CMIN             BANGLADESH                     Male              0      133     234
0-6 months    ki1114097-CMIN             BANGLADESH                     Male              1        6     234
0-6 months    ki1114097-CMIN             PERU                           Female            0      260     558
0-6 months    ki1114097-CMIN             PERU                           Female            1        4     558
0-6 months    ki1114097-CMIN             PERU                           Male              0      286     558
0-6 months    ki1114097-CMIN             PERU                           Male              1        8     558
0-6 months    ki1114097-CONTENT          PERU                           Female            0      106     215
0-6 months    ki1114097-CONTENT          PERU                           Female            1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Male              0      109     215
0-6 months    ki1114097-CONTENT          PERU                           Male              1        0     215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            0      108     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female            1       11     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              0      109     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male              1        6     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            0       92     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Female            1        2     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              0      103     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Male              1        0     197
6-24 months   ki0047075b-MAL-ED          INDIA                          Female            0      115     231
6-24 months   ki0047075b-MAL-ED          INDIA                          Female            1       11     231
6-24 months   ki0047075b-MAL-ED          INDIA                          Male              0       89     231
6-24 months   ki0047075b-MAL-ED          INDIA                          Male              1       16     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female            0      108     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Female            1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male              0      121     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          Male              1        2     231
6-24 months   ki0047075b-MAL-ED          PERU                           Female            0      114     251
6-24 months   ki0047075b-MAL-ED          PERU                           Female            1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           Male              0      135     251
6-24 months   ki0047075b-MAL-ED          PERU                           Male              1        2     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            0      126     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female            1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              0      127     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male              1        1     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            0      119     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female            1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              0      119     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male              1        0     238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            0      177     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female            1       10     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              0      168     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male              1       18     373
6-24 months   ki1000108-IRC              INDIA                          Female            0      164     410
6-24 months   ki1000108-IRC              INDIA                          Female            1       21     410
6-24 months   ki1000108-IRC              INDIA                          Male              0      198     410
6-24 months   ki1000108-IRC              INDIA                          Male              1       27     410
6-24 months   ki1000109-EE               PAKISTAN                       Female            0      322     736
6-24 months   ki1000109-EE               PAKISTAN                       Female            1       34     736
6-24 months   ki1000109-EE               PAKISTAN                       Male              0      328     736
6-24 months   ki1000109-EE               PAKISTAN                       Male              1       52     736
6-24 months   ki1000109-ResPak           PAKISTAN                       Female            0       83     206
6-24 months   ki1000109-ResPak           PAKISTAN                       Female            1       14     206
6-24 months   ki1000109-ResPak           PAKISTAN                       Male              0       81     206
6-24 months   ki1000109-ResPak           PAKISTAN                       Male              1       28     206
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            0      459    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female            1       82    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              0      557    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male              1      106    1204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            0      154     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female            1       28     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              0      135     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male              1       31     348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            0      203     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female            1       22     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              0      234     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male              1       33     492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            0      273     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female            1       13     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              0      290     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male              1       25     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            0      337     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female            1       17     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              0      318     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male              1       25     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            0      807    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female            1       34    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              0      815    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male              1       50    1706
6-24 months   ki1101329-Keneba           GAMBIA                         Female            0     1008    2232
6-24 months   ki1101329-Keneba           GAMBIA                         Female            1       80    2232
6-24 months   ki1101329-Keneba           GAMBIA                         Male              0     1025    2232
6-24 months   ki1101329-Keneba           GAMBIA                         Male              1      119    2232
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            0      113     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Female            1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              0      102     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Male              1        3     218
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            0      732    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female            1       80    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              0      737    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male              1      120    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            0      470    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female            1       86    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              0      470    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male              1      128    1154
6-24 months   ki1114097-CMIN             BANGLADESH                     Female            0      100     251
6-24 months   ki1114097-CMIN             BANGLADESH                     Female            1        8     251
6-24 months   ki1114097-CMIN             BANGLADESH                     Male              0      126     251
6-24 months   ki1114097-CMIN             BANGLADESH                     Male              1       17     251
6-24 months   ki1114097-CMIN             BRAZIL                         Female            0       61     117
6-24 months   ki1114097-CMIN             BRAZIL                         Female            1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         Male              0       56     117
6-24 months   ki1114097-CMIN             BRAZIL                         Male              1        0     117
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            0      477     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female            1       16     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              0      474     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male              1       20     987
6-24 months   ki1114097-CMIN             PERU                           Female            0      339     734
6-24 months   ki1114097-CMIN             PERU                           Female            1        1     734
6-24 months   ki1114097-CMIN             PERU                           Male              0      391     734
6-24 months   ki1114097-CMIN             PERU                           Male              1        3     734
6-24 months   ki1114097-CONTENT          PERU                           Female            0      106     215
6-24 months   ki1114097-CONTENT          PERU                           Female            1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Male              0      109     215
6-24 months   ki1114097-CONTENT          PERU                           Male              1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        Female            0     3669    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Female            1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Male              0     3426    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Male              1        2    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            0     1191    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female            1       38    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              0      940    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male              1       57    2226
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female            0      425     935
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female            1       13     935
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male              0      469     935
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male              1       28     935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            0     1171    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female            1       78    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              0     1275    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male              1      115    2639
6-24 months   ki1148112-LCNI-5           MALAWI                         Female            0      346     695
6-24 months   ki1148112-LCNI-5           MALAWI                         Female            1        2     695
6-24 months   ki1148112-LCNI-5           MALAWI                         Male              0      343     695
6-24 months   ki1148112-LCNI-5           MALAWI                         Male              1        4     695
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            0     4495    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female            1      466    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              0     4310    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male              1      588    9859


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
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b0bf576b-1bfa-4e26-ab63-5090b20ef19c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0bf576b-1bfa-4e26-ab63-5090b20ef19c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0bf576b-1bfa-4e26-ab63-5090b20ef19c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0bf576b-1bfa-4e26-ab63-5090b20ef19c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0781759   0.0600535   0.0962983
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0877660   0.0500788   0.1254531
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1573604   0.1064433   0.2082775
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1910112   0.1331858   0.2488366
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0985222   0.0671712   0.1298731
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1400233   0.0951407   0.1849060
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1368421   0.0969076   0.1767766
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1498371   0.1098789   0.1897954
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0642202   0.0181092   0.1103311
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.0878378   0.0421458   0.1335299
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0275862   0.0142512   0.0409212
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0349040   0.0198698   0.0499383
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0046566   0.0023223   0.0069909
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0148918   0.0077010   0.0220825
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0131636   0.0098818   0.0164453
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0225580   0.0183121   0.0268038
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0239044   0.0105358   0.0372730
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0433213   0.0263610   0.0602816
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0915340   0.0807827   0.1022854
0-24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1009861   0.0900954   0.1118767
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0398796   0.0293575   0.0504017
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0614035   0.0491788   0.0736282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0554975   0.0496589   0.0613361
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0589702   0.0535129   0.0644275
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0708341   0.0600449   0.0816234
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0902724   0.0772386   0.1033061
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.0924370   0.0402856   0.1445884
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.0521739   0.0114434   0.0929045
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0873016   0.0379070   0.1366962
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1523810   0.0834902   0.2212717
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0534759   0.0211869   0.0857650
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.0967742   0.0542288   0.1393196
6-24 months   ki1000108-IRC              INDIA                          Female               NA                0.1135135   0.0677465   0.1592805
6-24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1200000   0.0774873   0.1625127
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.0955056   0.0522695   0.1387417
6-24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.1368421   0.0879074   0.1857768
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.1443299   0.0742247   0.2144351
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2568807   0.1746590   0.3391025
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1515712   0.1339950   0.1691473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1598793   0.1417056   0.1780530
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1538462   0.1013527   0.2063396
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1867470   0.1273781   0.2461158
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0977778   0.0589292   0.1366264
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1235955   0.0840781   0.1631129
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0454545   0.0212936   0.0696155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0793651   0.0494897   0.1092404
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0480226   0.0257334   0.0703118
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0728863   0.0453565   0.1004160
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0404281   0.0271126   0.0537436
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0578035   0.0422469   0.0733601
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0735294   0.0580171   0.0890418
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1040210   0.0863263   0.1217156
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0985222   0.0671712   0.1298731
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1400233   0.0951407   0.1849060
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1546763   0.1121335   0.1972190
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2140468   0.1675159   0.2605778
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.0740741   0.0245833   0.1235649
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1188811   0.0657290   0.1720332
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0324544   0.0168043   0.0481045
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0404858   0.0230965   0.0578751
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0309194   0.0212397   0.0405992
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0571715   0.0427569   0.0715862
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0296804   0.0137790   0.0455818
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0563380   0.0360560   0.0766201
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0624500   0.0490281   0.0758718
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0827338   0.0682490   0.0972186
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0939327   0.0809476   0.1069177
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1200490   0.1038927   0.1362053


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267775   0.0199775   0.0335775
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0312229   0.0211797   0.0412661
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0340909   0.0231410   0.0450408
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0805278   0.0718757   0.0891799
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.0737705   0.0469540   0.1005870
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1041667   0.0654385   0.1428949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0252305   0.0184583   0.0320026
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0250368   0.0182504   0.0318233
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0726496   0.0393216   0.1059775
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1168831   0.0753620   0.1584042
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.1168478   0.0839821   0.1497135
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2038835   0.1487329   0.2590341
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0492380   0.0389679   0.0595080
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0891577   0.0773328   0.1009827
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1854419   0.1537023   0.2171816
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0996016   0.0624798   0.1367234
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0364742   0.0247729   0.0481755
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0426774   0.0342788   0.0510761
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0438503   0.0307185   0.0569821
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0731338   0.0631985   0.0830690
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1069074   0.0961821   0.1176327


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1226729   0.7109206   1.772904
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.2138456   0.7793349   1.890614
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.4212368   0.8801757   2.294899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949637   0.7374161   1.625874
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3677606   0.5635671   3.319514
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2652705   0.6622111   2.417521
0-24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            3.1980040   2.0369867   5.020764
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7136677   1.2539013   2.342016
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.8122744   0.9156815   3.586769
0-24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1032627   0.9406498   1.293987
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5397219   1.1063554   2.142841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0625737   0.9267332   1.218326
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2744190   1.0382388   1.564326
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.5644269   0.2154255   1.478830
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.7454545   0.8460159   3.601128
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.8096774   0.8574848   3.819231
6-24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0571429   0.6180725   1.808123
6-24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.4328173   0.8047173   2.551163
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.7798165   0.9948176   3.184249
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0548136   0.9314127   1.194564
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.2138554   0.7614305   1.935101
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.2640449   0.7590626   2.104977
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.7460317   0.9102945   3.349055
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.5177499   0.8342881   2.761115
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.4297858   0.9344369   2.187721
6-24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.4146853   1.0788571   1.855051
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.4212368   0.8801757   2.294899
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.3838376   0.9746087   1.964898
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.6048951   0.7183021   3.585801
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2474696   0.6539971   2.379491
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.8490471   1.2370155   2.763890
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.8981582   0.9954198   3.619583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3248017   1.0040648   1.747994
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.2780323   1.0615537   1.538657


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0269866   -0.0062264   0.0601995
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0188814   -0.0055159   0.0432788
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0089651   -0.0251914   0.0431215
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0083365   -0.0190018   0.0356748
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0591870    0.0151745   0.1031995
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0052794   -0.0163323   0.0268912
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0159729   -0.0206386   0.0525845
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0262866    0.0005773   0.0519959
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0069901   -0.0051685   0.0191488
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0058061   -0.0075240   0.0191363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0090536    0.0022071   0.0159001
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0075449   -0.0016791   0.0167689
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0213101   -0.0078967   0.0505169
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0067390   -0.0225617   0.0360397
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0136008   -0.0238096   0.0510112
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0036367   -0.0063526   0.0136260
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0049327    0.0019579   0.0079075
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0047299    0.0020264   0.0074334
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0101865   -0.0011581   0.0215311
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0048727   -0.0030174   0.0127628
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0113477    0.0028348   0.0198606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0017765   -0.0022158   0.0057688
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0096937    0.0014673   0.0179200
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.0110589   -0.0412879   0.0191701
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0223464   -0.0136113   0.0583040
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0203151   -0.0190506   0.0596807
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0105521   -0.0174408   0.0385450
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0164474   -0.0239911   0.0568858
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0094824    0.0026496   0.0163153
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0002668   -0.0072618   0.0067281
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0036259   -0.0322735   0.0250216
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0197874   -0.0524104   0.0128356
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0295815   -0.0091767   0.0683398
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0215911   -0.0051333   0.0483155
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0035597   -0.0307217   0.0378410
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0213422   -0.0124382   0.0551226
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0595536    0.0018657   0.1172414
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0045750   -0.0060208   0.0151708
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0156941   -0.0221476   0.0535357
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0140108   -0.0160835   0.0441052
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0177734   -0.0024104   0.0379572
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0122357   -0.0052201   0.0296914
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0088099   -0.0015808   0.0192007
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0156283    0.0035508   0.0277058
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0213101   -0.0078967   0.0505169
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0307657   -0.0019952   0.0635266
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0255275   -0.0159401   0.0669952
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0040198   -0.0076921   0.0157317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0117580    0.0039623   0.0195537
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0141699    0.0004440   0.0278958
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0106838    0.0002754   0.0210922
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0129747    0.0030671   0.0228823


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3097028   -0.1668719   0.5916345
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3062078   -0.1969410   0.5978519
0-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0765766   -0.2657912   0.3263416
0-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1122449   -0.3410611   0.4123242
0-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.4369392    0.0402860   0.6696542
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0632608   -0.2198690   0.2806765
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0921515   -0.1448916   0.2801162
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2986604   -0.0485677   0.5309055
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2982456   -0.4260208   0.6546619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1630186   -0.3014730   0.4617346
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3381047    0.0468217   0.5403742
0-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1395234   -0.0473989   0.2930869
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1778325   -0.0918924   0.3809286
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0469350   -0.1804539   0.2305223
0-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1747706   -0.4689051   0.5363870
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1164751   -0.2660807   0.3834388
0-24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5143980    0.3192074   0.6536254
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2643375    0.1029446   0.3966936
0-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2988048   -0.1056876   0.5553222
0-24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0505427   -0.0348444   0.1288843
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2215168    0.0405422   0.3683557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0310183   -0.0413987   0.0983995
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1203765    0.0138107   0.2154270
0-6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                -0.1396913   -0.5878942   0.1820007
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1600000   -0.1380044   0.3799672
0-6 months    ki1000108-IRC              INDIA                          Female               NA                 0.1276042   -0.1567787   0.3420742
0-6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1430396   -0.3295347   0.4476405
0-6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1578947   -0.3296152   0.4666568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3758328    0.0653954   0.5831556
0-6 months    ki1101329-Keneba           GAMBIA                         Female               NA                -0.0106573   -0.3324594   0.2334264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0302346   -0.2989848   0.1829132
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.2723678   -0.7908447   0.0960022
6-24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2530864   -0.1489654   0.5144502
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2876241   -0.1524548   0.5596535
6-24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0304054   -0.3113265   0.2830819
6-24 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.1826496   -0.1590592   0.4236173
6-24 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2920962   -0.0451779   0.5205335
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0292996   -0.0407562   0.0946397
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0925684   -0.1596410   0.2899251
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1253333   -0.1879742   0.3560114
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.2811005   -0.1040777   0.5319020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.2030535   -0.1383223   0.4420528
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1789253   -0.0577810   0.3626624
6-24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1752882    0.0300473   0.2987807
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1778325   -0.0918924   0.3809286
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1659047   -0.0291071   0.3239625
6-24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.2562963   -0.2856343   0.5697881
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1102096   -0.2738673   0.3784855
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2755085    0.0775936   0.4309581
6-24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.3231429   -0.0522661   0.5646201
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1460858   -0.0073617   0.2761592
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1213641    0.0255919   0.2077230
