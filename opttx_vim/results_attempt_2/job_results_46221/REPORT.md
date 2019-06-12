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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        month    n_cell       n
----------  -------------------------  -----------------------------  ------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2            21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3            25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4            21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5            20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             8     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7            21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8            22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9            20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10           23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11           15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12           26     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1             9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2            19     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3            17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4             8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5            16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6             7     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7            17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8            17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9            27     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10           18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11           15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12           13     183
Birth       ki0047075b-MAL-ED          INDIA                          1            16     203
Birth       ki0047075b-MAL-ED          INDIA                          2            16     203
Birth       ki0047075b-MAL-ED          INDIA                          3            20     203
Birth       ki0047075b-MAL-ED          INDIA                          4            14     203
Birth       ki0047075b-MAL-ED          INDIA                          5             7     203
Birth       ki0047075b-MAL-ED          INDIA                          6            17     203
Birth       ki0047075b-MAL-ED          INDIA                          7            20     203
Birth       ki0047075b-MAL-ED          INDIA                          8            17     203
Birth       ki0047075b-MAL-ED          INDIA                          9            19     203
Birth       ki0047075b-MAL-ED          INDIA                          10           23     203
Birth       ki0047075b-MAL-ED          INDIA                          11           20     203
Birth       ki0047075b-MAL-ED          INDIA                          12           14     203
Birth       ki0047075b-MAL-ED          NEPAL                          1            16     168
Birth       ki0047075b-MAL-ED          NEPAL                          2            13     168
Birth       ki0047075b-MAL-ED          NEPAL                          3            12     168
Birth       ki0047075b-MAL-ED          NEPAL                          4            14     168
Birth       ki0047075b-MAL-ED          NEPAL                          5            18     168
Birth       ki0047075b-MAL-ED          NEPAL                          6            13     168
Birth       ki0047075b-MAL-ED          NEPAL                          7            17     168
Birth       ki0047075b-MAL-ED          NEPAL                          8            14     168
Birth       ki0047075b-MAL-ED          NEPAL                          9             9     168
Birth       ki0047075b-MAL-ED          NEPAL                          10           16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11           16     168
Birth       ki0047075b-MAL-ED          NEPAL                          12           10     168
Birth       ki0047075b-MAL-ED          PERU                           1            35     279
Birth       ki0047075b-MAL-ED          PERU                           2            22     279
Birth       ki0047075b-MAL-ED          PERU                           3            22     279
Birth       ki0047075b-MAL-ED          PERU                           4            20     279
Birth       ki0047075b-MAL-ED          PERU                           5            24     279
Birth       ki0047075b-MAL-ED          PERU                           6            18     279
Birth       ki0047075b-MAL-ED          PERU                           7            23     279
Birth       ki0047075b-MAL-ED          PERU                           8            19     279
Birth       ki0047075b-MAL-ED          PERU                           9            22     279
Birth       ki0047075b-MAL-ED          PERU                           10           23     279
Birth       ki0047075b-MAL-ED          PERU                           11           31     279
Birth       ki0047075b-MAL-ED          PERU                           12           20     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2            23     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3            17     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4            13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5            13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6            18     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7            22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8            10     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9            21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10           28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11           27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12           39     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           16     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11           11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            4      88
Birth       ki1000108-IRC              INDIA                          1            30     343
Birth       ki1000108-IRC              INDIA                          2            22     343
Birth       ki1000108-IRC              INDIA                          3            26     343
Birth       ki1000108-IRC              INDIA                          4            19     343
Birth       ki1000108-IRC              INDIA                          5            15     343
Birth       ki1000108-IRC              INDIA                          6            25     343
Birth       ki1000108-IRC              INDIA                          7            31     343
Birth       ki1000108-IRC              INDIA                          8            37     343
Birth       ki1000108-IRC              INDIA                          9            24     343
Birth       ki1000108-IRC              INDIA                          10           32     343
Birth       ki1000108-IRC              INDIA                          11           39     343
Birth       ki1000108-IRC              INDIA                          12           43     343
Birth       ki1000109-EE               PAKISTAN                       1             0       1
Birth       ki1000109-EE               PAKISTAN                       2             0       1
Birth       ki1000109-EE               PAKISTAN                       3             0       1
Birth       ki1000109-EE               PAKISTAN                       4             0       1
Birth       ki1000109-EE               PAKISTAN                       5             0       1
Birth       ki1000109-EE               PAKISTAN                       6             0       1
Birth       ki1000109-EE               PAKISTAN                       7             0       1
Birth       ki1000109-EE               PAKISTAN                       8             0       1
Birth       ki1000109-EE               PAKISTAN                       9             0       1
Birth       ki1000109-EE               PAKISTAN                       10            0       1
Birth       ki1000109-EE               PAKISTAN                       11            0       1
Birth       ki1000109-EE               PAKISTAN                       12            1       1
Birth       ki1000109-ResPak           PAKISTAN                       1             1       6
Birth       ki1000109-ResPak           PAKISTAN                       2             0       6
Birth       ki1000109-ResPak           PAKISTAN                       3             0       6
Birth       ki1000109-ResPak           PAKISTAN                       4             1       6
Birth       ki1000109-ResPak           PAKISTAN                       5             1       6
Birth       ki1000109-ResPak           PAKISTAN                       6             2       6
Birth       ki1000109-ResPak           PAKISTAN                       7             1       6
Birth       ki1000109-ResPak           PAKISTAN                       8             0       6
Birth       ki1000109-ResPak           PAKISTAN                       9             0       6
Birth       ki1000109-ResPak           PAKISTAN                       10            0       6
Birth       ki1000109-ResPak           PAKISTAN                       11            0       6
Birth       ki1000109-ResPak           PAKISTAN                       12            0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             6      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             5      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             3      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          4             9      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          5             7      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          6             4      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             1      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             0      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             0      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          10           10      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            9      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          12            7      61
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4             2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5             0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6             2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7             1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8             0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9             0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10            1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12            0      28
Birth       ki1114097-CMIN             BANGLADESH                     1             0       8
Birth       ki1114097-CMIN             BANGLADESH                     2             2       8
Birth       ki1114097-CMIN             BANGLADESH                     3             0       8
Birth       ki1114097-CMIN             BANGLADESH                     4             0       8
Birth       ki1114097-CMIN             BANGLADESH                     5             1       8
Birth       ki1114097-CMIN             BANGLADESH                     6             0       8
Birth       ki1114097-CMIN             BANGLADESH                     7             0       8
Birth       ki1114097-CMIN             BANGLADESH                     8             1       8
Birth       ki1114097-CMIN             BANGLADESH                     9             1       8
Birth       ki1114097-CMIN             BANGLADESH                     10            1       8
Birth       ki1114097-CMIN             BANGLADESH                     11            2       8
Birth       ki1114097-CMIN             BANGLADESH                     12            0       8
Birth       ki1114097-CMIN             BRAZIL                         1            13     111
Birth       ki1114097-CMIN             BRAZIL                         2             7     111
Birth       ki1114097-CMIN             BRAZIL                         3            12     111
Birth       ki1114097-CMIN             BRAZIL                         4             9     111
Birth       ki1114097-CMIN             BRAZIL                         5             5     111
Birth       ki1114097-CMIN             BRAZIL                         6             6     111
Birth       ki1114097-CMIN             BRAZIL                         7             4     111
Birth       ki1114097-CMIN             BRAZIL                         8            12     111
Birth       ki1114097-CMIN             BRAZIL                         9             8     111
Birth       ki1114097-CMIN             BRAZIL                         10           14     111
Birth       ki1114097-CMIN             BRAZIL                         11           11     111
Birth       ki1114097-CMIN             BRAZIL                         12           10     111
Birth       ki1114097-CMIN             PERU                           1             1      10
Birth       ki1114097-CMIN             PERU                           2             1      10
Birth       ki1114097-CMIN             PERU                           3             2      10
Birth       ki1114097-CMIN             PERU                           4             3      10
Birth       ki1114097-CMIN             PERU                           5             0      10
Birth       ki1114097-CMIN             PERU                           6             0      10
Birth       ki1114097-CMIN             PERU                           7             0      10
Birth       ki1114097-CMIN             PERU                           8             1      10
Birth       ki1114097-CMIN             PERU                           9             2      10
Birth       ki1114097-CMIN             PERU                           10            0      10
Birth       ki1114097-CMIN             PERU                           11            0      10
Birth       ki1114097-CMIN             PERU                           12            0      10
Birth       ki1114097-CONTENT          PERU                           1             0       2
Birth       ki1114097-CONTENT          PERU                           2             0       2
Birth       ki1114097-CONTENT          PERU                           3             0       2
Birth       ki1114097-CONTENT          PERU                           4             0       2
Birth       ki1114097-CONTENT          PERU                           5             2       2
Birth       ki1114097-CONTENT          PERU                           6             0       2
Birth       ki1114097-CONTENT          PERU                           7             0       2
Birth       ki1114097-CONTENT          PERU                           8             0       2
Birth       ki1114097-CONTENT          PERU                           9             0       2
Birth       ki1114097-CONTENT          PERU                           10            0       2
Birth       ki1114097-CONTENT          PERU                           11            0       2
Birth       ki1114097-CONTENT          PERU                           12            0       2
Birth       ki1119695-PROBIT           BELARUS                        1           430    6739
Birth       ki1119695-PROBIT           BELARUS                        2           409    6739
Birth       ki1119695-PROBIT           BELARUS                        3           497    6739
Birth       ki1119695-PROBIT           BELARUS                        4           466    6739
Birth       ki1119695-PROBIT           BELARUS                        5           478    6739
Birth       ki1119695-PROBIT           BELARUS                        6           521    6739
Birth       ki1119695-PROBIT           BELARUS                        7           611    6739
Birth       ki1119695-PROBIT           BELARUS                        8           677    6739
Birth       ki1119695-PROBIT           BELARUS                        9           618    6739
Birth       ki1119695-PROBIT           BELARUS                        10          700    6739
Birth       ki1119695-PROBIT           BELARUS                        11          617    6739
Birth       ki1119695-PROBIT           BELARUS                        12          715    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1          1238   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           946   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3          1060   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4           937   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5           913   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6          1046   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7          1098   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8          1163   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9          1264   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10          981   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11         1068   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12         1179   12893
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           711    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           587    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3           733    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4           551    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5           411    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6           409    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7           449    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8           613    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9           779    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10          818    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11          814    7687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12          812    7687
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2            27     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3            37     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4            31     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5            32     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6            23     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7            22     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             6     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             4     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            3     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0     185
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2            20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3            25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4            22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5            21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6             8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7            20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8            22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9            22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10           22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11           16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12           26     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1            13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2            24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3            18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4            10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5            19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6            10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7            17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8            16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9            28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10           21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11           19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12           14     209
6 months    ki0047075b-MAL-ED          INDIA                          1            18     236
6 months    ki0047075b-MAL-ED          INDIA                          2            20     236
6 months    ki0047075b-MAL-ED          INDIA                          3            22     236
6 months    ki0047075b-MAL-ED          INDIA                          4            15     236
6 months    ki0047075b-MAL-ED          INDIA                          5             8     236
6 months    ki0047075b-MAL-ED          INDIA                          6            18     236
6 months    ki0047075b-MAL-ED          INDIA                          7            23     236
6 months    ki0047075b-MAL-ED          INDIA                          8            20     236
6 months    ki0047075b-MAL-ED          INDIA                          9            21     236
6 months    ki0047075b-MAL-ED          INDIA                          10           26     236
6 months    ki0047075b-MAL-ED          INDIA                          11           25     236
6 months    ki0047075b-MAL-ED          INDIA                          12           20     236
6 months    ki0047075b-MAL-ED          NEPAL                          1            25     236
6 months    ki0047075b-MAL-ED          NEPAL                          2            17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          4            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          5            20     236
6 months    ki0047075b-MAL-ED          NEPAL                          6            18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7            21     236
6 months    ki0047075b-MAL-ED          NEPAL                          8            19     236
6 months    ki0047075b-MAL-ED          NEPAL                          9            17     236
6 months    ki0047075b-MAL-ED          NEPAL                          10           22     236
6 months    ki0047075b-MAL-ED          NEPAL                          11           23     236
6 months    ki0047075b-MAL-ED          NEPAL                          12           16     236
6 months    ki0047075b-MAL-ED          PERU                           1            37     273
6 months    ki0047075b-MAL-ED          PERU                           2            22     273
6 months    ki0047075b-MAL-ED          PERU                           3            21     273
6 months    ki0047075b-MAL-ED          PERU                           4            20     273
6 months    ki0047075b-MAL-ED          PERU                           5            24     273
6 months    ki0047075b-MAL-ED          PERU                           6            19     273
6 months    ki0047075b-MAL-ED          PERU                           7            21     273
6 months    ki0047075b-MAL-ED          PERU                           8            17     273
6 months    ki0047075b-MAL-ED          PERU                           9            22     273
6 months    ki0047075b-MAL-ED          PERU                           10           19     273
6 months    ki0047075b-MAL-ED          PERU                           11           33     273
6 months    ki0047075b-MAL-ED          PERU                           12           18     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2            26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3            18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5            12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6            17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7            23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9            20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10           24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11           24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12           35     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4            10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            25     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           29     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           28     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            27     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3            25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4            29     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5            43     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6            35     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7            33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8            41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9            24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10           19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11           40     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12           28     368
6 months    ki1000108-IRC              INDIA                          1            36     408
6 months    ki1000108-IRC              INDIA                          2            27     408
6 months    ki1000108-IRC              INDIA                          3            29     408
6 months    ki1000108-IRC              INDIA                          4            22     408
6 months    ki1000108-IRC              INDIA                          5            21     408
6 months    ki1000108-IRC              INDIA                          6            37     408
6 months    ki1000108-IRC              INDIA                          7            36     408
6 months    ki1000108-IRC              INDIA                          8            45     408
6 months    ki1000108-IRC              INDIA                          9            25     408
6 months    ki1000108-IRC              INDIA                          10           37     408
6 months    ki1000108-IRC              INDIA                          11           41     408
6 months    ki1000108-IRC              INDIA                          12           52     408
6 months    ki1000109-EE               PAKISTAN                       1            90     376
6 months    ki1000109-EE               PAKISTAN                       2            81     376
6 months    ki1000109-EE               PAKISTAN                       3            42     376
6 months    ki1000109-EE               PAKISTAN                       4            29     376
6 months    ki1000109-EE               PAKISTAN                       5             2     376
6 months    ki1000109-EE               PAKISTAN                       6             0     376
6 months    ki1000109-EE               PAKISTAN                       7             0     376
6 months    ki1000109-EE               PAKISTAN                       8             0     376
6 months    ki1000109-EE               PAKISTAN                       9             0     376
6 months    ki1000109-EE               PAKISTAN                       10            0     376
6 months    ki1000109-EE               PAKISTAN                       11           49     376
6 months    ki1000109-EE               PAKISTAN                       12           83     376
6 months    ki1000109-ResPak           PAKISTAN                       1             6     235
6 months    ki1000109-ResPak           PAKISTAN                       2            12     235
6 months    ki1000109-ResPak           PAKISTAN                       3            13     235
6 months    ki1000109-ResPak           PAKISTAN                       4            28     235
6 months    ki1000109-ResPak           PAKISTAN                       5            30     235
6 months    ki1000109-ResPak           PAKISTAN                       6            46     235
6 months    ki1000109-ResPak           PAKISTAN                       7            33     235
6 months    ki1000109-ResPak           PAKISTAN                       8            35     235
6 months    ki1000109-ResPak           PAKISTAN                       9            20     235
6 months    ki1000109-ResPak           PAKISTAN                       10            7     235
6 months    ki1000109-ResPak           PAKISTAN                       11            3     235
6 months    ki1000109-ResPak           PAKISTAN                       12            2     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            44     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            34     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          3            40     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          4            30     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          5            31     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          6            49     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             6     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             0     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             0     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          10           64     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          11           40     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          12           73     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            15      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             9      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3            10      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4             7      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5             7      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6             9      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7             5      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             0      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9             4      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10            6      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11           10      97
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12           15      97
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2            49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3            50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4            44     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5            40     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6            39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7            45     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8            38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9            30     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10           52     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11           49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12           50     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           199    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           137    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           151    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           138    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           160    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           143    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           145    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           174    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           198    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          187    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          201    2028
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1            18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2            19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3            21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4            27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5            31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6            39     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7            24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8            19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9            34     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10           29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11           28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12           10     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1             2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          4             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          5             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          6             0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          7           119     563
6 months    ki1113344-GMS-Nepal        NEPAL                          8           220     563
6 months    ki1113344-GMS-Nepal        NEPAL                          9           204     563
6 months    ki1113344-GMS-Nepal        NEPAL                          10           13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          11            4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          12            1     563
6 months    ki1114097-CMIN             BANGLADESH                     1            28     243
6 months    ki1114097-CMIN             BANGLADESH                     2            30     243
6 months    ki1114097-CMIN             BANGLADESH                     3            18     243
6 months    ki1114097-CMIN             BANGLADESH                     4            17     243
6 months    ki1114097-CMIN             BANGLADESH                     5            20     243
6 months    ki1114097-CMIN             BANGLADESH                     6            23     243
6 months    ki1114097-CMIN             BANGLADESH                     7            12     243
6 months    ki1114097-CMIN             BANGLADESH                     8            13     243
6 months    ki1114097-CMIN             BANGLADESH                     9            16     243
6 months    ki1114097-CMIN             BANGLADESH                     10           20     243
6 months    ki1114097-CMIN             BANGLADESH                     11            2     243
6 months    ki1114097-CMIN             BANGLADESH                     12           44     243
6 months    ki1114097-CMIN             BRAZIL                         1            10     108
6 months    ki1114097-CMIN             BRAZIL                         2             6     108
6 months    ki1114097-CMIN             BRAZIL                         3            13     108
6 months    ki1114097-CMIN             BRAZIL                         4            10     108
6 months    ki1114097-CMIN             BRAZIL                         5             5     108
6 months    ki1114097-CMIN             BRAZIL                         6             6     108
6 months    ki1114097-CMIN             BRAZIL                         7             4     108
6 months    ki1114097-CMIN             BRAZIL                         8            11     108
6 months    ki1114097-CMIN             BRAZIL                         9             8     108
6 months    ki1114097-CMIN             BRAZIL                         10           15     108
6 months    ki1114097-CMIN             BRAZIL                         11           12     108
6 months    ki1114097-CMIN             BRAZIL                         12            8     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1            16     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2            87     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3           114     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4           125     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5           110     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6            61     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7            40     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8            38     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9            98     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10           34     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11           47     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12           79     849
6 months    ki1114097-CMIN             PERU                           1            41     636
6 months    ki1114097-CMIN             PERU                           2            56     636
6 months    ki1114097-CMIN             PERU                           3            69     636
6 months    ki1114097-CMIN             PERU                           4            69     636
6 months    ki1114097-CMIN             PERU                           5            70     636
6 months    ki1114097-CMIN             PERU                           6            48     636
6 months    ki1114097-CMIN             PERU                           7            43     636
6 months    ki1114097-CMIN             PERU                           8            54     636
6 months    ki1114097-CMIN             PERU                           9            42     636
6 months    ki1114097-CMIN             PERU                           10           37     636
6 months    ki1114097-CMIN             PERU                           11           65     636
6 months    ki1114097-CMIN             PERU                           12           42     636
6 months    ki1114097-CONTENT          PERU                           1             9     215
6 months    ki1114097-CONTENT          PERU                           2            13     215
6 months    ki1114097-CONTENT          PERU                           3            27     215
6 months    ki1114097-CONTENT          PERU                           4            18     215
6 months    ki1114097-CONTENT          PERU                           5            25     215
6 months    ki1114097-CONTENT          PERU                           6            14     215
6 months    ki1114097-CONTENT          PERU                           7            16     215
6 months    ki1114097-CONTENT          PERU                           8            26     215
6 months    ki1114097-CONTENT          PERU                           9            19     215
6 months    ki1114097-CONTENT          PERU                           10           23     215
6 months    ki1114097-CONTENT          PERU                           11           18     215
6 months    ki1114097-CONTENT          PERU                           12            7     215
6 months    ki1119695-PROBIT           BELARUS                        1           547    7664
6 months    ki1119695-PROBIT           BELARUS                        2           482    7664
6 months    ki1119695-PROBIT           BELARUS                        3           574    7664
6 months    ki1119695-PROBIT           BELARUS                        4           517    7664
6 months    ki1119695-PROBIT           BELARUS                        5           546    7664
6 months    ki1119695-PROBIT           BELARUS                        6           592    7664
6 months    ki1119695-PROBIT           BELARUS                        7           674    7664
6 months    ki1119695-PROBIT           BELARUS                        8           766    7664
6 months    ki1119695-PROBIT           BELARUS                        9           716    7664
6 months    ki1119695-PROBIT           BELARUS                        10          772    7664
6 months    ki1119695-PROBIT           BELARUS                        11          681    7664
6 months    ki1119695-PROBIT           BELARUS                        12          797    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           805    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           573    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3           701    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4           656    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5           597    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6           652    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7           636    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8           729    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9           763    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10          599    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11          725    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12          813    8249
6 months    ki1148112-LCNI-5           MALAWI                         1            55     839
6 months    ki1148112-LCNI-5           MALAWI                         2           114     839
6 months    ki1148112-LCNI-5           MALAWI                         3            98     839
6 months    ki1148112-LCNI-5           MALAWI                         4           110     839
6 months    ki1148112-LCNI-5           MALAWI                         5           111     839
6 months    ki1148112-LCNI-5           MALAWI                         6            91     839
6 months    ki1148112-LCNI-5           MALAWI                         7            72     839
6 months    ki1148112-LCNI-5           MALAWI                         8            41     839
6 months    ki1148112-LCNI-5           MALAWI                         9            29     839
6 months    ki1148112-LCNI-5           MALAWI                         10           35     839
6 months    ki1148112-LCNI-5           MALAWI                         11           49     839
6 months    ki1148112-LCNI-5           MALAWI                         12           34     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           676    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           571    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3           723    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4           602    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5           584    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6           581    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7           604    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8           743    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9           774    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10          804    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11          836    8308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12          810    8308
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            19    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2            39    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3           107    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4           233    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5           165    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6           115    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7           214    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8           130    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9            99    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10           77    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11           38    1256
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12           20    1256
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2            17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3            20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4            20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5            19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7            20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8            21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9            19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10           20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11           10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12           26     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1            13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2            17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3            16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4             9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5            16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6             5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7            11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8            14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9            24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10           15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11           16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12           13     169
24 months   ki0047075b-MAL-ED          INDIA                          1            18     227
24 months   ki0047075b-MAL-ED          INDIA                          2            20     227
24 months   ki0047075b-MAL-ED          INDIA                          3            19     227
24 months   ki0047075b-MAL-ED          INDIA                          4            14     227
24 months   ki0047075b-MAL-ED          INDIA                          5             8     227
24 months   ki0047075b-MAL-ED          INDIA                          6            17     227
24 months   ki0047075b-MAL-ED          INDIA                          7            23     227
24 months   ki0047075b-MAL-ED          INDIA                          8            19     227
24 months   ki0047075b-MAL-ED          INDIA                          9            19     227
24 months   ki0047075b-MAL-ED          INDIA                          10           26     227
24 months   ki0047075b-MAL-ED          INDIA                          11           24     227
24 months   ki0047075b-MAL-ED          INDIA                          12           20     227
24 months   ki0047075b-MAL-ED          NEPAL                          1            23     228
24 months   ki0047075b-MAL-ED          NEPAL                          2            15     228
24 months   ki0047075b-MAL-ED          NEPAL                          3            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          4            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          6            18     228
24 months   ki0047075b-MAL-ED          NEPAL                          7            20     228
24 months   ki0047075b-MAL-ED          NEPAL                          8            19     228
24 months   ki0047075b-MAL-ED          NEPAL                          9            16     228
24 months   ki0047075b-MAL-ED          NEPAL                          10           22     228
24 months   ki0047075b-MAL-ED          NEPAL                          11           22     228
24 months   ki0047075b-MAL-ED          NEPAL                          12           16     228
24 months   ki0047075b-MAL-ED          PERU                           1            29     201
24 months   ki0047075b-MAL-ED          PERU                           2            20     201
24 months   ki0047075b-MAL-ED          PERU                           3            14     201
24 months   ki0047075b-MAL-ED          PERU                           4            12     201
24 months   ki0047075b-MAL-ED          PERU                           5            18     201
24 months   ki0047075b-MAL-ED          PERU                           6            12     201
24 months   ki0047075b-MAL-ED          PERU                           7            14     201
24 months   ki0047075b-MAL-ED          PERU                           8            13     201
24 months   ki0047075b-MAL-ED          PERU                           9            20     201
24 months   ki0047075b-MAL-ED          PERU                           10           14     201
24 months   ki0047075b-MAL-ED          PERU                           11           21     201
24 months   ki0047075b-MAL-ED          PERU                           12           14     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2            25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3            17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4            11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5            11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6            15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7            23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9            20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10           24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11           22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12           31     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           23     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3            25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4            29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5            45     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6            36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7            33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8            41     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9            24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10           19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11           40     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12           29     372
24 months   ki1000108-IRC              INDIA                          1            36     409
24 months   ki1000108-IRC              INDIA                          2            27     409
24 months   ki1000108-IRC              INDIA                          3            29     409
24 months   ki1000108-IRC              INDIA                          4            22     409
24 months   ki1000108-IRC              INDIA                          5            21     409
24 months   ki1000108-IRC              INDIA                          6            37     409
24 months   ki1000108-IRC              INDIA                          7            36     409
24 months   ki1000108-IRC              INDIA                          8            45     409
24 months   ki1000108-IRC              INDIA                          9            27     409
24 months   ki1000108-IRC              INDIA                          10           36     409
24 months   ki1000108-IRC              INDIA                          11           41     409
24 months   ki1000108-IRC              INDIA                          12           52     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            42     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2            36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3            41     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4            34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5            34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6            30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7            37     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8            30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9            19     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10           40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11           40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12           45     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          1             2     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          6             0     498
24 months   ki1113344-GMS-Nepal        NEPAL                          7            88     498
24 months   ki1113344-GMS-Nepal        NEPAL                          8           203     498
24 months   ki1113344-GMS-Nepal        NEPAL                          9           187     498
24 months   ki1113344-GMS-Nepal        NEPAL                          10           13     498
24 months   ki1113344-GMS-Nepal        NEPAL                          11            4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          12            1     498
24 months   ki1114097-CMIN             BANGLADESH                     1            27     243
24 months   ki1114097-CMIN             BANGLADESH                     2            31     243
24 months   ki1114097-CMIN             BANGLADESH                     3            19     243
24 months   ki1114097-CMIN             BANGLADESH                     4            18     243
24 months   ki1114097-CMIN             BANGLADESH                     5            19     243
24 months   ki1114097-CMIN             BANGLADESH                     6            22     243
24 months   ki1114097-CMIN             BANGLADESH                     7            12     243
24 months   ki1114097-CMIN             BANGLADESH                     8            13     243
24 months   ki1114097-CMIN             BANGLADESH                     9            18     243
24 months   ki1114097-CMIN             BANGLADESH                     10           19     243
24 months   ki1114097-CMIN             BANGLADESH                     11            2     243
24 months   ki1114097-CMIN             BANGLADESH                     12           43     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1            11     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2            57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3            68     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4           108     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5            70     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6            34     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7            29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8            28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9            58     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10           15     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11           30     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12           43     551
24 months   ki1114097-CMIN             PERU                           1             8     429
24 months   ki1114097-CMIN             PERU                           2           134     429
24 months   ki1114097-CMIN             PERU                           3            82     429
24 months   ki1114097-CMIN             PERU                           4            26     429
24 months   ki1114097-CMIN             PERU                           5            31     429
24 months   ki1114097-CMIN             PERU                           6            13     429
24 months   ki1114097-CMIN             PERU                           7            18     429
24 months   ki1114097-CMIN             PERU                           8            31     429
24 months   ki1114097-CMIN             PERU                           9            14     429
24 months   ki1114097-CMIN             PERU                           10           15     429
24 months   ki1114097-CMIN             PERU                           11           42     429
24 months   ki1114097-CMIN             PERU                           12           15     429
24 months   ki1114097-CONTENT          PERU                           1             8     164
24 months   ki1114097-CONTENT          PERU                           2            10     164
24 months   ki1114097-CONTENT          PERU                           3            20     164
24 months   ki1114097-CONTENT          PERU                           4            13     164
24 months   ki1114097-CONTENT          PERU                           5            22     164
24 months   ki1114097-CONTENT          PERU                           6            11     164
24 months   ki1114097-CONTENT          PERU                           7            13     164
24 months   ki1114097-CONTENT          PERU                           8            23     164
24 months   ki1114097-CONTENT          PERU                           9            11     164
24 months   ki1114097-CONTENT          PERU                           10           12     164
24 months   ki1114097-CONTENT          PERU                           11           17     164
24 months   ki1114097-CONTENT          PERU                           12            4     164
24 months   ki1119695-PROBIT           BELARUS                        1           122    1589
24 months   ki1119695-PROBIT           BELARUS                        2           105    1589
24 months   ki1119695-PROBIT           BELARUS                        3           135    1589
24 months   ki1119695-PROBIT           BELARUS                        4           138    1589
24 months   ki1119695-PROBIT           BELARUS                        5           133    1589
24 months   ki1119695-PROBIT           BELARUS                        6           119    1589
24 months   ki1119695-PROBIT           BELARUS                        7           144    1589
24 months   ki1119695-PROBIT           BELARUS                        8           144    1589
24 months   ki1119695-PROBIT           BELARUS                        9           136    1589
24 months   ki1119695-PROBIT           BELARUS                        10          124    1589
24 months   ki1119695-PROBIT           BELARUS                        11          124    1589
24 months   ki1119695-PROBIT           BELARUS                        12          165    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            49     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            58     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3            53     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4            44     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5            49     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6            44     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7            31     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8            30     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             2     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            4     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11           20     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12           38     422
24 months   ki1148112-LCNI-5           MALAWI                         1            40     563
24 months   ki1148112-LCNI-5           MALAWI                         2            86     563
24 months   ki1148112-LCNI-5           MALAWI                         3            67     563
24 months   ki1148112-LCNI-5           MALAWI                         4            74     563
24 months   ki1148112-LCNI-5           MALAWI                         5            62     563
24 months   ki1148112-LCNI-5           MALAWI                         6            64     563
24 months   ki1148112-LCNI-5           MALAWI                         7            39     563
24 months   ki1148112-LCNI-5           MALAWI                         8            27     563
24 months   ki1148112-LCNI-5           MALAWI                         9            20     563
24 months   ki1148112-LCNI-5           MALAWI                         10           25     563
24 months   ki1148112-LCNI-5           MALAWI                         11           35     563
24 months   ki1148112-LCNI-5           MALAWI                         12           24     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           358    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           301    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           361    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           273    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           200    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           289    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           308    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           350    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           344    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          426    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11          490    4282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12          582    4282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            19    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2            89    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3           101    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4           226    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5           155    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6           111    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7           195    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8           126    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9           101    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10           70    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11           37    1249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12           19    1249


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
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/61d3e9db-3815-4e89-b30a-cefbd967b055/30d0794d-620e-4551-9600-9d663901bfa5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3141334   -1.8797936   -0.7484732
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2541080   -0.8429634    1.3511794
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3393920   -0.8252741    0.1464901
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3897578   -1.1099836    0.3304680
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2370253   -0.1369111    0.6109617
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4809488   -1.0370737    0.0751762
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4959340   -1.2499283    0.2580603
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1951361   -1.6134412   -0.7768311
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2651657   -0.3614511   -0.1688803
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6028516   -0.6836508   -0.5220523
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6002271   -0.9959260   -0.2045283
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5347252    0.0120124    1.0574379
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0199968   -1.4937611   -0.5462325
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0895072   -0.4468611    0.6258754
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.5082727    0.9930109    2.0235346
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           1.1553485    0.7408149    1.5698821
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8366391    0.0116273    1.6616508
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5383708   -1.0387979   -0.0379437
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0125205   -0.7574508    0.7324097
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2080959   -0.5315803    0.1153885
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1969265    0.0130116    0.3808415
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.4432253   -0.8501907   -0.0362600
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.2053200   -0.6164803    0.2058403
6 months    ki1114097-CMIN             PERU                           optimal              observed           1.0479878    0.7151500    1.3808256
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.8126378    0.1700167    1.4552590
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6061348    0.4761233    0.7361463
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3296020    0.2370488    0.4221553
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.8626426    0.5177906    1.2074947
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5222046   -0.6136352   -0.4307739
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.5587443   -0.7504781   -0.3670105
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1855466   -1.4698457   -0.9012475
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0710360    0.2572602    1.8848119
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9963175   -1.5659023   -0.4267327
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3537904   -0.7501283    0.0425474
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0203264   -0.3905982    0.3499454
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2662290   -0.0419731    0.5744312
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0153869   -0.4939753    0.4632016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5162415   -0.8977292   -0.1347538
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8023526   -1.1605381   -0.4441672
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0873680   -1.4725817   -0.7021543
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.5795565   -1.0546970   -0.1044159
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.6840881    0.2491767    1.1189995
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           1.0297963    0.7596084    1.2999842
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1113748   -0.4119814    0.1892318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0970540   -1.1957153   -0.9983927
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0280227   -1.2225627   -0.8334827


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
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5149267   -0.5408101   -0.4890433
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
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3048776    0.2787716    0.3309835
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5899579   -0.6174529   -0.5624628
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3688177   -0.4396618   -0.2979735
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.1442438   -0.2323415   -0.0561461
24 months   ki1114097-CMIN             PERU                           observed             observed           0.6477778    0.5676685    0.7278870
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2928515   -1.3253331   -1.2603698
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2294796   -1.2885986   -1.1703606


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3510628   -0.1863867    0.8885123
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1497718   -0.9063841    1.2059277
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7297213   -1.1951714   -0.2642712
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5147065   -1.2141198    0.1847068
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3106095   -0.6781837    0.0569647
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4246697   -0.1162633    0.9656027
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.5146491   -1.2327427    0.2034445
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0074095   -0.1474981    0.1623170
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2497610   -0.3424053   -0.1571168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1638650   -0.2393118   -0.0884182
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.4604311    0.0612207    0.8596416
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4369973   -0.0720847    0.9460794
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3165999   -0.1321680    0.7653678
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0215380   -0.4922652    0.5353413
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4538771   -0.9459756    0.0382214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6132750   -1.0179699   -0.2085802
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3195878   -1.1277008    0.4885252
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0356942   -0.4393647    0.5107530
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5864092   -1.3070869    0.1342685
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2308142   -0.5432053    0.0815769
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1159934   -0.2939592    0.0619725
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.3592119   -0.0290102    0.7474341
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.1635120   -0.2339664    0.5609903
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3758862   -0.7002771   -0.0514952
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.2557939   -0.3745970    0.8861849
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0251281   -0.1249506    0.0746943
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0247245   -0.1128295    0.0633806
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.4127141   -0.7510600   -0.0743683
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0677533   -0.1545198    0.0190132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1899266   -0.0030427    0.3828960
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3647211    0.0786896    0.6507526
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6244088   -1.4225853    0.1737677
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0440267   -0.5044610    0.5925145
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0226569   -0.4054782    0.3601644
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1402269   -0.2279953    0.5084490
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1604726   -0.1420410    0.4629863
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0654803   -0.3779475    0.5089081
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0409090   -0.4116500    0.3298320
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0565376   -0.2893390    0.4024143
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1757889   -0.1939316    0.5455094
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.4353127   -0.0330253    0.9036507
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0363103   -0.4631178    0.3904971
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2236362   -0.5338253    0.0865529
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0635240   -0.2309440    0.3579920
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1957975   -0.2897969   -0.1017981
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2014569   -0.3824318   -0.0204820
