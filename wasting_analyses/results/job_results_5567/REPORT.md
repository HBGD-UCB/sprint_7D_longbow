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

unadjusted

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
![](/tmp/b89b361b-a0ca-48d2-b254-de9e0e2879f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b89b361b-a0ca-48d2-b254-de9e0e2879f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b89b361b-a0ca-48d2-b254-de9e0e2879f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b89b361b-a0ca-48d2-b254-de9e0e2879f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
0-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1088435   0.0584357   0.1592514
0-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1510791   0.0914708   0.2106874
0-24 months   ki1000108-IRC              INDIA         High                 NA                0.0887097   0.0386046   0.1388147
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1262458   0.0879874   0.1645043
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0602151   0.0348628   0.0855673
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0334448   0.0193394   0.0475503
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0984456   0.0563758   0.1405154
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0913978   0.0499451   0.1328506
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0709677   0.0305069   0.1114286
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1469880   0.1128913   0.1810846
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1568627   0.0862268   0.2274987
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1111111   0.0384582   0.1837641
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0113960   0.0055939   0.0171981
0-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0095663   0.0051043   0.0140283
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0057678   0.0013564   0.0101793
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0244524   0.0176196   0.0312851
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0173508   0.0120858   0.0226158
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0156219   0.0121820   0.0190617
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1480978   0.1299505   0.1662451
0-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0775544   0.0669339   0.0881748
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0508197   0.0333887   0.0682506
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0719340   0.0545406   0.0893273
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0451542   0.0316460   0.0586624
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0398104   0.0280106   0.0516103
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0685270   0.0615071   0.0755468
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0517454   0.0450134   0.0584774
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0513841   0.0449650   0.0578032
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0869885   0.0720234   0.1019536
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0993377   0.0204754   0.1782000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0704225   0.0157635   0.1250816
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1340206   0.0661301   0.2019112
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1333333   0.0682220   0.1984446
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1474359   0.0917227   0.2031491
0-6 months    ki1000108-IRC              INDIA         Low                  NA                0.1678322   0.1065034   0.2291609
0-6 months    ki1000108-IRC              INDIA         Medium               NA                0.1605839   0.0990282   0.2221397
0-6 months    ki1000108-IRC              INDIA         High                 NA                0.1475410   0.0845321   0.2105499
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1210526   0.0882259   0.1538794
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1276596   0.0601357   0.1951834
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1076923   0.0322623   0.1831223
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1009174   0.0442934   0.1575414
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0569620   0.0207744   0.0931496
6-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1020408   0.0530477   0.1510339
6-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1510791   0.0914708   0.2106874
6-24 months   ki1000108-IRC              INDIA         High                 NA                0.0967742   0.0446733   0.1488751
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.2083333   0.1795642   0.2371025
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.1325301   0.0973576   0.1677026
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0881226   0.0537044   0.1225408
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1396648   0.0888324   0.1904972
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1197605   0.0704671   0.1690539
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0684932   0.0274793   0.1095070
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0847458   0.0436825   0.1258090
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0651163   0.0321087   0.0981239
6-24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0430622   0.0155182   0.0706062
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0937500   0.0555516   0.1319484
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0590717   0.0290349   0.0891085
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0296610   0.0080010   0.0513210
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.2024691   0.1632992   0.2416390
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1700000   0.0963131   0.2436869
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1159420   0.0403349   0.1915492
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0433962   0.0260462   0.0607462
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0622951   0.0431110   0.0814792
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0313364   0.0209673   0.0417055
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0490654   0.0285904   0.0695404
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0441640   0.0215343   0.0667937
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0327869   0.0069721   0.0586016
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0869565   0.0674882   0.1064249
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0800000   0.0617585   0.0982415
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0558943   0.0415385   0.0702501
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1133758   0.0965992   0.1301524
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0993378   0.0230835   0.1755920
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1617647   0.0741248   0.2494046


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
0-24 months   ki1000108-IRC              INDIA         Medium               Low               1.3880396   0.7553994   2.5505102
0-24 months   ki1000108-IRC              INDIA         High                 Low               0.8150202   0.3926031   1.6919322
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.4769666   0.3258875   0.6980849
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.2649181   0.1921362   0.3652703
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.9284097   0.4978603   1.7312982
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.7208829   0.3535298   1.4699525
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.0671810   0.6430580   1.7710302
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               0.7559199   0.3777117   1.5128333
0-24 months   ki1119695-PROBIT           BELARUS       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       Medium               Low               0.8394452   0.5790183   1.2170049
0-24 months   ki1119695-PROBIT           BELARUS       High                 Low               0.5061285   0.2482131   1.0320406
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               0.7095765   0.4697326   1.0718839
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.6388694   0.4476167   0.9118385
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.6769663   0.3207408   1.4288278
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.6918660   0.2818027   1.6986303
0-24 months   ki1135781-COHORTS          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA         Medium               Low               0.5236699   0.4357639   0.6293089
0-24 months   ki1135781-COHORTS          INDIA         High                 Low               0.3431493   0.2383972   0.4939297
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.6277172   0.4272772   0.9221855
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.5534302   0.3775183   0.8113115
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               Low               0.7551099   0.6407339   0.8899029
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 Low               0.7498380   0.6400918   0.8784006
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               1.1419644   0.5055269   2.5796504
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               0.8095616   0.3673858   1.7839285
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               Low               0.7900433   0.2512705   2.4840493
0-6 months    ki0047075b-MAL-ED          INDIA         High                 Low               1.0310734   0.3301321   3.2202637
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               0.9948718   0.4922533   2.0106921
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               1.1000986   0.5847416   2.0696610
0-6 months    ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA         Medium               Low               0.9568127   0.5634149   1.6248958
0-6 months    ki1000108-IRC              INDIA         High                 Low               0.8790984   0.5011161   1.5421854
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               Low               1.0545791   0.5820155   1.9108377
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 Low               0.8896321   0.4197769   1.8853948
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               Low               1.3371560   0.5592201   3.1972850
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 Low               0.7547468   0.3004001   1.8962805
6-24 months   ki1000108-IRC              INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA         Medium               Low               1.4805755   0.7953153   2.7562703
6-24 months   ki1000108-IRC              INDIA         High                 Low               0.9483871   0.4609971   1.9510711
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               Low               0.6361446   0.4641077   0.8719526
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 Low               0.4229886   0.2799303   0.6391566
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               Low               0.8574850   0.4950042   1.4854026
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 Low               0.4904110   0.2433518   0.9882930
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               Low               0.7683721   0.3810901   1.5492284
6-24 months   ki1017093b-PROVIDE         BANGLADESH    High                 Low               0.5081340   0.2277623   1.1336386
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               Low               0.6300985   0.3284181   1.2088982
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 Low               0.3163842   0.1371021   0.7301052
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               Low               0.8396341   0.5223302   1.3496931
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 Low               0.5726405   0.2900503   1.1305526
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               Low               1.4354954   0.8666256   2.3777822
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 Low               0.7220998   0.4297428   1.2133492
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               Low               0.9001052   0.4648355   1.7429590
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 Low               0.6682279   0.2741101   1.6290119
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               Low               0.9200000   0.6683524   1.2663978
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 Low               0.6427846   0.4571852   0.9037299
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               Low               0.8761813   0.4007092   1.9158371
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 Low               1.4268011   0.8149348   2.4980664


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0138095   -0.0549421    0.0273232
0-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0082296   -0.0328770    0.0493363
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0427905   -0.0622658   -0.0233152
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0104306   -0.0431268    0.0222655
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0026756   -0.0208705    0.0155194
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                -0.0018067   -0.0043224    0.0007089
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0065320   -0.0123863   -0.0006776
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0071098   -0.0192377    0.0050181
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.0511737   -0.0649288   -0.0374187
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0207066   -0.0343611   -0.0070522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.0112655   -0.0168525   -0.0056786
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0001115   -0.0035144    0.0032914
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0056368   -0.0557164    0.0444429
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.0056442   -0.0527030    0.0639914
0-6 months    ki1000108-IRC              INDIA         Low                  NA                -0.0086282   -0.0572866    0.0400303
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0004589   -0.0182183    0.0173004
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0004047   -0.0429651    0.0421558
6-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0150324   -0.0255875    0.0556522
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.0521872   -0.0767718   -0.0276025
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.0278762   -0.0663546    0.0106022
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.0215178   -0.0542624    0.0112268
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.0334918   -0.0623675   -0.0046160
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0160580   -0.0357034    0.0035874
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0006996   -0.0158064    0.0144072
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.0048844   -0.0192900    0.0095212
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.0138228   -0.0295229    0.0018774
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0010592   -0.0030095    0.0051278


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.2239541   -1.1022934    0.2874146
0-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.0702948   -0.3557784    0.3624682
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.5127353   -0.7114472   -0.3370954
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.1185095   -0.5575749    0.1967875
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0185400   -0.1527169    0.1000186
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                -0.1884104   -0.4551188    0.0294130
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.3645007   -0.7280377   -0.0774431
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.2067773   -0.6087574    0.0947600
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                -0.5279773   -0.6708552   -0.3973172
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.4042109   -0.6896932   -0.1669623
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                -0.1967389   -0.2990576   -0.1024791
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                -0.0012832   -0.0412147    0.0371169
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                -0.0736301   -0.9731690    0.4158221
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                 0.0404124   -0.4829231    0.3790586
0-6 months    ki1000108-IRC              INDIA         Low                  NA                -0.0541958   -0.4085530    0.2110138
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0038057   -0.1624206    0.1331659
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                -0.0053908   -0.7670293    0.4279604
6-24 months   ki1000108-IRC              INDIA         Low                  NA                 0.1284014   -0.2958424    0.4137526
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                -0.3342198   -0.5052310   -0.1826374
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                -0.2493652   -0.6405683    0.0485533
6-24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                -0.3403211   -0.9596355    0.0832679
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                -0.5558036   -1.0862710   -0.1602159
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                -0.0861428   -0.1962410    0.0138223
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                -0.0163853   -0.4395804    0.2824027
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                -0.1105539   -0.4875023    0.1708719
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                -0.1890065   -0.4227874    0.0063613
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                 0.0092555   -0.0270196    0.0442493
