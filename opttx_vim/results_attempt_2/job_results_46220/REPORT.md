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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               4      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               5      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               5      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               7      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               7      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               5      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               0      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               0      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               0      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             10      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              9      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              9      61
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
Birth       ki1119695-PROBIT           BELARUS                        1             419    6739
Birth       ki1119695-PROBIT           BELARUS                        2             417    6739
Birth       ki1119695-PROBIT           BELARUS                        3             486    6739
Birth       ki1119695-PROBIT           BELARUS                        4             469    6739
Birth       ki1119695-PROBIT           BELARUS                        5             478    6739
Birth       ki1119695-PROBIT           BELARUS                        6             527    6739
Birth       ki1119695-PROBIT           BELARUS                        7             619    6739
Birth       ki1119695-PROBIT           BELARUS                        8             669    6739
Birth       ki1119695-PROBIT           BELARUS                        9             623    6739
Birth       ki1119695-PROBIT           BELARUS                        10            694    6739
Birth       ki1119695-PROBIT           BELARUS                        11            612    6739
Birth       ki1119695-PROBIT           BELARUS                        12            726    6739
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             705    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2             597    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3             736    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4             543    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             399    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             416    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             446    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8             623    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9             779    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10            821    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11            815    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12            807    7687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              29     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              38     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              31     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              29     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              23     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              24     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               4     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               4     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              3     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0     185
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              44     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              39     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              33     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              25     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              36     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              48     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               0     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               0     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               0     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             76     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             44     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             66     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               6      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               9      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               6      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               1      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               3      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               5      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               9      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              14      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              17      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             12      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              6      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              9      97
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
6 months    ki1119695-PROBIT           BELARUS                        1             489    7664
6 months    ki1119695-PROBIT           BELARUS                        2             483    7664
6 months    ki1119695-PROBIT           BELARUS                        3             551    7664
6 months    ki1119695-PROBIT           BELARUS                        4             524    7664
6 months    ki1119695-PROBIT           BELARUS                        5             575    7664
6 months    ki1119695-PROBIT           BELARUS                        6             583    7664
6 months    ki1119695-PROBIT           BELARUS                        7             721    7664
6 months    ki1119695-PROBIT           BELARUS                        8             754    7664
6 months    ki1119695-PROBIT           BELARUS                        9             702    7664
6 months    ki1119695-PROBIT           BELARUS                        10            767    7664
6 months    ki1119695-PROBIT           BELARUS                        11            701    7664
6 months    ki1119695-PROBIT           BELARUS                        12            814    7664
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             671    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2             564    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3             711    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4             589    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5             573    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6             591    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7             608    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8             754    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9             806    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10            805    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11            866    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12            770    8308
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             130    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             250    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             192    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             177    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             114    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             141    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             127    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              88    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             37    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0    1256
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
24 months   ki1119695-PROBIT           BELARUS                        1             120    1589
24 months   ki1119695-PROBIT           BELARUS                        2             105    1589
24 months   ki1119695-PROBIT           BELARUS                        3             131    1589
24 months   ki1119695-PROBIT           BELARUS                        4             141    1589
24 months   ki1119695-PROBIT           BELARUS                        5             131    1589
24 months   ki1119695-PROBIT           BELARUS                        6             122    1589
24 months   ki1119695-PROBIT           BELARUS                        7             150    1589
24 months   ki1119695-PROBIT           BELARUS                        8             135    1589
24 months   ki1119695-PROBIT           BELARUS                        9             139    1589
24 months   ki1119695-PROBIT           BELARUS                        10            125    1589
24 months   ki1119695-PROBIT           BELARUS                        11            118    1589
24 months   ki1119695-PROBIT           BELARUS                        12            172    1589
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             338    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             277    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             347    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             254    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             188    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             313    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             322    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             326    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             376    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            431    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11            524    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12            586    4282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             195    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             229    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             172    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             165    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             109    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             137    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             123    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              84    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             35    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0    1249


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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







# Results Detail

