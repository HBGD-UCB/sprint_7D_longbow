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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4            16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5            14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6            13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8            16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9            19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10           18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11           17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12           13     166
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
Birth       ki1119695-PROBIT           BELARUS                        1           854   13824
Birth       ki1119695-PROBIT           BELARUS                        2           786   13824
Birth       ki1119695-PROBIT           BELARUS                        3           961   13824
Birth       ki1119695-PROBIT           BELARUS                        4           955   13824
Birth       ki1119695-PROBIT           BELARUS                        5           948   13824
Birth       ki1119695-PROBIT           BELARUS                        6          1007   13824
Birth       ki1119695-PROBIT           BELARUS                        7          1276   13824
Birth       ki1119695-PROBIT           BELARUS                        8          1318   13824
Birth       ki1119695-PROBIT           BELARUS                        9          1313   13824
Birth       ki1119695-PROBIT           BELARUS                        10         1498   13824
Birth       ki1119695-PROBIT           BELARUS                        11         1392   13824
Birth       ki1119695-PROBIT           BELARUS                        12         1516   13824
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1          1450   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2          1279   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3          1554   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4          1152   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5           784   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6           822   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7           909   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8          1200   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9          1523   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10         1659   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11         1669   15709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12         1708   15709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2           110     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3           133     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4           137     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5           103     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6            75     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7            61     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8            31     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9            25     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            8     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0     683
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            85    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            81    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3            80    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4            75    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5            76    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6           102    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7           115    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8           152    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9           165    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10          148    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11          126    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12          129    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            61     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2            37     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4            26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5            29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6            31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7            16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9            12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10           26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11           44     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12           62     380
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
6 months    ki1119695-PROBIT           BELARUS                        1          1101   15757
6 months    ki1119695-PROBIT           BELARUS                        2           951   15757
6 months    ki1119695-PROBIT           BELARUS                        3          1114   15757
6 months    ki1119695-PROBIT           BELARUS                        4          1070   15757
6 months    ki1119695-PROBIT           BELARUS                        5          1096   15757
6 months    ki1119695-PROBIT           BELARUS                        6          1120   15757
6 months    ki1119695-PROBIT           BELARUS                        7          1366   15757
6 months    ki1119695-PROBIT           BELARUS                        8          1497   15757
6 months    ki1119695-PROBIT           BELARUS                        9          1481   15757
6 months    ki1119695-PROBIT           BELARUS                        10         1669   15757
6 months    ki1119695-PROBIT           BELARUS                        11         1589   15757
6 months    ki1119695-PROBIT           BELARUS                        12         1703   15757
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1          1360   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2          1186   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3          1421   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4          1190   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5          1148   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6          1156   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7          1238   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8          1467   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9          1563   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10         1684   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1701   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12         1670   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            53    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2           165    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3           430    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4           848    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5           586    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6           434    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7           836    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8           510    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9           431    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10          306    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11          157    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12           77    4833
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
24 months   ki1119695-PROBIT           BELARUS                        1           264    3971
24 months   ki1119695-PROBIT           BELARUS                        2           210    3971
24 months   ki1119695-PROBIT           BELARUS                        3           320    3971
24 months   ki1119695-PROBIT           BELARUS                        4           322    3971
24 months   ki1119695-PROBIT           BELARUS                        5           301    3971
24 months   ki1119695-PROBIT           BELARUS                        6           265    3971
24 months   ki1119695-PROBIT           BELARUS                        7           364    3971
24 months   ki1119695-PROBIT           BELARUS                        8           346    3971
24 months   ki1119695-PROBIT           BELARUS                        9           375    3971
24 months   ki1119695-PROBIT           BELARUS                        10          390    3971
24 months   ki1119695-PROBIT           BELARUS                        11          386    3971
24 months   ki1119695-PROBIT           BELARUS                        12          428    3971
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           703    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           610    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           726    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           536    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           396    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           563    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           644    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           648    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           734    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          879    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11          967    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12         1197    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            48    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           321    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3           400    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4           796    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5           559    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6           423    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7           780    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8           472    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9           444    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10          276    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11          145    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12           71    4735


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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/673f9dd6-6929-4792-90e5-6e99058d0956/5a516f3b-cb09-40ae-b7cb-0de9cd064369/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3474144   -1.8315694   -0.8632594
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3214293   -0.6056284    1.2484871
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3508073   -0.8464455    0.1448309
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4488511   -1.0511453    0.1534431
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.2348133   -0.1383652    0.6079918
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2987283   -0.8345799    0.2371232
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2223829   -0.8801439    0.4353781
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1456334   -0.4771630    0.1858961
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0144446   -1.3016168   -0.7272724
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2648428   -0.3611599   -0.1685258
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5912298   -0.6492152   -0.5332444
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1975923   -0.8262862    0.4311015
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4774277   -0.1648269    1.1196824
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8398586   -1.1990802   -0.4806369
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1347031   -0.3622170    0.6316231
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.5095994    0.9907363    2.0284624
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           1.1472081    0.7564235    1.5379928
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0528096    0.3735823    1.7320369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5256912   -1.0769363    0.0255540
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0304426   -0.7107114    0.7715967
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3378347   -0.6848812    0.0092117
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1614896   -0.5246551    0.2016760
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2314962    0.0393656    0.4236269
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.2051344   -0.6154072    0.2051383
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.0321065   -0.3863935    0.4506065
6 months    ki1114097-CMIN             PERU                           optimal              observed           0.9972838    0.6602220    1.3343456
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.9508024    0.2301098    1.6714950
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5278038    0.4357453    0.6198623
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3396554    0.2448632    0.4344476
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.7658019    0.4347455    1.0968583
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4955660   -0.5675411   -0.4235910
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4207723   -0.5619842   -0.2795603
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1207598   -1.3884797   -0.8530398
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8460073    0.1633813    1.5286334
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0613882   -1.5145243   -0.6082522
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4052450   -0.6764044   -0.1340856
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3069714   -0.8888113    0.2748685
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4911131    0.0079409    0.9742854
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0685296   -0.4273494    0.2902902
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5606777   -0.9474894   -0.1738661
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7898558   -1.1355894   -0.4441222
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9761660   -1.3043069   -0.6480251
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.4745058   -0.9518084    0.0027968
24 months   ki1114097-CMIN             PERU                           optimal              observed           0.6612689    0.1164328    1.2061050
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5204585    0.3650350    0.6758820
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0357373   -0.4565996    0.3851250
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1221260   -1.1927531   -1.0514988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0467403   -1.1528414   -0.9406392


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
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5149267   -0.5408101   -0.4890433
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
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0840134   -0.1945572    0.0265305
6 months    ki1114097-CMIN             GUINEA-BISSAU                  observed             observed          -0.0418080   -0.1199942    0.0363782
6 months    ki1114097-CMIN             PERU                           observed             observed           0.6721017    0.5829735    0.7612299
6 months    ki1114097-CONTENT          PERU                           observed             observed           1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3048776    0.2787716    0.3309835
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4499285    0.3788279    0.5210291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3898055   -0.4270507   -0.3525603
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0478508   -0.1297321    0.0340305
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2231088   -1.2549632   -1.1912543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3843438   -0.0787814    0.8474691
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0824504   -0.8018237    0.9667246
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7183060   -1.1931392   -0.2434728
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4556132   -1.0398351    0.1286087
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3083975   -0.6753656    0.0585705
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2424492   -0.2762888    0.7611873
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.7882001   -1.4162140   -0.1601863
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1241256   -0.4961231    0.2478719
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1319023   -0.3080879    0.0442832
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2500839   -0.3427583   -0.1574094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1328698   -0.1865718   -0.0791677
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0577963   -0.5593199    0.6749126
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4942948   -0.1303215    1.1189110
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1364617   -0.2116031    0.4845264
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0236579   -0.4979473    0.4506315
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4552038   -0.9508127    0.0404051
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6051347   -0.9872279   -0.2230415
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5357583   -1.2001256    0.1286090
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0230146   -0.4954698    0.5414989
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.6293724   -1.3463775    0.0876327
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3278737   -0.5557358   -0.1000116
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2774206   -0.6255721    0.0707310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1505631   -0.3358968    0.0347707
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1211211   -0.2669808    0.5092229
6 months    ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          -0.0739145   -0.4796122    0.3317831
6 months    ki1114097-CMIN             PERU                           optimal              observed          -0.3251821   -0.6535866    0.0032223
6 months    ki1114097-CONTENT          PERU                           optimal              observed           0.1176294   -0.5922033    0.8274620
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0511595   -0.0268244    0.1291434
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0347778   -0.1247708    0.0552152
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3158734   -0.6414727    0.0097259
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0979501   -0.1664661   -0.0294341
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0309668   -0.1100516    0.1719851
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2999343    0.0260869    0.5737817
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3993801   -1.0696832    0.2709230
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1090975   -0.3290388    0.5472338
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0287976   -0.2437236    0.3013188
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4268719   -0.1316784    0.9854223
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0644115   -0.5248594    0.3960365
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1186230   -0.2223948    0.4596409
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0035272   -0.3717180    0.3787723
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0440408   -0.2891180    0.3771996
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0645869   -0.2541287    0.3833026
24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed           0.3302620   -0.1403639    0.8008879
24 months   ki1114097-CMIN             PERU                           optimal              observed          -0.0134911   -0.5432433    0.5162610
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1658850    0.0467375    0.2850325
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0121135   -0.4226586    0.3984316
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1756771   -0.2440712   -0.1072831
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1763685   -0.2797664   -0.0729706
