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
      Y: ['haz']
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
        value: FALSE        
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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        brthmon    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             24     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             26     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1              10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2              18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3              17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4               9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5              15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6               8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7              16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8              17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9              28     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10             17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11             18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12             10     183
Birth       ki0047075b-MAL-ED          INDIA                          1              16     203
Birth       ki0047075b-MAL-ED          INDIA                          2              16     203
Birth       ki0047075b-MAL-ED          INDIA                          3              21     203
Birth       ki0047075b-MAL-ED          INDIA                          4              13     203
Birth       ki0047075b-MAL-ED          INDIA                          5               7     203
Birth       ki0047075b-MAL-ED          INDIA                          6              18     203
Birth       ki0047075b-MAL-ED          INDIA                          7              20     203
Birth       ki0047075b-MAL-ED          INDIA                          8              17     203
Birth       ki0047075b-MAL-ED          INDIA                          9              19     203
Birth       ki0047075b-MAL-ED          INDIA                          10             22     203
Birth       ki0047075b-MAL-ED          INDIA                          11             20     203
Birth       ki0047075b-MAL-ED          INDIA                          12             14     203
Birth       ki0047075b-MAL-ED          NEPAL                          1              16     168
Birth       ki0047075b-MAL-ED          NEPAL                          2              13     168
Birth       ki0047075b-MAL-ED          NEPAL                          3              12     168
Birth       ki0047075b-MAL-ED          NEPAL                          4              16     168
Birth       ki0047075b-MAL-ED          NEPAL                          5              19     168
Birth       ki0047075b-MAL-ED          NEPAL                          6              10     168
Birth       ki0047075b-MAL-ED          NEPAL                          7              17     168
Birth       ki0047075b-MAL-ED          NEPAL                          8              14     168
Birth       ki0047075b-MAL-ED          NEPAL                          9              11     168
Birth       ki0047075b-MAL-ED          NEPAL                          10             14     168
Birth       ki0047075b-MAL-ED          NEPAL                          11             16     168
Birth       ki0047075b-MAL-ED          NEPAL                          12             10     168
Birth       ki0047075b-MAL-ED          PERU                           1              37     279
Birth       ki0047075b-MAL-ED          PERU                           2              20     279
Birth       ki0047075b-MAL-ED          PERU                           3              23     279
Birth       ki0047075b-MAL-ED          PERU                           4              20     279
Birth       ki0047075b-MAL-ED          PERU                           5              26     279
Birth       ki0047075b-MAL-ED          PERU                           6              15     279
Birth       ki0047075b-MAL-ED          PERU                           7              23     279
Birth       ki0047075b-MAL-ED          PERU                           8              19     279
Birth       ki0047075b-MAL-ED          PERU                           9              22     279
Birth       ki0047075b-MAL-ED          PERU                           10             24     279
Birth       ki0047075b-MAL-ED          PERU                           11             31     279
Birth       ki0047075b-MAL-ED          PERU                           12             19     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              24     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              18     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             38     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             16     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              4      88
Birth       ki1000108-IRC              INDIA                          1              31     343
Birth       ki1000108-IRC              INDIA                          2              23     343
Birth       ki1000108-IRC              INDIA                          3              24     343
Birth       ki1000108-IRC              INDIA                          4              19     343
Birth       ki1000108-IRC              INDIA                          5              15     343
Birth       ki1000108-IRC              INDIA                          6              26     343
Birth       ki1000108-IRC              INDIA                          7              31     343
Birth       ki1000108-IRC              INDIA                          8              36     343
Birth       ki1000108-IRC              INDIA                          9              24     343
Birth       ki1000108-IRC              INDIA                          10             33     343
Birth       ki1000108-IRC              INDIA                          11             38     343
Birth       ki1000108-IRC              INDIA                          12             43     343
Birth       ki1000109-EE               PAKISTAN                       1               0       1
Birth       ki1000109-EE               PAKISTAN                       2               0       1
Birth       ki1000109-EE               PAKISTAN                       3               0       1
Birth       ki1000109-EE               PAKISTAN                       4               0       1
Birth       ki1000109-EE               PAKISTAN                       5               0       1
Birth       ki1000109-EE               PAKISTAN                       6               0       1
Birth       ki1000109-EE               PAKISTAN                       7               0       1
Birth       ki1000109-EE               PAKISTAN                       8               0       1
Birth       ki1000109-EE               PAKISTAN                       9               0       1
Birth       ki1000109-EE               PAKISTAN                       10              0       1
Birth       ki1000109-EE               PAKISTAN                       11              0       1
Birth       ki1000109-EE               PAKISTAN                       12              1       1
Birth       ki1000109-ResPak           PAKISTAN                       1               1       6
Birth       ki1000109-ResPak           PAKISTAN                       2               0       6
Birth       ki1000109-ResPak           PAKISTAN                       3               0       6
Birth       ki1000109-ResPak           PAKISTAN                       4               1       6
Birth       ki1000109-ResPak           PAKISTAN                       5               2       6
Birth       ki1000109-ResPak           PAKISTAN                       6               1       6
Birth       ki1000109-ResPak           PAKISTAN                       7               1       6
Birth       ki1000109-ResPak           PAKISTAN                       8               0       6
Birth       ki1000109-ResPak           PAKISTAN                       9               0       6
Birth       ki1000109-ResPak           PAKISTAN                       10              0       6
Birth       ki1000109-ResPak           PAKISTAN                       11              0       6
Birth       ki1000109-ResPak           PAKISTAN                       12              0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             15     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              0      28
Birth       ki1101329-Keneba           GAMBIA                         1             144    1423
Birth       ki1101329-Keneba           GAMBIA                         2             138    1423
Birth       ki1101329-Keneba           GAMBIA                         3             155    1423
Birth       ki1101329-Keneba           GAMBIA                         4              95    1423
Birth       ki1101329-Keneba           GAMBIA                         5              99    1423
Birth       ki1101329-Keneba           GAMBIA                         6              84    1423
Birth       ki1101329-Keneba           GAMBIA                         7              65    1423
Birth       ki1101329-Keneba           GAMBIA                         8             118    1423
Birth       ki1101329-Keneba           GAMBIA                         9             118    1423
Birth       ki1101329-Keneba           GAMBIA                         10            169    1423
Birth       ki1101329-Keneba           GAMBIA                         11            109    1423
Birth       ki1101329-Keneba           GAMBIA                         12            129    1423
Birth       ki1114097-CMIN             BANGLADESH                     1               0       8
Birth       ki1114097-CMIN             BANGLADESH                     2               2       8
Birth       ki1114097-CMIN             BANGLADESH                     3               0       8
Birth       ki1114097-CMIN             BANGLADESH                     4               0       8
Birth       ki1114097-CMIN             BANGLADESH                     5               1       8
Birth       ki1114097-CMIN             BANGLADESH                     6               0       8
Birth       ki1114097-CMIN             BANGLADESH                     7               0       8
Birth       ki1114097-CMIN             BANGLADESH                     8               1       8
Birth       ki1114097-CMIN             BANGLADESH                     9               1       8
Birth       ki1114097-CMIN             BANGLADESH                     10              1       8
Birth       ki1114097-CMIN             BANGLADESH                     11              2       8
Birth       ki1114097-CMIN             BANGLADESH                     12              0       8
Birth       ki1114097-CMIN             BRAZIL                         1              13     111
Birth       ki1114097-CMIN             BRAZIL                         2               7     111
Birth       ki1114097-CMIN             BRAZIL                         3              12     111
Birth       ki1114097-CMIN             BRAZIL                         4               9     111
Birth       ki1114097-CMIN             BRAZIL                         5               5     111
Birth       ki1114097-CMIN             BRAZIL                         6               6     111
Birth       ki1114097-CMIN             BRAZIL                         7               4     111
Birth       ki1114097-CMIN             BRAZIL                         8              12     111
Birth       ki1114097-CMIN             BRAZIL                         9               8     111
Birth       ki1114097-CMIN             BRAZIL                         10             14     111
Birth       ki1114097-CMIN             BRAZIL                         11             11     111
Birth       ki1114097-CMIN             BRAZIL                         12             10     111
Birth       ki1114097-CMIN             PERU                           1               1      10
Birth       ki1114097-CMIN             PERU                           2               1      10
Birth       ki1114097-CMIN             PERU                           3               2      10
Birth       ki1114097-CMIN             PERU                           4               3      10
Birth       ki1114097-CMIN             PERU                           5               0      10
Birth       ki1114097-CMIN             PERU                           6               0      10
Birth       ki1114097-CMIN             PERU                           7               0      10
Birth       ki1114097-CMIN             PERU                           8               1      10
Birth       ki1114097-CMIN             PERU                           9               2      10
Birth       ki1114097-CMIN             PERU                           10              0      10
Birth       ki1114097-CMIN             PERU                           11              0      10
Birth       ki1114097-CMIN             PERU                           12              0      10
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1114097-CONTENT          PERU                           2               0       2
Birth       ki1114097-CONTENT          PERU                           3               0       2
Birth       ki1114097-CONTENT          PERU                           4               0       2
Birth       ki1114097-CONTENT          PERU                           5               2       2
Birth       ki1114097-CONTENT          PERU                           6               0       2
Birth       ki1114097-CONTENT          PERU                           7               0       2
Birth       ki1114097-CONTENT          PERU                           8               0       2
Birth       ki1114097-CONTENT          PERU                           9               0       2
Birth       ki1114097-CONTENT          PERU                           10              0       2
Birth       ki1114097-CONTENT          PERU                           11              0       2
Birth       ki1114097-CONTENT          PERU                           12              0       2
Birth       ki1119695-PROBIT           BELARUS                        1             822   13824
Birth       ki1119695-PROBIT           BELARUS                        2             799   13824
Birth       ki1119695-PROBIT           BELARUS                        3             941   13824
Birth       ki1119695-PROBIT           BELARUS                        4             969   13824
Birth       ki1119695-PROBIT           BELARUS                        5             942   13824
Birth       ki1119695-PROBIT           BELARUS                        6            1020   13824
Birth       ki1119695-PROBIT           BELARUS                        7            1287   13824
Birth       ki1119695-PROBIT           BELARUS                        8            1306   13824
Birth       ki1119695-PROBIT           BELARUS                        9            1324   13824
Birth       ki1119695-PROBIT           BELARUS                        10           1489   13824
Birth       ki1119695-PROBIT           BELARUS                        11           1383   13824
Birth       ki1119695-PROBIT           BELARUS                        12           1542   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1233   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             957   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3            1077   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             922   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             929   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6            1048   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7            1096   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8            1187   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9            1246   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            980   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11           1103   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12           1138   12916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            1449   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2            1279   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3            1559   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4            1129   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             778   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             825   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             909   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8            1217   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9            1528   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10           1659   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11           1664   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12           1713   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             115     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             133     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             138     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             100     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              72     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              65     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              27     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              27     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              6     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             26     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1              15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             12     209
6 months    ki0047075b-MAL-ED          INDIA                          1              19     236
6 months    ki0047075b-MAL-ED          INDIA                          2              18     236
6 months    ki0047075b-MAL-ED          INDIA                          3              22     236
6 months    ki0047075b-MAL-ED          INDIA                          4              15     236
6 months    ki0047075b-MAL-ED          INDIA                          5               8     236
6 months    ki0047075b-MAL-ED          INDIA                          6              19     236
6 months    ki0047075b-MAL-ED          INDIA                          7              23     236
6 months    ki0047075b-MAL-ED          INDIA                          8              22     236
6 months    ki0047075b-MAL-ED          INDIA                          9              20     236
6 months    ki0047075b-MAL-ED          INDIA                          10             26     236
6 months    ki0047075b-MAL-ED          INDIA                          11             25     236
6 months    ki0047075b-MAL-ED          INDIA                          12             19     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              20     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              19     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              17     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              22     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              20     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              18     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              24     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              16     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             21     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             24     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             17     236
6 months    ki0047075b-MAL-ED          PERU                           1              38     273
6 months    ki0047075b-MAL-ED          PERU                           2              19     273
6 months    ki0047075b-MAL-ED          PERU                           3              22     273
6 months    ki0047075b-MAL-ED          PERU                           4              20     273
6 months    ki0047075b-MAL-ED          PERU                           5              27     273
6 months    ki0047075b-MAL-ED          PERU                           6              15     273
6 months    ki0047075b-MAL-ED          PERU                           7              22     273
6 months    ki0047075b-MAL-ED          PERU                           8              16     273
6 months    ki0047075b-MAL-ED          PERU                           9              23     273
6 months    ki0047075b-MAL-ED          PERU                           10             20     273
6 months    ki0047075b-MAL-ED          PERU                           11             32     273
6 months    ki0047075b-MAL-ED          PERU                           12             19     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              38     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             35     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             30     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              31     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              43     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              37     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              39     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              17     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             29     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             25     368
6 months    ki1000108-IRC              INDIA                          1              38     408
6 months    ki1000108-IRC              INDIA                          2              28     408
6 months    ki1000108-IRC              INDIA                          3              27     408
6 months    ki1000108-IRC              INDIA                          4              21     408
6 months    ki1000108-IRC              INDIA                          5              22     408
6 months    ki1000108-IRC              INDIA                          6              37     408
6 months    ki1000108-IRC              INDIA                          7              36     408
6 months    ki1000108-IRC              INDIA                          8              44     408
6 months    ki1000108-IRC              INDIA                          9              25     408
6 months    ki1000108-IRC              INDIA                          10             38     408
6 months    ki1000108-IRC              INDIA                          11             40     408
6 months    ki1000108-IRC              INDIA                          12             52     408
6 months    ki1000109-EE               PAKISTAN                       1              92     376
6 months    ki1000109-EE               PAKISTAN                       2              67     376
6 months    ki1000109-EE               PAKISTAN                       3              43     376
6 months    ki1000109-EE               PAKISTAN                       4              16     376
6 months    ki1000109-EE               PAKISTAN                       5               0     376
6 months    ki1000109-EE               PAKISTAN                       6               0     376
6 months    ki1000109-EE               PAKISTAN                       7               0     376
6 months    ki1000109-EE               PAKISTAN                       8               0     376
6 months    ki1000109-EE               PAKISTAN                       9               0     376
6 months    ki1000109-EE               PAKISTAN                       10              4     376
6 months    ki1000109-EE               PAKISTAN                       11             70     376
6 months    ki1000109-EE               PAKISTAN                       12             84     376
6 months    ki1000109-ResPak           PAKISTAN                       1               9     235
6 months    ki1000109-ResPak           PAKISTAN                       2              11     235
6 months    ki1000109-ResPak           PAKISTAN                       3              20     235
6 months    ki1000109-ResPak           PAKISTAN                       4              21     235
6 months    ki1000109-ResPak           PAKISTAN                       5              45     235
6 months    ki1000109-ResPak           PAKISTAN                       6              42     235
6 months    ki1000109-ResPak           PAKISTAN                       7              26     235
6 months    ki1000109-ResPak           PAKISTAN                       8              31     235
6 months    ki1000109-ResPak           PAKISTAN                       9              20     235
6 months    ki1000109-ResPak           PAKISTAN                       10              4     235
6 months    ki1000109-ResPak           PAKISTAN                       11              1     235
6 months    ki1000109-ResPak           PAKISTAN                       12              5     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              83    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              74    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              64    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              96    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             122    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             162    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             173    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            149    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            119    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            118    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              24     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              63     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              62     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             28     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             34     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              52     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              43     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              35     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             51     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             142    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             153    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             143    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             199    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             183    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            208    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            172    2028
6 months    ki1101329-Keneba           GAMBIA                         1             210    2089
6 months    ki1101329-Keneba           GAMBIA                         2             187    2089
6 months    ki1101329-Keneba           GAMBIA                         3             220    2089
6 months    ki1101329-Keneba           GAMBIA                         4             143    2089
6 months    ki1101329-Keneba           GAMBIA                         5             144    2089
6 months    ki1101329-Keneba           GAMBIA                         6             118    2089
6 months    ki1101329-Keneba           GAMBIA                         7              92    2089
6 months    ki1101329-Keneba           GAMBIA                         8             174    2089
6 months    ki1101329-Keneba           GAMBIA                         9             174    2089
6 months    ki1101329-Keneba           GAMBIA                         10            248    2089
6 months    ki1101329-Keneba           GAMBIA                         11            187    2089
6 months    ki1101329-Keneba           GAMBIA                         12            192    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              22     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             31     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6             121     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7             218     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8             223     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0     563
6 months    ki1114097-CMIN             BANGLADESH                     1              26     243
6 months    ki1114097-CMIN             BANGLADESH                     2              23     243
6 months    ki1114097-CMIN             BANGLADESH                     3              17     243
6 months    ki1114097-CMIN             BANGLADESH                     4              22     243
6 months    ki1114097-CMIN             BANGLADESH                     5              17     243
6 months    ki1114097-CMIN             BANGLADESH                     6               8     243
6 months    ki1114097-CMIN             BANGLADESH                     7              15     243
6 months    ki1114097-CMIN             BANGLADESH                     8              17     243
6 months    ki1114097-CMIN             BANGLADESH                     9              20     243
6 months    ki1114097-CMIN             BANGLADESH                     10             24     243
6 months    ki1114097-CMIN             BANGLADESH                     11             26     243
6 months    ki1114097-CMIN             BANGLADESH                     12             28     243
6 months    ki1114097-CMIN             BRAZIL                         1              11     108
6 months    ki1114097-CMIN             BRAZIL                         2               6     108
6 months    ki1114097-CMIN             BRAZIL                         3              12     108
6 months    ki1114097-CMIN             BRAZIL                         4               9     108
6 months    ki1114097-CMIN             BRAZIL                         5               5     108
6 months    ki1114097-CMIN             BRAZIL                         6               7     108
6 months    ki1114097-CMIN             BRAZIL                         7               4     108
6 months    ki1114097-CMIN             BRAZIL                         8              12     108
6 months    ki1114097-CMIN             BRAZIL                         9               7     108
6 months    ki1114097-CMIN             BRAZIL                         10             15     108
6 months    ki1114097-CMIN             BRAZIL                         11             11     108
6 months    ki1114097-CMIN             BRAZIL                         12              9     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             102     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              57     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              67     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              47     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              56     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              38     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              39     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              55     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9             116     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10            100     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             74     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             98     849
6 months    ki1114097-CMIN             PERU                           1              42     636
6 months    ki1114097-CMIN             PERU                           2              60     636
6 months    ki1114097-CMIN             PERU                           3              67     636
6 months    ki1114097-CMIN             PERU                           4              61     636
6 months    ki1114097-CMIN             PERU                           5              54     636
6 months    ki1114097-CMIN             PERU                           6              54     636
6 months    ki1114097-CMIN             PERU                           7              51     636
6 months    ki1114097-CMIN             PERU                           8              73     636
6 months    ki1114097-CMIN             PERU                           9              50     636
6 months    ki1114097-CMIN             PERU                           10             50     636
6 months    ki1114097-CMIN             PERU                           11             34     636
6 months    ki1114097-CMIN             PERU                           12             40     636
6 months    ki1114097-CONTENT          PERU                           1              10     215
6 months    ki1114097-CONTENT          PERU                           2              18     215
6 months    ki1114097-CONTENT          PERU                           3              30     215
6 months    ki1114097-CONTENT          PERU                           4              19     215
6 months    ki1114097-CONTENT          PERU                           5              14     215
6 months    ki1114097-CONTENT          PERU                           6              13     215
6 months    ki1114097-CONTENT          PERU                           7              28     215
6 months    ki1114097-CONTENT          PERU                           8              23     215
6 months    ki1114097-CONTENT          PERU                           9              26     215
6 months    ki1114097-CONTENT          PERU                           10             14     215
6 months    ki1114097-CONTENT          PERU                           11              9     215
6 months    ki1114097-CONTENT          PERU                           12             11     215
6 months    ki1119695-PROBIT           BELARUS                        1             975   15757
6 months    ki1119695-PROBIT           BELARUS                        2             933   15757
6 months    ki1119695-PROBIT           BELARUS                        3            1066   15757
6 months    ki1119695-PROBIT           BELARUS                        4            1098   15757
6 months    ki1119695-PROBIT           BELARUS                        5            1111   15757
6 months    ki1119695-PROBIT           BELARUS                        6            1115   15757
6 months    ki1119695-PROBIT           BELARUS                        7            1463   15757
6 months    ki1119695-PROBIT           BELARUS                        8            1473   15757
6 months    ki1119695-PROBIT           BELARUS                        9            1509   15757
6 months    ki1119695-PROBIT           BELARUS                        10           1689   15757
6 months    ki1119695-PROBIT           BELARUS                        11           1588   15757
6 months    ki1119695-PROBIT           BELARUS                        12           1737   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             794    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             586    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             730    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             634    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             606    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             642    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             634    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             746    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             747    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            599    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            762    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            784    8264
6 months    ki1148112-LCNI-5           MALAWI                         1              68     839
6 months    ki1148112-LCNI-5           MALAWI                         2              46     839
6 months    ki1148112-LCNI-5           MALAWI                         3              26     839
6 months    ki1148112-LCNI-5           MALAWI                         4              39     839
6 months    ki1148112-LCNI-5           MALAWI                         5              44     839
6 months    ki1148112-LCNI-5           MALAWI                         6              34     839
6 months    ki1148112-LCNI-5           MALAWI                         7              61     839
6 months    ki1148112-LCNI-5           MALAWI                         8              93     839
6 months    ki1148112-LCNI-5           MALAWI                         9              93     839
6 months    ki1148112-LCNI-5           MALAWI                         10            135     839
6 months    ki1148112-LCNI-5           MALAWI                         11            105     839
6 months    ki1148112-LCNI-5           MALAWI                         12             95     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            1342   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2            1154   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3            1409   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4            1178   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5            1110   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6            1198   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7            1255   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8            1515   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9            1621   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10           1665   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1759   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12           1578   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             542    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             962    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             736    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             601    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             439    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             518    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             521    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             386    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            128    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             27     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             11     169
24 months   ki0047075b-MAL-ED          INDIA                          1              19     227
24 months   ki0047075b-MAL-ED          INDIA                          2              18     227
24 months   ki0047075b-MAL-ED          INDIA                          3              19     227
24 months   ki0047075b-MAL-ED          INDIA                          4              14     227
24 months   ki0047075b-MAL-ED          INDIA                          5               8     227
24 months   ki0047075b-MAL-ED          INDIA                          6              18     227
24 months   ki0047075b-MAL-ED          INDIA                          7              23     227
24 months   ki0047075b-MAL-ED          INDIA                          8              21     227
24 months   ki0047075b-MAL-ED          INDIA                          9              18     227
24 months   ki0047075b-MAL-ED          INDIA                          10             26     227
24 months   ki0047075b-MAL-ED          INDIA                          11             24     227
24 months   ki0047075b-MAL-ED          INDIA                          12             19     227
24 months   ki0047075b-MAL-ED          NEPAL                          1              19     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              17     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              22     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              19     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              18     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              17     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              24     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              15     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             20     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             24     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             16     228
24 months   ki0047075b-MAL-ED          PERU                           1              30     201
24 months   ki0047075b-MAL-ED          PERU                           2              17     201
24 months   ki0047075b-MAL-ED          PERU                           3              15     201
24 months   ki0047075b-MAL-ED          PERU                           4              11     201
24 months   ki0047075b-MAL-ED          PERU                           5              19     201
24 months   ki0047075b-MAL-ED          PERU                           6              11     201
24 months   ki0047075b-MAL-ED          PERU                           7              15     201
24 months   ki0047075b-MAL-ED          PERU                           8              12     201
24 months   ki0047075b-MAL-ED          PERU                           9              21     201
24 months   ki0047075b-MAL-ED          PERU                           10             14     201
24 months   ki0047075b-MAL-ED          PERU                           11             21     201
24 months   ki0047075b-MAL-ED          PERU                           12             15     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             31     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             26     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              44     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              39     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             25     372
24 months   ki1000108-IRC              INDIA                          1              38     409
24 months   ki1000108-IRC              INDIA                          2              28     409
24 months   ki1000108-IRC              INDIA                          3              27     409
24 months   ki1000108-IRC              INDIA                          4              21     409
24 months   ki1000108-IRC              INDIA                          5              22     409
24 months   ki1000108-IRC              INDIA                          6              37     409
24 months   ki1000108-IRC              INDIA                          7              36     409
24 months   ki1000108-IRC              INDIA                          8              44     409
24 months   ki1000108-IRC              INDIA                          9              27     409
24 months   ki1000108-IRC              INDIA                          10             37     409
24 months   ki1000108-IRC              INDIA                          11             40     409
24 months   ki1000108-IRC              INDIA                          12             52     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              39     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              35     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             42     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             46     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0       6
24 months   ki1101329-Keneba           GAMBIA                         1             171    1726
24 months   ki1101329-Keneba           GAMBIA                         2             167    1726
24 months   ki1101329-Keneba           GAMBIA                         3             170    1726
24 months   ki1101329-Keneba           GAMBIA                         4             114    1726
24 months   ki1101329-Keneba           GAMBIA                         5             122    1726
24 months   ki1101329-Keneba           GAMBIA                         6              92    1726
24 months   ki1101329-Keneba           GAMBIA                         7              83    1726
24 months   ki1101329-Keneba           GAMBIA                         8             158    1726
24 months   ki1101329-Keneba           GAMBIA                         9             160    1726
24 months   ki1101329-Keneba           GAMBIA                         10            200    1726
24 months   ki1101329-Keneba           GAMBIA                         11            140    1726
24 months   ki1101329-Keneba           GAMBIA                         12            149    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6              90     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7             206     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8             202     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0     498
24 months   ki1114097-CMIN             BANGLADESH                     1              26     243
24 months   ki1114097-CMIN             BANGLADESH                     2              24     243
24 months   ki1114097-CMIN             BANGLADESH                     3              18     243
24 months   ki1114097-CMIN             BANGLADESH                     4              22     243
24 months   ki1114097-CMIN             BANGLADESH                     5              16     243
24 months   ki1114097-CMIN             BANGLADESH                     6               8     243
24 months   ki1114097-CMIN             BANGLADESH                     7              15     243
24 months   ki1114097-CMIN             BANGLADESH                     8              18     243
24 months   ki1114097-CMIN             BANGLADESH                     9              20     243
24 months   ki1114097-CMIN             BANGLADESH                     10             24     243
24 months   ki1114097-CMIN             BANGLADESH                     11             25     243
24 months   ki1114097-CMIN             BANGLADESH                     12             27     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              54     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              51     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              45     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              49     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              65     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             43     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             29     551
24 months   ki1114097-CMIN             PERU                           1              13     429
24 months   ki1114097-CMIN             PERU                           2              39     429
24 months   ki1114097-CMIN             PERU                           3              51     429
24 months   ki1114097-CMIN             PERU                           4              47     429
24 months   ki1114097-CMIN             PERU                           5              33     429
24 months   ki1114097-CMIN             PERU                           6              40     429
24 months   ki1114097-CMIN             PERU                           7              41     429
24 months   ki1114097-CMIN             PERU                           8              34     429
24 months   ki1114097-CMIN             PERU                           9              39     429
24 months   ki1114097-CMIN             PERU                           10             33     429
24 months   ki1114097-CMIN             PERU                           11             32     429
24 months   ki1114097-CMIN             PERU                           12             27     429
24 months   ki1114097-CONTENT          PERU                           1               7     164
24 months   ki1114097-CONTENT          PERU                           2              14     164
24 months   ki1114097-CONTENT          PERU                           3              22     164
24 months   ki1114097-CONTENT          PERU                           4              15     164
24 months   ki1114097-CONTENT          PERU                           5              14     164
24 months   ki1114097-CONTENT          PERU                           6              11     164
24 months   ki1114097-CONTENT          PERU                           7              23     164
24 months   ki1114097-CONTENT          PERU                           8              14     164
24 months   ki1114097-CONTENT          PERU                           9              17     164
24 months   ki1114097-CONTENT          PERU                           10             11     164
24 months   ki1114097-CONTENT          PERU                           11              6     164
24 months   ki1114097-CONTENT          PERU                           12             10     164
24 months   ki1119695-PROBIT           BELARUS                        1             248    3971
24 months   ki1119695-PROBIT           BELARUS                        2             213    3971
24 months   ki1119695-PROBIT           BELARUS                        3             312    3971
24 months   ki1119695-PROBIT           BELARUS                        4             332    3971
24 months   ki1119695-PROBIT           BELARUS                        5             296    3971
24 months   ki1119695-PROBIT           BELARUS                        6             268    3971
24 months   ki1119695-PROBIT           BELARUS                        7             371    3971
24 months   ki1119695-PROBIT           BELARUS                        8             337    3971
24 months   ki1119695-PROBIT           BELARUS                        9             380    3971
24 months   ki1119695-PROBIT           BELARUS                        10            392    3971
24 months   ki1119695-PROBIT           BELARUS                        11            376    3971
24 months   ki1119695-PROBIT           BELARUS                        12            446    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              47     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              61     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              55     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              46     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              50     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              44     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              27     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              30     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             20     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             37     423
24 months   ki1148112-LCNI-5           MALAWI                         1              39     563
24 months   ki1148112-LCNI-5           MALAWI                         2              30     563
24 months   ki1148112-LCNI-5           MALAWI                         3              19     563
24 months   ki1148112-LCNI-5           MALAWI                         4              28     563
24 months   ki1148112-LCNI-5           MALAWI                         5              30     563
24 months   ki1148112-LCNI-5           MALAWI                         6              24     563
24 months   ki1148112-LCNI-5           MALAWI                         7              45     563
24 months   ki1148112-LCNI-5           MALAWI                         8              70     563
24 months   ki1148112-LCNI-5           MALAWI                         9              63     563
24 months   ki1148112-LCNI-5           MALAWI                         10             89     563
24 months   ki1148112-LCNI-5           MALAWI                         11             62     563
24 months   ki1148112-LCNI-5           MALAWI                         12             64     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             665    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             561    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             714    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             504    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             364    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             609    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             672    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             618    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             800    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            874    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11           1039    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12           1183    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             781    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             851    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             649    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             563    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             418    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             484    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             503    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             364    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            122    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0    4735


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/6e1fa713-f087-489b-b64a-d1ae6981bb62/cd8aa571-3db0-4509-aefb-bdd646ed1563/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2567818   -1.8227118   -0.6908518
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1428559   -0.6952160    0.9809278
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8012173   -1.2656253   -0.3368094
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7607878   -1.2401028   -0.2814728
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2599772   -0.8430687    0.3231143
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1928268   -0.7015067    0.3158531
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2195768   -0.8812440    0.4420905
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1258163   -0.1554019    0.4070345
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           2.0944777    1.8067099    2.3822455
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0318662   -1.3133906   -0.7503419
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2598693   -0.3553349   -0.1644036
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5863890   -0.6448233   -0.5279547
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2862347   -0.4456936    1.0181630
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7744908    0.2296804    1.3193011
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8672856   -1.2919136   -0.4426576
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2067997   -0.5885469    0.1749474
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.4510539    0.9472588    1.9548489
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0524252   -0.5565593    0.6614096
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3492438    0.7998427    1.8986450
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1990730   -0.3823453    0.7804912
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0062328   -0.7558023    0.7433368
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1453874   -0.4532389    0.1624642
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2268559   -0.5787648    0.1250530
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2949737    0.1151117    0.4748358
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0680291   -0.0840994    0.2201577
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0605168   -0.3214149    0.4424485
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.2969291   -0.2908096    0.8846678
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1880016   -0.0290266    0.4050298
6 months    ki1114097-CMIN             PERU                           optimal              observed           1.1240923    0.7928609    1.4553237
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.9802874    0.4466275    1.5139472
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5428947    0.4275859    0.6582035
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3051526    0.2090343    0.4012710
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4744430    0.2464398    0.7024462
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5176753   -0.5850129   -0.4503377
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6396798   -1.0276979   -0.2516617
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.5536017    0.7884830    2.3187204
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0142938   -1.4938632   -0.5347244
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0299913   -0.6178841    0.5579015
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5115106   -1.0547247    0.0317036
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0824955   -0.2393003    0.4042914
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3148718   -0.6096550   -0.0200885
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5661935   -0.8566099   -0.2757772
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.9231946   -1.2408760   -0.6055131
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7324855   -1.0685653   -0.3964057
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4815993   -0.6237022   -0.3394965
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.7411699   -1.1012636   -0.3810762
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1217648   -0.3576847    0.1141551
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.9355247    0.7296764    1.1413730
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.3138208   -0.2752683    0.9029100
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6005224    0.4398858    0.7611590
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2443488   -0.1060120    0.5947096
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0280532   -1.1010572   -0.9550491


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0691133   -1.2078629   -0.9303637
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9044643   -1.0439568   -0.7649718
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7240996   -0.7439385   -0.7042607
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8099290   -0.8570608   -0.7627972
24 months   ki1114097-CMIN             BANGLADESH                     observed             observed          -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1114097-CONTENT          PERU                           observed             observed           0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2937113   -0.2373430    0.8247656
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2610239   -0.5400052    1.0620530
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2678960   -0.7173726    0.1815806
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1436765   -0.6196170    0.3322640
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1863930   -0.3724794    0.7452653
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1365477   -0.3522874    0.6253828
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7910063   -1.4230467   -0.1589660
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3955753   -0.7865737   -0.0045770
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3908586   -0.6714863   -0.1102309
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1144807   -0.2772254    0.0482639
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2552732   -0.3471154   -0.1634310
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1377106   -0.1917894   -0.0836317
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4260307   -1.1409429    0.2888814
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1972317   -0.3447062    0.7391696
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1638887   -0.2543077    0.5820851
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3178449   -0.0604300    0.6961199
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3966583   -0.8767407    0.0834242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4896483   -0.0936638    1.0729604
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8321926   -1.3721759   -0.2922092
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7017496   -1.2419284   -0.1615708
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5926970   -1.3181916    0.1327977
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5203210   -0.7095357   -0.3311064
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2120543   -0.5500955    0.1259869
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2140405   -0.3882010   -0.0398800
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2526515   -0.3952541   -0.1100488
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1445301   -0.5112801    0.2222198
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.8749744   -1.4429935   -0.3069552
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2298096   -0.4310687   -0.0285505
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4519906   -0.7747649   -0.1292163
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.0881444   -0.4176850    0.5939738
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0360686   -0.0658076    0.1379449
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0004388   -0.0913029    0.0904254
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0245145   -0.2521092    0.2030802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0758408   -0.1394584   -0.0122233
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1811457   -0.5546570    0.1923657
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -1.1069745   -1.8593473   -0.3546017
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0620030   -0.4002618    0.5242679
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3464561   -0.9077659    0.2148538
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.6314111    0.1052120    1.1576101
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3442062    0.0210772    0.6673351
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3649652    0.0705957    0.6593348
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0090430   -0.2737744    0.2918603
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1773796   -0.1289176    0.4836767
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1790936   -0.5056630    0.1474758
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3283297   -0.4644189   -0.1922404
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.1123692   -0.4743655    0.2496272
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0224790   -0.2568717    0.2119137
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.2877469   -0.4896578   -0.0858360
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.2530084   -0.3156565    0.8216734
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0858211   -0.0405212    0.2121633
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2921996   -0.6353384    0.0509392
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2697499   -0.3403658   -0.1991341