## Results Plots
![](/tmp/caa7c0d3-0dfc-4cf6-9b58-43cf513396bb/caf061d2-f902-45f6-8950-6d6a3f11ca78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2582738   -1.6943372   -0.8222104
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2513839   -0.6094095    1.1121773
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6849263   -1.2027597   -0.1670929
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7504188   -1.1129170   -0.3879206
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1146081   -0.7014211    0.4722049
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2170295   -0.7334895    0.2994305
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2181025   -0.8775353    0.4413304
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.9291783    1.6348032    2.2235534
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1020206   -1.4840027   -0.7200385
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2605186   -0.3559382   -0.1650991
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6078555   -0.6900169   -0.5256941
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3020255   -0.4417751    1.0458260
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7968095    0.1617466    1.4318725
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4281820   -0.8502085   -0.0061554
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0043197   -0.5145042    0.5058647
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2229767    0.6359060    1.8100474
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3751708   -0.2981954    1.0485370
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.2419350    0.6029338    1.8809362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2103012   -0.3871435    0.8077459
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0052756   -0.7244451    0.7349964
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0279965   -0.3718614    0.3158684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2996845    0.1093724    0.4899965
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0611829   -0.0894218    0.2117876
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1415135   -0.3677593    0.6507862
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed           0.3220504   -0.2959086    0.9400094
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0585116   -0.2057605    0.3227838
6 months    ki1114097-CMIN             PERU                           optimal              observed           1.1274382    0.7991505    1.4557259
6 months    ki1114097-CONTENT          PERU                           optimal              observed           1.2925044    0.6991988    1.8858101
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5250941    0.4119850    0.6382033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2971365    0.2014177    0.3928553
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5556691    0.3097067    0.8016315
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4716818   -0.5700222   -0.3733414
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8750781   -1.2447760   -0.5053802
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.2164910    0.0583854    2.3745966
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0457351   -1.4603612   -0.6311090
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5617726   -0.9413131   -0.1822322
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2453632   -0.7559926    0.2652663
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0737922   -0.3976736    0.5452579
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0532983   -0.4731369    0.3665404
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5018360   -0.8053722   -0.1982999
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.9244401   -1.2758938   -0.5729864
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9836513   -1.2564621   -0.7108405
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.4741143   -0.6164848   -0.3317438
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.8871430   -1.2593328   -0.5149532
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2221458   -0.5533571    0.1090654
24 months   ki1114097-CMIN             PERU                           optimal              observed           1.0012318    0.7823381    1.2201255
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.3073007   -0.3355808    0.9501821
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8773954    0.4856508    1.2691399
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1229409   -0.3833836    0.1375017
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0856902   -1.1859588   -0.9854215


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
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5151425   -0.5409938   -0.4892911
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7667165   -0.7936151   -0.7398180
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1846223   -0.2354964   -0.1337483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             BANGLADESH                     observed             observed          -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3047138    0.2786437    0.3307839
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5899579   -0.6174529   -0.5624628
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2928515   -1.3253331   -1.2603698


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2952033   -0.1221910    0.7125975
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1524959   -0.6834472    0.9884389
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3841870   -0.8805257    0.1121517
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1540455   -0.5235333    0.2154422
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0410239   -0.5236143    0.6056620
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1607505   -0.3369483    0.6584492
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7924806   -1.4219606   -0.1630006
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2255592   -0.5103037    0.0591853
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0857061   -0.1905739    0.0191618
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2546238   -0.3464209   -0.1628267
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1588610   -0.2359664   -0.0817557
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4418215   -1.1684639    0.2848210
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1749130   -0.4444553    0.7942813
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2752149   -0.6779866    0.1275568
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1153649   -0.3761358    0.6068657
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1685811   -0.7250819    0.3879197
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1669027   -0.4914172    0.8252225
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.7248837   -1.3523164   -0.0974510
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7129779   -1.2687360   -0.1572197
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6042054   -1.3101476    0.1017369
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4109137   -0.7416966   -0.0801308
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2187513   -0.4020489   -0.0354537
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2458052   -0.3869641   -0.1046463
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.2255269   -0.7048643    0.2538105
6 months    ki1114097-CMIN             BANGLADESH                     optimal              observed          -0.9000957   -1.4974055   -0.3027859
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.1003196   -0.3495114    0.1488722
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.4553365   -0.7751958   -0.1354773
6 months    ki1114097-CONTENT          PERU                           optimal              observed          -0.2240727   -0.7930516    0.3449063
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0559125   -0.0208210    0.1326460
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0075773   -0.0828984    0.0980531
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1057406   -0.3493671    0.1378858
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1182761   -0.2118314   -0.0247208
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0542526   -0.3088295    0.4173348
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7698638   -1.9073042    0.3675766
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0934444   -0.3071961    0.4940848
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1853253   -0.1865386    0.5571891
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3652637   -0.1321081    0.8626354
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3529095   -0.1037239    0.8095430
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1033917   -0.2959994    0.5027829
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0553145   -0.3523289    0.2416998
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.1786251   -0.1604731    0.5177232
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0720723   -0.1975264    0.3416709
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3358147   -0.4721759   -0.1994535
24 months   ki1114097-CMIN             BANGLADESH                     optimal              observed           0.0336039   -0.3402858    0.4074936
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0779020   -0.2434580    0.3992621
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.3534540   -0.5665864   -0.1403217
24 months   ki1114097-CONTENT          PERU                           optimal              observed           0.2595286   -0.3546748    0.8737320
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0712353   -0.4455470    0.3030764
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0750901   -0.1848925    0.3350728
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2071613   -0.3002392   -0.1140834
