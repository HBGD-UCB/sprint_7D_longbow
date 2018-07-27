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
      W: []
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_len

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

agecat         studyid                    country                        month    n_cell       n
-------------  -------------------------  -----------------------------  ------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1            19     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2            20     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3            26     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4            21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5            21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6             8     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7            20     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8            24     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9            22     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10           21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11           14     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12           28     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1            59     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2            52     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3            52     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4            48     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5            44     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6            41     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7            43     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8            40     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9            30     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10           55     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11           52     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12           50     566
0-3 months     ki1114097-CMIN             BANGLADESH                     1             5      43
0-3 months     ki1114097-CMIN             BANGLADESH                     2             4      43
0-3 months     ki1114097-CMIN             BANGLADESH                     3             3      43
0-3 months     ki1114097-CMIN             BANGLADESH                     4             4      43
0-3 months     ki1114097-CMIN             BANGLADESH                     5             6      43
0-3 months     ki1114097-CMIN             BANGLADESH                     6             2      43
0-3 months     ki1114097-CMIN             BANGLADESH                     7             7      43
0-3 months     ki1114097-CMIN             BANGLADESH                     8             4      43
0-3 months     ki1114097-CMIN             BANGLADESH                     9             3      43
0-3 months     ki1114097-CMIN             BANGLADESH                     11            2      43
0-3 months     ki1114097-CMIN             BANGLADESH                     12            3      43
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          1937   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2          1605   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3          1838   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4          1335   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5           953   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6           928   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7          1164   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8          1477   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9          1980   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10         2149   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11         2258   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12         2421   20045
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2           303    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3           326    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4           398    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5           193    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6            57    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7           134    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8           179    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9           135    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10           82    1807
0-3 months     ki1119695-PROBIT           BELARUS                        1           781   12745
0-3 months     ki1119695-PROBIT           BELARUS                        2           739   12745
0-3 months     ki1119695-PROBIT           BELARUS                        3           904   12745
0-3 months     ki1119695-PROBIT           BELARUS                        4           898   12745
0-3 months     ki1119695-PROBIT           BELARUS                        5           886   12745
0-3 months     ki1119695-PROBIT           BELARUS                        6           928   12745
0-3 months     ki1119695-PROBIT           BELARUS                        7          1199   12745
0-3 months     ki1119695-PROBIT           BELARUS                        8          1233   12745
0-3 months     ki1119695-PROBIT           BELARUS                        9          1162   12745
0-3 months     ki1119695-PROBIT           BELARUS                        10         1362   12745
0-3 months     ki1119695-PROBIT           BELARUS                        11         1264   12745
0-3 months     ki1119695-PROBIT           BELARUS                        12         1389   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1             9     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2            21     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3            15     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4             8     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5            17     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6             6     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7            15     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8            17     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9            27     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10           18     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11           15     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12           12     180
0-3 months     ki1114097-CMIN             BRAZIL                         1             6      81
0-3 months     ki1114097-CMIN             BRAZIL                         2             6      81
0-3 months     ki1114097-CMIN             BRAZIL                         3            10      81
0-3 months     ki1114097-CMIN             BRAZIL                         4             6      81
0-3 months     ki1114097-CMIN             BRAZIL                         5             4      81
0-3 months     ki1114097-CMIN             BRAZIL                         6             5      81
0-3 months     ki1114097-CMIN             BRAZIL                         7             3      81
0-3 months     ki1114097-CMIN             BRAZIL                         8             7      81
0-3 months     ki1114097-CMIN             BRAZIL                         9             4      81
0-3 months     ki1114097-CMIN             BRAZIL                         10           15      81
0-3 months     ki1114097-CMIN             BRAZIL                         11           10      81
0-3 months     ki1114097-CMIN             BRAZIL                         12            5      81
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  2             2      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  3             2      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  5             1      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  6             4      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  7             2      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  8             1      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  9             8      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  11            1      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  12            1      22
0-3 months     ki0047075b-MAL-ED          INDIA                          1            16     201
0-3 months     ki0047075b-MAL-ED          INDIA                          2            16     201
0-3 months     ki0047075b-MAL-ED          INDIA                          3            19     201
0-3 months     ki0047075b-MAL-ED          INDIA                          4            13     201
0-3 months     ki0047075b-MAL-ED          INDIA                          5             7     201
0-3 months     ki0047075b-MAL-ED          INDIA                          6            15     201
0-3 months     ki0047075b-MAL-ED          INDIA                          7            22     201
0-3 months     ki0047075b-MAL-ED          INDIA                          8            17     201
0-3 months     ki0047075b-MAL-ED          INDIA                          9            17     201
0-3 months     ki0047075b-MAL-ED          INDIA                          10           24     201
0-3 months     ki0047075b-MAL-ED          INDIA                          11           20     201
0-3 months     ki0047075b-MAL-ED          INDIA                          12           15     201
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             6      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2             1      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3             9      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4            10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          5            10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          6             9      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          7             7      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          8             4      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          9             8      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          10           10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          11            9      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          12            4      87
0-3 months     ki1000108-IRC              INDIA                          1            32     377
0-3 months     ki1000108-IRC              INDIA                          2            25     377
0-3 months     ki1000108-IRC              INDIA                          3            26     377
0-3 months     ki1000108-IRC              INDIA                          4            22     377
0-3 months     ki1000108-IRC              INDIA                          5            20     377
0-3 months     ki1000108-IRC              INDIA                          6            34     377
0-3 months     ki1000108-IRC              INDIA                          7            35     377
0-3 months     ki1000108-IRC              INDIA                          8            38     377
0-3 months     ki1000108-IRC              INDIA                          9            24     377
0-3 months     ki1000108-IRC              INDIA                          10           36     377
0-3 months     ki1000108-IRC              INDIA                          11           38     377
0-3 months     ki1000108-IRC              INDIA                          12           47     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            86    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            65    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3            67    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4            64    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5            67    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6            86    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7           100    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8           135    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9           145    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10          129    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11          112    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12          112    1168
0-3 months     ki0047075b-MAL-ED          NEPAL                          1            17     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          2            14     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          3            13     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          4            16     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          5            18     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          6            13     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          7            15     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          8            15     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          9            10     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          10           16     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          11           18     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          12           10     175
0-3 months     ki1000109-EE               PAKISTAN                       1            73     297
0-3 months     ki1000109-EE               PAKISTAN                       2            57     297
0-3 months     ki1000109-EE               PAKISTAN                       3            28     297
0-3 months     ki1000109-EE               PAKISTAN                       4            13     297
0-3 months     ki1000109-EE               PAKISTAN                       10            4     297
0-3 months     ki1000109-EE               PAKISTAN                       11           52     297
0-3 months     ki1000109-EE               PAKISTAN                       12           70     297
0-3 months     ki1000109-ResPak           PAKISTAN                       1             4      78
0-3 months     ki1000109-ResPak           PAKISTAN                       2             1      78
0-3 months     ki1000109-ResPak           PAKISTAN                       3             3      78
0-3 months     ki1000109-ResPak           PAKISTAN                       4            11      78
0-3 months     ki1000109-ResPak           PAKISTAN                       5            11      78
0-3 months     ki1000109-ResPak           PAKISTAN                       6            21      78
0-3 months     ki1000109-ResPak           PAKISTAN                       7             7      78
0-3 months     ki1000109-ResPak           PAKISTAN                       8             8      78
0-3 months     ki1000109-ResPak           PAKISTAN                       9             8      78
0-3 months     ki1000109-ResPak           PAKISTAN                       10            1      78
0-3 months     ki1000109-ResPak           PAKISTAN                       11            3      78
0-3 months     ki0047075b-MAL-ED          PERU                           1            38     271
0-3 months     ki0047075b-MAL-ED          PERU                           2            23     271
0-3 months     ki0047075b-MAL-ED          PERU                           3            21     271
0-3 months     ki0047075b-MAL-ED          PERU                           4            20     271
0-3 months     ki0047075b-MAL-ED          PERU                           5            24     271
0-3 months     ki0047075b-MAL-ED          PERU                           6            17     271
0-3 months     ki0047075b-MAL-ED          PERU                           7            22     271
0-3 months     ki0047075b-MAL-ED          PERU                           8            16     271
0-3 months     ki0047075b-MAL-ED          PERU                           9            22     271
0-3 months     ki0047075b-MAL-ED          PERU                           10           20     271
0-3 months     ki0047075b-MAL-ED          PERU                           11           29     271
0-3 months     ki0047075b-MAL-ED          PERU                           12           19     271
0-3 months     ki1114097-CMIN             PERU                           1             4      93
0-3 months     ki1114097-CMIN             PERU                           2             6      93
0-3 months     ki1114097-CMIN             PERU                           3             8      93
0-3 months     ki1114097-CMIN             PERU                           4            11      93
0-3 months     ki1114097-CMIN             PERU                           5            13      93
0-3 months     ki1114097-CMIN             PERU                           6             9      93
0-3 months     ki1114097-CMIN             PERU                           7             9      93
0-3 months     ki1114097-CMIN             PERU                           8             8      93
0-3 months     ki1114097-CMIN             PERU                           9             7      93
0-3 months     ki1114097-CMIN             PERU                           10            5      93
0-3 months     ki1114097-CMIN             PERU                           11            8      93
0-3 months     ki1114097-CMIN             PERU                           12            5      93
0-3 months     ki1114097-CONTENT          PERU                           2             2      29
0-3 months     ki1114097-CONTENT          PERU                           3             4      29
0-3 months     ki1114097-CONTENT          PERU                           4             5      29
0-3 months     ki1114097-CONTENT          PERU                           5             3      29
0-3 months     ki1114097-CONTENT          PERU                           6             3      29
0-3 months     ki1114097-CONTENT          PERU                           7             4      29
0-3 months     ki1114097-CONTENT          PERU                           8             5      29
0-3 months     ki1114097-CONTENT          PERU                           10            1      29
0-3 months     ki1114097-CONTENT          PERU                           12            2      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1            26     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2            18     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3            14     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5            13     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6            15     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7            22     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9            20     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10           24     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11           24     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12           33     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            20     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            27     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            18     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             8     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            17     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            16     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            22     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            11     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            21     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           19     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           25     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           25     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           773    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           559    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3           685    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4           609    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5           584    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6           632    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7           680    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8           746    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9           713    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10          533    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11          598    7844
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12          732    7844
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1            16     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2            19     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3            22     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4            21     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5            20     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6             7     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7            19     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8            22     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9            22     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10           21     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11           15     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12           27     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1            48     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2            48     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3            47     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4            43     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5            40     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6            38     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7            43     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8            37     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9            30     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10           50     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11           49     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12           50     523
3-6 months     ki1114097-CMIN             BANGLADESH                     1            17     185
3-6 months     ki1114097-CMIN             BANGLADESH                     2            18     185
3-6 months     ki1114097-CMIN             BANGLADESH                     3            14     185
3-6 months     ki1114097-CMIN             BANGLADESH                     4            16     185
3-6 months     ki1114097-CMIN             BANGLADESH                     5            14     185
3-6 months     ki1114097-CMIN             BANGLADESH                     6             8     185
3-6 months     ki1114097-CMIN             BANGLADESH                     7            13     185
3-6 months     ki1114097-CMIN             BANGLADESH                     8            11     185
3-6 months     ki1114097-CMIN             BANGLADESH                     9            13     185
3-6 months     ki1114097-CMIN             BANGLADESH                     10           21     185
3-6 months     ki1114097-CMIN             BANGLADESH                     11           22     185
3-6 months     ki1114097-CMIN             BANGLADESH                     12           18     185
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1          1051   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           964   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3           983   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4           881   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5           762   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6           820   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7           964   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8          1069   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9          1169   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10         1296   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11         1352   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12         1269   12580
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            14    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2            18    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3           223    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4           499    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5           223    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6            66    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7           207    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8           198    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9           156    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10          147    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     11           62    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     12           27    1840
3-6 months     ki1119695-PROBIT           BELARUS                        1           862   13309
3-6 months     ki1119695-PROBIT           BELARUS                        2           812   13309
3-6 months     ki1119695-PROBIT           BELARUS                        3           945   13309
3-6 months     ki1119695-PROBIT           BELARUS                        4           935   13309
3-6 months     ki1119695-PROBIT           BELARUS                        5           955   13309
3-6 months     ki1119695-PROBIT           BELARUS                        6           908   13309
3-6 months     ki1119695-PROBIT           BELARUS                        7          1234   13309
3-6 months     ki1119695-PROBIT           BELARUS                        8          1234   13309
3-6 months     ki1119695-PROBIT           BELARUS                        9          1232   13309
3-6 months     ki1119695-PROBIT           BELARUS                        10         1397   13309
3-6 months     ki1119695-PROBIT           BELARUS                        11         1356   13309
3-6 months     ki1119695-PROBIT           BELARUS                        12         1439   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1            13     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2            24     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3            17     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4            11     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5            21     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6             7     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7            17     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8            16     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9            29     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10           20     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11           18     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12           15     208
3-6 months     ki1114097-CMIN             BRAZIL                         1             6      81
3-6 months     ki1114097-CMIN             BRAZIL                         2             6      81
3-6 months     ki1114097-CMIN             BRAZIL                         3             9      81
3-6 months     ki1114097-CMIN             BRAZIL                         4             6      81
3-6 months     ki1114097-CMIN             BRAZIL                         5             3      81
3-6 months     ki1114097-CMIN             BRAZIL                         6             6      81
3-6 months     ki1114097-CMIN             BRAZIL                         7             3      81
3-6 months     ki1114097-CMIN             BRAZIL                         8             8      81
3-6 months     ki1114097-CMIN             BRAZIL                         9             4      81
3-6 months     ki1114097-CMIN             BRAZIL                         10           14      81
3-6 months     ki1114097-CMIN             BRAZIL                         11           10      81
3-6 months     ki1114097-CMIN             BRAZIL                         12            6      81
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1            10     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  2             5     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  3             5     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  4            17     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  5             9     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  6            15     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  7            11     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  8             3     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  9            24     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  10           10     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  11           11     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  12           13     133
3-6 months     ki0047075b-MAL-ED          INDIA                          1            19     229
3-6 months     ki0047075b-MAL-ED          INDIA                          2            17     229
3-6 months     ki0047075b-MAL-ED          INDIA                          3            21     229
3-6 months     ki0047075b-MAL-ED          INDIA                          4            14     229
3-6 months     ki0047075b-MAL-ED          INDIA                          5             8     229
3-6 months     ki0047075b-MAL-ED          INDIA                          6            17     229
3-6 months     ki0047075b-MAL-ED          INDIA                          7            21     229
3-6 months     ki0047075b-MAL-ED          INDIA                          8            21     229
3-6 months     ki0047075b-MAL-ED          INDIA                          9            20     229
3-6 months     ki0047075b-MAL-ED          INDIA                          10           27     229
3-6 months     ki0047075b-MAL-ED          INDIA                          11           25     229
3-6 months     ki0047075b-MAL-ED          INDIA                          12           19     229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1            26     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2            12     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3            29     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4            37     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          5            30     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          6            31     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          7            34     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          8            12     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          9            16     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          10           25     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          11           35     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          12           20     307
3-6 months     ki1000108-IRC              INDIA                          1            34     397
3-6 months     ki1000108-IRC              INDIA                          2            27     397
3-6 months     ki1000108-IRC              INDIA                          3            28     397
3-6 months     ki1000108-IRC              INDIA                          4            22     397
3-6 months     ki1000108-IRC              INDIA                          5            20     397
3-6 months     ki1000108-IRC              INDIA                          6            37     397
3-6 months     ki1000108-IRC              INDIA                          7            36     397
3-6 months     ki1000108-IRC              INDIA                          8            44     397
3-6 months     ki1000108-IRC              INDIA                          9            26     397
3-6 months     ki1000108-IRC              INDIA                          10           35     397
3-6 months     ki1000108-IRC              INDIA                          11           39     397
3-6 months     ki1000108-IRC              INDIA                          12           49     397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            76    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            62    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3            66    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4            69    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5            66    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6            83    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7            90    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8           131    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9           137    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10          127    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11          107    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12          110    1124
3-6 months     ki0047075b-MAL-ED          NEPAL                          1            20     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2            19     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3            16     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          4            20     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          5            19     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          6            21     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          7            17     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          8            24     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          9            14     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          10           22     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          11           24     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          12           17     233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          6            87     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          7           187     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          8           184     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          9            13     471
3-6 months     ki1000109-EE               PAKISTAN                       1            80     331
3-6 months     ki1000109-EE               PAKISTAN                       2            58     331
3-6 months     ki1000109-EE               PAKISTAN                       3            32     331
3-6 months     ki1000109-EE               PAKISTAN                       4            15     331
3-6 months     ki1000109-EE               PAKISTAN                       10            4     331
3-6 months     ki1000109-EE               PAKISTAN                       11           67     331
3-6 months     ki1000109-EE               PAKISTAN                       12           75     331
3-6 months     ki1000109-ResPak           PAKISTAN                       1             6     156
3-6 months     ki1000109-ResPak           PAKISTAN                       2             7     156
3-6 months     ki1000109-ResPak           PAKISTAN                       3            16     156
3-6 months     ki1000109-ResPak           PAKISTAN                       4            17     156
3-6 months     ki1000109-ResPak           PAKISTAN                       5            15     156
3-6 months     ki1000109-ResPak           PAKISTAN                       6            39     156
3-6 months     ki1000109-ResPak           PAKISTAN                       7            16     156
3-6 months     ki1000109-ResPak           PAKISTAN                       8            17     156
3-6 months     ki1000109-ResPak           PAKISTAN                       9            16     156
3-6 months     ki1000109-ResPak           PAKISTAN                       10            5     156
3-6 months     ki1000109-ResPak           PAKISTAN                       12            2     156
3-6 months     ki0047075b-MAL-ED          PERU                           1            36     267
3-6 months     ki0047075b-MAL-ED          PERU                           2            21     267
3-6 months     ki0047075b-MAL-ED          PERU                           3            21     267
3-6 months     ki0047075b-MAL-ED          PERU                           4            20     267
3-6 months     ki0047075b-MAL-ED          PERU                           5            23     267
3-6 months     ki0047075b-MAL-ED          PERU                           6            18     267
3-6 months     ki0047075b-MAL-ED          PERU                           7            22     267
3-6 months     ki0047075b-MAL-ED          PERU                           8            15     267
3-6 months     ki0047075b-MAL-ED          PERU                           9            23     267
3-6 months     ki0047075b-MAL-ED          PERU                           10           18     267
3-6 months     ki0047075b-MAL-ED          PERU                           11           31     267
3-6 months     ki0047075b-MAL-ED          PERU                           12           19     267
3-6 months     ki1114097-CMIN             PERU                           1            27     407
3-6 months     ki1114097-CMIN             PERU                           2            37     407
3-6 months     ki1114097-CMIN             PERU                           3            48     407
3-6 months     ki1114097-CMIN             PERU                           4            48     407
3-6 months     ki1114097-CMIN             PERU                           5            29     407
3-6 months     ki1114097-CMIN             PERU                           6            37     407
3-6 months     ki1114097-CMIN             PERU                           7            26     407
3-6 months     ki1114097-CMIN             PERU                           8            31     407
3-6 months     ki1114097-CMIN             PERU                           9            29     407
3-6 months     ki1114097-CMIN             PERU                           10           16     407
3-6 months     ki1114097-CMIN             PERU                           11           46     407
3-6 months     ki1114097-CMIN             PERU                           12           33     407
3-6 months     ki1114097-CONTENT          PERU                           1             9     214
3-6 months     ki1114097-CONTENT          PERU                           2            15     214
3-6 months     ki1114097-CONTENT          PERU                           3            30     214
3-6 months     ki1114097-CONTENT          PERU                           4            12     214
3-6 months     ki1114097-CONTENT          PERU                           5            25     214
3-6 months     ki1114097-CONTENT          PERU                           6            14     214
3-6 months     ki1114097-CONTENT          PERU                           7            24     214
3-6 months     ki1114097-CONTENT          PERU                           8            18     214
3-6 months     ki1114097-CONTENT          PERU                           9            20     214
3-6 months     ki1114097-CONTENT          PERU                           10           24     214
3-6 months     ki1114097-CONTENT          PERU                           11           18     214
3-6 months     ki1114097-CONTENT          PERU                           12            5     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1            37     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2            21     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3            13     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5            11     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6            14     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7            24     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9            18     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10           26     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11           23     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12           34     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            22     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            28     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            17     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             8     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            15     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            20     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            23     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            12     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            20     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           20     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           26     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           28     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1           114    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2           120    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3           120    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4           118    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5           124    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6           116    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           152    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           167    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           144    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          171    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          161    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12          153    1660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           580    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           402    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3           515    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4           469    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5           430    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6           470    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7           470    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8           556    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9           558    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10          396    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11          468    5876
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12          562    5876
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1            15     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2            18     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3            20     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4            21     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5            19     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6             6     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7            19     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8            21     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9            21     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10           21     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11           12     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12           27     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1            44     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2            41     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3            45     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4            39     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5            36     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6            35     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7            41     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8            33     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9            24     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10           47     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11           48     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12           49     482
6-12 months    ki1114097-CMIN             BANGLADESH                     1            16     164
6-12 months    ki1114097-CMIN             BANGLADESH                     2            15     164
6-12 months    ki1114097-CMIN             BANGLADESH                     3             8     164
6-12 months    ki1114097-CMIN             BANGLADESH                     4            19     164
6-12 months    ki1114097-CMIN             BANGLADESH                     5            13     164
6-12 months    ki1114097-CMIN             BANGLADESH                     6             6     164
6-12 months    ki1114097-CMIN             BANGLADESH                     7             9     164
6-12 months    ki1114097-CMIN             BANGLADESH                     8             9     164
6-12 months    ki1114097-CMIN             BANGLADESH                     9            15     164
6-12 months    ki1114097-CMIN             BANGLADESH                     10           19     164
6-12 months    ki1114097-CMIN             BANGLADESH                     11           18     164
6-12 months    ki1114097-CMIN             BANGLADESH                     12           17     164
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           829    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           823    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3           838    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4           786    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5           698    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6           686    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7           701    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8           734    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9           798    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10          975    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11         1010    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12          961    9839
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            26    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2            20    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3           238    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4           568    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5           461    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6           319    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7           535    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8           358    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9           276    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10          209    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     11          105    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     12           45    3160
6-12 months    ki1119695-PROBIT           BELARUS                        1           837   12896
6-12 months    ki1119695-PROBIT           BELARUS                        2           779   12896
6-12 months    ki1119695-PROBIT           BELARUS                        3           875   12896
6-12 months    ki1119695-PROBIT           BELARUS                        4           897   12896
6-12 months    ki1119695-PROBIT           BELARUS                        5           938   12896
6-12 months    ki1119695-PROBIT           BELARUS                        6           873   12896
6-12 months    ki1119695-PROBIT           BELARUS                        7          1184   12896
6-12 months    ki1119695-PROBIT           BELARUS                        8          1200   12896
6-12 months    ki1119695-PROBIT           BELARUS                        9          1217   12896
6-12 months    ki1119695-PROBIT           BELARUS                        10         1375   12896
6-12 months    ki1119695-PROBIT           BELARUS                        11         1332   12896
6-12 months    ki1119695-PROBIT           BELARUS                        12         1389   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1            13     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2            22     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3            17     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4            10     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5            20     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6             6     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7            17     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8            13     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9            27     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10           17     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11           18     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12           14     194
6-12 months    ki1114097-CMIN             BRAZIL                         1             9      93
6-12 months    ki1114097-CMIN             BRAZIL                         2             5      93
6-12 months    ki1114097-CMIN             BRAZIL                         3            10      93
6-12 months    ki1114097-CMIN             BRAZIL                         4             9      93
6-12 months    ki1114097-CMIN             BRAZIL                         5             4      93
6-12 months    ki1114097-CMIN             BRAZIL                         6             6      93
6-12 months    ki1114097-CMIN             BRAZIL                         7             4      93
6-12 months    ki1114097-CMIN             BRAZIL                         8            10      93
6-12 months    ki1114097-CMIN             BRAZIL                         9             7      93
6-12 months    ki1114097-CMIN             BRAZIL                         10           12      93
6-12 months    ki1114097-CMIN             BRAZIL                         11            9      93
6-12 months    ki1114097-CMIN             BRAZIL                         12            8      93
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1             8     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2            15     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3            15     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4            12     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5            17     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6            28     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7            17     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8            13     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9            20     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10           13     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11           16     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12            7     181
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1             6     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2            11     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3            13     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4            21     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5            30     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6            13     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7             7     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8            11     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9            24     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10           17     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11           10     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12           13     176
6-12 months    ki0047075b-MAL-ED          INDIA                          1            19     224
6-12 months    ki0047075b-MAL-ED          INDIA                          2            17     224
6-12 months    ki0047075b-MAL-ED          INDIA                          3            18     224
6-12 months    ki0047075b-MAL-ED          INDIA                          4            14     224
6-12 months    ki0047075b-MAL-ED          INDIA                          5             8     224
6-12 months    ki0047075b-MAL-ED          INDIA                          6            18     224
6-12 months    ki0047075b-MAL-ED          INDIA                          7            21     224
6-12 months    ki0047075b-MAL-ED          INDIA                          8            21     224
6-12 months    ki0047075b-MAL-ED          INDIA                          9            18     224
6-12 months    ki0047075b-MAL-ED          INDIA                          10           27     224
6-12 months    ki0047075b-MAL-ED          INDIA                          11           24     224
6-12 months    ki0047075b-MAL-ED          INDIA                          12           19     224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            29     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2            14     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3            27     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4            35     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          5            31     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          6            33     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          7            34     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          8            16     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          9            17     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          10           26     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          11           39     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          12           22     323
6-12 months    ki1000108-IRC              INDIA                          1            35     400
6-12 months    ki1000108-IRC              INDIA                          2            27     400
6-12 months    ki1000108-IRC              INDIA                          3            29     400
6-12 months    ki1000108-IRC              INDIA                          4            17     400
6-12 months    ki1000108-IRC              INDIA                          5            20     400
6-12 months    ki1000108-IRC              INDIA                          6            37     400
6-12 months    ki1000108-IRC              INDIA                          7            35     400
6-12 months    ki1000108-IRC              INDIA                          8            45     400
6-12 months    ki1000108-IRC              INDIA                          9            27     400
6-12 months    ki1000108-IRC              INDIA                          10           36     400
6-12 months    ki1000108-IRC              INDIA                          11           41     400
6-12 months    ki1000108-IRC              INDIA                          12           51     400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            71    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            63    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3            64    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4            69    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5            70    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6            83    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7            98    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8           124    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9           141    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10          133    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11          102    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12          119    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            52     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2            32     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3            28     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          4            26     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          5            25     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          6            27     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          7            14     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          9            10     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          10           23     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          11           41     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          12           54     332
6-12 months    ki1148112-LCNI-5           MALAWI                         1            33     434
6-12 months    ki1148112-LCNI-5           MALAWI                         2            55     434
6-12 months    ki1148112-LCNI-5           MALAWI                         3            39     434
6-12 months    ki1148112-LCNI-5           MALAWI                         4            45     434
6-12 months    ki1148112-LCNI-5           MALAWI                         5            58     434
6-12 months    ki1148112-LCNI-5           MALAWI                         6            50     434
6-12 months    ki1148112-LCNI-5           MALAWI                         7            36     434
6-12 months    ki1148112-LCNI-5           MALAWI                         8            33     434
6-12 months    ki1148112-LCNI-5           MALAWI                         9            16     434
6-12 months    ki1148112-LCNI-5           MALAWI                         10           19     434
6-12 months    ki1148112-LCNI-5           MALAWI                         11           33     434
6-12 months    ki1148112-LCNI-5           MALAWI                         12           17     434
6-12 months    ki0047075b-MAL-ED          NEPAL                          1            20     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          2            17     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          3            16     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          4            20     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          5            18     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          6            21     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          7            18     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          8            24     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          9            13     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          10           21     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          11           24     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          12           18     230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          6            89     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          7           187     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          8           184     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          9            14     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          10            1     475
6-12 months    ki1000109-EE               PAKISTAN                       3             1       4
6-12 months    ki1000109-EE               PAKISTAN                       11            3       4
6-12 months    ki1000109-ResPak           PAKISTAN                       1             4     138
6-12 months    ki1000109-ResPak           PAKISTAN                       2             5     138
6-12 months    ki1000109-ResPak           PAKISTAN                       3            10     138
6-12 months    ki1000109-ResPak           PAKISTAN                       4            14     138
6-12 months    ki1000109-ResPak           PAKISTAN                       5            16     138
6-12 months    ki1000109-ResPak           PAKISTAN                       6            37     138
6-12 months    ki1000109-ResPak           PAKISTAN                       7            16     138
6-12 months    ki1000109-ResPak           PAKISTAN                       8            16     138
6-12 months    ki1000109-ResPak           PAKISTAN                       9            16     138
6-12 months    ki1000109-ResPak           PAKISTAN                       10            3     138
6-12 months    ki1000109-ResPak           PAKISTAN                       12            1     138
6-12 months    ki0047075b-MAL-ED          PERU                           1            31     237
6-12 months    ki0047075b-MAL-ED          PERU                           2            19     237
6-12 months    ki0047075b-MAL-ED          PERU                           3            18     237
6-12 months    ki0047075b-MAL-ED          PERU                           4            16     237
6-12 months    ki0047075b-MAL-ED          PERU                           5            19     237
6-12 months    ki0047075b-MAL-ED          PERU                           6            17     237
6-12 months    ki0047075b-MAL-ED          PERU                           7            20     237
6-12 months    ki0047075b-MAL-ED          PERU                           8            14     237
6-12 months    ki0047075b-MAL-ED          PERU                           9            22     237
6-12 months    ki0047075b-MAL-ED          PERU                           10           16     237
6-12 months    ki0047075b-MAL-ED          PERU                           11           26     237
6-12 months    ki0047075b-MAL-ED          PERU                           12           19     237
6-12 months    ki1114097-CMIN             PERU                           1            33     360
6-12 months    ki1114097-CMIN             PERU                           2            27     360
6-12 months    ki1114097-CMIN             PERU                           3            39     360
6-12 months    ki1114097-CMIN             PERU                           4            44     360
6-12 months    ki1114097-CMIN             PERU                           5            28     360
6-12 months    ki1114097-CMIN             PERU                           6            31     360
6-12 months    ki1114097-CMIN             PERU                           7            25     360
6-12 months    ki1114097-CMIN             PERU                           8            22     360
6-12 months    ki1114097-CMIN             PERU                           9            23     360
6-12 months    ki1114097-CMIN             PERU                           10           22     360
6-12 months    ki1114097-CMIN             PERU                           11           44     360
6-12 months    ki1114097-CMIN             PERU                           12           22     360
6-12 months    ki1114097-CONTENT          PERU                           1             9     213
6-12 months    ki1114097-CONTENT          PERU                           2            15     213
6-12 months    ki1114097-CONTENT          PERU                           3            30     213
6-12 months    ki1114097-CONTENT          PERU                           4            12     213
6-12 months    ki1114097-CONTENT          PERU                           5            25     213
6-12 months    ki1114097-CONTENT          PERU                           6            14     213
6-12 months    ki1114097-CONTENT          PERU                           7            23     213
6-12 months    ki1114097-CONTENT          PERU                           8            18     213
6-12 months    ki1114097-CONTENT          PERU                           9            20     213
6-12 months    ki1114097-CONTENT          PERU                           10           24     213
6-12 months    ki1114097-CONTENT          PERU                           11           18     213
6-12 months    ki1114097-CONTENT          PERU                           12            5     213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            37     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2            19     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3            13     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5            11     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6            13     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7            23     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9            18     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10           24     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11           21     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12           33     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            16     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            26     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            17     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             8     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            15     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            20     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            22     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            11     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            20     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           18     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           24     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           26     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            71    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            80    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3            76    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4            85    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5            81    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6            79    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7           100    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8           113    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9           102    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10          108    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11          103    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12           85    1083
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           418    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           300    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3           411    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4           364    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5           346    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6           382    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7           355    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8           426    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9           410    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10          318    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11          401    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12          429    4560
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1            13     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2            16     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3            20     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4            20     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5            17     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6             5     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7            20     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8            21     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9            19     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10           20     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11            9     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12           26     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1            41     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2            35     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3            41     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4            33     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5            34     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6            29     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7            35     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8            30     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9            17     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10           40     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11           41     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12           45     421
12-24 months   ki1114097-CMIN             BANGLADESH                     1            14     138
12-24 months   ki1114097-CMIN             BANGLADESH                     2            15     138
12-24 months   ki1114097-CMIN             BANGLADESH                     3             9     138
12-24 months   ki1114097-CMIN             BANGLADESH                     4            13     138
12-24 months   ki1114097-CMIN             BANGLADESH                     5            10     138
12-24 months   ki1114097-CMIN             BANGLADESH                     6             6     138
12-24 months   ki1114097-CMIN             BANGLADESH                     7             7     138
12-24 months   ki1114097-CMIN             BANGLADESH                     8             9     138
12-24 months   ki1114097-CMIN             BANGLADESH                     9            12     138
12-24 months   ki1114097-CMIN             BANGLADESH                     10           14     138
12-24 months   ki1114097-CMIN             BANGLADESH                     11           16     138
12-24 months   ki1114097-CMIN             BANGLADESH                     12           13     138
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           405    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           372    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3           427    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4           336    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5           241    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6           271    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7           310    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8           347    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9           356    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10          473    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11          524    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12          591    4653
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            30    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2           229    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3           280    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4           601    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5           468    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6           361    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7           638    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8           364    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9           321    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10          193    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11          107    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12           45    3637
12-24 months   ki1119695-PROBIT           BELARUS                        1           186    2533
12-24 months   ki1119695-PROBIT           BELARUS                        2           119    2533
12-24 months   ki1119695-PROBIT           BELARUS                        3           192    2533
12-24 months   ki1119695-PROBIT           BELARUS                        4           200    2533
12-24 months   ki1119695-PROBIT           BELARUS                        5           218    2533
12-24 months   ki1119695-PROBIT           BELARUS                        6           169    2533
12-24 months   ki1119695-PROBIT           BELARUS                        7           219    2533
12-24 months   ki1119695-PROBIT           BELARUS                        8           212    2533
12-24 months   ki1119695-PROBIT           BELARUS                        9           239    2533
12-24 months   ki1119695-PROBIT           BELARUS                        10          239    2533
12-24 months   ki1119695-PROBIT           BELARUS                        11          243    2533
12-24 months   ki1119695-PROBIT           BELARUS                        12          297    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1            11     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2            17     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3            15     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4            10     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5            15     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6             5     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7            11     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8            13     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9            25     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10           14     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11           15     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12           14     165
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             3      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2             3      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3             3      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4             7      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5             4      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6             6      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7             1      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8             2      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9             8      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10            6      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11            2      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12            5      50
12-24 months   ki0047075b-MAL-ED          INDIA                          1            19     225
12-24 months   ki0047075b-MAL-ED          INDIA                          2            18     225
12-24 months   ki0047075b-MAL-ED          INDIA                          3            18     225
12-24 months   ki0047075b-MAL-ED          INDIA                          4            15     225
12-24 months   ki0047075b-MAL-ED          INDIA                          5             8     225
12-24 months   ki0047075b-MAL-ED          INDIA                          6            17     225
12-24 months   ki0047075b-MAL-ED          INDIA                          7            22     225
12-24 months   ki0047075b-MAL-ED          INDIA                          8            20     225
12-24 months   ki0047075b-MAL-ED          INDIA                          9            18     225
12-24 months   ki0047075b-MAL-ED          INDIA                          10           27     225
12-24 months   ki0047075b-MAL-ED          INDIA                          11           24     225
12-24 months   ki0047075b-MAL-ED          INDIA                          12           19     225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            29     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2            15     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3            24     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4            39     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5            32     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6            33     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7            35     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8            15     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9            17     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10           26     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11           38     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12           21     324
12-24 months   ki1000108-IRC              INDIA                          1            35     396
12-24 months   ki1000108-IRC              INDIA                          2            27     396
12-24 months   ki1000108-IRC              INDIA                          3            29     396
12-24 months   ki1000108-IRC              INDIA                          4            16     396
12-24 months   ki1000108-IRC              INDIA                          5            19     396
12-24 months   ki1000108-IRC              INDIA                          6            37     396
12-24 months   ki1000108-IRC              INDIA                          7            35     396
12-24 months   ki1000108-IRC              INDIA                          8            45     396
12-24 months   ki1000108-IRC              INDIA                          9            27     396
12-24 months   ki1000108-IRC              INDIA                          10           35     396
12-24 months   ki1000108-IRC              INDIA                          11           41     396
12-24 months   ki1000108-IRC              INDIA                          12           50     396
12-24 months   ki1148112-LCNI-5           MALAWI                         1            27     310
12-24 months   ki1148112-LCNI-5           MALAWI                         2            45     310
12-24 months   ki1148112-LCNI-5           MALAWI                         3            25     310
12-24 months   ki1148112-LCNI-5           MALAWI                         4            37     310
12-24 months   ki1148112-LCNI-5           MALAWI                         5            40     310
12-24 months   ki1148112-LCNI-5           MALAWI                         6            37     310
12-24 months   ki1148112-LCNI-5           MALAWI                         7            21     310
12-24 months   ki1148112-LCNI-5           MALAWI                         8            19     310
12-24 months   ki1148112-LCNI-5           MALAWI                         9            12     310
12-24 months   ki1148112-LCNI-5           MALAWI                         10           13     310
12-24 months   ki1148112-LCNI-5           MALAWI                         11           23     310
12-24 months   ki1148112-LCNI-5           MALAWI                         12           11     310
12-24 months   ki0047075b-MAL-ED          NEPAL                          1            19     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          2            17     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          3            16     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          4            20     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          5            18     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          6            21     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          7            17     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          8            24     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          9            13     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          10           20     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          11           24     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          12           17     226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          6            25     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          7           167     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          8           159     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          9            14     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          10            2     367
12-24 months   ki0047075b-MAL-ED          PERU                           1            24     191
12-24 months   ki0047075b-MAL-ED          PERU                           2            19     191
12-24 months   ki0047075b-MAL-ED          PERU                           3            13     191
12-24 months   ki0047075b-MAL-ED          PERU                           4            12     191
12-24 months   ki0047075b-MAL-ED          PERU                           5            18     191
12-24 months   ki0047075b-MAL-ED          PERU                           6            11     191
12-24 months   ki0047075b-MAL-ED          PERU                           7            14     191
12-24 months   ki0047075b-MAL-ED          PERU                           8            12     191
12-24 months   ki0047075b-MAL-ED          PERU                           9            20     191
12-24 months   ki0047075b-MAL-ED          PERU                           10           13     191
12-24 months   ki0047075b-MAL-ED          PERU                           11           20     191
12-24 months   ki0047075b-MAL-ED          PERU                           12           15     191
12-24 months   ki1114097-CMIN             PERU                           1            55     199
12-24 months   ki1114097-CMIN             PERU                           2             9     199
12-24 months   ki1114097-CMIN             PERU                           3            19     199
12-24 months   ki1114097-CMIN             PERU                           4            15     199
12-24 months   ki1114097-CMIN             PERU                           5            12     199
12-24 months   ki1114097-CMIN             PERU                           6            12     199
12-24 months   ki1114097-CMIN             PERU                           7            13     199
12-24 months   ki1114097-CMIN             PERU                           8             7     199
12-24 months   ki1114097-CMIN             PERU                           9             6     199
12-24 months   ki1114097-CMIN             PERU                           10           13     199
12-24 months   ki1114097-CMIN             PERU                           11           29     199
12-24 months   ki1114097-CMIN             PERU                           12            9     199
12-24 months   ki1114097-CONTENT          PERU                           1             4      38
12-24 months   ki1114097-CONTENT          PERU                           2             3      38
12-24 months   ki1114097-CONTENT          PERU                           3             4      38
12-24 months   ki1114097-CONTENT          PERU                           4             2      38
12-24 months   ki1114097-CONTENT          PERU                           5             1      38
12-24 months   ki1114097-CONTENT          PERU                           7             5      38
12-24 months   ki1114097-CONTENT          PERU                           8             6      38
12-24 months   ki1114097-CONTENT          PERU                           9             7      38
12-24 months   ki1114097-CONTENT          PERU                           10            2      38
12-24 months   ki1114097-CONTENT          PERU                           11            4      38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            33     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2            19     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3            14     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4            12     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5            11     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6            15     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7            23     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             8     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9            19     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10           25     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11           20     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12           31     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1            16     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2            21     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3            19     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             6     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5            16     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6            19     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7            20     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8            11     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9            17     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10           15     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11           22     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12           25     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            32     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            38     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3            46     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4            32     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5            36     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6            30     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7            22     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8            24     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             2     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            1     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11           12     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12           27     302


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d44ab082-3993-4770-b28a-f9fd97c254f9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d44ab082-3993-4770-b28a-f9fd97c254f9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.6427162   3.4355318   3.8499005
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                3.6604629   3.4506326   3.8702932
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                3.5638611   3.3754538   3.7522683
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                3.7122341   3.5392781   3.8851901
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                3.6529711   3.4301258   3.8758165
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                3.6048699   3.4353508   3.7743889
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                3.7015461   3.4108277   3.9922646
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                3.4679189   3.2945735   3.6412642
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                3.4184241   3.2411804   3.5956678
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                3.4624883   3.2107604   3.7142162
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                3.3866904   3.1543846   3.6189962
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                3.5106702   3.3306690   3.6906714
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.8042090   3.3885591   4.2198590
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                4.3939469   4.0547671   4.7331267
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                4.0378532   3.7088725   4.3668338
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                4.2185083   3.9099979   4.5270186
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                4.1954187   3.9339997   4.4568377
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                3.8778090   3.4490697   4.3065482
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                4.2049496   3.8057417   4.6041575
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                3.8268290   3.3665795   4.2870786
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                3.8720515   3.6801121   4.0639909
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                3.8819694   3.5596353   4.2043035
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                3.9953258   3.8164653   4.1741863
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                4.2731821   3.8833178   4.6630465
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.4250506   3.1444679   3.7056334
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                3.4747539   3.2554047   3.6941032
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                3.6626197   3.4253931   3.8998464
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    NA                3.7242532   3.4876571   3.9608494
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    NA                3.4755605   3.1807570   3.7703639
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    NA                3.6244475   3.3755153   3.8733797
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    NA                3.6017002   3.3198561   3.8835444
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    NA                3.5019103   3.2702477   3.7335729
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    NA                3.6808544   3.3483898   4.0133189
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   NA                3.6202145   3.3320213   3.9084077
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   NA                3.4774827   3.3299044   3.6250610
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   NA                3.5993273   3.2911522   3.9075024
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.7946627   3.5525801   4.0367454
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                3.8098896   3.5837413   4.0360378
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                3.6160729   3.4054595   3.8266863
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                3.8836282   3.5657229   4.2015334
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                3.8601393   3.7235911   3.9966875
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                4.0768929   3.8559249   4.2978610
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                3.6672719   3.3985535   3.9359903
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                3.9588357   3.6243011   4.2933702
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                3.8974845   3.6654948   4.1294742
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                3.7208766   3.5102984   3.9314549
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                3.8603794   3.6127845   4.1079743
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                3.6722218   3.2912654   4.0531782
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.3384640   3.2090685   3.4678595
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                3.3368602   3.1011929   3.5725275
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                3.5970012   3.3828357   3.8111667
0-3 months     ki0047075b-MAL-ED          PERU                           4                    NA                3.4374710   3.2434270   3.6315150
0-3 months     ki0047075b-MAL-ED          PERU                           5                    NA                3.0304671   2.7930001   3.2679341
0-3 months     ki0047075b-MAL-ED          PERU                           6                    NA                3.1789950   2.9046135   3.4533765
0-3 months     ki0047075b-MAL-ED          PERU                           7                    NA                3.2874318   3.0861192   3.4887445
0-3 months     ki0047075b-MAL-ED          PERU                           8                    NA                3.2924847   3.0699287   3.5150408
0-3 months     ki0047075b-MAL-ED          PERU                           9                    NA                3.4578702   3.2488958   3.6668445
0-3 months     ki0047075b-MAL-ED          PERU                           10                   NA                3.4261417   3.2334589   3.6188245
0-3 months     ki0047075b-MAL-ED          PERU                           11                   NA                3.2607284   3.0499394   3.4715175
0-3 months     ki0047075b-MAL-ED          PERU                           12                   NA                3.1456760   2.8925928   3.3987592
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.4423526   3.0960881   3.7886171
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                3.1687352   2.8841593   3.4533110
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                3.5584928   3.1511631   3.9658225
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                3.7103301   3.4049832   4.0156771
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                3.3201649   2.9287784   3.7115514
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                3.4003282   3.1549531   3.6457033
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                3.4726628   3.2335588   3.7117668
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                3.5566954   3.2565560   3.8568348
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                3.5307205   3.2499065   3.8115344
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                3.6525525   3.4718798   3.8332253
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                3.4775988   3.1648373   3.7903603
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                3.2517897   3.0071687   3.4964108
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.6867215   3.5161298   3.8573132
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                3.4753151   3.2430344   3.7075959
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                3.5557872   3.3049009   3.8066736
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                3.5518912   3.1412013   3.9625811
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                3.4671631   3.2298712   3.7044550
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                3.4344253   2.9945716   3.8742790
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                3.3020730   3.0623102   3.5418359
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                3.5598298   3.2194153   3.9002444
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                3.6360861   3.3970906   3.8750815
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                3.4550869   3.2083895   3.7017844
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                3.4450267   3.2190062   3.6710473
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                3.3397367   3.1112239   3.5682495
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.3720152   3.0934899   3.6505404
0-3 months     ki1000108-IRC              INDIA                          2                    NA                3.0548680   2.5536255   3.5561105
0-3 months     ki1000108-IRC              INDIA                          3                    NA                2.9608365   2.4808309   3.4408421
0-3 months     ki1000108-IRC              INDIA                          4                    NA                2.6821133   2.3055364   3.0586901
0-3 months     ki1000108-IRC              INDIA                          5                    NA                2.3425254   1.9665291   2.7185218
0-3 months     ki1000108-IRC              INDIA                          6                    NA                3.4277961   2.9967871   3.8588051
0-3 months     ki1000108-IRC              INDIA                          7                    NA                3.2451469   2.9248990   3.5653948
0-3 months     ki1000108-IRC              INDIA                          8                    NA                3.3647163   3.0439258   3.6855068
0-3 months     ki1000108-IRC              INDIA                          9                    NA                3.4578007   2.8778391   4.0377623
0-3 months     ki1000108-IRC              INDIA                          10                   NA                3.3605358   3.0388690   3.6822026
0-3 months     ki1000108-IRC              INDIA                          11                   NA                3.2734975   2.9620357   3.5849593
0-3 months     ki1000108-IRC              INDIA                          12                   NA                3.0368556   2.7424427   3.3312684
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7138116   3.6352814   3.7923418
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                3.7681270   3.6168510   3.9194030
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                3.8146957   3.7221600   3.9072314
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                3.6300448   3.4854869   3.7746028
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                3.5852200   3.4956964   3.6747435
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                3.6854101   3.6366470   3.7341732
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                3.4862777   3.3917941   3.5807613
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                3.5322939   3.4190498   3.6455381
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                3.5729217   3.5153907   3.6304527
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                3.5758178   3.3667730   3.7848626
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                3.5706215   3.4732748   3.6679681
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                3.5088694   3.4110036   3.6067353
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.5096664   3.3167147   3.7026181
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                3.5092567   3.3170225   3.7014909
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                3.3410715   3.1841704   3.4979726
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                3.3672246   3.1960003   3.5384489
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                3.1852098   3.0174023   3.3530172
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                3.1928858   2.9947136   3.3910580
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                3.2081985   3.0313484   3.3850486
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                3.0859300   2.8318947   3.3399652
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                3.1765887   2.9382157   3.4149616
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                3.2314883   3.0511133   3.4118632
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                3.3386237   3.1759560   3.5012913
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                3.4223281   3.2706300   3.5740263
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.7828758   2.6056522   2.9600995
0-3 months     ki1119695-PROBIT           BELARUS                        2                    NA                2.7958110   2.6428616   2.9487605
0-3 months     ki1119695-PROBIT           BELARUS                        3                    NA                2.8455811   2.6975681   2.9935942
0-3 months     ki1119695-PROBIT           BELARUS                        4                    NA                2.8140588   2.6575027   2.9706149
0-3 months     ki1119695-PROBIT           BELARUS                        5                    NA                2.7957626   2.6831569   2.9083682
0-3 months     ki1119695-PROBIT           BELARUS                        6                    NA                2.9104016   2.7926843   3.0281188
0-3 months     ki1119695-PROBIT           BELARUS                        7                    NA                2.8431215   2.7248497   2.9613933
0-3 months     ki1119695-PROBIT           BELARUS                        8                    NA                2.8522903   2.7144401   2.9901404
0-3 months     ki1119695-PROBIT           BELARUS                        9                    NA                2.8376812   2.7135542   2.9618083
0-3 months     ki1119695-PROBIT           BELARUS                        10                   NA                2.8098719   2.6950187   2.9247251
0-3 months     ki1119695-PROBIT           BELARUS                        11                   NA                2.8274402   2.7137807   2.9410997
0-3 months     ki1119695-PROBIT           BELARUS                        12                   NA                2.8786456   2.7534206   3.0038706
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.5519722   3.4870675   3.6168770
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                3.5951561   3.5127598   3.6775523
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                3.5161855   3.4466914   3.5856795
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                3.3738617   3.2974253   3.4502980
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                3.3492529   3.2698114   3.4286943
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                3.1447881   3.0657396   3.2238365
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                3.2459354   3.1754430   3.3164278
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                3.2803847   3.2133524   3.3474171
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                3.3056527   3.2442991   3.3670063
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                3.2919838   3.2199682   3.3639995
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                3.3262746   3.2516303   3.4009188
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                3.4528506   3.3838667   3.5218344
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8001844   3.7712190   3.8291498
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7750069   3.7469425   3.8030714
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                3.7683998   3.7408529   3.7959468
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                3.8033783   3.7675711   3.8391855
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                3.7866288   3.7437995   3.8294582
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                3.8106979   3.7748985   3.8464972
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                3.7596815   3.7254548   3.7939082
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                3.7236233   3.6914968   3.7557497
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                3.5960959   3.5661034   3.6260884
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                3.5931713   3.5671161   3.6192265
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                3.6279140   3.6031508   3.6526773
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                3.7412942   3.7161398   3.7664487
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                3.7870567   3.7189069   3.8552065
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                3.7323856   3.6688753   3.7958958
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                3.5774679   3.5112076   3.6437283
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                3.7723409   3.6650379   3.8796438
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                3.7263524   3.5832884   3.8694164
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                3.6136269   3.4803352   3.7469185
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                3.4807585   3.3616703   3.5998467
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                3.4272585   3.3072874   3.5472296
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                3.3607696   3.2348206   3.4867187
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9074865   1.8120197   2.0029533
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.8741283   1.6793213   2.0689353
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.8411415   1.6542246   2.0280584
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.7963440   1.6389323   1.9537557
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                1.9943877   1.8534770   2.1352985
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                1.8747706   1.7165536   2.0329875
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                1.8442123   1.6937649   1.9946597
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                1.8933335   1.6861751   2.1004918
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                2.0136593   1.8800514   2.1472671
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                1.9518599   1.7886092   2.1151106
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                2.0458513   1.8780384   2.2136642
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                2.0496391   1.9080215   2.1912566
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.0602282   1.7143200   2.4061364
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                2.1302770   1.8934213   2.3671327
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                2.2788147   2.0369498   2.5206796
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                2.2668912   1.9486034   2.5851791
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                2.1501283   1.9736735   2.3265831
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                1.6570239   1.2412516   2.0727961
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                1.9887756   1.5884062   2.3891451
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                2.1835036   1.8115321   2.5554751
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                2.4041084   2.2398618   2.5683551
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                1.9957010   1.8193848   2.1720172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                2.0979887   1.8582498   2.3377276
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                2.1510871   1.9187221   2.3834521
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.9320895   1.6883759   2.1758032
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8532427   1.6783993   2.0280861
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                2.0116276   1.7863412   2.2369141
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                1.6450033   1.3431261   1.9468806
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    NA                1.8448253   1.6756491   2.0140015
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    NA                1.8362130   1.6513461   2.0210799
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    NA                1.7181495   1.4618458   1.9744532
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    NA                1.8801771   1.7545980   2.0057562
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    NA                1.9779020   1.7763735   2.1794306
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   NA                1.8334550   1.6487478   2.0181622
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   NA                1.9707147   1.8532408   2.0881887
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   NA                2.0008431   1.7693711   2.2323150
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.1232309   1.9786449   2.2678168
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.9064786   1.7302909   2.0826662
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.8772341   1.6644460   2.0900223
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                1.7708924   1.6493443   1.8924405
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                1.7630702   1.6020043   1.9241361
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                1.8914779   1.6950012   2.0879546
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                1.8775466   1.7339614   2.0211318
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                1.8786540   1.6578512   2.0994568
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                1.9982850   1.7338016   2.2627685
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                2.1519684   1.9890297   2.3149072
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                2.2730817   2.1136306   2.4325328
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                2.0192508   1.8355062   2.2029954
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.0850725   1.8762109   2.2939340
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.9307663   1.7384687   2.1230639
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.7915064   1.5634892   2.0195235
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                2.1604741   1.9832416   2.3377066
3-6 months     ki0047075b-MAL-ED          PERU                           5                    NA                2.4031450   2.1509122   2.6553778
3-6 months     ki0047075b-MAL-ED          PERU                           6                    NA                2.1443163   1.8671681   2.4214646
3-6 months     ki0047075b-MAL-ED          PERU                           7                    NA                1.9393169   1.7349550   2.1436789
3-6 months     ki0047075b-MAL-ED          PERU                           8                    NA                1.9870168   1.8512825   2.1227510
3-6 months     ki0047075b-MAL-ED          PERU                           9                    NA                1.7149436   1.4859033   1.9439840
3-6 months     ki0047075b-MAL-ED          PERU                           10                   NA                1.9854861   1.8056324   2.1653398
3-6 months     ki0047075b-MAL-ED          PERU                           11                   NA                1.9545279   1.7972728   2.1117830
3-6 months     ki0047075b-MAL-ED          PERU                           12                   NA                2.1230995   1.8681488   2.3780501
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.9895756   1.7976090   2.1815421
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                2.2033034   1.9190255   2.4875812
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                2.0952255   1.6489102   2.5415407
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.9972358   1.6554648   2.3390067
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                1.9414079   1.6303976   2.2524182
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                2.2523143   1.9600993   2.5445292
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                1.9094518   1.6730472   2.1458564
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                2.0899596   1.7398359   2.4400833
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                1.9483282   1.7182721   2.1783843
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                1.8662768   1.6211920   2.1113615
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                1.9804600   1.6819351   2.2789849
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                1.8176840   1.5949339   2.0404341
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7911071   1.5396331   2.0425810
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8303412   1.6154101   2.0452722
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.6099378   1.3756787   1.8441968
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.5035089   1.3150989   1.6919188
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                1.8687403   1.6744297   2.0630509
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                1.8797711   1.6571697   2.1023725
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                2.0056922   1.8149247   2.1964597
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                1.9352840   1.5583111   2.3122569
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                2.0717922   1.8531103   2.2904740
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                1.6754066   1.4816355   1.8691777
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                1.7091755   1.5224934   1.8958577
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                1.8920442   1.6841473   2.0999410
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                2.1283478   1.8002312   2.4564645
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                1.5403609   1.2806007   1.8001211
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                1.4163389   1.1566860   1.6759917
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                1.7648109   1.4783020   2.0513198
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                1.4668988   1.2039605   1.7298372
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                1.5426387   1.2591542   1.8261233
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                1.5150496   1.2058390   1.8242603
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                1.8339465   1.2093931   2.4584999
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                1.9215307   1.4642990   2.3787624
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                2.1119400   1.6960556   2.5278245
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                2.2605550   2.0204688   2.5006412
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                2.2779739   1.9271511   2.6287968
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8827899   1.7306824   2.0348975
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.7492712   1.5110901   1.9874523
3-6 months     ki1000108-IRC              INDIA                          3                    NA                1.9044054   1.6748859   2.1339249
3-6 months     ki1000108-IRC              INDIA                          4                    NA                1.6992841   1.5248198   1.8737483
3-6 months     ki1000108-IRC              INDIA                          5                    NA                1.4850568   1.2623142   1.7077994
3-6 months     ki1000108-IRC              INDIA                          6                    NA                1.8189974   1.5533419   2.0846528
3-6 months     ki1000108-IRC              INDIA                          7                    NA                1.8464910   1.6080489   2.0849331
3-6 months     ki1000108-IRC              INDIA                          8                    NA                1.8287908   1.5951042   2.0624775
3-6 months     ki1000108-IRC              INDIA                          9                    NA                2.1060226   1.8368075   2.3752378
3-6 months     ki1000108-IRC              INDIA                          10                   NA                2.0830633   1.9114687   2.2546578
3-6 months     ki1000108-IRC              INDIA                          11                   NA                1.9153477   1.7378007   2.0928947
3-6 months     ki1000108-IRC              INDIA                          12                   NA                2.0075073   1.8536925   2.1613222
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.8151993   1.6921010   1.9382975
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.9201335   1.6801806   2.1600864
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                1.9234345   1.8240280   2.0228409
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                1.9161311   1.7578362   2.0744260
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                1.7851894   1.5707549   1.9996238
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                1.8513471   1.6992641   2.0034301
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                1.8709424   1.6892740   2.0526109
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                2.0493825   1.9375238   2.1612412
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                1.9756675   1.8347579   2.1165771
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                2.0229745   1.8528837   2.1930654
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                1.9409363   1.8190911   2.0627814
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                2.0137789   1.9447440   2.0828138
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.7800248   1.6336226   1.9264269
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                1.7597667   1.5862828   1.9332505
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                1.8021902   1.6740431   1.9303373
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                1.7531244   1.5958934   1.9103555
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                1.8242654   1.6235570   2.0249738
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                1.7377741   1.5162598   1.9592884
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                1.8781694   1.7125521   2.0437867
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                1.9072503   1.7008527   2.1136478
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                1.8497544   1.6617636   2.0377451
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                1.8825513   1.7122105   2.0528920
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                1.8402071   1.7221815   1.9582328
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                1.9674890   1.8431458   2.0918321
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8905209   1.7693518   2.0116900
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.9760067   1.8412978   2.1107155
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8758135   1.7585640   1.9930630
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.7109784   1.5649214   1.8570353
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                1.7084763   1.5689155   1.8480371
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                1.6936591   1.5426703   1.8446478
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                1.6538300   1.5362754   1.7713845
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                1.8444421   1.7265963   1.9622879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                1.8078728   1.6925103   1.9232353
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                1.7769623   1.6655536   1.8883709
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                1.7714608   1.6634176   1.8795040
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                1.8572400   1.7447862   1.9696938
3-6 months     ki1113344-GMS-Nepal        NEPAL                          6                    NA                1.7097560   1.6207496   1.7987624
3-6 months     ki1113344-GMS-Nepal        NEPAL                          7                    NA                1.6776559   1.6155118   1.7398000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          8                    NA                1.7218960   1.6624222   1.7813699
3-6 months     ki1113344-GMS-Nepal        NEPAL                          9                    NA                1.8542393   1.4943097   2.2141690
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                1.8808175   1.6890216   2.0726133
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                1.9392494   1.7847648   2.0937340
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                1.9020538   1.5694517   2.2346559
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                2.1362192   1.8927501   2.3796882
3-6 months     ki1114097-CMIN             BANGLADESH                     5                    NA                2.2449626   1.8803358   2.6095895
3-6 months     ki1114097-CMIN             BANGLADESH                     6                    NA                1.9868057   1.6847109   2.2889006
3-6 months     ki1114097-CMIN             BANGLADESH                     7                    NA                1.6443533   1.4468265   1.8418801
3-6 months     ki1114097-CMIN             BANGLADESH                     8                    NA                1.5709392   1.2929240   1.8489544
3-6 months     ki1114097-CMIN             BANGLADESH                     9                    NA                1.8675260   1.6697389   2.0653132
3-6 months     ki1114097-CMIN             BANGLADESH                     10                   NA                2.0041721   1.8072936   2.2010506
3-6 months     ki1114097-CMIN             BANGLADESH                     11                   NA                2.0080051   1.8703983   2.1456120
3-6 months     ki1114097-CMIN             BANGLADESH                     12                   NA                2.0078201   1.8006705   2.2149697
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.5982669   1.3679416   1.8285921
3-6 months     ki1114097-CMIN             PERU                           2                    NA                1.8032333   1.6648693   1.9415973
3-6 months     ki1114097-CMIN             PERU                           3                    NA                1.9784238   1.8501147   2.1067328
3-6 months     ki1114097-CMIN             PERU                           4                    NA                1.9641323   1.8287076   2.0995570
3-6 months     ki1114097-CMIN             PERU                           5                    NA                2.1041578   1.9276999   2.2806157
3-6 months     ki1114097-CMIN             PERU                           6                    NA                1.8125169   1.6613902   1.9636436
3-6 months     ki1114097-CMIN             PERU                           7                    NA                1.8849615   1.6727539   2.0971690
3-6 months     ki1114097-CMIN             PERU                           8                    NA                1.9597183   1.7978276   2.1216090
3-6 months     ki1114097-CMIN             PERU                           9                    NA                1.8536991   1.7200893   1.9873089
3-6 months     ki1114097-CMIN             PERU                           10                   NA                1.9618132   1.7738697   2.1497567
3-6 months     ki1114097-CMIN             PERU                           11                   NA                1.8168311   1.6742258   1.9594363
3-6 months     ki1114097-CMIN             PERU                           12                   NA                1.9756711   1.8131780   2.1381643
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.1962144   1.9861540   2.4062749
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                1.9689454   1.8593657   2.0785251
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                2.0335559   1.9046769   2.1624349
3-6 months     ki1114097-CONTENT          PERU                           4                    NA                1.7728068   1.5922307   1.9533830
3-6 months     ki1114097-CONTENT          PERU                           5                    NA                1.9648287   1.8400944   2.0895629
3-6 months     ki1114097-CONTENT          PERU                           6                    NA                1.9234370   1.7296536   2.1172204
3-6 months     ki1114097-CONTENT          PERU                           7                    NA                2.0793816   1.9587630   2.2000002
3-6 months     ki1114097-CONTENT          PERU                           8                    NA                2.2586169   2.1298723   2.3873616
3-6 months     ki1114097-CONTENT          PERU                           9                    NA                2.1692123   2.0103291   2.3280955
3-6 months     ki1114097-CONTENT          PERU                           10                   NA                2.2504375   2.1112442   2.3896308
3-6 months     ki1114097-CONTENT          PERU                           11                   NA                2.2859792   2.1241395   2.4478188
3-6 months     ki1114097-CONTENT          PERU                           12                   NA                1.8566917   1.6677305   2.0456529
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.0483795   1.9521263   2.1446326
3-6 months     ki1119695-PROBIT           BELARUS                        2                    NA                2.0285629   1.9437614   2.1133645
3-6 months     ki1119695-PROBIT           BELARUS                        3                    NA                2.0982978   2.0343392   2.1622564
3-6 months     ki1119695-PROBIT           BELARUS                        4                    NA                2.1529466   2.0827917   2.2231015
3-6 months     ki1119695-PROBIT           BELARUS                        5                    NA                2.1422221   2.0795030   2.2049411
3-6 months     ki1119695-PROBIT           BELARUS                        6                    NA                2.0894217   2.0289522   2.1498912
3-6 months     ki1119695-PROBIT           BELARUS                        7                    NA                2.0989423   2.0281735   2.1697111
3-6 months     ki1119695-PROBIT           BELARUS                        8                    NA                2.0882660   2.0272025   2.1493296
3-6 months     ki1119695-PROBIT           BELARUS                        9                    NA                2.1344663   2.0694929   2.1994396
3-6 months     ki1119695-PROBIT           BELARUS                        10                   NA                2.0925716   2.0350834   2.1500598
3-6 months     ki1119695-PROBIT           BELARUS                        11                   NA                2.0838401   2.0109605   2.1567196
3-6 months     ki1119695-PROBIT           BELARUS                        12                   NA                2.0417608   1.9833227   2.1001989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.8869295   1.8273274   1.9465316
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.9368849   1.8612879   2.0124820
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                1.8140179   1.7338766   1.8941592
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                2.0065354   1.9340696   2.0790011
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                1.9651587   1.8958469   2.0344705
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                2.2195314   2.1373663   2.3016965
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                1.9813870   1.9154399   2.0473341
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                1.9759469   1.9173005   2.0345932
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                1.9803039   1.9184908   2.0421170
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                2.0343730   1.9650536   2.1036925
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                1.9342143   1.8698981   1.9985306
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                1.9940538   1.9291536   2.0589540
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9663220   1.9348926   1.9977514
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9258017   1.8901961   1.9614073
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.8412786   1.8073441   1.8752132
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                1.8072237   1.7723741   1.8420734
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                1.8087333   1.7692823   1.8481842
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                1.7701694   1.7278751   1.8124637
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                1.7856170   1.7479725   1.8232615
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                1.8842921   1.8522762   1.9163080
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                1.9948325   1.9587196   2.0309455
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                2.0501744   2.0191862   2.0811626
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                2.0252795   1.9967762   2.0537827
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                2.0000972   1.9697039   2.0304905
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.9197310   1.6892716   2.1501904
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.8123199   1.6094548   2.0151850
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.9365588   1.8439355   2.0291820
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                1.8739352   1.8111465   1.9367239
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                1.8175682   1.7435118   1.8916246
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                1.8052269   1.6801352   1.9303186
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                1.8227304   1.7348963   1.9105645
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                1.9027840   1.8232813   1.9822868
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                1.9922524   1.8758775   2.1086273
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                2.0156219   1.9325993   2.0986444
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                2.0449044   1.9371628   2.1526460
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                2.0059698   1.8638042   2.1481354
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.1112040   1.0339807   1.1884273
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.0624682   0.9901614   1.1347749
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.1442914   1.0710052   1.2175776
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0583846   0.9751103   1.1416589
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                1.0965148   1.0061156   1.1869139
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                1.1848875   1.1094660   1.2603090
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                1.1766856   1.0720217   1.2813494
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                1.1297200   1.0598201   1.1996199
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                1.1050759   1.0194098   1.1907421
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                1.1169725   1.0310387   1.2029062
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                1.0671110   0.9481506   1.1860715
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                1.1396082   1.0803692   1.1988473
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3392869   1.1648603   1.5137134
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1255500   0.9867495   1.2643505
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.3047763   1.1981891   1.4113634
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.2692785   1.1345326   1.4040244
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                1.3860354   1.2758455   1.4962254
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                1.7945060   1.4648822   2.1241298
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                1.3802326   1.2016919   1.5587733
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                1.4170889   1.3334607   1.5007171
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                1.5317938   1.4136247   1.6499629
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                1.5041315   1.3450875   1.6631754
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                1.4106916   1.3073239   1.5140592
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                1.3721017   1.1806123   1.5635910
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0556567   0.9645726   1.1467409
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                1.1631358   1.0759600   1.2503116
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                1.2080725   1.0966247   1.3195203
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                1.1210702   1.0153229   1.2268176
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    NA                1.2180756   1.1255292   1.3106220
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    NA                1.1073518   1.0390565   1.1756472
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    NA                1.2020327   1.0905618   1.3135036
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    NA                1.1051959   1.0064931   1.2038988
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    NA                1.0865375   0.9976318   1.1754431
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   NA                1.1026148   1.0089330   1.1962966
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   NA                1.0704508   0.9904723   1.1504293
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   NA                1.0893466   1.0077552   1.1709380
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1642008   1.0855785   1.2428232
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.1130528   1.0270448   1.1990608
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1183829   1.0143650   1.2224007
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                1.1907679   1.1125997   1.2689361
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                1.2129398   1.1317954   1.2940843
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                1.2991392   1.2084902   1.3897881
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                1.2642862   1.1913503   1.3372220
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                1.3224960   1.2445750   1.4004170
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                1.3126886   1.2141466   1.4112306
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                1.2425349   1.1496565   1.3354133
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                1.1969964   1.1208816   1.2731111
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                1.2082812   1.1341274   1.2824350
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1872904   1.1143154   1.2602654
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.2628267   1.1748413   1.3508121
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.2862510   1.1578702   1.4146319
6-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                1.1307619   1.0011701   1.2603537
6-12 months    ki0047075b-MAL-ED          PERU                           5                    NA                1.1637831   1.0385628   1.2890034
6-12 months    ki0047075b-MAL-ED          PERU                           6                    NA                1.2065079   1.0627059   1.3503100
6-12 months    ki0047075b-MAL-ED          PERU                           7                    NA                1.1382022   1.0383255   1.2380790
6-12 months    ki0047075b-MAL-ED          PERU                           8                    NA                1.2606037   1.1632944   1.3579129
6-12 months    ki0047075b-MAL-ED          PERU                           9                    NA                1.3030726   1.2123212   1.3938240
6-12 months    ki0047075b-MAL-ED          PERU                           10                   NA                1.2866483   1.0891044   1.4841921
6-12 months    ki0047075b-MAL-ED          PERU                           11                   NA                1.1934336   1.0968166   1.2900506
6-12 months    ki0047075b-MAL-ED          PERU                           12                   NA                1.1295895   1.0662689   1.1929101
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1775285   1.0438224   1.3112346
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.1570880   0.9986568   1.3155191
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.2928423   1.1706255   1.4150591
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.1236215   0.9564108   1.2908321
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                1.2792231   1.1324797   1.4259666
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                1.1059039   0.9077833   1.3040246
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                1.1821401   1.0669411   1.2973390
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                1.1807191   1.0139650   1.3474732
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                1.1889471   1.0902480   1.2876463
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                1.1665087   1.0399366   1.2930809
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                1.2291884   1.0822884   1.3760883
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                1.2070660   1.1142270   1.2999051
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0389145   0.8902772   1.1875517
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0041398   0.8929736   1.1153061
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1701084   1.0085389   1.3316780
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.0007774   0.8822384   1.1193164
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                1.0036409   0.8912290   1.1160529
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                1.0500504   0.9646251   1.1354758
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                1.0043930   0.8725495   1.1362366
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                0.8922653   0.6886623   1.0958683
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                0.8293455   0.7381875   0.9205035
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                1.0018997   0.8904763   1.1133230
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                1.0711931   0.9598818   1.1825043
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                0.9426969   0.8440460   1.0413478
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.1422043   0.9204228   1.3639859
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.9112166   0.7266228   1.0958104
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.9910292   0.8007422   1.1813162
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.9612815   0.8381777   1.0843853
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.9787938   0.8533833   1.1042043
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                1.1292406   0.9755583   1.2829228
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                1.1714287   1.0395575   1.3032999
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                1.3394637   1.1072415   1.5716859
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                1.1995914   1.0171863   1.3819966
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.9795027   0.8227649   1.1362406
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                1.0734516   0.9578871   1.1890161
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.9224825   0.7881075   1.0568575
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1918803   1.1060353   1.2777253
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2031323   1.1017204   1.3045441
6-12 months    ki1000108-IRC              INDIA                          3                    NA                1.1721555   1.0992231   1.2450878
6-12 months    ki1000108-IRC              INDIA                          4                    NA                1.1642765   1.0587195   1.2698334
6-12 months    ki1000108-IRC              INDIA                          5                    NA                1.2446447   1.1160012   1.3732882
6-12 months    ki1000108-IRC              INDIA                          6                    NA                1.2682612   1.1707725   1.3657499
6-12 months    ki1000108-IRC              INDIA                          7                    NA                1.3378892   1.2205190   1.4552594
6-12 months    ki1000108-IRC              INDIA                          8                    NA                1.2850829   1.1976290   1.3725367
6-12 months    ki1000108-IRC              INDIA                          9                    NA                1.2157464   1.0808884   1.3506045
6-12 months    ki1000108-IRC              INDIA                          10                   NA                1.2700599   1.1983526   1.3417671
6-12 months    ki1000108-IRC              INDIA                          11                   NA                1.2739398   1.1712524   1.3766272
6-12 months    ki1000108-IRC              INDIA                          12                   NA                1.2586054   1.1720769   1.3451339
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0636027   0.9954954   1.1317100
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.0801735   0.9949333   1.1654137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                1.0336035   0.9435630   1.1236439
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                1.1341182   1.0709472   1.1972892
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                1.1702458   1.0875915   1.2529000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                1.1942831   1.1250888   1.2634774
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                1.1469804   1.0501540   1.2438067
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                1.0517142   0.9989351   1.1044934
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                1.0672418   0.9935504   1.1409332
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                1.0565476   1.0002657   1.1128295
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                1.1291003   1.0336516   1.2245489
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                1.0989248   1.0472543   1.1505954
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.0423968   0.8128477   1.2719460
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.9952279   0.7611891   1.2292667
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    NA                1.0844926   0.7314062   1.4375790
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    NA                1.3505342   0.8562972   1.8447712
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    NA                0.9190624   0.8385765   0.9995482
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    NA                1.0067673   0.8166100   1.1969246
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    NA                0.9690845   0.8529240   1.0852450
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    NA                1.1667133   0.5671875   1.7662390
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   NA                0.9996100   0.8191530   1.1800671
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   NA                0.9038255   0.8152424   0.9924087
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   NA                0.9144085   0.7723546   1.0564624
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1431104   1.0748001   1.2114208
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                1.1203864   1.0540902   1.1866826
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                1.1449577   1.0679574   1.2219580
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                1.1861527   1.1100523   1.2622531
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                1.1555015   1.0698722   1.2411307
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                1.2147893   1.1318135   1.2977651
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                1.1881994   1.1124597   1.2639391
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                1.1070751   1.0304074   1.1837428
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                1.1862617   1.0865462   1.2859771
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                1.2203678   1.1338271   1.3069085
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                1.2152358   1.1480152   1.2824565
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                1.1307022   1.0647625   1.1966420
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0506158   0.9631207   1.1381109
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0620489   0.9715000   1.1525979
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1001577   1.0249240   1.1753913
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1048692   1.0037035   1.2060350
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                1.2243290   1.1471392   1.3015188
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                1.2304901   1.1597723   1.3012079
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                1.2729019   1.2050670   1.3407367
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                1.2632976   1.1923043   1.3342910
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                1.2943877   1.2289457   1.3598296
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                1.2811644   1.2221173   1.3402114
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                1.2112228   1.1642719   1.2581738
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                1.1373373   1.0752434   1.1994312
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0610925   0.9693051   1.1528799
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.0781495   0.9715096   1.1847894
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.0745354   0.9860032   1.1630676
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.0826994   0.9346700   1.2307287
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                1.0945961   1.0300668   1.1591254
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                1.1306760   1.0307510   1.2306009
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                1.2024972   1.1182214   1.2867730
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                1.1284540   1.0604506   1.1964573
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                1.1392780   1.0363441   1.2422119
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                1.0659022   0.9791873   1.1526171
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                1.1399759   1.0386792   1.2412726
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                0.9407091   0.7684489   1.1129693
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                1.0771048   0.9527210   1.2014886
6-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                1.0686083   0.9808838   1.1563327
6-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                1.1462375   1.0144466   1.2780283
6-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                1.0717800   0.9914041   1.1521559
6-12 months    ki1114097-CMIN             BANGLADESH                     5                    NA                1.0730401   0.9924805   1.1535998
6-12 months    ki1114097-CMIN             BANGLADESH                     6                    NA                0.9513098   0.8019888   1.1006309
6-12 months    ki1114097-CMIN             BANGLADESH                     7                    NA                1.1282088   0.9935921   1.2628254
6-12 months    ki1114097-CMIN             BANGLADESH                     8                    NA                1.3006459   1.1486539   1.4526378
6-12 months    ki1114097-CMIN             BANGLADESH                     9                    NA                1.2546942   1.1325013   1.3768871
6-12 months    ki1114097-CMIN             BANGLADESH                     10                   NA                0.9961717   0.8871311   1.1052123
6-12 months    ki1114097-CMIN             BANGLADESH                     11                   NA                1.0707997   0.9705058   1.1710937
6-12 months    ki1114097-CMIN             BANGLADESH                     12                   NA                1.1282625   1.0103995   1.2461256
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                1.1238753   0.9610231   1.2867275
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.8891719   0.6047340   1.1736099
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                1.0262672   0.8507969   1.2017375
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                1.1111466   0.9995339   1.2227594
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                1.1527936   1.0306514   1.2749358
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                1.0153269   0.8733812   1.1572726
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.8525780   0.6412846   1.0638714
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                1.0176048   0.7636815   1.2715281
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                1.1525352   1.0043800   1.3006903
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.9596240   0.7925063   1.1267416
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.9723256   0.8154013   1.1292498
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                1.0898964   0.9557597   1.2240332
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1311755   1.0456226   1.2167284
6-12 months    ki1114097-CMIN             PERU                           2                    NA                1.1142104   1.0407840   1.1876368
6-12 months    ki1114097-CMIN             PERU                           3                    NA                1.1480209   1.0770646   1.2189771
6-12 months    ki1114097-CMIN             PERU                           4                    NA                1.1113796   1.0343055   1.1884537
6-12 months    ki1114097-CMIN             PERU                           5                    NA                1.1255499   1.0404783   1.2106216
6-12 months    ki1114097-CMIN             PERU                           6                    NA                1.1237854   1.0342848   1.2132860
6-12 months    ki1114097-CMIN             PERU                           7                    NA                1.0853129   0.9976183   1.1730076
6-12 months    ki1114097-CMIN             PERU                           8                    NA                1.1038160   1.0164204   1.1912115
6-12 months    ki1114097-CMIN             PERU                           9                    NA                1.1837854   1.0682042   1.2993665
6-12 months    ki1114097-CMIN             PERU                           10                   NA                1.0468289   0.9516697   1.1419881
6-12 months    ki1114097-CMIN             PERU                           11                   NA                1.0203102   0.9459930   1.0946273
6-12 months    ki1114097-CMIN             PERU                           12                   NA                1.1650085   1.0793155   1.2507014
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.2616830   1.1318106   1.3915553
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                1.2681638   1.1734978   1.3628298
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                1.4159598   1.3568368   1.4750829
6-12 months    ki1114097-CONTENT          PERU                           4                    NA                1.2640514   1.1830111   1.3450917
6-12 months    ki1114097-CONTENT          PERU                           5                    NA                1.2911723   1.1865058   1.3958389
6-12 months    ki1114097-CONTENT          PERU                           6                    NA                1.2482755   1.1510948   1.3454562
6-12 months    ki1114097-CONTENT          PERU                           7                    NA                1.3191961   1.2412937   1.3970985
6-12 months    ki1114097-CONTENT          PERU                           8                    NA                1.2914146   1.1807473   1.4020818
6-12 months    ki1114097-CONTENT          PERU                           9                    NA                1.2101130   1.1214812   1.2987448
6-12 months    ki1114097-CONTENT          PERU                           10                   NA                1.2548097   1.1624027   1.3472167
6-12 months    ki1114097-CONTENT          PERU                           11                   NA                1.3622636   1.2698932   1.4546339
6-12 months    ki1114097-CONTENT          PERU                           12                   NA                1.3836836   1.1723118   1.5950554
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.5209762   1.4707310   1.5712213
6-12 months    ki1119695-PROBIT           BELARUS                        2                    NA                1.5227332   1.4669394   1.5785270
6-12 months    ki1119695-PROBIT           BELARUS                        3                    NA                1.4995679   1.4498488   1.5492871
6-12 months    ki1119695-PROBIT           BELARUS                        4                    NA                1.4518579   1.4082146   1.4955011
6-12 months    ki1119695-PROBIT           BELARUS                        5                    NA                1.4441679   1.3986667   1.4896691
6-12 months    ki1119695-PROBIT           BELARUS                        6                    NA                1.4487145   1.4142799   1.4831491
6-12 months    ki1119695-PROBIT           BELARUS                        7                    NA                1.4509703   1.3803427   1.5215980
6-12 months    ki1119695-PROBIT           BELARUS                        8                    NA                1.4382899   1.3775115   1.4990683
6-12 months    ki1119695-PROBIT           BELARUS                        9                    NA                1.4564369   1.3980901   1.5147838
6-12 months    ki1119695-PROBIT           BELARUS                        10                   NA                1.4646975   1.4167649   1.5126301
6-12 months    ki1119695-PROBIT           BELARUS                        11                   NA                1.4752482   1.4279990   1.5224974
6-12 months    ki1119695-PROBIT           BELARUS                        12                   NA                1.4979000   1.4560608   1.5397392
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2111699   1.1760089   1.2463309
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.2017349   1.1638928   1.2395769
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                1.2260532   1.1793648   1.2727416
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                1.2426943   1.2057171   1.2796715
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                1.2228330   1.1809566   1.2647094
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                1.1542533   1.1133402   1.1951665
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                1.1593639   1.1228776   1.1958502
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                1.1829335   1.1478887   1.2179784
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                1.1859554   1.1512990   1.2206118
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                1.1612259   1.1236400   1.1988119
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                1.2010952   1.1715044   1.2306860
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                1.2192069   1.1827150   1.2556988
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.2969686   1.2199915   1.3739457
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                1.3233322   1.2509617   1.3957027
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    NA                1.3696972   1.2676762   1.4717182
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    NA                1.2435982   1.1716968   1.3154996
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    NA                1.2754821   1.1942272   1.3567369
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    NA                1.2516900   1.1587910   1.3445891
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    NA                1.1768674   1.0856024   1.2681324
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    NA                1.3392428   1.2675655   1.4109200
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    NA                1.2260092   1.1485109   1.3035075
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   NA                1.4100464   1.3370807   1.4830122
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   NA                1.2339944   1.1551325   1.3128563
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   NA                1.1740311   1.0864022   1.2616600
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0539560   1.0339174   1.0739945
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.0554449   1.0343778   1.0765120
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.1028560   1.0828321   1.1228798
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                1.1228141   1.1036003   1.1420278
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                1.1444106   1.1206660   1.1681552
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                1.1390710   1.1147438   1.1633982
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                1.1584304   1.1338345   1.1830264
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                1.1549201   1.1331265   1.1767137
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                1.1178052   1.0962945   1.1393160
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                1.1142600   1.0953594   1.1331607
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                1.0893287   1.0702772   1.1083802
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                1.0655161   1.0470882   1.0839439
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.0882172   1.0104381   1.1659964
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.1949665   0.9980679   1.3918652
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.1843862   1.1483841   1.2203882
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                1.1783071   1.1540640   1.2025501
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                1.1916479   1.1674704   1.2158254
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                1.2042302   1.1702963   1.2381641
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                1.2276413   1.2009788   1.2543039
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                1.2151431   1.1824600   1.2478262
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                1.2076319   1.1752364   1.2400273
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                1.2356941   1.1972146   1.2741735
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                1.2111350   1.1730284   1.2492416
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                1.2171394   1.1475215   1.2867573
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8801243   0.8014011   0.9588475
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8175813   0.7619669   0.8731957
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.7924316   0.7448047   0.8400585
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.8785014   0.8221880   0.9348147
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                0.8175387   0.7579550   0.8771224
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                0.8005165   0.6914699   0.9095631
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                0.8674989   0.8292833   0.9057145
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                0.8329785   0.7804130   0.8855439
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                0.8443637   0.7907505   0.8979770
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                0.8727056   0.8293698   0.9160414
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                0.8590991   0.7997147   0.9184835
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                0.8598993   0.8210481   0.8987505
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.9853178   0.8696762   1.1009594
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.0160142   0.9270505   1.1049779
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.0526237   0.9462076   1.1590398
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.1449761   1.0179059   1.2720464
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                1.0275567   0.9338369   1.1212765
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                0.8590585   0.7679361   0.9501809
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                0.9594663   0.8754186   1.0435141
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                0.8681467   0.8114478   0.9248456
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                0.9508907   0.8848104   1.0169710
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                0.9690115   0.8555339   1.0824891
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                0.9072051   0.8523156   0.9620947
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                1.0087857   0.8456593   1.1719120
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8247092   0.7585861   0.8908322
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8580250   0.8050393   0.9110108
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8767333   0.8010525   0.9524140
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.8822586   0.8173263   0.9471909
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                0.8527137   0.7749272   0.9305001
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                0.9131408   0.8503022   0.9759794
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                0.8990827   0.8293758   0.9687895
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                0.8678060   0.8213045   0.9143074
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                0.8682571   0.8144641   0.9220500
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                0.8690062   0.8192390   0.9187734
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                0.9085482   0.8618089   0.9552875
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                0.9251020   0.8877036   0.9625004
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8603983   0.8207795   0.9000172
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8544066   0.8070764   0.9017369
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8291306   0.7708233   0.8874378
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8919229   0.8502819   0.9335638
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                0.8515505   0.8050422   0.8980588
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                0.8485863   0.7945900   0.9025826
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                0.8939100   0.8441974   0.9436226
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                0.8596018   0.8125926   0.9066109
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                0.8633283   0.7855688   0.9410878
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                0.8496727   0.7914548   0.9078907
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                0.8549999   0.8014186   0.9085811
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                0.8857174   0.8274742   0.9439605
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8249269   0.7834476   0.8664063
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8477177   0.7990007   0.8964346
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8262196   0.7564890   0.8959503
12-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.7796223   0.7062556   0.8529891
12-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.8385721   0.7634375   0.9137067
12-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.8742088   0.7806501   0.9677675
12-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.8584124   0.7795739   0.9372509
12-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.8611189   0.7615184   0.9607194
12-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.8752445   0.7993463   0.9511426
12-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.8717501   0.8019930   0.9415072
12-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.8671825   0.7962793   0.9380857
12-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.8271772   0.7592409   0.8951134
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8640030   0.7846244   0.9433817
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.7784795   0.6807505   0.8762086
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.9002243   0.7999692   1.0004794
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.9734078   0.8976085   1.0492071
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                0.8625823   0.7705632   0.9546014
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                0.9047537   0.8218269   0.9876806
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                0.8572724   0.8205306   0.8940142
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                0.9045023   0.8113975   0.9976070
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                0.9267951   0.8728090   0.9807813
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                0.8764444   0.8091071   0.9437817
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                0.8418074   0.7776693   0.9059455
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                0.8426412   0.7934511   0.8918313
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7545605   0.6714412   0.8376799
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7449730   0.6633742   0.8265717
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7184985   0.6508785   0.7861186
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7034662   0.5591121   0.8478203
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                0.7694833   0.6742193   0.8647472
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                0.7426490   0.6657845   0.8195134
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                0.8259978   0.7406204   0.9113751
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                0.8389372   0.7707279   0.9071464
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                0.8465533   0.7648639   0.9282427
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                0.7264044   0.6442804   0.8085285
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                0.7010955   0.6441822   0.7580087
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                0.8061933   0.7551445   0.8572421
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7629751   0.6820475   0.8439027
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.8371928   0.7269902   0.9473953
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.7002580   0.6140680   0.7864481
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.7083368   0.6469898   0.7696838
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.7583235   0.6682486   0.8483985
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.7410421   0.6362435   0.8458407
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.7953282   0.7029350   0.8877214
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.6751174   0.5173121   0.8329228
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.7235626   0.6097780   0.8373472
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.7676179   0.6939755   0.8412602
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.6650364   0.5904093   0.7396636
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.7777959   0.6958118   0.8597800
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8520749   0.7809774   0.9231723
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8748286   0.7999623   0.9496950
12-24 months   ki1000108-IRC              INDIA                          3                    NA                0.8243617   0.7621445   0.8865789
12-24 months   ki1000108-IRC              INDIA                          4                    NA                0.8783481   0.7670033   0.9896928
12-24 months   ki1000108-IRC              INDIA                          5                    NA                0.7924238   0.7171851   0.8676626
12-24 months   ki1000108-IRC              INDIA                          6                    NA                0.8056724   0.7375437   0.8738011
12-24 months   ki1000108-IRC              INDIA                          7                    NA                0.7601950   0.6931160   0.8272740
12-24 months   ki1000108-IRC              INDIA                          8                    NA                0.8058751   0.7582556   0.8534946
12-24 months   ki1000108-IRC              INDIA                          9                    NA                0.7879814   0.7048821   0.8710808
12-24 months   ki1000108-IRC              INDIA                          10                   NA                0.8233797   0.7661966   0.8805628
12-24 months   ki1000108-IRC              INDIA                          11                   NA                0.8768697   0.8183995   0.9353400
12-24 months   ki1000108-IRC              INDIA                          12                   NA                0.8658156   0.8110132   0.9206180
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7946164   0.7407177   0.8485152
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.7592220   0.7203125   0.7981316
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.7615386   0.7194194   0.8036577
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.7003061   0.6541167   0.7464956
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.7003873   0.6545870   0.7461875
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.7127175   0.6590483   0.7663868
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.7508410   0.7041667   0.7975154
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.7694769   0.7053544   0.8335995
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.8050564   0.7364507   0.8736621
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.7465818   0.6984238   0.7947398
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7614465   0.7085989   0.8142940
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.7599631   0.7193117   0.8006146
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.8217915   0.7496660   0.8939170
12-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.7957772   0.7257055   0.8658489
12-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.8798998   0.8197234   0.9400761
12-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.7747598   0.7129317   0.8365879
12-24 months   ki1114097-CMIN             BANGLADESH                     5                    NA                0.8241558   0.7378119   0.9104997
12-24 months   ki1114097-CMIN             BANGLADESH                     6                    NA                0.6892460   0.5684280   0.8100640
12-24 months   ki1114097-CMIN             BANGLADESH                     7                    NA                0.8771097   0.7473197   1.0068996
12-24 months   ki1114097-CMIN             BANGLADESH                     8                    NA                0.7277808   0.6518612   0.8037004
12-24 months   ki1114097-CMIN             BANGLADESH                     9                    NA                0.8273664   0.7289464   0.9257865
12-24 months   ki1114097-CMIN             BANGLADESH                     10                   NA                0.7482551   0.6803561   0.8161542
12-24 months   ki1114097-CMIN             BANGLADESH                     11                   NA                0.7718897   0.6809523   0.8628270
12-24 months   ki1114097-CMIN             BANGLADESH                     12                   NA                0.7684763   0.7222933   0.8146593
12-24 months   ki1114097-CMIN             PERU                           1                    NA                0.8669166   0.8346634   0.8991698
12-24 months   ki1114097-CMIN             PERU                           2                    NA                0.8020965   0.7349995   0.8691935
12-24 months   ki1114097-CMIN             PERU                           3                    NA                0.8635348   0.8163271   0.9107426
12-24 months   ki1114097-CMIN             PERU                           4                    NA                0.7546037   0.6627898   0.8464175
12-24 months   ki1114097-CMIN             PERU                           5                    NA                0.8573350   0.7888470   0.9258231
12-24 months   ki1114097-CMIN             PERU                           6                    NA                0.8714457   0.8097713   0.9331200
12-24 months   ki1114097-CMIN             PERU                           7                    NA                0.8171268   0.7841568   0.8500968
12-24 months   ki1114097-CMIN             PERU                           8                    NA                0.7582212   0.6758204   0.8406221
12-24 months   ki1114097-CMIN             PERU                           9                    NA                0.8693796   0.8038611   0.9348981
12-24 months   ki1114097-CMIN             PERU                           10                   NA                0.8009413   0.7205098   0.8813728
12-24 months   ki1114097-CMIN             PERU                           11                   NA                0.8433893   0.7864641   0.9003146
12-24 months   ki1114097-CMIN             PERU                           12                   NA                0.8315180   0.7650217   0.8980143
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.9279991   0.6573983   1.1985998
12-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.8507940   0.7578563   0.9437318
12-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.9034732   0.7885969   1.0183495
12-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.8757376   0.8155177   0.9359575
12-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.8627285   0.7149171   1.0105399
12-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.8792713   0.8114448   0.9470979
12-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.8658315   0.7607206   0.9709424
12-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.9133653   0.8544428   0.9722878
12-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.8809963   0.7841552   0.9778374
12-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.7953516   0.7419877   0.8487155
12-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.8071884   0.6924243   0.9219524
12-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.8066454   0.6596676   0.9536232
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7985133   0.7442529   0.8527737
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.8795954   0.8372815   0.9219092
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.8610502   0.7980159   0.9240844
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.8247166   0.7776022   0.8718310
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.8516116   0.8122589   0.8909642
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.7978078   0.7374565   0.8581590
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.8890302   0.8207730   0.9572875
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.8450183   0.8028031   0.8872335
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.9086540   0.8538660   0.9634419
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.8289615   0.7471331   0.9107900
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.7943114   0.7393651   0.8492577
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.8318267   0.7379422   0.9257111
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7757327   0.7573112   0.7941543
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7881908   0.7683218   0.8080598
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.7858789   0.7682151   0.8035427
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.7979839   0.7802427   0.8157251
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.7945125   0.7722286   0.8167963
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.7859350   0.7663169   0.8055531
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.8036401   0.7869226   0.8203575
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.7980472   0.7806095   0.8154850
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.8014617   0.7846279   0.8182954
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.8038789   0.7879009   0.8198569
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.8117791   0.7986163   0.8249419
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.8030494   0.7883834   0.8177153
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8583946   0.8235084   0.8932808
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.8467693   0.8261523   0.8673864
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.8290126   0.8132343   0.8447909
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.8341277   0.8212849   0.8469705
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.8516816   0.8372225   0.8661407
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.8638064   0.8473343   0.8802784
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.8473478   0.8343309   0.8603647
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.8652849   0.8509598   0.8796099
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.8548612   0.8404510   0.8692715
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.8625778   0.8432813   0.8818743
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.8404889   0.8173073   0.8636705
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.8575477   0.8274033   0.8876922


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3713239   3.3503969   3.3922510
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184443   3.7081005   3.7287881
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8837264   1.8224393   1.9450135
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957288   1.7598510   1.8316067
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9746255   1.9546695   1.9945815
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201861   1.9097195   1.9306528
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1210558   1.0926349   1.1494766
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1960560   1.1745115   1.2176004
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1083850   1.0774528   1.1393172
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                1.0568796   1.0059921   1.1077672
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1979731   1.1870461   1.2089002
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069878   1.1002423   1.1137334
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2032186   1.1928228   1.2136143
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8803730   0.8630530   0.8976931
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.8385504   0.8202134   0.8568875
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967156   0.7913996   0.8020317
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8491886   0.8437514   0.8546258


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0177467   -0.2771331    0.3126265
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0788551   -0.3588955    0.2011853
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0695179   -0.2003693    0.3394051
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0102550   -0.2940235    0.3145334
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0378463   -0.3055440    0.2298514
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0588300   -0.2981610    0.4158209
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.1747973   -0.4449342    0.0953396
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.2242921   -0.4969469    0.0483628
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.1802279   -0.5062528    0.1457971
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.2560258   -0.5672995    0.0552480
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.1320460   -0.4065014    0.1424094
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.5897378    0.0532606    1.1262151
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.2336441   -0.2964438    0.7637320
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.4142992   -0.1033334    0.9319319
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.3912097   -0.0998146    0.8822339
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.0735999   -0.5235451    0.6707450
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.4007406   -0.1755682    0.9770494
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0226200   -0.5975369    0.6427769
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.0678424   -0.3899847    0.5256695
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.0777603   -0.4482284    0.6037491
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.1911168   -0.2613829    0.6436165
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.4689731   -0.1009033    1.0388495
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0497033   -0.3064438    0.4058504
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.2375691   -0.1298587    0.6049969
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.2992026   -0.0678184    0.6662236
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    1                  0.0505098   -0.3564739    0.4574936
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    1                  0.1993968   -0.1756951    0.5744887
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    1                  0.1766496   -0.2210473    0.5743465
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    1                  0.0768597   -0.2870005    0.4407199
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.2558037   -0.1792358    0.6908432
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   1                  0.1951639   -0.2070574    0.5973852
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0524320   -0.2645948    0.3694589
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.1742766   -0.2424950    0.5910482
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0152268   -0.3160541    0.3465077
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1785898   -0.4994668    0.1422871
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0889654   -0.3106190    0.4885499
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0654766   -0.2124612    0.3434144
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    1                  0.2822302   -0.0455363    0.6099967
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1273908   -0.4890724    0.2342908
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    1                  0.1641729   -0.2487646    0.5771104
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1028218   -0.2324740    0.4381175
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.0737861   -0.3946400    0.2470678
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0657167   -0.2805596    0.4119929
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.1224410   -0.5738076    0.3289256
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0016038   -0.2704575    0.2672498
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.2585372    0.0083172    0.5087572
0-3 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0990070   -0.1342231    0.3322371
0-3 months     ki0047075b-MAL-ED          PERU                           5                    1                 -0.3079969   -0.5784294   -0.0375644
0-3 months     ki0047075b-MAL-ED          PERU                           6                    1                 -0.1594690   -0.4628309    0.1438928
0-3 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.0510322   -0.2903436    0.1882793
0-3 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0459793   -0.3034174    0.2114589
0-3 months     ki0047075b-MAL-ED          PERU                           9                    1                  0.1194061   -0.1263854    0.3651977
0-3 months     ki0047075b-MAL-ED          PERU                           10                   1                  0.0876777   -0.1444211    0.3197765
0-3 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.0777356   -0.3250718    0.1696006
0-3 months     ki0047075b-MAL-ED          PERU                           12                   1                 -0.1927880   -0.4770314    0.0914553
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.2736174   -0.7218166    0.1745818
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1161402   -0.4184780    0.6507584
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2679775   -0.1936889    0.7296440
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.1221877   -0.6447607    0.4003853
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0420244   -0.4664158    0.3823670
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0303102   -0.3904865    0.4511069
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1143428   -0.3438960    0.5725816
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0883679   -0.3574523    0.5341880
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.2102000   -0.1803660    0.6007659
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0352462   -0.4313573    0.5018497
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1905628   -0.6145187    0.2333930
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.2114064   -0.4996005    0.0767878
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1309342   -0.4343242    0.1724557
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1348303   -0.5795411    0.3098805
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.2195584   -0.5118065    0.0726897
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.2522962   -0.7240724    0.2194800
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.3846484   -0.6789064   -0.0903905
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.1268917   -0.5076588    0.2538755
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0506354   -0.3442684    0.2429976
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.2316346   -0.5315698    0.0683007
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.2416948   -0.5248675    0.0414780
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.3469848   -0.6321507   -0.0618188
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.3171472   -0.8905757    0.2562814
0-3 months     ki1000108-IRC              INDIA                          3                    1                 -0.4111787   -0.9661396    0.1437823
0-3 months     ki1000108-IRC              INDIA                          4                    1                 -0.6899019   -1.1582889   -0.2215148
0-3 months     ki1000108-IRC              INDIA                          5                    1                 -1.0294897   -1.4974102   -0.5615692
0-3 months     ki1000108-IRC              INDIA                          6                    1                  0.0557809   -0.4573907    0.5689525
0-3 months     ki1000108-IRC              INDIA                          7                    1                 -0.1268682   -0.5512914    0.2975549
0-3 months     ki1000108-IRC              INDIA                          8                    1                 -0.0072989   -0.4321316    0.4175339
0-3 months     ki1000108-IRC              INDIA                          9                    1                  0.0857856   -0.5575897    0.7291608
0-3 months     ki1000108-IRC              INDIA                          10                   1                 -0.0114794   -0.4369742    0.4140154
0-3 months     ki1000108-IRC              INDIA                          11                   1                 -0.0985176   -0.5163510    0.3193157
0-3 months     ki1000108-IRC              INDIA                          12                   1                 -0.3351596   -0.7404437    0.0701246
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0543154   -0.0951265    0.2037573
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.1008841   -0.0507150    0.2524833
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                 -0.0837668   -0.2986302    0.1310967
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.1285916   -0.1920082   -0.0651751
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.0284015   -0.1465324    0.0897293
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.2275339   -0.3046111   -0.1504567
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.1815177   -0.3247225   -0.0383128
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.1408899   -0.2502972   -0.0314826
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.1379938   -0.3545450    0.0785573
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.1431901   -0.3061566    0.0197763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                 -0.2049422   -0.3437248   -0.0661596
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0004097   -0.2727777    0.2719583
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.1685949   -0.4172881    0.0800983
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.1424418   -0.4004111    0.1155274
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.3244566   -0.5801707   -0.0687426
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.3167806   -0.5933716   -0.0401896
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.3014679   -0.5632050   -0.0397308
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.4237364   -0.7427415   -0.1047313
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.3330777   -0.6397567   -0.0263987
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.2781781   -0.5423097   -0.0140466
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.1710427   -0.4234138    0.0813283
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0873383   -0.3327821    0.1581056
0-3 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        2                    1                  0.0129352   -0.0752042    0.1010745
0-3 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0627053   -0.0482444    0.1736550
0-3 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0311829   -0.0959547    0.1583205
0-3 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0128867   -0.1181086    0.1438821
0-3 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.1275257   -0.0222524    0.2773039
0-3 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0602456   -0.0918286    0.2123199
0-3 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0694144   -0.0962851    0.2351140
0-3 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0548054   -0.0967248    0.2063356
0-3 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0269960   -0.0915590    0.1455511
0-3 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0445644   -0.0751641    0.1642929
0-3 months     ki1119695-PROBIT           BELARUS                        12                   1                  0.0957697   -0.0180998    0.2096392
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0431838   -0.0617055    0.1480731
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0357868   -0.1308765    0.0593029
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.1781106   -0.2783859   -0.0778352
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.2027194   -0.3053038   -0.1001349
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.4071842   -0.5094646   -0.3049038
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3060369   -0.4018586   -0.2102151
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.2715875   -0.3648932   -0.1782818
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.2463196   -0.3356330   -0.1570061
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.2599884   -0.3569362   -0.1630406
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.2256976   -0.3246137   -0.1267816
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0991217   -0.1938392   -0.0044042
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0251775   -0.0631840    0.0128291
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0317846   -0.0710810    0.0075118
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0031939   -0.0418903    0.0482781
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0135556   -0.0637649    0.0366537
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0105134   -0.0338031    0.0548300
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0405029   -0.0842918    0.0032860
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0765611   -0.1194441   -0.0336782
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.2040885   -0.2454090   -0.1627681
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.2070131   -0.2450777   -0.1689484
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1722704   -0.2105435   -0.1339973
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0588902   -0.0977285   -0.0200519
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0546712   -0.1496810    0.0403387
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 -0.2095888   -0.3033939   -0.1157837
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    2                 -0.0147159   -0.1422162    0.1127845
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 -0.0607043   -0.2206324    0.0992238
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 -0.1734299   -0.3231174   -0.0237423
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 -0.3062982   -0.4444772   -0.1681193
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 -0.3597982   -0.4977400   -0.2218564
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 -0.4262871   -0.5691070   -0.2834672
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0333582   -0.2502999    0.1835835
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0663450   -0.2762303    0.1435403
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.1111425   -0.2952413    0.0729563
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0869012   -0.0833038    0.2571063
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0327159   -0.2175037    0.1520718
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0632741   -0.2414548    0.1149065
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0141530   -0.2422506    0.2139445
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.1061728   -0.0580374    0.2703829
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0443734   -0.1447422    0.2334890
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.1383648   -0.0547027    0.3314324
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1421526   -0.0286380    0.3129432
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0700489   -0.3491803    0.4892781
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.2185866   -0.2034929    0.6406661
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2066631   -0.2634003    0.6767265
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0899001   -0.2984152    0.4782154
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.4032043   -0.9440546    0.1376460
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0714525   -0.6005538    0.4576487
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.1232754   -0.3846766    0.6312275
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.3438803   -0.0390420    0.7268025
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0645272   -0.4527795    0.3237252
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0377605   -0.3831043    0.4586254
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0908589   -0.3258496    0.5075674
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0788468   -0.3787911    0.2210975
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0795381   -0.2523510    0.4114271
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                 -0.2870862   -0.6750633    0.1008909
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0872642   -0.3839407    0.2094123
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    1                 -0.0958765   -0.4017722    0.2100191
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    1                 -0.2139400   -0.5676178    0.1397377
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    1                 -0.0519124   -0.3260774    0.2222526
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.0458125   -0.2704313    0.3620563
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   1                 -0.0986345   -0.4044337    0.2071646
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0386252   -0.2319233    0.3091737
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.0687535   -0.2673649    0.4048720
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.2167523   -0.4446716    0.0111670
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.2459967   -0.5032591    0.0112656
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.3523385   -0.5412274   -0.1634495
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.3601606   -0.5766031   -0.1437182
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.2317530   -0.4756960    0.0121900
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.2456843   -0.4494533   -0.0419153
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.2445769   -0.5085067    0.0193530
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.1249458   -0.4263701    0.1764785
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0287376   -0.1891022    0.2465773
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   1                  0.1498508   -0.0653927    0.3650943
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.1039801   -0.3377902    0.1298301
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.1543062   -0.4382103    0.1295979
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.2935661   -0.6027828    0.0156506
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0754016   -0.1985226    0.3493259
3-6 months     ki0047075b-MAL-ED          PERU                           5                    1                  0.3180725   -0.0094096    0.6455546
3-6 months     ki0047075b-MAL-ED          PERU                           6                    1                  0.0592438   -0.2877926    0.4062803
3-6 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.1457555   -0.4379660    0.1464549
3-6 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0980557   -0.3471479    0.1510365
3-6 months     ki0047075b-MAL-ED          PERU                           9                    1                 -0.3701288   -0.6801008   -0.0601569
3-6 months     ki0047075b-MAL-ED          PERU                           10                   1                 -0.0995864   -0.3752138    0.1760410
3-6 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.1305446   -0.3919873    0.1308982
3-6 months     ki0047075b-MAL-ED          PERU                           12                   1                  0.0380270   -0.2915530    0.3676070
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2137278   -0.1292956    0.5567512
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1056499   -0.3801982    0.5914981
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0076602   -0.3843328    0.3996533
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0481677   -0.4136517    0.3173163
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.2627387   -0.0868907    0.6123681
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0801238   -0.3846534    0.2244059
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1003841   -0.2989125    0.4996807
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.0412474   -0.3408754    0.2583807
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.1232988   -0.4346148    0.1880172
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0091155   -0.3640356    0.3458046
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1718916   -0.4659473    0.1221641
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0392341   -0.2915748    0.3700429
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1811693   -0.5248501    0.1625114
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.2875982   -0.6018234    0.0266269
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0776332   -0.2401651    0.3954315
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0886640   -0.2471790    0.4245070
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2145851   -0.1010593    0.5302295
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.1441769   -0.3089761    0.5973300
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2806851   -0.0525729    0.6139430
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.1157005   -0.4331692    0.2017682
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0819316   -0.3951238    0.2312607
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.1009371   -0.2253454    0.4272195
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.5879870   -1.0064794   -0.1694945
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.7120090   -1.1304348   -0.2935832
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.3635370   -0.7991376    0.0720636
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.6614490   -1.0819215   -0.2409765
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.5857091   -1.0193265   -0.1520917
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 -0.6132982   -1.0641549   -0.1624415
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.2944014   -0.9998994    0.4110967
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.2068171   -0.7695972    0.3559629
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.0164078   -0.5461440    0.5133284
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.1322072   -0.2743662    0.5387806
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.1496261   -0.3307251    0.6299772
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                 -0.1335187   -0.4161261    0.1490886
3-6 months     ki1000108-IRC              INDIA                          3                    1                  0.0216155   -0.2537314    0.2969623
3-6 months     ki1000108-IRC              INDIA                          4                    1                 -0.1835059   -0.4149675    0.0479557
3-6 months     ki1000108-IRC              INDIA                          5                    1                 -0.3977332   -0.6674570   -0.1280093
3-6 months     ki1000108-IRC              INDIA                          6                    1                 -0.0637926   -0.3699127    0.2423275
3-6 months     ki1000108-IRC              INDIA                          7                    1                 -0.0362990   -0.3191264    0.2465284
3-6 months     ki1000108-IRC              INDIA                          8                    1                 -0.0539991   -0.3328291    0.2248309
3-6 months     ki1000108-IRC              INDIA                          9                    1                  0.2232327   -0.0859816    0.5324470
3-6 months     ki1000108-IRC              INDIA                          10                   1                  0.2002733   -0.0290330    0.4295796
3-6 months     ki1000108-IRC              INDIA                          11                   1                  0.0325578   -0.2012362    0.2663518
3-6 months     ki1000108-IRC              INDIA                          12                   1                  0.1247174   -0.0916058    0.3410405
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1049343   -0.1706437    0.3805122
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.1082352   -0.0787022    0.2951726
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.1009319   -0.1504121    0.3522758
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.0300099   -0.3329476    0.2729278
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.0361478   -0.1488841    0.2211797
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0557432   -0.1467854    0.2582718
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.2341832    0.0596047    0.4087617
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.1604683   -0.0536114    0.3745479
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2077753    0.0561461    0.3594044
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.1257370   -0.0089934    0.2604674
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1985796    0.0609764    0.3361828
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0202581   -0.2472608    0.2067446
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0221655   -0.1723988    0.2167298
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0269003   -0.2417379    0.1879373
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0442407   -0.2041893    0.2926706
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0422507   -0.3077731    0.2232718
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0981447   -0.1229044    0.3191937
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.1272255   -0.1258230    0.3802740
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0697296   -0.1685436    0.3080028
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.1025265   -0.1220833    0.3271363
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0601824   -0.1278699    0.2482346
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.1874642   -0.0046160    0.3795444
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0854858   -0.0957004    0.2666719
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0147074   -0.1833176    0.1539028
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1795425   -0.3693176    0.0102325
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.1820446   -0.3668666    0.0027774
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.1968618   -0.3904582   -0.0032654
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.2366909   -0.4055134   -0.0678685
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0460788   -0.2151042    0.1229466
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0826481   -0.2499516    0.0846554
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.1135586   -0.2781607    0.0510434
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1190601   -0.2814032    0.0432830
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0332809   -0.1985921    0.1320303
3-6 months     ki1113344-GMS-Nepal        NEPAL                          6                    6                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          7                    6                 -0.0321001   -0.1406544    0.0764542
3-6 months     ki1113344-GMS-Nepal        NEPAL                          8                    6                  0.0121400   -0.0949080    0.1191881
3-6 months     ki1113344-GMS-Nepal        NEPAL                          9                    6                  0.1444833   -0.2262881    0.5152548
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0584319   -0.1878426    0.3047064
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                  0.0212363   -0.3627035    0.4051762
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.2554017   -0.0545383    0.5653417
3-6 months     ki1114097-CMIN             BANGLADESH                     5                    1                  0.3641452   -0.0478480    0.7761384
3-6 months     ki1114097-CMIN             BANGLADESH                     6                    1                  0.1059883   -0.2518482    0.4638247
3-6 months     ki1114097-CMIN             BANGLADESH                     7                    1                 -0.2364642   -0.5117867    0.0388583
3-6 months     ki1114097-CMIN             BANGLADESH                     8                    1                 -0.3098782   -0.6476327    0.0278762
3-6 months     ki1114097-CMIN             BANGLADESH                     9                    1                 -0.0132914   -0.2888008    0.2622179
3-6 months     ki1114097-CMIN             BANGLADESH                     10                   1                  0.1233547   -0.1515031    0.3982124
3-6 months     ki1114097-CMIN             BANGLADESH                     11                   1                  0.1271877   -0.1088659    0.3632412
3-6 months     ki1114097-CMIN             BANGLADESH                     12                   1                  0.1270027   -0.1553032    0.4093085
3-6 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                  0.2049664   -0.0637236    0.4736564
3-6 months     ki1114097-CMIN             PERU                           3                    1                  0.3801569    0.1165039    0.6438099
3-6 months     ki1114097-CMIN             PERU                           4                    1                  0.3658654    0.0986772    0.6330537
3-6 months     ki1114097-CMIN             PERU                           5                    1                  0.5058909    0.2157408    0.7960410
3-6 months     ki1114097-CMIN             PERU                           6                    1                  0.2142501   -0.0612295    0.4897296
3-6 months     ki1114097-CMIN             PERU                           7                    1                  0.2866946   -0.0264854    0.5998747
3-6 months     ki1114097-CMIN             PERU                           8                    1                  0.3614515    0.0799230    0.6429800
3-6 months     ki1114097-CMIN             PERU                           9                    1                  0.2554322   -0.0108407    0.5217052
3-6 months     ki1114097-CMIN             PERU                           10                   1                  0.3635463    0.0662713    0.6608214
3-6 months     ki1114097-CMIN             PERU                           11                   1                  0.2185642   -0.0523342    0.4894627
3-6 months     ki1114097-CMIN             PERU                           12                   1                  0.3774043    0.0955289    0.6592797
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                 -0.2272690   -0.4641933    0.0096552
3-6 months     ki1114097-CONTENT          PERU                           3                    1                 -0.1626585   -0.4091036    0.0837866
3-6 months     ki1114097-CONTENT          PERU                           4                    1                 -0.4234076   -0.7004151   -0.1464002
3-6 months     ki1114097-CONTENT          PERU                           5                    1                 -0.2313858   -0.4756889    0.0129174
3-6 months     ki1114097-CONTENT          PERU                           6                    1                 -0.2727774   -0.5585700    0.0130151
3-6 months     ki1114097-CONTENT          PERU                           7                    1                 -0.1168328   -0.3590605    0.1253948
3-6 months     ki1114097-CONTENT          PERU                           8                    1                  0.0624025   -0.1839723    0.3087773
3-6 months     ki1114097-CONTENT          PERU                           9                    1                 -0.0270021   -0.2903826    0.2363783
3-6 months     ki1114097-CONTENT          PERU                           10                   1                  0.0542230   -0.1977693    0.3062154
3-6 months     ki1114097-CONTENT          PERU                           11                   1                  0.0897647   -0.1754097    0.3549391
3-6 months     ki1114097-CONTENT          PERU                           12                   1                 -0.3395228   -0.6220678   -0.0569777
3-6 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        2                    1                 -0.0198165   -0.0977915    0.0581585
3-6 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0499183   -0.0563780    0.1562147
3-6 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.1045671   -0.0084897    0.2176240
3-6 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0938426   -0.0146509    0.2023361
3-6 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.0410423   -0.0584927    0.1405772
3-6 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0505628   -0.0669795    0.1681052
3-6 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0398866   -0.0794812    0.1592543
3-6 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0860868   -0.0018497    0.1740233
3-6 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0441922   -0.0508854    0.1392697
3-6 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0354606   -0.0476282    0.1185494
3-6 months     ki1119695-PROBIT           BELARUS                        12                   1                 -0.0066187   -0.1134392    0.1002018
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0499554   -0.0463115    0.1462223
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0729116   -0.1727867    0.0269635
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.1196058    0.0257778    0.2134338
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0782292   -0.0131850    0.1696433
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.3326019    0.2310956    0.4341081
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.0944575    0.0055675    0.1833475
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.0890173    0.0054003    0.1726343
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.0933743    0.0075066    0.1792421
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.1474435    0.0560236    0.2388634
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0472848   -0.0404021    0.1349717
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.1071243    0.0190081    0.1952404
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0405203   -0.0885323    0.0074916
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1250434   -0.1707725   -0.0793142
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.1590983   -0.2062913   -0.1119052
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.1575887   -0.2092094   -0.1059681
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.1961526   -0.2480545   -0.1442506
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.1807050   -0.2295119   -0.1318981
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0820299   -0.1271501   -0.0369097
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0285105   -0.0183430    0.0753641
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0838524    0.0399607    0.1277440
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0589575    0.0155428    0.1023721
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0337752   -0.0096975    0.0772479
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.1074111   -0.4122112    0.1973891
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0168278   -0.2316933    0.2653488
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.0457958   -0.2821418    0.1905502
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.1021628   -0.3448103    0.1404847
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 -0.1145041   -0.3756599    0.1466518
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.0970006   -0.3439824    0.1499813
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 -0.0169469   -0.2598978    0.2260040
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.0725214   -0.1856029    0.3306457
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.0958909   -0.1518894    0.3436712
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.1251735   -0.1286170    0.3789639
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.0862389   -0.1846944    0.3571721
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0487358   -0.1545266    0.0570550
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0330874   -0.0733752    0.1395501
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0528194   -0.1663889    0.0607502
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0146892   -0.1335818    0.1042034
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0736835   -0.0342602    0.1816272
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0654816   -0.0645875    0.1955507
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0185160   -0.0856446    0.1226766
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0061280   -0.1214629    0.1092068
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0057685   -0.1097652    0.1213022
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0440929   -0.1859204    0.0977346
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0284043   -0.0689235    0.1257321
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.2137369   -0.4366499    0.0091761
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0345106   -0.2389255    0.1699043
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0700084   -0.2904196    0.1504028
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0467486   -0.1595678    0.2530650
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.4552192    0.0822896    0.8281488
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.0409458   -0.2086567    0.2905482
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0778021   -0.1156360    0.2712402
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.1925069   -0.0181790    0.4031929
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.1648446   -0.0712054    0.4008946
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0714047   -0.1313501    0.2741595
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0328148   -0.2262080    0.2918376
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.1074791   -0.0186000    0.2335582
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.1524158    0.0084820    0.2963495
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0654135   -0.0741531    0.2049801
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.1624189    0.0325684    0.2922694
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.0516951   -0.0621495    0.1655396
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    1                  0.1463760    0.0024243    0.2903276
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.0495392   -0.0847686    0.1838470
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0308807   -0.0964006    0.1581620
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.0469581   -0.0837041    0.1776203
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.0147941   -0.1064202    0.1360083
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.0336899   -0.0885945    0.1559743
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0511480   -0.1676764    0.0653803
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0458180   -0.1762066    0.0845706
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0265671   -0.0843011    0.1374352
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0487390   -0.0642473    0.1617253
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.1349383    0.0149437    0.2549330
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1000853   -0.0071580    0.2073286
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.1582951    0.0476012    0.2689891
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1484878    0.0224243    0.2745513
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0783341   -0.0433536    0.2000217
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0327955   -0.0766345    0.1422256
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0440804   -0.0639949    0.1521556
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0755363   -0.0387737    0.1898464
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0989607   -0.0487112    0.2466326
6-12 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0565285   -0.2052544    0.0921974
6-12 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.0235073   -0.1684399    0.1214254
6-12 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0192176   -0.1420412    0.1804763
6-12 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0490881   -0.1727842    0.0746079
6-12 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.0733133   -0.0483191    0.1949457
6-12 months    ki0047075b-MAL-ED          PERU                           9                    1                  0.1157822   -0.0006702    0.2322347
6-12 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.0993579   -0.1112339    0.3099497
6-12 months    ki0047075b-MAL-ED          PERU                           11                   1                  0.0061432   -0.1149361    0.1272225
6-12 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.0577009   -0.1543179    0.0389161
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0204405   -0.2277512    0.1868702
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1153138   -0.0658333    0.2964609
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0539070   -0.2680021    0.1601881
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1016946   -0.0968273    0.3002166
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0716245   -0.3106415    0.1673924
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0046116   -0.1718767    0.1810999
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0031906   -0.2105481    0.2169293
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0114187   -0.1547705    0.1776078
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.0110198   -0.1951334    0.1730938
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0516599   -0.1469778    0.2502975
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0295376   -0.1332396    0.1923147
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0347747   -0.2203844    0.1508351
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.1311940   -0.0883459    0.3507338
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0381371   -0.2282542    0.1519801
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0352735   -0.2216320    0.1510849
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0111359   -0.1603007    0.1825726
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0345214   -0.2332065    0.1641636
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.1466491   -0.3987349    0.1054366
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.2095690   -0.3839330   -0.0352049
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0370148   -0.2227786    0.1487490
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0322786   -0.1534181    0.2179752
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0962176   -0.2746133    0.0821782
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.2309877   -0.5195392    0.0575637
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.1511752   -0.4434014    0.1410511
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.1809228   -0.4345793    0.0727336
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.1634105   -0.4181945    0.0913734
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.0129638   -0.2827883    0.2568608
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.0292244   -0.2288009    0.2872497
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.1972594   -0.1238547    0.5183734
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.0573871   -0.2297691    0.3445433
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.1627016   -0.4342781    0.1088749
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.0687527   -0.3188371    0.1813317
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.2197219   -0.4790358    0.0395920
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0112520   -0.1216154    0.1441193
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0197248   -0.1323681    0.0929184
6-12 months    ki1000108-IRC              INDIA                          4                    1                 -0.0276038   -0.1636613    0.1084537
6-12 months    ki1000108-IRC              INDIA                          5                    1                  0.0527644   -0.1018917    0.2074206
6-12 months    ki1000108-IRC              INDIA                          6                    1                  0.0763809   -0.0535168    0.2062786
6-12 months    ki1000108-IRC              INDIA                          7                    1                  0.1460089    0.0005952    0.2914226
6-12 months    ki1000108-IRC              INDIA                          8                    1                  0.0932026   -0.0293435    0.2157487
6-12 months    ki1000108-IRC              INDIA                          9                    1                  0.0238662   -0.1359965    0.1837288
6-12 months    ki1000108-IRC              INDIA                          10                   1                  0.0781796   -0.0336744    0.1900335
6-12 months    ki1000108-IRC              INDIA                          11                   1                  0.0820595   -0.0517839    0.2159030
6-12 months    ki1000108-IRC              INDIA                          12                   1                  0.0667251   -0.0551624    0.1886125
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0165708   -0.0957923    0.1289340
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 -0.0299992   -0.1599664    0.0999680
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0705155   -0.0088891    0.1499202
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1066431   -0.0162292    0.2295154
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.1306805    0.0457587    0.2156022
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0833777   -0.0440383    0.2107937
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.0118884   -0.1020310    0.0782542
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.0036391   -0.0992840    0.1065623
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0070551   -0.0788261    0.0647159
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0654976   -0.0351695    0.1661647
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.0353222   -0.0396290    0.1102733
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.0471690   -0.3749905    0.2806526
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    1                  0.0420958   -0.3790489    0.4632405
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    1                  0.3081374   -0.2368057    0.8530805
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    1                 -0.1233345   -0.3665849    0.1199160
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    1                 -0.0356296   -0.3337111    0.2624520
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    1                 -0.0733123   -0.3305789    0.1839542
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    1                  0.1243164   -0.5176524    0.7662852
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   1                 -0.0427868   -0.3347758    0.2492022
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   1                 -0.1385713   -0.3846196    0.1074770
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   1                 -0.1279883   -0.3979367    0.1419601
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0227240   -0.1179159    0.0724678
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0018473   -0.1010864    0.1047810
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0430423   -0.0592200    0.1453045
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0123910   -0.0971474    0.1219295
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.0716789   -0.0357980    0.1791557
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0450889   -0.0569052    0.1470831
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0360353   -0.1387205    0.0666498
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0431512   -0.0777184    0.1640209
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0772573   -0.0329951    0.1875098
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0721254   -0.0237126    0.1679634
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0124082   -0.1073522    0.0825358
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0114331   -0.1144816    0.1373478
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0495418   -0.0658509    0.1649346
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0542534   -0.0794997    0.1880065
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.1737131    0.0570356    0.2903907
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.1798743    0.0673736    0.2923749
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2222860    0.1115749    0.3329972
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2126818    0.1000078    0.3253559
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2437718    0.1345105    0.3530332
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.2305485    0.1249931    0.3361040
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.1606070    0.0613106    0.2599035
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0867215   -0.0205681    0.1940110
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0170570   -0.1236448    0.1577589
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0134429   -0.1140831    0.1409690
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0216068   -0.1525702    0.1957838
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                  0.0335036   -0.0786970    0.1457042
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.0695834   -0.0660997    0.2052666
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                  0.1414047    0.0167960    0.2660135
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                  0.0673615   -0.0468724    0.1815954
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                  0.0781855   -0.0597287    0.2160997
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                  0.0048097   -0.1214614    0.1310809
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.0788834   -0.0578132    0.2155800
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 -0.1203834   -0.3155718    0.0748050
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0084965   -0.1607033    0.1437103
6-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.0691326   -0.1120859    0.2503512
6-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0053248   -0.1534181    0.1427684
6-12 months    ki1114097-CMIN             BANGLADESH                     5                    1                 -0.0040647   -0.1522578    0.1441284
6-12 months    ki1114097-CMIN             BANGLADESH                     6                    1                 -0.1257950   -0.3201352    0.0685452
6-12 months    ki1114097-CMIN             BANGLADESH                     7                    1                  0.0511039   -0.1321800    0.2343878
6-12 months    ki1114097-CMIN             BANGLADESH                     8                    1                  0.2235410    0.0271412    0.4199408
6-12 months    ki1114097-CMIN             BANGLADESH                     9                    1                  0.1775894    0.0032264    0.3519523
6-12 months    ki1114097-CMIN             BANGLADESH                     10                   1                 -0.0809331   -0.2463453    0.0844790
6-12 months    ki1114097-CMIN             BANGLADESH                     11                   1                 -0.0063051   -0.1660868    0.1534767
6-12 months    ki1114097-CMIN             BANGLADESH                     12                   1                  0.0511577   -0.1201987    0.2225141
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 -0.2347034   -0.5624621    0.0930554
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.0976081   -0.3370046    0.1417884
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.0127287   -0.2101577    0.1847004
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                  0.0289183   -0.1746488    0.2324854
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.1085484   -0.3245794    0.1074827
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.2712973   -0.5380663   -0.0045282
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.1062705   -0.4079290    0.1953881
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                  0.0286598   -0.1915010    0.2488207
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 -0.1642513   -0.3975947    0.0690920
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.1515497   -0.3777047    0.0746052
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.0339789   -0.2449611    0.1770034
6-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           2                    1                 -0.0169651   -0.1297070    0.0957768
6-12 months    ki1114097-CMIN             PERU                           3                    1                  0.0168454   -0.0943036    0.1279944
6-12 months    ki1114097-CMIN             PERU                           4                    1                 -0.0197959   -0.1349467    0.0953550
6-12 months    ki1114097-CMIN             PERU                           5                    1                 -0.0056256   -0.1262758    0.1150247
6-12 months    ki1114097-CMIN             PERU                           6                    1                 -0.0073901   -0.1312031    0.1164229
6-12 months    ki1114097-CMIN             PERU                           7                    1                 -0.0458626   -0.1683765    0.0766513
6-12 months    ki1114097-CMIN             PERU                           8                    1                 -0.0273595   -0.1496595    0.0949405
6-12 months    ki1114097-CMIN             PERU                           9                    1                  0.0526099   -0.0911897    0.1964094
6-12 months    ki1114097-CMIN             PERU                           10                   1                 -0.0843466   -0.2123098    0.0436165
6-12 months    ki1114097-CMIN             PERU                           11                   1                 -0.1108653   -0.2241894    0.0024587
6-12 months    ki1114097-CMIN             PERU                           12                   1                  0.0338330   -0.0872562    0.1549221
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                  0.0064808   -0.1542316    0.1671932
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.1542768    0.0115801    0.2969736
6-12 months    ki1114097-CONTENT          PERU                           4                    1                  0.0023684   -0.1507144    0.1554513
6-12 months    ki1114097-CONTENT          PERU                           5                    1                  0.0294894   -0.1373097    0.1962884
6-12 months    ki1114097-CONTENT          PERU                           6                    1                 -0.0134075   -0.1756139    0.1487989
6-12 months    ki1114097-CONTENT          PERU                           7                    1                  0.0575131   -0.0939320    0.2089582
6-12 months    ki1114097-CONTENT          PERU                           8                    1                  0.0297316   -0.1408968    0.2003600
6-12 months    ki1114097-CONTENT          PERU                           9                    1                 -0.0515700   -0.2088036    0.1056637
6-12 months    ki1114097-CONTENT          PERU                           10                   1                 -0.0068733   -0.1662655    0.1525189
6-12 months    ki1114097-CONTENT          PERU                           11                   1                  0.1005806   -0.0587904    0.2599516
6-12 months    ki1114097-CONTENT          PERU                           12                   1                  0.1220006   -0.1260817    0.3700830
6-12 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        2                    1                  0.0017570   -0.0484037    0.0519177
6-12 months    ki1119695-PROBIT           BELARUS                        3                    1                 -0.0214082   -0.0798104    0.0369939
6-12 months    ki1119695-PROBIT           BELARUS                        4                    1                 -0.0691183   -0.1193214   -0.0189152
6-12 months    ki1119695-PROBIT           BELARUS                        5                    1                 -0.0768083   -0.1293089   -0.0243077
6-12 months    ki1119695-PROBIT           BELARUS                        6                    1                 -0.0722617   -0.1243164   -0.0202070
6-12 months    ki1119695-PROBIT           BELARUS                        7                    1                 -0.0700058   -0.1420405    0.0020288
6-12 months    ki1119695-PROBIT           BELARUS                        8                    1                 -0.0826863   -0.1446284   -0.0207442
6-12 months    ki1119695-PROBIT           BELARUS                        9                    1                 -0.0645392   -0.1253082   -0.0037702
6-12 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0562787   -0.1042618   -0.0082955
6-12 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0457279   -0.1008174    0.0093615
6-12 months    ki1119695-PROBIT           BELARUS                        12                   1                 -0.0230762   -0.0752303    0.0290780
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0094350   -0.0610908    0.0422207
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0148833   -0.0435641    0.0733307
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0315244   -0.0195011    0.0825500
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0116631   -0.0430171    0.0663434
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.0569166   -0.1108626   -0.0029705
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0518059   -0.1024769   -0.0011350
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0282364   -0.0778795    0.0214068
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0252145   -0.0745841    0.0241551
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.0499440   -0.1014124    0.0015245
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.0100747   -0.0560302    0.0358808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.0080370   -0.0426380    0.0587120
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0263636   -0.0792913    0.1320185
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    1                  0.0727286   -0.0550750    0.2005322
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    1                 -0.0533704   -0.1587045    0.0519637
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0214865   -0.1334143    0.0904413
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0452785   -0.1659256    0.0753685
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    1                 -0.1201012   -0.2394946   -0.0007078
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.0422742   -0.0629071    0.1474555
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    1                 -0.0709594   -0.1801906    0.0382718
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.1130778    0.0070143    0.2191413
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   1                 -0.0629742   -0.1731770    0.0472287
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   1                 -0.1229375   -0.2395749   -0.0063000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0014889   -0.0264834    0.0294613
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0489000    0.0201555    0.0776445
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0688581    0.0427125    0.0950037
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0904546    0.0601578    0.1207515
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0851150    0.0537079    0.1165221
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.1044745    0.0725395    0.1364095
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1009642    0.0716132    0.1303152
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0638493    0.0341857    0.0935129
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0603041    0.0337046    0.0869036
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0353727    0.0085011    0.0622444
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0115601   -0.0165566    0.0396767
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.1067493   -0.1022621    0.3157608
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0961689    0.0098546    0.1824833
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                  0.0900898    0.0087700    0.1714097
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                  0.1034307    0.0237494    0.1831120
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.1160130    0.0310009    0.2010251
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                  0.1394241    0.0580646    0.2207836
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.1269259    0.0437875    0.2100643
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.1194146    0.0345234    0.2043059
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.1474768    0.0603029    0.2346507
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.1229178    0.0364603    0.2093753
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.1289222    0.0243591    0.2334852
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0625430   -0.1589293    0.0338432
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0876927   -0.1797018    0.0043163
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0016230   -0.0984142    0.0951683
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0625856   -0.1613154    0.0361441
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0796078   -0.2141013    0.0548857
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0126254   -0.1001342    0.0748833
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0471458   -0.1418056    0.0475139
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0357606   -0.1310062    0.0594850
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0074187   -0.0972816    0.0824442
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0210252   -0.1196348    0.0775844
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0202250   -0.1080132    0.0675632
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0306964   -0.1152060    0.1765988
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0673059   -0.0898480    0.2244598
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1596583   -0.0121550    0.3314717
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0422389   -0.1066113    0.1910891
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.1262593   -0.2734879    0.0209693
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0258515   -0.1688095    0.1171065
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.1171711   -0.2459644    0.0116223
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.0344271   -0.1676171    0.0987629
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0163063   -0.1783252    0.1457127
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.0781127   -0.2061198    0.0498945
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0234679   -0.1764901    0.2234258
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0333159   -0.0514175    0.1180493
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0520241   -0.0484738    0.1525220
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0575494   -0.0351245    0.1502234
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    1                  0.0280045   -0.0740885    0.1300976
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.0884316   -0.0027876    0.1796509
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0743735   -0.0217061    0.1704532
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.0430968   -0.0377403    0.1239339
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.0435479   -0.0416926    0.1287884
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.0442970   -0.0384618    0.1270559
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.0838390    0.0028649    0.1648132
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.1003928    0.0244264    0.1763593
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0059917   -0.0677153    0.0557319
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0312678   -0.1017617    0.0392261
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0315245   -0.0259526    0.0890017
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0088478   -0.0699435    0.0522478
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.0118121   -0.0787841    0.0551600
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0335116   -0.0300572    0.0970805
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.0007966   -0.0622743    0.0606812
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                  0.0029299   -0.0843409    0.0902007
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.0107256   -0.0811457    0.0596945
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0053985   -0.0720363    0.0612394
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0253190   -0.0451219    0.0957599
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0227907   -0.0411927    0.0867741
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0012927   -0.0798424    0.0824278
12-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 -0.0453046   -0.1295852    0.0389760
12-24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0136452   -0.0721787    0.0994691
12-24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.0492819   -0.0530595    0.1516233
12-24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.0334855   -0.0555990    0.1225699
12-24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.0361920   -0.0717005    0.1440845
12-24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.0503175   -0.0361756    0.1368107
12-24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.0468232   -0.0343346    0.1279810
12-24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.0422556   -0.0398894    0.1244006
12-24 months   ki0047075b-MAL-ED          PERU                           12                   1                  0.0022502   -0.0773480    0.0818484
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0855235   -0.2114280    0.0403809
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0362213   -0.0916538    0.1640964
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1094048   -0.0003518    0.2191613
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0014207   -0.1229464    0.1201049
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.0407507   -0.0740440    0.1555454
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0067306   -0.0942002    0.0807390
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0404992   -0.0818505    0.1628490
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0627921   -0.0332052    0.1587893
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0124413   -0.0916513    0.1165340
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0221956   -0.1242479    0.0798566
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0213618   -0.1147461    0.0720225
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0095876   -0.1260659    0.1068907
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0360620   -0.1432128    0.0710889
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0510943   -0.2176684    0.1154798
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0149227   -0.1115053    0.1413508
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0119116   -0.1251237    0.1013005
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0714372   -0.0477187    0.1905931
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0843766   -0.0231470    0.1919003
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0919928   -0.0245491    0.2085346
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0281561   -0.1450030    0.0886908
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0534651   -0.1542021    0.0472719
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0516328   -0.0459111    0.1491767
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0742176   -0.0625079    0.2109432
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.0627171   -0.1809457    0.0555115
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.0546383   -0.1561899    0.0469133
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.0046516   -0.1257415    0.1164383
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.0219330   -0.1543416    0.1104755
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.0323531   -0.0904711    0.1551772
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.0878577   -0.2652043    0.0894889
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.0394125   -0.1790413    0.1002163
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.0046427   -0.1047761    0.1140615
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.0979387   -0.2080227    0.0121453
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.0148208   -0.1003776    0.1300192
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0227538   -0.0804927    0.1260002
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0277131   -0.1221897    0.0667635
12-24 months   ki1000108-IRC              INDIA                          4                    1                  0.0262732   -0.1058348    0.1583811
12-24 months   ki1000108-IRC              INDIA                          5                    1                 -0.0596510   -0.1631678    0.0438657
12-24 months   ki1000108-IRC              INDIA                          6                    1                 -0.0464024   -0.1448726    0.0520677
12-24 months   ki1000108-IRC              INDIA                          7                    1                 -0.0918799   -0.1896267    0.0058670
12-24 months   ki1000108-IRC              INDIA                          8                    1                 -0.0461998   -0.1317712    0.0393716
12-24 months   ki1000108-IRC              INDIA                          9                    1                 -0.0640935   -0.1734568    0.0452699
12-24 months   ki1000108-IRC              INDIA                          10                   1                 -0.0286952   -0.1199353    0.0625449
12-24 months   ki1000108-IRC              INDIA                          11                   1                  0.0247949   -0.0672574    0.1168472
12-24 months   ki1000108-IRC              INDIA                          12                   1                  0.0137407   -0.0760265    0.1035079
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0353944   -0.1018702    0.0310814
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0330778   -0.1014818    0.0353261
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0943103   -0.1652929   -0.0233276
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0942292   -0.1649592   -0.0234991
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0818989   -0.1579611   -0.0058366
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.0437754   -0.1150746    0.0275238
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0251395   -0.1089057    0.0586267
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0104400   -0.0768057    0.0976857
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.0480346   -0.1203137    0.0242445
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0331699   -0.1086546    0.0423147
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0346533   -0.1021634    0.0328568
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0260143   -0.1265733    0.0745448
12-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0581083   -0.0358240    0.1520406
12-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0470317   -0.1420306    0.0479673
12-24 months   ki1114097-CMIN             BANGLADESH                     5                    1                  0.0023644   -0.1101406    0.1148693
12-24 months   ki1114097-CMIN             BANGLADESH                     6                    1                 -0.1325455   -0.2732547    0.0081638
12-24 months   ki1114097-CMIN             BANGLADESH                     7                    1                  0.0553182   -0.0931659    0.2038023
12-24 months   ki1114097-CMIN             BANGLADESH                     8                    1                 -0.0940107   -0.1987288    0.0107074
12-24 months   ki1114097-CMIN             BANGLADESH                     9                    1                  0.0055750   -0.1164439    0.1275938
12-24 months   ki1114097-CMIN             BANGLADESH                     10                   1                 -0.0735363   -0.1725937    0.0255211
12-24 months   ki1114097-CMIN             BANGLADESH                     11                   1                 -0.0499018   -0.1659694    0.0661658
12-24 months   ki1114097-CMIN             BANGLADESH                     12                   1                 -0.0533152   -0.1389596    0.0323292
12-24 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           2                    1                 -0.0648201   -0.1392666    0.0096264
12-24 months   ki1114097-CMIN             PERU                           3                    1                 -0.0033818   -0.0605556    0.0537920
12-24 months   ki1114097-CMIN             PERU                           4                    1                 -0.1123130   -0.2096271   -0.0149988
12-24 months   ki1114097-CMIN             PERU                           5                    1                 -0.0095816   -0.0852842    0.0661210
12-24 months   ki1114097-CMIN             PERU                           6                    1                  0.0045291   -0.0650697    0.0741278
12-24 months   ki1114097-CMIN             PERU                           7                    1                 -0.0497898   -0.0959123   -0.0036672
12-24 months   ki1114097-CMIN             PERU                           8                    1                 -0.1086954   -0.1971836   -0.0202072
12-24 months   ki1114097-CMIN             PERU                           9                    1                  0.0024630   -0.0705640    0.0754900
12-24 months   ki1114097-CMIN             PERU                           10                   1                 -0.0659753   -0.1526326    0.0206820
12-24 months   ki1114097-CMIN             PERU                           11                   1                 -0.0235273   -0.0889547    0.0419002
12-24 months   ki1114097-CMIN             PERU                           12                   1                 -0.0353986   -0.1093042    0.0385069
12-24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 -0.0772050   -0.3574240    0.2030140
12-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 -0.0245259   -0.3218314    0.2727796
12-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 -0.0522615   -0.3272396    0.2227166
12-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 -0.0652706   -0.3847476    0.2542064
12-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0487277   -0.3256288    0.2281734
12-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0621676   -0.3485576    0.2242225
12-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 -0.0146337   -0.2887345    0.2594671
12-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 -0.0470028   -0.3356571    0.2416516
12-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 -0.1326475   -0.4094074    0.1441125
12-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 -0.1208107   -0.4067565    0.1651351
12-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 -0.1213537   -0.2997940    0.0570867
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0810820    0.0122732    0.1498909
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                  0.0625369   -0.0206347    0.1457084
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.0262033   -0.0456574    0.0980640
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                  0.0530982   -0.0139303    0.1201267
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0007056   -0.0818626    0.0804515
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                  0.0905169    0.0033204    0.1777135
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.0465050   -0.0222432    0.1152531
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.1101406    0.0330309    0.1872504
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.0304482   -0.0677357    0.1286322
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 -0.0042019   -0.0814243    0.0730204
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                  0.0333134   -0.0751232    0.1417499
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0124581   -0.0149845    0.0399007
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0101462   -0.0150075    0.0352999
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0222512   -0.0040434    0.0485458
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0187797   -0.0109502    0.0485097
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0102023   -0.0160097    0.0364142
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0279073    0.0031691    0.0526455
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0223145   -0.0026377    0.0472667
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0257289    0.0006746    0.0507832
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0281461    0.0037606    0.0525317
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0360464    0.0130876    0.0590051
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0273166    0.0042648    0.0503684
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0116253   -0.0521872    0.0289366
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0293820   -0.0681325    0.0093686
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.0242669   -0.0613425    0.0128087
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.0067130   -0.0444656    0.0310396
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.0054118   -0.0325300    0.0433536
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.0110468   -0.0483110    0.0262174
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.0068903   -0.0306394    0.0444200
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 -0.0035334   -0.0412090    0.0341423
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.0041832   -0.0356739    0.0440403
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 -0.0179057   -0.0596643    0.0238529
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 -0.0008469   -0.0469454    0.0452517
