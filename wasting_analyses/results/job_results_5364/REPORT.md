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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       62     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        4     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       59     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       71     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        4     202
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       81     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0     216
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       63     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1       10     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       72     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        5     210
0-24 months   ki0047075b-MAL-ED          INDIA                          High                0       56     210
0-24 months   ki0047075b-MAL-ED          INDIA                          High                1        4     210
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       93     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        1     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       74     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        2     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       53     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0     223
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       98     283
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       99     283
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        1     283
0-24 months   ki0047075b-MAL-ED          PERU                           High                0       85     283
0-24 months   ki0047075b-MAL-ED          PERU                           High                1        0     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      132     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     208
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       98     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0      102     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                0      150     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                1        8     373
0-24 months   ki1000108-IRC              INDIA                          Low                 0      131     410
0-24 months   ki1000108-IRC              INDIA                          Low                 1       16     410
0-24 months   ki1000108-IRC              INDIA                          Medium              0      118     410
0-24 months   ki1000108-IRC              INDIA                          Medium              1       21     410
0-24 months   ki1000108-IRC              INDIA                          High                0      113     410
0-24 months   ki1000108-IRC              INDIA                          High                1       11     410
0-24 months   ki1000109-EE               PAKISTAN                       Low                 0      600     748
0-24 months   ki1000109-EE               PAKISTAN                       Low                 1       52     748
0-24 months   ki1000109-EE               PAKISTAN                       Medium              0       62     748
0-24 months   ki1000109-EE               PAKISTAN                       Medium              1        4     748
0-24 months   ki1000109-EE               PAKISTAN                       High                0       30     748
0-24 months   ki1000109-EE               PAKISTAN                       High                1        0     748
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      526    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       76    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      437    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       28    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      289    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       10    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      242     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       55     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       32     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       36     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        2     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 0      174     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 1       19     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              0      169     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              1       17     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                0      144     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                1       11     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      220     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      220     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      238     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       12     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      246     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18    2158
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 0       66     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 1        1     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              0       76     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              1        2     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                0      105     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                1        1     251
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      708    1178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1      122    1178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      172    1178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       32    1178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      128    1178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       16    1178
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     5899   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       68   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7765   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       75   16581
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     2758   16581
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       16   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1915    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2322    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     4915    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       78    9319
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      462    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       20    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      346    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       10    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      203    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6    1047
0-24 months   ki1135781-COHORTS          INDIA                          Low                 0     1254    4519
0-24 months   ki1135781-COHORTS          INDIA                          Low                 1      218    4519
0-24 months   ki1135781-COHORTS          INDIA                          Medium              0     2248    4519
0-24 months   ki1135781-COHORTS          INDIA                          Medium              1      189    4519
0-24 months   ki1135781-COHORTS          INDIA                          High                0      579    4519
0-24 months   ki1135781-COHORTS          INDIA                          High                1       31    4519
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      787    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       61    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      867    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       41    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0     1013    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       42    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      225     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        2     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      220     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     713
0-24 months   ki1148112-LCNI-5           MALAWI                         High                0      262     713
0-24 months   ki1148112-LCNI-5           MALAWI                         High                1        1     713
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     9814   31330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      722   31330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     9236   31330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      504   31330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0    10486   31330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      568   31330
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     3726    4374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      355    4374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      136    4374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       15    4374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      132    4374
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       10    4374
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       61     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        5     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       61     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        0     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       75     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        0     202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              0       82     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              1        0     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                0       74     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                1        0     216
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       67     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        6     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       72     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        5     209
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       54     209
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        5     209
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       93     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        1     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       72     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        4     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       52     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        0     222
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       98     283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0      100     283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           High                0       85     283
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      130     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     208
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       84     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1       13     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0       91     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1       14     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                0      133     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                1       23     358
0-6 months    ki1000108-IRC              INDIA                          Low                 0      119     402
0-6 months    ki1000108-IRC              INDIA                          Low                 1       24     402
0-6 months    ki1000108-IRC              INDIA                          Medium              0      115     402
0-6 months    ki1000108-IRC              INDIA                          Medium              1       22     402
0-6 months    ki1000108-IRC              INDIA                          High                0      104     402
0-6 months    ki1000108-IRC              INDIA                          High                1       18     402
0-6 months    ki1000109-EE               PAKISTAN                       Low                 0      580     726
0-6 months    ki1000109-EE               PAKISTAN                       Low                 1       50     726
0-6 months    ki1000109-EE               PAKISTAN                       Medium              0       62     726
0-6 months    ki1000109-EE               PAKISTAN                       Medium              1        4     726
0-6 months    ki1000109-EE               PAKISTAN                       High                0       30     726
0-6 months    ki1000109-EE               PAKISTAN                       High                1        0     726
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      190     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      217     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      216     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        4     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       72    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1424    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       34    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      506    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       17    2054
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      668    1078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       92    1078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0      164    1078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       24    1078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0      116    1078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1       14    1078
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       59     190
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        5     190
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       56     190
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        1     190
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       64     190
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        5     190
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       49     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       78     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       67     196
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0     196
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       59     203
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1       11     203
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       68     203
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        9     203
6-24 months   ki0047075b-MAL-ED          INDIA                          High                0       53     203
6-24 months   ki0047075b-MAL-ED          INDIA                          High                1        3     203
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       91     216
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        1     216
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       74     216
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        0     216
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       50     216
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0     216
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       86     250
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     250
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       88     250
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        2     250
6-24 months   ki0047075b-MAL-ED          PERU                           High                0       74     250
6-24 months   ki0047075b-MAL-ED          PERU                           High                1        0     250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      125     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       56     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       72     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       62     197
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     197
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      127     197
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     197
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        8     197
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     197
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       98     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0       98     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1       11     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                0      149     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                1        9     373
6-24 months   ki1000108-IRC              INDIA                          Low                 0      132     410
6-24 months   ki1000108-IRC              INDIA                          Low                 1       15     410
6-24 months   ki1000108-IRC              INDIA                          Medium              0      118     410
6-24 months   ki1000108-IRC              INDIA                          Medium              1       21     410
6-24 months   ki1000108-IRC              INDIA                          High                0      112     410
6-24 months   ki1000108-IRC              INDIA                          High                1       12     410
6-24 months   ki1000109-EE               PAKISTAN                       Low                 0      558     730
6-24 months   ki1000109-EE               PAKISTAN                       Low                 1       78     730
6-24 months   ki1000109-EE               PAKISTAN                       Medium              0       58     730
6-24 months   ki1000109-EE               PAKISTAN                       Medium              1        8     730
6-24 months   ki1000109-EE               PAKISTAN                       High                0       28     730
6-24 months   ki1000109-EE               PAKISTAN                       High                1        0     730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      418    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1      110    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      360    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       55    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      238    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       23    1204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      225     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       46     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       29     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1       10     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       35     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        3     348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 0      154     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 1       25     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              0      147     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              1       20     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                0      136     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                1       10     492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      162     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1       15     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      201     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1       14     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      200     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        9     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      203     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       21     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      223     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       14     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      229     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        7     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       58    1699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        2    1699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1154    1699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       59    1699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      403    1699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       23    1699
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 0       58     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 1        0     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              0       65     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              1        2     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                0       91     217
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                1        1     217
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      646    1148
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1      164    1148
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0      166    1148
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       34    1148
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0      122    1148
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1       16    1148
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     2494    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1        2    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     3401    7097
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     1200    7097
6-24 months   ki1119695-PROBIT           BELARUS                        High                1        0    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0      507    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       23    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      572    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       38    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     1051    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       34    2225
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      407     928
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       21     928
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      303     928
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       14     928
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      177     928
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6     928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      735    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       70    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      782    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       68    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0      929    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       55    2639
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      219     689
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        2     689
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      210     689
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     689
6-24 months   ki1148112-LCNI-5           MALAWI                         High                0      254     689
6-24 months   ki1148112-LCNI-5           MALAWI                         High                1        1     689
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     3480    4212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      445    4212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0      136    4212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1       15    4212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0      114    4212
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1       22    4212


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
![](/tmp/392bee5e-5195-4027-82f7-18cc720dfcca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/392bee5e-5195-4027-82f7-18cc720dfcca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/392bee5e-5195-4027-82f7-18cc720dfcca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/392bee5e-5195-4027-82f7-18cc720dfcca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
0-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1088441   0.0584375   0.1592508
0-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1510721   0.0914626   0.2106815
0-24 months   ki1000108-IRC              INDIA         High                 NA                0.0887141   0.0386104   0.1388177
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1288805   0.0861615   0.1715994
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0607610   0.0334512   0.0880708
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0332202   0.0240955   0.0423448
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0984456   0.0563758   0.1405154
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0913978   0.0499451   0.1328506
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0709677   0.0305069   0.1114286
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1445755   0.1109006   0.1782504
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1683346   0.1002871   0.2363820
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1231959   0.0581093   0.1882824
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0118149   0.0059197   0.0177101
0-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0094345   0.0050383   0.0138306
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0055528   0.0012980   0.0098077
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0249187   0.0184542   0.0313832
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0174914   0.0124642   0.0225186
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0153913   0.0121557   0.0186269
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1464285   0.1294280   0.1634289
0-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0780138   0.0676314   0.0883963
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0533697   0.0381570   0.0685825
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0738022   0.0580390   0.0895655
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0455761   0.0334707   0.0576815
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0424986   0.0314868   0.0535104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0639481   0.0579758   0.0699203
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0512831   0.0452041   0.0573621
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0525844   0.0468655   0.0583032
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0870239   0.0720666   0.1019812
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0986986   0.0202343   0.1771628
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0700781   0.0152114   0.1249449
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1582010   0.0937263   0.2226757
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1403003   0.0791255   0.2014750
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1579623   0.1034121   0.2125125
0-6 months    ki1000108-IRC              INDIA         Low                  NA                0.1609821   0.1001644   0.2217997
0-6 months    ki1000108-IRC              INDIA         Medium               NA                0.1521445   0.0915754   0.2127137
0-6 months    ki1000108-IRC              INDIA         High                 NA                0.1373272   0.0757385   0.1989159
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1145927   0.0829028   0.1462827
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1031912   0.0438895   0.1624928
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                0.0587569   0.0111069   0.1064068
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1009174   0.0442934   0.1575414
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0569620   0.0207744   0.0931496
6-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1058535   0.0571337   0.1545733
6-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1560137   0.0965473   0.2154801
6-24 months   ki1000108-IRC              INDIA         High                 NA                0.0998607   0.0479425   0.1517789
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.2047741   0.1766168   0.2329314
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.1301270   0.0987466   0.1615074
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0839400   0.0480284   0.1198516
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1240984   0.0775787   0.1706181
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1117246   0.0648262   0.1586231
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0592111   0.0216239   0.0967983
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0847458   0.0436825   0.1258090
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0651163   0.0321087   0.0981239
6-24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0430622   0.0155182   0.0706062
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0937500   0.0555516   0.1319484
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0590717   0.0290349   0.0891085
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0296610   0.0080010   0.0513210
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1978194   0.1594615   0.2361774
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1800118   0.1092719   0.2507517
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1406779   0.0706810   0.2106749
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0418882   0.0246472   0.0591292
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0614781   0.0424612   0.0804949
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0309848   0.0206480   0.0413216
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0490654   0.0285904   0.0695404
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0441640   0.0215343   0.0667937
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0327869   0.0069721   0.0586016
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0931056   0.0756235   0.1105876
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0862025   0.0701596   0.1022454
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0659180   0.0524643   0.0793717
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1134158   0.0966452   0.1301864
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0988796   0.0243323   0.1734269
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1668241   0.0805403   0.2531080


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1443124   0.1159091   0.1727157
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0179204   0.0152268   0.0206140
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
0-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0572614   0.0531676   0.0613553
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0868770   0.0725284   0.1012256
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0765550   0.0404216   0.1126884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA         NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1205937   0.0930759   0.1481115
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0750670   0.0482904   0.1018437
6-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1864111   0.1545245   0.2182978
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0426966   0.0342942   0.0510990
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0441810   0.0309524   0.0574096
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0731338   0.0631985   0.0830690
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1144349   0.0983098   0.1305601


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.8509174   0.3194153   2.2668310
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.6708861   0.2594960   1.7344704
0-24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA         Medium               Low               1.3879667   0.7553558   2.5503895
0-24 months   ki1000108-IRC              INDIA         High                 Low               0.8150561   0.3926405   1.6919200
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.4714524   0.3172357   0.7006379
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.2577596   0.2053916   0.3234796
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.9284097   0.4978603   1.7312982
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.7208829   0.3535298   1.4699525
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.1643367   0.7303546   1.8561942
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               0.8521213   0.4782898   1.5181398
0-24 months   ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       Medium               Low               0.7985202   0.5531348   1.1527650
0-24 months   ki1119695-PROBIT           BELARUS       High                 Low               0.4699846   0.2333225   0.9466961
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7019394   0.4770082   1.0329360
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.6176603   0.4426983   0.8617702
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.6769663   0.3207408   1.4288278
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.6918660   0.2818027   1.6986303
0-24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.5327779   0.4468624   0.6352117
0-24 months   ki1135781-COHORTS          INDIA         High                 Low               0.3644764   0.2680613   0.4955698
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.6175437   0.4392486   0.8682103
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.5758443   0.4117506   0.8053337
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.8019491   0.6936479   0.9271596
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.8222979   0.7200412   0.9390766
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               1.1341546   0.5017006   2.5638930
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               0.8052747   0.3630802   1.7860170
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               Low               0.7900433   0.2512705   2.4840493
0-6 months    ki0047075b-MAL-ED          INDIA         High                 Low               1.0310734   0.3301321   3.2202637
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.8868481   0.4886179   1.6096412
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.9984912   0.5843025   1.7062819
0-6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA         Medium               Low               0.9451025   0.5458394   1.6364131
0-6 months    ki1000108-IRC              INDIA         High                 Low               0.8530591   0.4744970   1.5336448
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               Low               0.9005035   0.4754469   1.7055669
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 Low               0.5127452   0.2170681   1.2111759
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               1.3371560   0.5592201   3.1972850
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.7547468   0.3004001   1.8962805
6-24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA         Medium               Low               1.4738644   0.8109366   2.6787251
6-24 months   ki1000108-IRC              INDIA         High                 Low               0.9433862   0.4712882   1.8883935
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.6354661   0.4811883   0.8392083
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.4099153   0.2506852   0.6702849
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.9002911   0.5128564   1.5804112
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.4771302   0.2282938   0.9971942
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7683721   0.3810901   1.5492284
6-24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.5081340   0.2277623   1.1336386
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.6300985   0.3284181   1.2088982
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.3163842   0.1371021   0.7301052
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               0.9099803   0.5871872   1.4102220
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               0.7111432   0.4169327   1.2129649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.4676703   0.8778685   2.4537345
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7397021   0.4357654   1.2556279
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.9001052   0.4648355   1.7429590
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.6682279   0.2741101   1.6290119
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.9258577   0.7120081   1.2039365
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.7079922   0.5373611   0.9328048
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               0.8718322   0.4041590   1.8806740
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.4709069   0.8603749   2.5146793


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0138095   -0.0549421    0.0273232
0-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0082290   -0.0328767    0.0493347
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0454251   -0.0709084   -0.0199419
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0104306   -0.0431268    0.0222655
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0002631   -0.0187907    0.0182645
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                -0.0022256   -0.0047839    0.0003327
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0069983   -0.0126395   -0.0013572
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0071098   -0.0192377    0.0050181
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.0495044   -0.0622697   -0.0367390
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0225749   -0.0349644   -0.0101855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0066867   -0.0115841   -0.0017892
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0001469   -0.0035482    0.0032545
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0056368   -0.0557164    0.0444429
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0185362   -0.0742484    0.0371760
0-6 months    ki1000108-IRC              INDIA         Low                  NA                -0.0017781   -0.0500984    0.0465422
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0060010   -0.0117420    0.0237439
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0004047   -0.0429651    0.0421558
6-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0112197   -0.0292102    0.0516495
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0486279   -0.0740755   -0.0231803
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0123097   -0.0479710    0.0233515
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0215178   -0.0542624    0.0112268
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0334918   -0.0623675   -0.0046160
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0114083   -0.0310190    0.0082025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0008084   -0.0141846    0.0158014
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0048844   -0.0192900    0.0095212
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0199718   -0.0340559   -0.0058877
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0010191   -0.0030440    0.0050822


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.2239541   -1.1022934    0.2874146
0-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0702896   -0.3557704    0.3624574
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.5443044   -0.8253019   -0.3065653
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1185095   -0.5575749    0.1967875
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0018232   -0.1388050    0.1186816
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                -0.2320955   -0.4969569   -0.0140968
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.3905230   -0.7440855   -0.1086350
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.2067773   -0.6087574    0.0947600
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.5107540   -0.6452701   -0.3872359
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.4406813   -0.7043242   -0.2178216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.1167744   -0.2072312   -0.0330954
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0016909   -0.0415998    0.0366889
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0736301   -0.9731690    0.4158221
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.1327192   -0.6158579    0.2059619
0-6 months    ki1000108-IRC              INDIA         Low                  NA                -0.0111686   -0.3650867    0.2509912
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                 0.0497618   -0.1089605    0.1857666
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0053908   -0.7670293    0.4279604
6-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0958347   -0.3226557    0.3819141
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.3114256   -0.4916494   -0.1529768
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1101163   -0.4791300    0.1668358
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.3403211   -0.9596355    0.0832679
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.5558036   -1.0862710   -0.1602159
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0611995   -0.1717207    0.0388968
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                 0.0189342   -0.4033490    0.3141477
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.1105539   -0.4875023    0.1708719
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.2730860   -0.4838179   -0.0922823
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0089056   -0.0273139    0.0438482
