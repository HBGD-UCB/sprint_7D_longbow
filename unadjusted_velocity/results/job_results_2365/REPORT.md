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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        brthmon    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              20     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2              21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3              23     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4              21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5              21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6              10     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7              18     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8              25     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9              21     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10             22     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11             14     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12             28     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              59     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2              51     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3              53     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4              46     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5              46     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6              44     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7              38     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8              37     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9              42     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10             46     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11             52     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12             52     566
0-3 months     ki1114097-CMIN             BANGLADESH                     1               5      43
0-3 months     ki1114097-CMIN             BANGLADESH                     2               4      43
0-3 months     ki1114097-CMIN             BANGLADESH                     3               3      43
0-3 months     ki1114097-CMIN             BANGLADESH                     4               4      43
0-3 months     ki1114097-CMIN             BANGLADESH                     5               6      43
0-3 months     ki1114097-CMIN             BANGLADESH                     6               2      43
0-3 months     ki1114097-CMIN             BANGLADESH                     7               7      43
0-3 months     ki1114097-CMIN             BANGLADESH                     8               4      43
0-3 months     ki1114097-CMIN             BANGLADESH                     9               3      43
0-3 months     ki1114097-CMIN             BANGLADESH                     11              2      43
0-3 months     ki1114097-CMIN             BANGLADESH                     12              3      43
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            1932   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2            1594   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3            1827   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4            1314   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5             943   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6             943   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7            1165   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8            1513   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9            1985   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10           2153   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11           2279   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12           2397   20045
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2             331    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3             369    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4             369    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5             156    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6              60    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7             159    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8             178    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9             130    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10             55    1807
0-3 months     ki1119695-PROBIT           BELARUS                        1             747   12745
0-3 months     ki1119695-PROBIT           BELARUS                        2             753   12745
0-3 months     ki1119695-PROBIT           BELARUS                        3             883   12745
0-3 months     ki1119695-PROBIT           BELARUS                        4             911   12745
0-3 months     ki1119695-PROBIT           BELARUS                        5             882   12745
0-3 months     ki1119695-PROBIT           BELARUS                        6             939   12745
0-3 months     ki1119695-PROBIT           BELARUS                        7            1212   12745
0-3 months     ki1119695-PROBIT           BELARUS                        8            1219   12745
0-3 months     ki1119695-PROBIT           BELARUS                        9            1172   12745
0-3 months     ki1119695-PROBIT           BELARUS                        10           1354   12745
0-3 months     ki1119695-PROBIT           BELARUS                        11           1256   12745
0-3 months     ki1119695-PROBIT           BELARUS                        12           1417   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              11     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2              19     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3              15     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4               8     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5              17     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6               7     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7              14     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8              17     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9              28     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10             17     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11             18     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12              9     180
0-3 months     ki1114097-CMIN             BRAZIL                         1               6      81
0-3 months     ki1114097-CMIN             BRAZIL                         2               6      81
0-3 months     ki1114097-CMIN             BRAZIL                         3              10      81
0-3 months     ki1114097-CMIN             BRAZIL                         4               6      81
0-3 months     ki1114097-CMIN             BRAZIL                         5               4      81
0-3 months     ki1114097-CMIN             BRAZIL                         6               5      81
0-3 months     ki1114097-CMIN             BRAZIL                         7               3      81
0-3 months     ki1114097-CMIN             BRAZIL                         8               7      81
0-3 months     ki1114097-CMIN             BRAZIL                         9               4      81
0-3 months     ki1114097-CMIN             BRAZIL                         10             15      81
0-3 months     ki1114097-CMIN             BRAZIL                         11             10      81
0-3 months     ki1114097-CMIN             BRAZIL                         12              5      81
0-3 months     ki1101329-Keneba           GAMBIA                         1             135    1276
0-3 months     ki1101329-Keneba           GAMBIA                         2             123    1276
0-3 months     ki1101329-Keneba           GAMBIA                         3             138    1276
0-3 months     ki1101329-Keneba           GAMBIA                         4              88    1276
0-3 months     ki1101329-Keneba           GAMBIA                         5              89    1276
0-3 months     ki1101329-Keneba           GAMBIA                         6              71    1276
0-3 months     ki1101329-Keneba           GAMBIA                         7              65    1276
0-3 months     ki1101329-Keneba           GAMBIA                         8             108    1276
0-3 months     ki1101329-Keneba           GAMBIA                         9             104    1276
0-3 months     ki1101329-Keneba           GAMBIA                         10            146    1276
0-3 months     ki1101329-Keneba           GAMBIA                         11             98    1276
0-3 months     ki1101329-Keneba           GAMBIA                         12            111    1276
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  2               2      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  3               2      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  5               1      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  6               4      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  7               2      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  8               1      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  9               8      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  11              1      22
0-3 months     ki1114097-CMIN             GUINEA-BISSAU                  12              1      22
0-3 months     ki0047075b-MAL-ED          INDIA                          1              16     201
0-3 months     ki0047075b-MAL-ED          INDIA                          2              16     201
0-3 months     ki0047075b-MAL-ED          INDIA                          3              20     201
0-3 months     ki0047075b-MAL-ED          INDIA                          4              12     201
0-3 months     ki0047075b-MAL-ED          INDIA                          5               7     201
0-3 months     ki0047075b-MAL-ED          INDIA                          6              16     201
0-3 months     ki0047075b-MAL-ED          INDIA                          7              22     201
0-3 months     ki0047075b-MAL-ED          INDIA                          8              17     201
0-3 months     ki0047075b-MAL-ED          INDIA                          9              17     201
0-3 months     ki0047075b-MAL-ED          INDIA                          10             23     201
0-3 months     ki0047075b-MAL-ED          INDIA                          11             20     201
0-3 months     ki0047075b-MAL-ED          INDIA                          12             15     201
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               6      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          2               1      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          3               9      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          4              10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          5              10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          6               9      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          7               7      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          8               4      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          9               8      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          10             10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          11              9      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          12              4      87
0-3 months     ki1000108-IRC              INDIA                          1              33     377
0-3 months     ki1000108-IRC              INDIA                          2              26     377
0-3 months     ki1000108-IRC              INDIA                          3              25     377
0-3 months     ki1000108-IRC              INDIA                          4              21     377
0-3 months     ki1000108-IRC              INDIA                          5              21     377
0-3 months     ki1000108-IRC              INDIA                          6              34     377
0-3 months     ki1000108-IRC              INDIA                          7              35     377
0-3 months     ki1000108-IRC              INDIA                          8              37     377
0-3 months     ki1000108-IRC              INDIA                          9              24     377
0-3 months     ki1000108-IRC              INDIA                          10             37     377
0-3 months     ki1000108-IRC              INDIA                          11             37     377
0-3 months     ki1000108-IRC              INDIA                          12             47     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1              83    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2              66    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3              63    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4              59    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5              76    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6              86    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7             102    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8             138    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9             144    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10            126    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11            114    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12            111    1168
0-3 months     ki0047075b-MAL-ED          NEPAL                          1              17     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          2              14     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          3              13     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          4              18     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          5              19     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          6              10     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          7              15     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          8              15     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          9              12     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          10             14     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          11             18     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          12             10     175
0-3 months     ki1000109-EE               PAKISTAN                       1              73     297
0-3 months     ki1000109-EE               PAKISTAN                       2              57     297
0-3 months     ki1000109-EE               PAKISTAN                       3              28     297
0-3 months     ki1000109-EE               PAKISTAN                       4              13     297
0-3 months     ki1000109-EE               PAKISTAN                       10              4     297
0-3 months     ki1000109-EE               PAKISTAN                       11             52     297
0-3 months     ki1000109-EE               PAKISTAN                       12             70     297
0-3 months     ki1000109-ResPak           PAKISTAN                       1               4      78
0-3 months     ki1000109-ResPak           PAKISTAN                       3               3      78
0-3 months     ki1000109-ResPak           PAKISTAN                       4              11      78
0-3 months     ki1000109-ResPak           PAKISTAN                       5              12      78
0-3 months     ki1000109-ResPak           PAKISTAN                       6              21      78
0-3 months     ki1000109-ResPak           PAKISTAN                       7               6      78
0-3 months     ki1000109-ResPak           PAKISTAN                       8               9      78
0-3 months     ki1000109-ResPak           PAKISTAN                       9               7      78
0-3 months     ki1000109-ResPak           PAKISTAN                       10              2      78
0-3 months     ki1000109-ResPak           PAKISTAN                       11              2      78
0-3 months     ki1000109-ResPak           PAKISTAN                       12              1      78
0-3 months     ki0047075b-MAL-ED          PERU                           1              40     271
0-3 months     ki0047075b-MAL-ED          PERU                           2              21     271
0-3 months     ki0047075b-MAL-ED          PERU                           3              22     271
0-3 months     ki0047075b-MAL-ED          PERU                           4              20     271
0-3 months     ki0047075b-MAL-ED          PERU                           5              26     271
0-3 months     ki0047075b-MAL-ED          PERU                           6              14     271
0-3 months     ki0047075b-MAL-ED          PERU                           7              22     271
0-3 months     ki0047075b-MAL-ED          PERU                           8              16     271
0-3 months     ki0047075b-MAL-ED          PERU                           9              22     271
0-3 months     ki0047075b-MAL-ED          PERU                           10             21     271
0-3 months     ki0047075b-MAL-ED          PERU                           11             29     271
0-3 months     ki0047075b-MAL-ED          PERU                           12             18     271
0-3 months     ki1114097-CMIN             PERU                           1               4      93
0-3 months     ki1114097-CMIN             PERU                           2               6      93
0-3 months     ki1114097-CMIN             PERU                           3               9      93
0-3 months     ki1114097-CMIN             PERU                           4              10      93
0-3 months     ki1114097-CMIN             PERU                           5              14      93
0-3 months     ki1114097-CMIN             PERU                           6              12      93
0-3 months     ki1114097-CMIN             PERU                           7               6      93
0-3 months     ki1114097-CMIN             PERU                           8               8      93
0-3 months     ki1114097-CMIN             PERU                           9               8      93
0-3 months     ki1114097-CMIN             PERU                           10              4      93
0-3 months     ki1114097-CMIN             PERU                           11              7      93
0-3 months     ki1114097-CMIN             PERU                           12              5      93
0-3 months     ki1114097-CONTENT          PERU                           2               2      29
0-3 months     ki1114097-CONTENT          PERU                           3               6      29
0-3 months     ki1114097-CONTENT          PERU                           4               3      29
0-3 months     ki1114097-CONTENT          PERU                           5               3      29
0-3 months     ki1114097-CONTENT          PERU                           6               4      29
0-3 months     ki1114097-CONTENT          PERU                           7               3      29
0-3 months     ki1114097-CONTENT          PERU                           8               5      29
0-3 months     ki1114097-CONTENT          PERU                           9               1      29
0-3 months     ki1114097-CONTENT          PERU                           12              2      29
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              26     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2              19     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3              13     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4              12     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5              14     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6              15     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8               7     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9              20     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10             24     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11             24     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12             33     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              18     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              28     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              17     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               9     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              17     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              16     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              22     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              11     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              20     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             20     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             24     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             27     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             770    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2             564    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3             709    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4             595    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5             584    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6             640    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7             682    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8             754    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9             704    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10            536    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11            622    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12            704    7864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              18     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2              19     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3              20     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4              21     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5              20     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6               9     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7              17     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8              23     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9              21     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10             22     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11             15     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12             26     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              49     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2              47     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3              48     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4              41     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5              42     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6              41     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7              38     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8              34     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9              42     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10             40     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11             50     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12             51     523
3-6 months     ki1114097-CMIN             BANGLADESH                     1              17     185
3-6 months     ki1114097-CMIN             BANGLADESH                     2              18     185
3-6 months     ki1114097-CMIN             BANGLADESH                     3              14     185
3-6 months     ki1114097-CMIN             BANGLADESH                     4              16     185
3-6 months     ki1114097-CMIN             BANGLADESH                     5              14     185
3-6 months     ki1114097-CMIN             BANGLADESH                     6               8     185
3-6 months     ki1114097-CMIN             BANGLADESH                     7              13     185
3-6 months     ki1114097-CMIN             BANGLADESH                     8              11     185
3-6 months     ki1114097-CMIN             BANGLADESH                     9              13     185
3-6 months     ki1114097-CMIN             BANGLADESH                     10             21     185
3-6 months     ki1114097-CMIN             BANGLADESH                     11             22     185
3-6 months     ki1114097-CMIN             BANGLADESH                     12             18     185
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            1044   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2             945   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3             958   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4             866   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5             751   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6             845   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7             979   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8            1088   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9            1217   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10           1277   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11           1402   12580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12           1208   12580
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2              38    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3             439    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4             418    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5             180    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6              62    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7             178    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8             235    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9             199    1840
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10             91    1840
3-6 months     ki1119695-PROBIT           BELARUS                        1             836   13309
3-6 months     ki1119695-PROBIT           BELARUS                        2             827   13309
3-6 months     ki1119695-PROBIT           BELARUS                        3             917   13309
3-6 months     ki1119695-PROBIT           BELARUS                        4             952   13309
3-6 months     ki1119695-PROBIT           BELARUS                        5             949   13309
3-6 months     ki1119695-PROBIT           BELARUS                        6             919   13309
3-6 months     ki1119695-PROBIT           BELARUS                        7            1253   13309
3-6 months     ki1119695-PROBIT           BELARUS                        8            1211   13309
3-6 months     ki1119695-PROBIT           BELARUS                        9            1252   13309
3-6 months     ki1119695-PROBIT           BELARUS                        10           1389   13309
3-6 months     ki1119695-PROBIT           BELARUS                        11           1344   13309
3-6 months     ki1119695-PROBIT           BELARUS                        12           1460   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              15     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2              23     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3              16     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4              11     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5              21     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6               8     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7              16     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8              16     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9              30     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10             19     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11             21     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12             12     208
3-6 months     ki1114097-CMIN             BRAZIL                         1               6      81
3-6 months     ki1114097-CMIN             BRAZIL                         2               6      81
3-6 months     ki1114097-CMIN             BRAZIL                         3               9      81
3-6 months     ki1114097-CMIN             BRAZIL                         4               6      81
3-6 months     ki1114097-CMIN             BRAZIL                         5               3      81
3-6 months     ki1114097-CMIN             BRAZIL                         6               6      81
3-6 months     ki1114097-CMIN             BRAZIL                         7               3      81
3-6 months     ki1114097-CMIN             BRAZIL                         8               8      81
3-6 months     ki1114097-CMIN             BRAZIL                         9               4      81
3-6 months     ki1114097-CMIN             BRAZIL                         10             14      81
3-6 months     ki1114097-CMIN             BRAZIL                         11             10      81
3-6 months     ki1114097-CMIN             BRAZIL                         12              6      81
3-6 months     ki1101329-Keneba           GAMBIA                         1             140    1397
3-6 months     ki1101329-Keneba           GAMBIA                         2             140    1397
3-6 months     ki1101329-Keneba           GAMBIA                         3             141    1397
3-6 months     ki1101329-Keneba           GAMBIA                         4             102    1397
3-6 months     ki1101329-Keneba           GAMBIA                         5              93    1397
3-6 months     ki1101329-Keneba           GAMBIA                         6              76    1397
3-6 months     ki1101329-Keneba           GAMBIA                         7              66    1397
3-6 months     ki1101329-Keneba           GAMBIA                         8             122    1397
3-6 months     ki1101329-Keneba           GAMBIA                         9             125    1397
3-6 months     ki1101329-Keneba           GAMBIA                         10            151    1397
3-6 months     ki1101329-Keneba           GAMBIA                         11            121    1397
3-6 months     ki1101329-Keneba           GAMBIA                         12            120    1397
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  1              14     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  2               9     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  3              15     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  4               3     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  5               4     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  6              13     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  7              11     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  8               4     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  9              26     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  10              8     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  11             14     133
3-6 months     ki1114097-CMIN             GUINEA-BISSAU                  12             12     133
3-6 months     ki0047075b-MAL-ED          INDIA                          1              19     229
3-6 months     ki0047075b-MAL-ED          INDIA                          2              17     229
3-6 months     ki0047075b-MAL-ED          INDIA                          3              22     229
3-6 months     ki0047075b-MAL-ED          INDIA                          4              13     229
3-6 months     ki0047075b-MAL-ED          INDIA                          5               8     229
3-6 months     ki0047075b-MAL-ED          INDIA                          6              18     229
3-6 months     ki0047075b-MAL-ED          INDIA                          7              21     229
3-6 months     ki0047075b-MAL-ED          INDIA                          8              21     229
3-6 months     ki0047075b-MAL-ED          INDIA                          9              20     229
3-6 months     ki0047075b-MAL-ED          INDIA                          10             26     229
3-6 months     ki0047075b-MAL-ED          INDIA                          11             25     229
3-6 months     ki0047075b-MAL-ED          INDIA                          12             19     229
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              26     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2              12     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3              29     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4              37     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          5              30     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          6              31     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          7              34     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          8              12     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          9              16     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          10             25     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          11             35     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          12             20     307
3-6 months     ki1000108-IRC              INDIA                          1              36     397
3-6 months     ki1000108-IRC              INDIA                          2              28     397
3-6 months     ki1000108-IRC              INDIA                          3              26     397
3-6 months     ki1000108-IRC              INDIA                          4              21     397
3-6 months     ki1000108-IRC              INDIA                          5              21     397
3-6 months     ki1000108-IRC              INDIA                          6              37     397
3-6 months     ki1000108-IRC              INDIA                          7              36     397
3-6 months     ki1000108-IRC              INDIA                          8              43     397
3-6 months     ki1000108-IRC              INDIA                          9              26     397
3-6 months     ki1000108-IRC              INDIA                          10             36     397
3-6 months     ki1000108-IRC              INDIA                          11             38     397
3-6 months     ki1000108-IRC              INDIA                          12             49     397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1              75    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2              63    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3              66    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4              59    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5              76    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6              78    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7              96    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8             139    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9             144    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10            125    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11            101    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12            102    1124
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              20     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          2              19     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          3              16     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          4              22     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          5              20     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          6              18     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          7              17     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          8              24     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          9              16     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          10             21     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          11             24     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          12             16     233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          4               1     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          6             103     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          7             186     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          8             181     471
3-6 months     ki1000109-EE               PAKISTAN                       1              80     331
3-6 months     ki1000109-EE               PAKISTAN                       2              59     331
3-6 months     ki1000109-EE               PAKISTAN                       3              31     331
3-6 months     ki1000109-EE               PAKISTAN                       4              15     331
3-6 months     ki1000109-EE               PAKISTAN                       10              4     331
3-6 months     ki1000109-EE               PAKISTAN                       11             67     331
3-6 months     ki1000109-EE               PAKISTAN                       12             75     331
3-6 months     ki1000109-ResPak           PAKISTAN                       1               6     156
3-6 months     ki1000109-ResPak           PAKISTAN                       2               7     156
3-6 months     ki1000109-ResPak           PAKISTAN                       3              18     156
3-6 months     ki1000109-ResPak           PAKISTAN                       4              13     156
3-6 months     ki1000109-ResPak           PAKISTAN                       5              27     156
3-6 months     ki1000109-ResPak           PAKISTAN                       6              32     156
3-6 months     ki1000109-ResPak           PAKISTAN                       7              12     156
3-6 months     ki1000109-ResPak           PAKISTAN                       8              18     156
3-6 months     ki1000109-ResPak           PAKISTAN                       9              16     156
3-6 months     ki1000109-ResPak           PAKISTAN                       10              2     156
3-6 months     ki1000109-ResPak           PAKISTAN                       12              5     156
3-6 months     ki0047075b-MAL-ED          PERU                           1              38     267
3-6 months     ki0047075b-MAL-ED          PERU                           2              19     267
3-6 months     ki0047075b-MAL-ED          PERU                           3              22     267
3-6 months     ki0047075b-MAL-ED          PERU                           4              19     267
3-6 months     ki0047075b-MAL-ED          PERU                           5              26     267
3-6 months     ki0047075b-MAL-ED          PERU                           6              15     267
3-6 months     ki0047075b-MAL-ED          PERU                           7              22     267
3-6 months     ki0047075b-MAL-ED          PERU                           8              15     267
3-6 months     ki0047075b-MAL-ED          PERU                           9              23     267
3-6 months     ki0047075b-MAL-ED          PERU                           10             19     267
3-6 months     ki0047075b-MAL-ED          PERU                           11             31     267
3-6 months     ki0047075b-MAL-ED          PERU                           12             18     267
3-6 months     ki1114097-CMIN             PERU                           1              28     407
3-6 months     ki1114097-CMIN             PERU                           2              42     407
3-6 months     ki1114097-CMIN             PERU                           3              44     407
3-6 months     ki1114097-CMIN             PERU                           4              37     407
3-6 months     ki1114097-CMIN             PERU                           5              31     407
3-6 months     ki1114097-CMIN             PERU                           6              40     407
3-6 months     ki1114097-CMIN             PERU                           7              26     407
3-6 months     ki1114097-CMIN             PERU                           8              49     407
3-6 months     ki1114097-CMIN             PERU                           9              23     407
3-6 months     ki1114097-CMIN             PERU                           10             34     407
3-6 months     ki1114097-CMIN             PERU                           11             21     407
3-6 months     ki1114097-CMIN             PERU                           12             32     407
3-6 months     ki1114097-CONTENT          PERU                           1               9     214
3-6 months     ki1114097-CONTENT          PERU                           2              18     214
3-6 months     ki1114097-CONTENT          PERU                           3              30     214
3-6 months     ki1114097-CONTENT          PERU                           4              19     214
3-6 months     ki1114097-CONTENT          PERU                           5              14     214
3-6 months     ki1114097-CONTENT          PERU                           6              13     214
3-6 months     ki1114097-CONTENT          PERU                           7              28     214
3-6 months     ki1114097-CONTENT          PERU                           8              23     214
3-6 months     ki1114097-CONTENT          PERU                           9              26     214
3-6 months     ki1114097-CONTENT          PERU                           10             14     214
3-6 months     ki1114097-CONTENT          PERU                           11              9     214
3-6 months     ki1114097-CONTENT          PERU                           12             11     214
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2              21     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3              13     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4              12     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5              12     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6              15     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7              22     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8               8     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9              18     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10             26     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11             23     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12             34     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              20     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              29     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              16     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               9     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              16     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              19     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              23     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              12     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              19     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             21     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             26     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             29     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             116    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             123    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             115    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             122    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             122    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             117    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             159    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             157    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             148    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            171    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            162    1660
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            148    1660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1             574    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2             405    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3             530    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4             458    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5             434    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6             471    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7             472    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8             565    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9             550    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10            399    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11            490    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12            541    5889
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              17     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2              18     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3              18     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4              21     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5              19     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6               8     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7              17     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8              22     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9              20     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10             22     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11             12     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12             26     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              43     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2              43     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3              44     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4              37     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5              38     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6              37     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7              38     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8              30     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9              34     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10             39     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11             49     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12             50     482
6-12 months    ki1114097-CMIN             BANGLADESH                     1              16     164
6-12 months    ki1114097-CMIN             BANGLADESH                     2              15     164
6-12 months    ki1114097-CMIN             BANGLADESH                     3               8     164
6-12 months    ki1114097-CMIN             BANGLADESH                     4              19     164
6-12 months    ki1114097-CMIN             BANGLADESH                     5              13     164
6-12 months    ki1114097-CMIN             BANGLADESH                     6               6     164
6-12 months    ki1114097-CMIN             BANGLADESH                     7               9     164
6-12 months    ki1114097-CMIN             BANGLADESH                     8               9     164
6-12 months    ki1114097-CMIN             BANGLADESH                     9              15     164
6-12 months    ki1114097-CMIN             BANGLADESH                     10             19     164
6-12 months    ki1114097-CMIN             BANGLADESH                     11             18     164
6-12 months    ki1114097-CMIN             BANGLADESH                     12             17     164
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             860    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2             794    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3             823    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4             781    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5             694    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6             692    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7             718    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8             707    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9             830    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10            989    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11           1063    9839
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12            888    9839
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2              74    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3             547    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4             579    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5             474    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6             325    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7             423    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8             357    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9             290    3160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10             91    3160
6-12 months    ki1119695-PROBIT           BELARUS                        1             817   12896
6-12 months    ki1119695-PROBIT           BELARUS                        2             792   12896
6-12 months    ki1119695-PROBIT           BELARUS                        3             851   12896
6-12 months    ki1119695-PROBIT           BELARUS                        4             910   12896
6-12 months    ki1119695-PROBIT           BELARUS                        5             936   12896
6-12 months    ki1119695-PROBIT           BELARUS                        6             884   12896
6-12 months    ki1119695-PROBIT           BELARUS                        7            1203   12896
6-12 months    ki1119695-PROBIT           BELARUS                        8            1174   12896
6-12 months    ki1119695-PROBIT           BELARUS                        9            1238   12896
6-12 months    ki1119695-PROBIT           BELARUS                        10           1364   12896
6-12 months    ki1119695-PROBIT           BELARUS                        11           1326   12896
6-12 months    ki1119695-PROBIT           BELARUS                        12           1401   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1              15     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2              21     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3              16     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4              10     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5              20     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6               7     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7              16     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8              13     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9              28     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10             16     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11             21     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12             11     194
6-12 months    ki1114097-CMIN             BRAZIL                         1               9      93
6-12 months    ki1114097-CMIN             BRAZIL                         2               5      93
6-12 months    ki1114097-CMIN             BRAZIL                         3              10      93
6-12 months    ki1114097-CMIN             BRAZIL                         4               9      93
6-12 months    ki1114097-CMIN             BRAZIL                         5               4      93
6-12 months    ki1114097-CMIN             BRAZIL                         6               6      93
6-12 months    ki1114097-CMIN             BRAZIL                         7               4      93
6-12 months    ki1114097-CMIN             BRAZIL                         8              10      93
6-12 months    ki1114097-CMIN             BRAZIL                         9               7      93
6-12 months    ki1114097-CMIN             BRAZIL                         10             12      93
6-12 months    ki1114097-CMIN             BRAZIL                         11              9      93
6-12 months    ki1114097-CMIN             BRAZIL                         12              8      93
6-12 months    ki1101329-Keneba           GAMBIA                         1             128    1306
6-12 months    ki1101329-Keneba           GAMBIA                         2             123    1306
6-12 months    ki1101329-Keneba           GAMBIA                         3             123    1306
6-12 months    ki1101329-Keneba           GAMBIA                         4              91    1306
6-12 months    ki1101329-Keneba           GAMBIA                         5              88    1306
6-12 months    ki1101329-Keneba           GAMBIA                         6              82    1306
6-12 months    ki1101329-Keneba           GAMBIA                         7              61    1306
6-12 months    ki1101329-Keneba           GAMBIA                         8             113    1306
6-12 months    ki1101329-Keneba           GAMBIA                         9             118    1306
6-12 months    ki1101329-Keneba           GAMBIA                         10            136    1306
6-12 months    ki1101329-Keneba           GAMBIA                         11            124    1306
6-12 months    ki1101329-Keneba           GAMBIA                         12            119    1306
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1              20     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2              15     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3              20     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4              20     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5              16     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6              12     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7              11     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8               6     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9              11     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10             20     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11             14     181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12             16     181
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1               5     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2              10     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3              27     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4               8     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5               7     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6               9     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7              11     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8              10     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9              31     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10             21     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11             11     176
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12             26     176
6-12 months    ki0047075b-MAL-ED          INDIA                          1              19     224
6-12 months    ki0047075b-MAL-ED          INDIA                          2              17     224
6-12 months    ki0047075b-MAL-ED          INDIA                          3              19     224
6-12 months    ki0047075b-MAL-ED          INDIA                          4              13     224
6-12 months    ki0047075b-MAL-ED          INDIA                          5               8     224
6-12 months    ki0047075b-MAL-ED          INDIA                          6              19     224
6-12 months    ki0047075b-MAL-ED          INDIA                          7              21     224
6-12 months    ki0047075b-MAL-ED          INDIA                          8              21     224
6-12 months    ki0047075b-MAL-ED          INDIA                          9              18     224
6-12 months    ki0047075b-MAL-ED          INDIA                          10             26     224
6-12 months    ki0047075b-MAL-ED          INDIA                          11             24     224
6-12 months    ki0047075b-MAL-ED          INDIA                          12             19     224
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              29     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              14     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              27     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              35     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              31     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              33     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              34     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              16     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              17     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             26     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             39     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             22     323
6-12 months    ki1000108-IRC              INDIA                          1              37     400
6-12 months    ki1000108-IRC              INDIA                          2              28     400
6-12 months    ki1000108-IRC              INDIA                          3              27     400
6-12 months    ki1000108-IRC              INDIA                          4              16     400
6-12 months    ki1000108-IRC              INDIA                          5              21     400
6-12 months    ki1000108-IRC              INDIA                          6              37     400
6-12 months    ki1000108-IRC              INDIA                          7              35     400
6-12 months    ki1000108-IRC              INDIA                          8              44     400
6-12 months    ki1000108-IRC              INDIA                          9              27     400
6-12 months    ki1000108-IRC              INDIA                          10             37     400
6-12 months    ki1000108-IRC              INDIA                          11             40     400
6-12 months    ki1000108-IRC              INDIA                          12             51     400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1              71    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2              64    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3              65    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4              59    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5              79    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6              79    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7             103    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8             134    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9             145    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10            131    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11            100    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12            107    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              21     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              29     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              18     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               2     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              10     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              20     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              29     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              55     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              52     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             42     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             22     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             32     332
6-12 months    ki1148112-LCNI-5           MALAWI                         1              33     434
6-12 months    ki1148112-LCNI-5           MALAWI                         2              34     434
6-12 months    ki1148112-LCNI-5           MALAWI                         3              17     434
6-12 months    ki1148112-LCNI-5           MALAWI                         4              22     434
6-12 months    ki1148112-LCNI-5           MALAWI                         5              28     434
6-12 months    ki1148112-LCNI-5           MALAWI                         6              18     434
6-12 months    ki1148112-LCNI-5           MALAWI                         7              36     434
6-12 months    ki1148112-LCNI-5           MALAWI                         8              53     434
6-12 months    ki1148112-LCNI-5           MALAWI                         9              38     434
6-12 months    ki1148112-LCNI-5           MALAWI                         10             48     434
6-12 months    ki1148112-LCNI-5           MALAWI                         11             54     434
6-12 months    ki1148112-LCNI-5           MALAWI                         12             53     434
6-12 months    ki0047075b-MAL-ED          NEPAL                          1              20     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          2              17     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          3              16     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          4              22     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          5              19     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          6              18     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          7              18     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          8              24     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          9              15     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          10             20     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          11             24     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          12             17     230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          4               1     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          6             105     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          7             185     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          8             184     475
6-12 months    ki1000109-EE               PAKISTAN                       2               1       4
6-12 months    ki1000109-EE               PAKISTAN                       11              3       4
6-12 months    ki1000109-ResPak           PAKISTAN                       1               3     138
6-12 months    ki1000109-ResPak           PAKISTAN                       2               6     138
6-12 months    ki1000109-ResPak           PAKISTAN                       3              12     138
6-12 months    ki1000109-ResPak           PAKISTAN                       4              10     138
6-12 months    ki1000109-ResPak           PAKISTAN                       5              30     138
6-12 months    ki1000109-ResPak           PAKISTAN                       6              29     138
6-12 months    ki1000109-ResPak           PAKISTAN                       7              13     138
6-12 months    ki1000109-ResPak           PAKISTAN                       8              15     138
6-12 months    ki1000109-ResPak           PAKISTAN                       9              16     138
6-12 months    ki1000109-ResPak           PAKISTAN                       10              1     138
6-12 months    ki1000109-ResPak           PAKISTAN                       12              3     138
6-12 months    ki0047075b-MAL-ED          PERU                           1              33     237
6-12 months    ki0047075b-MAL-ED          PERU                           2              17     237
6-12 months    ki0047075b-MAL-ED          PERU                           3              19     237
6-12 months    ki0047075b-MAL-ED          PERU                           4              15     237
6-12 months    ki0047075b-MAL-ED          PERU                           5              21     237
6-12 months    ki0047075b-MAL-ED          PERU                           6              15     237
6-12 months    ki0047075b-MAL-ED          PERU                           7              20     237
6-12 months    ki0047075b-MAL-ED          PERU                           8              14     237
6-12 months    ki0047075b-MAL-ED          PERU                           9              22     237
6-12 months    ki0047075b-MAL-ED          PERU                           10             17     237
6-12 months    ki0047075b-MAL-ED          PERU                           11             26     237
6-12 months    ki0047075b-MAL-ED          PERU                           12             18     237
6-12 months    ki1114097-CMIN             PERU                           1              16     360
6-12 months    ki1114097-CMIN             PERU                           2              35     360
6-12 months    ki1114097-CMIN             PERU                           3              39     360
6-12 months    ki1114097-CMIN             PERU                           4              36     360
6-12 months    ki1114097-CMIN             PERU                           5              27     360
6-12 months    ki1114097-CMIN             PERU                           6              34     360
6-12 months    ki1114097-CMIN             PERU                           7              29     360
6-12 months    ki1114097-CMIN             PERU                           8              44     360
6-12 months    ki1114097-CMIN             PERU                           9              33     360
6-12 months    ki1114097-CMIN             PERU                           10             33     360
6-12 months    ki1114097-CMIN             PERU                           11             10     360
6-12 months    ki1114097-CMIN             PERU                           12             24     360
6-12 months    ki1114097-CONTENT          PERU                           1               9     213
6-12 months    ki1114097-CONTENT          PERU                           2              18     213
6-12 months    ki1114097-CONTENT          PERU                           3              30     213
6-12 months    ki1114097-CONTENT          PERU                           4              19     213
6-12 months    ki1114097-CONTENT          PERU                           5              14     213
6-12 months    ki1114097-CONTENT          PERU                           6              13     213
6-12 months    ki1114097-CONTENT          PERU                           7              27     213
6-12 months    ki1114097-CONTENT          PERU                           8              23     213
6-12 months    ki1114097-CONTENT          PERU                           9              26     213
6-12 months    ki1114097-CONTENT          PERU                           10             14     213
6-12 months    ki1114097-CONTENT          PERU                           11              9     213
6-12 months    ki1114097-CONTENT          PERU                           12             11     213
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              19     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              13     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              12     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              12     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              14     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              21     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               8     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              18     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             24     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             21     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             33     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              15     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              27     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              16     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               9     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              16     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              19     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              22     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              10     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              20     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             18     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             25     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             26     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              74    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              84    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              71    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              88    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              78    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              83    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             103    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             109    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             102    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            109    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            102    1083
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             80    1083
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             413    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             300    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             422    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             356    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             355    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             377    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             357    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             432    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             403    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            323    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            419    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            414    4571
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              13     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2              16     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3              19     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4              20     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5              17     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6               7     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7              18     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8              22     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9              18     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10             20     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11             10     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12             26     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              41     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2              36     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3              39     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4              33     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5              35     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6              30     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7              34     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8              27     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9              24     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10             33     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11             43     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12             46     421
12-24 months   ki1114097-CMIN             BANGLADESH                     1              14     138
12-24 months   ki1114097-CMIN             BANGLADESH                     2              15     138
12-24 months   ki1114097-CMIN             BANGLADESH                     3               9     138
12-24 months   ki1114097-CMIN             BANGLADESH                     4              13     138
12-24 months   ki1114097-CMIN             BANGLADESH                     5              10     138
12-24 months   ki1114097-CMIN             BANGLADESH                     6               6     138
12-24 months   ki1114097-CMIN             BANGLADESH                     7               7     138
12-24 months   ki1114097-CMIN             BANGLADESH                     8               9     138
12-24 months   ki1114097-CMIN             BANGLADESH                     9              12     138
12-24 months   ki1114097-CMIN             BANGLADESH                     10             14     138
12-24 months   ki1114097-CMIN             BANGLADESH                     11             16     138
12-24 months   ki1114097-CMIN             BANGLADESH                     12             13     138
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             416    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             345    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             425    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             325    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             230    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             282    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             325    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             320    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             386    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            476    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11            566    4653
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12            557    4653
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             545    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             583    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             526    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             476    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             355    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             403    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             373    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             288    3637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             88    3637
12-24 months   ki1119695-PROBIT           BELARUS                        1             172    2533
12-24 months   ki1119695-PROBIT           BELARUS                        2             121    2533
12-24 months   ki1119695-PROBIT           BELARUS                        3             191    2533
12-24 months   ki1119695-PROBIT           BELARUS                        4             208    2533
12-24 months   ki1119695-PROBIT           BELARUS                        5             211    2533
12-24 months   ki1119695-PROBIT           BELARUS                        6             173    2533
12-24 months   ki1119695-PROBIT           BELARUS                        7             224    2533
12-24 months   ki1119695-PROBIT           BELARUS                        8             203    2533
12-24 months   ki1119695-PROBIT           BELARUS                        9             244    2533
12-24 months   ki1119695-PROBIT           BELARUS                        10            239    2533
12-24 months   ki1119695-PROBIT           BELARUS                        11            236    2533
12-24 months   ki1119695-PROBIT           BELARUS                        12            311    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1              13     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2              16     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3              14     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4              10     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5              15     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6               6     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7              10     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8              13     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9              26     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10             13     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11             18     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12             11     165
12-24 months   ki1101329-Keneba           GAMBIA                         1             115    1175
12-24 months   ki1101329-Keneba           GAMBIA                         2             115    1175
12-24 months   ki1101329-Keneba           GAMBIA                         3             108    1175
12-24 months   ki1101329-Keneba           GAMBIA                         4              70    1175
12-24 months   ki1101329-Keneba           GAMBIA                         5              85    1175
12-24 months   ki1101329-Keneba           GAMBIA                         6              71    1175
12-24 months   ki1101329-Keneba           GAMBIA                         7              58    1175
12-24 months   ki1101329-Keneba           GAMBIA                         8             115    1175
12-24 months   ki1101329-Keneba           GAMBIA                         9             114    1175
12-24 months   ki1101329-Keneba           GAMBIA                         10            123    1175
12-24 months   ki1101329-Keneba           GAMBIA                         11             95    1175
12-24 months   ki1101329-Keneba           GAMBIA                         12            106    1175
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               1      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               6      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               4      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               4      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               6      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               7      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               2      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               9      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              7      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              1      50
12-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              3      50
12-24 months   ki0047075b-MAL-ED          INDIA                          1              19     225
12-24 months   ki0047075b-MAL-ED          INDIA                          2              18     225
12-24 months   ki0047075b-MAL-ED          INDIA                          3              19     225
12-24 months   ki0047075b-MAL-ED          INDIA                          4              14     225
12-24 months   ki0047075b-MAL-ED          INDIA                          5               8     225
12-24 months   ki0047075b-MAL-ED          INDIA                          6              18     225
12-24 months   ki0047075b-MAL-ED          INDIA                          7              22     225
12-24 months   ki0047075b-MAL-ED          INDIA                          8              20     225
12-24 months   ki0047075b-MAL-ED          INDIA                          9              18     225
12-24 months   ki0047075b-MAL-ED          INDIA                          10             26     225
12-24 months   ki0047075b-MAL-ED          INDIA                          11             24     225
12-24 months   ki0047075b-MAL-ED          INDIA                          12             19     225
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              29     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              15     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              24     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              39     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              32     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              33     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              35     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              15     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              17     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             26     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             38     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             21     324
12-24 months   ki1000108-IRC              INDIA                          1              37     396
12-24 months   ki1000108-IRC              INDIA                          2              28     396
12-24 months   ki1000108-IRC              INDIA                          3              27     396
12-24 months   ki1000108-IRC              INDIA                          4              15     396
12-24 months   ki1000108-IRC              INDIA                          5              20     396
12-24 months   ki1000108-IRC              INDIA                          6              37     396
12-24 months   ki1000108-IRC              INDIA                          7              35     396
12-24 months   ki1000108-IRC              INDIA                          8              44     396
12-24 months   ki1000108-IRC              INDIA                          9              27     396
12-24 months   ki1000108-IRC              INDIA                          10             36     396
12-24 months   ki1000108-IRC              INDIA                          11             40     396
12-24 months   ki1000108-IRC              INDIA                          12             50     396
12-24 months   ki1148112-LCNI-5           MALAWI                         1              21     310
12-24 months   ki1148112-LCNI-5           MALAWI                         2              21     310
12-24 months   ki1148112-LCNI-5           MALAWI                         3              12     310
12-24 months   ki1148112-LCNI-5           MALAWI                         4              12     310
12-24 months   ki1148112-LCNI-5           MALAWI                         5              22     310
12-24 months   ki1148112-LCNI-5           MALAWI                         6              12     310
12-24 months   ki1148112-LCNI-5           MALAWI                         7              30     310
12-24 months   ki1148112-LCNI-5           MALAWI                         8              43     310
12-24 months   ki1148112-LCNI-5           MALAWI                         9              23     310
12-24 months   ki1148112-LCNI-5           MALAWI                         10             39     310
12-24 months   ki1148112-LCNI-5           MALAWI                         11             38     310
12-24 months   ki1148112-LCNI-5           MALAWI                         12             37     310
12-24 months   ki0047075b-MAL-ED          NEPAL                          1              19     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          2              17     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          3              16     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          4              22     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          5              19     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          6              18     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          7              17     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          8              24     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          9              15     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          10             19     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          11             24     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          12             16     226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          6              30     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          7             172     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          8             165     367
12-24 months   ki0047075b-MAL-ED          PERU                           1              26     191
12-24 months   ki0047075b-MAL-ED          PERU                           2              17     191
12-24 months   ki0047075b-MAL-ED          PERU                           3              14     191
12-24 months   ki0047075b-MAL-ED          PERU                           4              11     191
12-24 months   ki0047075b-MAL-ED          PERU                           5              18     191
12-24 months   ki0047075b-MAL-ED          PERU                           6              11     191
12-24 months   ki0047075b-MAL-ED          PERU                           7              14     191
12-24 months   ki0047075b-MAL-ED          PERU                           8              12     191
12-24 months   ki0047075b-MAL-ED          PERU                           9              20     191
12-24 months   ki0047075b-MAL-ED          PERU                           10             14     191
12-24 months   ki0047075b-MAL-ED          PERU                           11             20     191
12-24 months   ki0047075b-MAL-ED          PERU                           12             14     191
12-24 months   ki1114097-CMIN             PERU                           1               2     199
12-24 months   ki1114097-CMIN             PERU                           2              22     199
12-24 months   ki1114097-CMIN             PERU                           3              25     199
12-24 months   ki1114097-CMIN             PERU                           4              19     199
12-24 months   ki1114097-CMIN             PERU                           5               8     199
12-24 months   ki1114097-CMIN             PERU                           6              19     199
12-24 months   ki1114097-CMIN             PERU                           7              27     199
12-24 months   ki1114097-CMIN             PERU                           8              19     199
12-24 months   ki1114097-CMIN             PERU                           9              21     199
12-24 months   ki1114097-CMIN             PERU                           10             17     199
12-24 months   ki1114097-CMIN             PERU                           11              7     199
12-24 months   ki1114097-CMIN             PERU                           12             13     199
12-24 months   ki1114097-CONTENT          PERU                           1               1      38
12-24 months   ki1114097-CONTENT          PERU                           2               3      38
12-24 months   ki1114097-CONTENT          PERU                           3               2      38
12-24 months   ki1114097-CONTENT          PERU                           4               2      38
12-24 months   ki1114097-CONTENT          PERU                           5               1      38
12-24 months   ki1114097-CONTENT          PERU                           6               1      38
12-24 months   ki1114097-CONTENT          PERU                           7              11      38
12-24 months   ki1114097-CONTENT          PERU                           8               5      38
12-24 months   ki1114097-CONTENT          PERU                           9               4      38
12-24 months   ki1114097-CONTENT          PERU                           10              2      38
12-24 months   ki1114097-CONTENT          PERU                           11              2      38
12-24 months   ki1114097-CONTENT          PERU                           12              4      38
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              20     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              13     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              12     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              12     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              16     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              21     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               8     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              19     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             25     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             21     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             30     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              15     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              22     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              18     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               6     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              18     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              18     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              20     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              10     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              17     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             15     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             23     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             25     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              32     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              39     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              47     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              33     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              37     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              30     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              19     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              24     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               2     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              1     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             12     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             27     303


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
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/6a4c23d4-261c-47f6-a883-41d2b4d68836/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6a4c23d4-261c-47f6-a883-41d2b4d68836/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                3.6561922   3.4555174   3.8568670
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                3.5850761   3.3861681   3.7839842
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                3.5939711   3.3846297   3.8033124
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                3.7122341   3.5392781   3.8851901
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                3.6529711   3.4301258   3.8758165
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                3.6443134   3.5000429   3.7885838
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                3.6903749   3.3677792   4.0129706
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                3.4963268   3.3211665   3.6714872
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                3.3822482   3.2113970   3.5530994
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                3.4402878   3.1962552   3.6843204
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                3.4060026   3.1803681   3.6316371
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                3.5379925   3.3558579   3.7201271
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                3.9014228   3.5383257   4.2645200
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                4.3997429   4.0255161   4.7739697
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                4.0378532   3.7088725   4.3668338
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                4.2185083   3.9099979   4.5270186
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                4.1954187   3.9339997   4.4568377
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                4.0370229   3.5690676   4.5049781
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                4.1487099   3.7365740   4.5608457
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                3.8268290   3.3665795   4.2870786
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                3.8695528   3.6844055   4.0547000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                3.8866683   3.5455057   4.2278309
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                3.9888906   3.7575113   4.2202700
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                4.3786713   4.0237020   4.7336406
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                3.4250506   3.1444679   3.7056334
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                3.4747539   3.2554047   3.6941032
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                3.6789961   3.4514590   3.9065333
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    NA                3.7020954   3.4498204   3.9543703
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    NA                3.4755605   3.1807570   3.7703639
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    NA                3.6169528   3.3831437   3.8507619
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    NA                3.6132836   3.3312631   3.8953041
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    NA                3.4285760   3.1743454   3.6828066
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    NA                3.7277006   3.4216757   4.0337255
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   NA                3.6337426   3.3342476   3.9332376
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   NA                3.4774827   3.3299044   3.6250610
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   NA                3.5993273   3.2911522   3.9075024
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                3.7946627   3.5525801   4.0367454
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                3.8098896   3.5837413   4.0360378
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                3.6160729   3.4054595   3.8266863
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                3.8619736   3.5755315   4.1484157
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                3.8854547   3.7531186   4.0177908
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                4.1281002   3.8667279   4.3894725
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                3.6672719   3.3985535   3.9359903
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                3.9588357   3.6243011   4.2933702
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                3.9485131   3.7444814   4.1525449
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                3.6519081   3.4342612   3.8695550
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                3.8603794   3.6127845   4.1079743
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                3.6722218   3.2912654   4.0531782
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                3.3312200   3.2078995   3.4545406
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                3.3505055   3.0931642   3.6078468
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                3.5596044   3.3429501   3.7762586
0-3 months     ki0047075b-MAL-ED          PERU                           4                    NA                3.4318305   3.2338105   3.6298506
0-3 months     ki0047075b-MAL-ED          PERU                           5                    NA                3.0522283   2.8312816   3.2731749
0-3 months     ki0047075b-MAL-ED          PERU                           6                    NA                3.1967664   2.8724265   3.5211063
0-3 months     ki0047075b-MAL-ED          PERU                           7                    NA                3.2874318   3.0861192   3.4887445
0-3 months     ki0047075b-MAL-ED          PERU                           8                    NA                3.2924847   3.0699287   3.5150408
0-3 months     ki0047075b-MAL-ED          PERU                           9                    NA                3.4578702   3.2488958   3.6668445
0-3 months     ki0047075b-MAL-ED          PERU                           10                   NA                3.4015361   3.2120679   3.5910043
0-3 months     ki0047075b-MAL-ED          PERU                           11                   NA                3.2860352   3.0751984   3.4968719
0-3 months     ki0047075b-MAL-ED          PERU                           12                   NA                3.1180291   2.8567730   3.3792853
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                3.4423526   3.0960881   3.7886171
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                3.2025295   2.9252974   3.4797617
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                3.5390824   3.1022076   3.9759571
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                3.7103301   3.4049832   4.0156771
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                3.3493316   2.9817321   3.7169311
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                3.3633561   3.1206842   3.6060279
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                3.4622391   3.2200343   3.7044438
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                3.6441383   3.3544070   3.9338695
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                3.5307205   3.2499065   3.8115344
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                3.6525525   3.4718798   3.8332253
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                3.4775988   3.1648373   3.7903603
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                3.2517897   3.0071687   3.4964108
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                3.7066970   3.5220440   3.8913500
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                3.4720488   3.2479752   3.6961224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                3.5659007   3.3010441   3.8307574
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                3.5548405   3.1897420   3.9199390
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                3.3819121   3.1019243   3.6619000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                3.5311487   3.1231989   3.9390985
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                3.2783267   3.0407508   3.5159026
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                3.7128326   3.3198069   4.1058583
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                3.5760226   3.3561176   3.7959277
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                3.4695123   3.2335281   3.7054965
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                3.4325864   3.1984730   3.6666998
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                3.3521223   3.1388706   3.5653740
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.4016600   3.1255653   3.6777547
0-3 months     ki1000108-IRC              INDIA                          2                    NA                2.9906324   2.5119585   3.4693063
0-3 months     ki1000108-IRC              INDIA                          3                    NA                2.8944796   2.3823669   3.4065923
0-3 months     ki1000108-IRC              INDIA                          4                    NA                2.7567244   2.3917933   3.1216556
0-3 months     ki1000108-IRC              INDIA                          5                    NA                2.2946432   1.9249947   2.6642916
0-3 months     ki1000108-IRC              INDIA                          6                    NA                3.5065241   3.0922230   3.9208252
0-3 months     ki1000108-IRC              INDIA                          7                    NA                3.2813581   2.9443260   3.6183902
0-3 months     ki1000108-IRC              INDIA                          8                    NA                3.3129210   2.9999803   3.6258617
0-3 months     ki1000108-IRC              INDIA                          9                    NA                3.4578007   2.8778391   4.0377623
0-3 months     ki1000108-IRC              INDIA                          10                   NA                3.3868795   3.0697787   3.7039804
0-3 months     ki1000108-IRC              INDIA                          11                   NA                3.2448014   2.9300546   3.5595482
0-3 months     ki1000108-IRC              INDIA                          12                   NA                3.0368556   2.7424427   3.3312684
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7182598   3.5936932   3.8428263
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                3.7224342   3.5958807   3.8489878
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                3.7922646   3.6289677   3.9555615
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                3.6531697   3.4988447   3.8074946
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                3.5919262   3.4779410   3.7059115
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                3.6721044   3.5426691   3.8015398
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                3.4723375   3.3572138   3.5874612
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                3.5454666   3.4580612   3.6328721
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                3.5228284   3.4667708   3.5788861
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                3.6187458   3.4319056   3.8055859
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                3.5255613   3.4257497   3.6253728
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                3.6123763   3.5146042   3.7101485
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                3.4475937   3.2664590   3.6287284
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                3.4898169   3.2914828   3.6881510
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                3.3674979   3.2175276   3.5174682
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                3.3031686   3.1175554   3.4887817
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                3.1952051   3.0333935   3.3570166
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                3.2544239   3.0690638   3.4397840
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                3.1721525   2.9759325   3.3683725
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                3.0574563   2.7965766   3.3183360
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                3.1518286   2.9516841   3.3519732
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                3.2911116   3.0848553   3.4973679
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                3.3720185   3.2142979   3.5297391
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                3.4682559   3.3020293   3.6344825
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                3.1677776   3.0023363   3.3332189
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                3.2217552   3.0584557   3.3850547
0-3 months     ki1101329-Keneba           GAMBIA                         3                    NA                3.2412506   3.1125661   3.3699351
0-3 months     ki1101329-Keneba           GAMBIA                         4                    NA                3.2270954   3.0691032   3.3850877
0-3 months     ki1101329-Keneba           GAMBIA                         5                    NA                3.0779078   2.8964301   3.2593854
0-3 months     ki1101329-Keneba           GAMBIA                         6                    NA                3.0988271   2.8633471   3.3343070
0-3 months     ki1101329-Keneba           GAMBIA                         7                    NA                3.0475498   2.8425314   3.2525682
0-3 months     ki1101329-Keneba           GAMBIA                         8                    NA                3.1415765   2.9703440   3.3128091
0-3 months     ki1101329-Keneba           GAMBIA                         9                    NA                3.0205753   2.8775749   3.1635758
0-3 months     ki1101329-Keneba           GAMBIA                         10                   NA                3.0268435   2.8930649   3.1606221
0-3 months     ki1101329-Keneba           GAMBIA                         11                   NA                3.2068870   3.0501823   3.3635917
0-3 months     ki1101329-Keneba           GAMBIA                         12                   NA                3.1976261   3.0307265   3.3645257
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.7855943   2.5978561   2.9733325
0-3 months     ki1119695-PROBIT           BELARUS                        2                    NA                2.8051889   2.6563725   2.9540054
0-3 months     ki1119695-PROBIT           BELARUS                        3                    NA                2.8430458   2.6895430   2.9965487
0-3 months     ki1119695-PROBIT           BELARUS                        4                    NA                2.8077887   2.6582399   2.9573376
0-3 months     ki1119695-PROBIT           BELARUS                        5                    NA                2.7976001   2.6855220   2.9096781
0-3 months     ki1119695-PROBIT           BELARUS                        6                    NA                2.9122280   2.7922868   3.0321692
0-3 months     ki1119695-PROBIT           BELARUS                        7                    NA                2.8318587   2.7117742   2.9519431
0-3 months     ki1119695-PROBIT           BELARUS                        8                    NA                2.8681299   2.7309328   3.0053270
0-3 months     ki1119695-PROBIT           BELARUS                        9                    NA                2.8287687   2.7061715   2.9513659
0-3 months     ki1119695-PROBIT           BELARUS                        10                   NA                2.8178574   2.7018322   2.9338825
0-3 months     ki1119695-PROBIT           BELARUS                        11                   NA                2.8218969   2.7058913   2.9379026
0-3 months     ki1119695-PROBIT           BELARUS                        12                   NA                2.8739673   2.7523081   2.9956265
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.5483978   3.4833146   3.6134811
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                3.5954741   3.5133990   3.6775491
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                3.5227709   3.4530709   3.5924710
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                3.3615240   3.2865188   3.4365293
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                3.3454741   3.2661946   3.4247535
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                3.1506621   3.0722502   3.2290741
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                3.2272589   3.1561567   3.2983611
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                3.2961840   3.2300024   3.3623655
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                3.3063614   3.2448749   3.3678478
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                3.2831819   3.2114870   3.3548768
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                3.3214666   3.2474251   3.3955082
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                3.4650336   3.3952426   3.5348246
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.8033216   3.7744928   3.8321504
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7774595   3.7486946   3.8062243
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                3.7654152   3.7384970   3.7923334
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                3.8038739   3.7691123   3.8386356
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                3.7883562   3.7460542   3.8306582
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                3.8069333   3.7712259   3.8426407
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                3.7640646   3.7281808   3.7999484
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                3.7065782   3.6751248   3.7380316
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                3.5953146   3.5660076   3.6246217
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                3.5922299   3.5661571   3.6183026
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                3.6325169   3.6082616   3.6567723
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                3.7481861   3.7226456   3.7737265
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                3.7815166   3.7172760   3.8457573
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                3.6516771   3.5807001   3.7226540
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                3.6418152   3.5821983   3.7014321
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                3.8004290   3.6784766   3.9223814
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                3.7149289   3.5866515   3.8432062
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                3.5650153   3.4413121   3.6887185
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                3.4343203   3.3151363   3.5535042
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                3.4471408   3.3275570   3.5667246
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                3.4374315   3.2737718   3.6010912
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.9006000   1.8146133   1.9865866
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.8646735   1.6651127   2.0642344
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.8496869   1.6482514   2.0511224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.7963440   1.6389323   1.9537557
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                1.9943877   1.8534770   2.1352985
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                1.9149625   1.7614906   2.0684344
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                1.8193392   1.6604001   1.9782783
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                1.8749580   1.6736868   2.0762292
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                2.0395146   1.9095544   2.1694748
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                1.9746372   1.8127925   2.1364818
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                2.0062406   1.8465045   2.1659766
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                2.0569791   1.9106505   2.2033078
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                2.0816074   1.7802052   2.3830097
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                2.1536986   1.8996095   2.4077878
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                2.2431429   1.9965244   2.4897614
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                2.2668912   1.9486034   2.5851791
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                2.1501283   1.9736735   2.3265831
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                1.8429207   1.3438517   2.3419896
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                1.9165617   1.5170979   2.3160255
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                2.1835036   1.8115321   2.5554751
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                2.3831151   2.2192463   2.5469838
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                2.0073533   1.8232495   2.1914571
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                2.0821977   1.8745215   2.2898740
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                2.1919958   1.9095959   2.4743958
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                1.9320895   1.6883759   2.1758032
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                1.8532427   1.6783993   2.0280861
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                1.9547544   1.7135958   2.1959131
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                1.7130484   1.4190239   2.0070729
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    NA                1.8448253   1.6756491   2.0140015
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    NA                1.8084788   1.6260320   1.9909256
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    NA                1.7547578   1.4988498   2.0106658
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    NA                1.9027026   1.7630535   2.0423517
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    NA                1.9283831   1.7331373   2.1236289
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   NA                1.8428791   1.6519976   2.0337606
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   NA                1.9707147   1.8532408   2.0881887
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   NA                2.0008431   1.7693711   2.2323150
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                2.1232309   1.9786449   2.2678168
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                1.9064786   1.7302909   2.0826662
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                1.8772341   1.6644460   2.0900223
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                1.7448665   1.6219557   1.8677774
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                1.8424545   1.6915215   1.9933875
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                1.8556146   1.6326575   2.0785718
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                1.8775466   1.7339614   2.0211318
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                1.8786540   1.6578512   2.0994568
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                1.9787369   1.7450206   2.2124533
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                2.2174988   2.0402368   2.3947609
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                2.2243370   2.0685811   2.3800928
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                2.0368229   1.8448632   2.2287825
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                2.0680727   1.8688498   2.2672955
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                1.9485232   1.7376633   2.1593830
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                1.7927283   1.5750629   2.0103937
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                2.1784786   1.9954782   2.3614789
3-6 months     ki0047075b-MAL-ED          PERU                           5                    NA                2.3487721   2.0951548   2.6023894
3-6 months     ki0047075b-MAL-ED          PERU                           6                    NA                2.1867970   1.9143015   2.4592924
3-6 months     ki0047075b-MAL-ED          PERU                           7                    NA                1.9393169   1.7349550   2.1436789
3-6 months     ki0047075b-MAL-ED          PERU                           8                    NA                1.9870168   1.8512825   2.1227510
3-6 months     ki0047075b-MAL-ED          PERU                           9                    NA                1.7149436   1.4859033   1.9439840
3-6 months     ki0047075b-MAL-ED          PERU                           10                   NA                1.9627709   1.7869390   2.1386027
3-6 months     ki0047075b-MAL-ED          PERU                           11                   NA                1.9540005   1.7965750   2.1114260
3-6 months     ki0047075b-MAL-ED          PERU                           12                   NA                2.1556301   1.8946407   2.4166196
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.9895756   1.7976090   2.1815421
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                2.2033034   1.9190255   2.4875812
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                2.0952255   1.6489102   2.5415407
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.9972358   1.6554648   2.3390067
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                1.9614629   1.6738867   2.2490391
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                2.2450842   1.9542483   2.5359201
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                1.8864051   1.6399667   2.1328435
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                2.0899596   1.7398359   2.4400833
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                1.9483282   1.7182721   2.1783843
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                1.8662768   1.6211920   2.1113615
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                1.9804600   1.6819351   2.2789849
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                1.8176840   1.5949339   2.0404341
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7858175   1.5103463   2.0612886
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8029561   1.5888121   2.0171000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.6457981   1.4077212   1.8838749
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                1.5715572   1.3619714   1.7811431
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                1.8925024   1.7037767   2.0812282
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                1.8228627   1.5897577   2.0559677
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                2.0539025   1.8661914   2.2416136
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                1.8610790   1.4949742   2.2271839
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                2.0954536   1.8702545   2.3206528
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                1.6762757   1.4917243   1.8608271
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                1.6884094   1.4972408   1.8795779
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                1.9141899   1.7191998   2.1091800
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
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8927795   1.7432576   2.0423015
3-6 months     ki1000108-IRC              INDIA                          2                    NA                1.6734886   1.4424927   1.9044844
3-6 months     ki1000108-IRC              INDIA                          3                    NA                1.9824177   1.7555333   2.2093022
3-6 months     ki1000108-IRC              INDIA                          4                    NA                1.6862942   1.5053941   1.8671943
3-6 months     ki1000108-IRC              INDIA                          5                    NA                1.4757400   1.2628551   1.6886249
3-6 months     ki1000108-IRC              INDIA                          6                    NA                1.8160644   1.5497406   2.0823882
3-6 months     ki1000108-IRC              INDIA                          7                    NA                1.8431180   1.6035819   2.0826542
3-6 months     ki1000108-IRC              INDIA                          8                    NA                1.8466823   1.6102134   2.0831512
3-6 months     ki1000108-IRC              INDIA                          9                    NA                2.1060226   1.8368075   2.3752378
3-6 months     ki1000108-IRC              INDIA                          10                   NA                2.0897041   1.9223820   2.2570263
3-6 months     ki1000108-IRC              INDIA                          11                   NA                1.9046428   1.7236706   2.0856150
3-6 months     ki1000108-IRC              INDIA                          12                   NA                2.0075073   1.8536925   2.1613222
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.7780693   1.6465935   1.9095452
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.9550844   1.7752731   2.1348957
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                1.9028418   1.7287110   2.0769726
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                1.9099474   1.7409300   2.0789648
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                1.8882854   1.7439573   2.0326134
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                1.7623274   1.5759805   1.9486744
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                1.8942079   1.7234324   2.0649835
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                2.0415390   1.9391078   2.1439703
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                2.0213076   1.8900794   2.1525357
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                1.9827507   1.8045553   2.1609461
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                1.9129483   1.8404472   1.9854495
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                2.0369849   1.9322269   2.1417429
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.8145853   1.6662542   1.9629164
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                1.7347687   1.5693470   1.9001905
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                1.7634301   1.6223782   1.9044820
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                1.8460068   1.6886859   2.0033277
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                1.6967362   1.4933489   1.9001235
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                1.7491057   1.5517277   1.9464836
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                1.9683904   1.8108201   2.1259606
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                1.9474261   1.7157631   2.1790892
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                1.8124142   1.6520723   1.9727561
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                1.9165841   1.7296737   2.1034945
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                1.8665920   1.7453805   1.9878034
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                1.9140389   1.7873308   2.0407470
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8892070   1.7681978   2.0102162
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.9919055   1.8607273   2.1230838
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8738119   1.7540556   1.9935681
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.6997555   1.5583109   1.8412002
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                1.7273749   1.5832616   1.8714882
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                1.6795379   1.5329085   1.8261673
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                1.6639965   1.5491445   1.7788484
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                1.8432361   1.7198336   1.9666386
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                1.8309392   1.7165364   1.9453420
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                1.7734446   1.6629785   1.8839107
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                1.7429773   1.6362344   1.8497201
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                1.8654691   1.7498951   1.9810431
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.1739835   2.0711138   2.2768533
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.8596884   1.7245309   1.9948459
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                1.7936954   1.6754618   1.9119289
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                1.8631954   1.7099823   2.0164085
3-6 months     ki1101329-Keneba           GAMBIA                         5                    NA                1.9092173   1.7433685   2.0750661
3-6 months     ki1101329-Keneba           GAMBIA                         6                    NA                1.9142273   1.7364916   2.0919630
3-6 months     ki1101329-Keneba           GAMBIA                         7                    NA                1.9766729   1.7857132   2.1676326
3-6 months     ki1101329-Keneba           GAMBIA                         8                    NA                2.0114847   1.8823914   2.1405780
3-6 months     ki1101329-Keneba           GAMBIA                         9                    NA                2.0762877   1.9457114   2.2068639
3-6 months     ki1101329-Keneba           GAMBIA                         10                   NA                2.0607580   1.9549553   2.1665607
3-6 months     ki1101329-Keneba           GAMBIA                         11                   NA                2.0699430   1.9476792   2.1922068
3-6 months     ki1101329-Keneba           GAMBIA                         12                   NA                2.1392358   1.9968956   2.2815760
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
3-6 months     ki1114097-CMIN             PERU                           1                    NA                1.8363896   1.6656162   2.0071630
3-6 months     ki1114097-CMIN             PERU                           2                    NA                1.8931759   1.7438830   2.0424688
3-6 months     ki1114097-CMIN             PERU                           3                    NA                2.0074839   1.8647443   2.1502236
3-6 months     ki1114097-CMIN             PERU                           4                    NA                1.9883718   1.8534099   2.1233337
3-6 months     ki1114097-CMIN             PERU                           5                    NA                1.9288209   1.7565563   2.1010855
3-6 months     ki1114097-CMIN             PERU                           6                    NA                1.9170515   1.7512130   2.0828899
3-6 months     ki1114097-CMIN             PERU                           7                    NA                1.8577004   1.6915503   2.0238505
3-6 months     ki1114097-CMIN             PERU                           8                    NA                1.9348801   1.7975141   2.0722461
3-6 months     ki1114097-CMIN             PERU                           9                    NA                1.6176230   1.4543380   1.7809079
3-6 months     ki1114097-CMIN             PERU                           10                   NA                1.8799978   1.7066075   2.0533881
3-6 months     ki1114097-CMIN             PERU                           11                   NA                1.9057178   1.7183455   2.0930901
3-6 months     ki1114097-CMIN             PERU                           12                   NA                1.7911139   1.6055162   1.9767115
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                2.0178674   1.9070718   2.1286631
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                2.0115621   1.9317590   2.0913652
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                1.9717287   1.8178114   2.1256460
3-6 months     ki1114097-CONTENT          PERU                           4                    NA                1.8791609   1.7347413   2.0235805
3-6 months     ki1114097-CONTENT          PERU                           5                    NA                2.0475845   1.8745647   2.2206044
3-6 months     ki1114097-CONTENT          PERU                           6                    NA                1.8830500   1.7537102   2.0123897
3-6 months     ki1114097-CONTENT          PERU                           7                    NA                2.2040431   2.0927009   2.3153854
3-6 months     ki1114097-CONTENT          PERU                           8                    NA                2.2347924   2.0891111   2.3804738
3-6 months     ki1114097-CONTENT          PERU                           9                    NA                2.2928132   2.1543998   2.4312266
3-6 months     ki1114097-CONTENT          PERU                           10                   NA                2.1457981   1.9795082   2.3120880
3-6 months     ki1114097-CONTENT          PERU                           11                   NA                2.0313215   1.7846551   2.2779880
3-6 months     ki1114097-CONTENT          PERU                           12                   NA                2.0540978   1.8523512   2.2558444
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.0483040   1.9448038   2.1518041
3-6 months     ki1119695-PROBIT           BELARUS                        2                    NA                2.0119819   1.9340608   2.0899030
3-6 months     ki1119695-PROBIT           BELARUS                        3                    NA                2.1133060   2.0473832   2.1792287
3-6 months     ki1119695-PROBIT           BELARUS                        4                    NA                2.1480034   2.0797845   2.2162224
3-6 months     ki1119695-PROBIT           BELARUS                        5                    NA                2.1492673   2.0853960   2.2131387
3-6 months     ki1119695-PROBIT           BELARUS                        6                    NA                2.0840236   2.0202386   2.1478086
3-6 months     ki1119695-PROBIT           BELARUS                        7                    NA                2.1022040   2.0301126   2.1742954
3-6 months     ki1119695-PROBIT           BELARUS                        8                    NA                2.0866551   2.0257932   2.1475169
3-6 months     ki1119695-PROBIT           BELARUS                        9                    NA                2.1370199   2.0702717   2.2037680
3-6 months     ki1119695-PROBIT           BELARUS                        10                   NA                2.0827201   2.0256489   2.1397914
3-6 months     ki1119695-PROBIT           BELARUS                        11                   NA                2.0848134   2.0132704   2.1563565
3-6 months     ki1119695-PROBIT           BELARUS                        12                   NA                2.0480746   1.9895235   2.1066258
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.8741133   1.8143879   1.9338387
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.9388516   1.8630589   2.0146444
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                1.8245619   1.7459795   1.9031444
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                2.0010690   1.9278914   2.0742467
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                1.9658442   1.8971224   2.0345660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                2.2123677   2.1299360   2.2947995
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                1.9840752   1.9181664   2.0499841
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                1.9678437   1.9098564   2.0258310
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                1.9972779   1.9349344   2.0596213
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                2.0144964   1.9445982   2.0843946
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                1.9623758   1.8965165   2.0282352
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                1.9916129   1.9275444   2.0556813
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9717946   1.9403162   2.0032730
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9221683   1.8866877   1.9576489
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.8119459   1.7767840   1.8471078
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                1.8034501   1.7695559   1.8373442
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                1.8131648   1.7713578   1.8549717
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                1.7702132   1.7308181   1.8096084
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                1.7869533   1.7502533   1.8236532
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                1.8980472   1.8654966   1.9305979
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                2.0073457   1.9722587   2.0424328
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                2.0459434   2.0148287   2.0770580
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                2.0386308   2.0095222   2.0677394
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                1.9846998   1.9555299   2.0138697
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.7629798   1.6313796   1.8945800
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.9430381   1.8841505   2.0019257
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                1.8379611   1.7640359   1.9118863
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                1.8753385   1.7984754   1.9522016
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                1.7220504   1.5662074   1.8778935
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                1.7673986   1.6870075   1.8477896
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                1.9140575   1.8463543   1.9817608
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                2.0507686   1.9661512   2.1353859
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                2.0649477   1.9641719   2.1657236
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                1.0964980   1.0256168   1.1673792
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                1.0692381   0.9957790   1.1426971
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                1.1550869   1.0772513   1.2329224
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                1.0583846   0.9751103   1.1416589
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                1.0965148   1.0061156   1.1869139
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                1.2107004   1.1329961   1.2884046
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                1.1635734   1.0500044   1.2771424
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                1.1104392   1.0341419   1.1867365
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                1.1250526   1.0445921   1.2055132
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                1.1211985   1.0387709   1.2036262
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                1.0682222   0.9488152   1.1876293
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                1.1363901   1.0752108   1.1975693
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.3284182   1.1748869   1.4819494
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                1.1036829   0.9594058   1.2479600
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.3281508   1.2252736   1.4310280
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.2692785   1.1345326   1.4040244
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                1.3860354   1.2758455   1.4962254
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                1.7054515   1.3797608   2.0311422
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                1.3933019   1.2054585   1.5811453
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                1.4170889   1.3334607   1.5007171
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                1.5545966   1.4324475   1.6767457
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                1.4624977   1.3160595   1.6089359
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                1.3914231   1.2887317   1.4941145
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                1.3983624   1.1748993   1.6218255
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                1.0556567   0.9645726   1.1467409
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                1.1631358   1.0759600   1.2503116
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                1.2087008   1.1031119   1.3142897
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                1.1134594   1.0006394   1.2262795
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    NA                1.2180756   1.1255292   1.3106220
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    NA                1.1059320   1.0411742   1.1706898
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    NA                1.1964923   1.0834159   1.3095687
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    NA                1.1140078   1.0161791   1.2118365
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    NA                1.0882611   0.9990353   1.1774870
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   NA                1.0996346   1.0025327   1.1967364
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   NA                1.0704508   0.9904723   1.1504293
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   NA                1.0893466   1.0077552   1.1709380
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                1.1642008   1.0855785   1.2428232
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                1.1130528   1.0270448   1.1990608
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                1.1183829   1.0143650   1.2224007
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                1.1917568   1.1205196   1.2629940
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                1.2035819   1.1221519   1.2850118
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                1.3246385   1.2271337   1.4221432
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                1.2642862   1.1913503   1.3372220
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                1.3224960   1.2445750   1.4004170
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                1.2853387   1.1792597   1.3914177
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                1.2387823   1.1450754   1.3324891
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                1.2087697   1.1368501   1.2806893
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                1.2099388   1.1314945   1.2883831
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                1.1922190   1.1231063   1.2613316
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                1.2621461   1.1644514   1.3598407
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                1.2766075   1.1535942   1.3996207
6-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                1.1326111   0.9944308   1.2707915
6-12 months    ki0047075b-MAL-ED          PERU                           5                    NA                1.1695426   1.0482780   1.2908073
6-12 months    ki0047075b-MAL-ED          PERU                           6                    NA                1.2041413   1.0524898   1.3557927
6-12 months    ki0047075b-MAL-ED          PERU                           7                    NA                1.1382022   1.0383255   1.2380790
6-12 months    ki0047075b-MAL-ED          PERU                           8                    NA                1.2606037   1.1632944   1.3579129
6-12 months    ki0047075b-MAL-ED          PERU                           9                    NA                1.3030726   1.2123212   1.3938240
6-12 months    ki0047075b-MAL-ED          PERU                           10                   NA                1.2974747   1.1104101   1.4845393
6-12 months    ki0047075b-MAL-ED          PERU                           11                   NA                1.1758640   1.0808151   1.2709130
6-12 months    ki0047075b-MAL-ED          PERU                           12                   NA                1.1360173   1.0704495   1.2015850
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                1.1775285   1.0438224   1.3112346
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                1.1570880   0.9986568   1.3155191
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                1.2928423   1.1706255   1.4150591
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                1.1236215   0.9564108   1.2908321
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                1.3182629   1.1650168   1.4715089
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                1.0712612   0.8964457   1.2460766
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                1.1819341   1.0647354   1.2991329
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                1.1807191   1.0139650   1.3474732
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                1.1889471   1.0902480   1.2876463
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                1.1665087   1.0399366   1.2930809
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                1.2291884   1.0822884   1.3760883
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                1.2070660   1.1142270   1.2999051
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0738251   0.9319780   1.2156721
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0266259   0.9111343   1.1421174
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1425363   0.9802005   1.3048720
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.9749992   0.8593199   1.0906786
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                1.0182086   0.9170967   1.1193204
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                1.0542992   0.9646531   1.1439453
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                0.9878484   0.8529170   1.1227799
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                0.9142727   0.6949469   1.1335984
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                0.8293455   0.7381875   0.9205035
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                1.0018997   0.8904763   1.1133230
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                1.0809580   0.9724590   1.1894571
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                0.9119253   0.8127193   1.0111314
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
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.1898077   1.1074625   1.2721530
6-12 months    ki1000108-IRC              INDIA                          2                    NA                1.2087263   1.1116193   1.3058333
6-12 months    ki1000108-IRC              INDIA                          3                    NA                1.1561303   1.0769869   1.2352737
6-12 months    ki1000108-IRC              INDIA                          4                    NA                1.1814281   1.0747751   1.2880811
6-12 months    ki1000108-IRC              INDIA                          5                    NA                1.2533954   1.1297369   1.3770538
6-12 months    ki1000108-IRC              INDIA                          6                    NA                1.2749807   1.1754958   1.3744656
6-12 months    ki1000108-IRC              INDIA                          7                    NA                1.3445864   1.2244058   1.4647671
6-12 months    ki1000108-IRC              INDIA                          8                    NA                1.2708477   1.1859851   1.3557102
6-12 months    ki1000108-IRC              INDIA                          9                    NA                1.2157464   1.0808884   1.3506045
6-12 months    ki1000108-IRC              INDIA                          10                   NA                1.2673521   1.1973863   1.3373180
6-12 months    ki1000108-IRC              INDIA                          11                   NA                1.2765415   1.1714139   1.3816690
6-12 months    ki1000108-IRC              INDIA                          12                   NA                1.2586054   1.1720769   1.3451339
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0607669   0.9957981   1.1257357
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.0728459   1.0101442   1.1355477
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                1.0902353   0.9864282   1.1940424
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                1.0935679   1.0651500   1.1219858
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                1.1828519   1.0642709   1.3014330
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                1.1827262   1.1028522   1.2626003
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                1.1499149   1.0680639   1.2317660
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                1.0373016   0.9817770   1.0928262
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                1.0547429   0.9937532   1.1157325
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                1.0593973   0.9659062   1.1528884
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                1.1503177   1.0887138   1.2119216
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                1.1059794   1.0359077   1.1760512
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                1.1282398   1.0601995   1.1962800
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                1.1007627   1.0386748   1.1628506
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                1.1676900   1.0830524   1.2523276
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                1.1678157   1.0960073   1.2396240
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                1.1765362   1.0946034   1.2584690
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                1.2129690   1.1272964   1.2986416
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                1.1568281   1.0767934   1.2368628
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                1.1385755   1.0671476   1.2100034
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                1.2364433   1.1342845   1.3386020
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                1.1625452   1.0773266   1.2477637
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                1.2395499   1.1744003   1.3046994
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                1.1337699   1.0696990   1.1978409
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0449687   0.9603602   1.1295771
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.0573627   0.9691888   1.1455367
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                1.1033224   1.0248264   1.1818185
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                1.1301449   1.0300378   1.2302520
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                1.2171756   1.1418500   1.2925011
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                1.2395316   1.1697113   1.3093518
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                1.2659519   1.1982102   1.3336936
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                1.2660080   1.1947937   1.3372222
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                1.2875094   1.2221013   1.3529176
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                1.2843209   1.2255662   1.3430756
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                1.2126735   1.1639585   1.2613885
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                1.1271929   1.0646075   1.1897783
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.1506566   1.0906850   1.2106282
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                1.1725612   1.1148655   1.2302569
6-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                1.2689291   1.2000782   1.3377799
6-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                1.2296499   1.1613276   1.2979722
6-12 months    ki1101329-Keneba           GAMBIA                         5                    NA                1.2136927   1.1532101   1.2741753
6-12 months    ki1101329-Keneba           GAMBIA                         6                    NA                1.2141430   1.1516393   1.2766467
6-12 months    ki1101329-Keneba           GAMBIA                         7                    NA                1.1800021   1.0684590   1.2915453
6-12 months    ki1101329-Keneba           GAMBIA                         8                    NA                1.1904802   1.1271963   1.2537642
6-12 months    ki1101329-Keneba           GAMBIA                         9                    NA                1.1488248   1.0918214   1.2058282
6-12 months    ki1101329-Keneba           GAMBIA                         10                   NA                1.1449108   1.0850062   1.2048154
6-12 months    ki1101329-Keneba           GAMBIA                         11                   NA                1.1806286   1.1205068   1.2407505
6-12 months    ki1101329-Keneba           GAMBIA                         12                   NA                1.1094761   1.0553820   1.1635703
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                1.0928080   0.9954036   1.1902124
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                1.1669450   1.0257502   1.3081397
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                1.1744283   1.0984554   1.2504013
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                1.1225682   1.0402293   1.2049070
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                1.0900234   0.9974070   1.1826397
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                1.1692797   1.0330615   1.3054978
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                1.0164487   0.9113896   1.1215078
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                1.0456500   0.8842019   1.2070981
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                1.0089765   0.8893131   1.1286399
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                1.0831875   0.9946725   1.1717025
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                1.1202014   1.0346828   1.2057201
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                1.1215966   1.0151187   1.2280746
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
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                1.2551580   0.9153069   1.5950091
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                1.2479072   1.1528581   1.3429563
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                1.1316501   1.0318160   1.2314841
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.9788159   0.8012260   1.1564059
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.9540020   0.6016070   1.3063970
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                1.1777091   0.9701938   1.3852244
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.9485652   0.7554205   1.1417098
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                1.0281737   0.7566018   1.2997457
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                1.0104345   0.9005286   1.1203404
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.9564597   0.8123360   1.1005833
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.9654655   0.6752875   1.2556436
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                1.1095492   0.9958173   1.2232812
6-12 months    ki1114097-CMIN             PERU                           1                    NA                1.1202502   1.0408120   1.1996884
6-12 months    ki1114097-CMIN             PERU                           2                    NA                1.1284313   1.0476040   1.2092587
6-12 months    ki1114097-CMIN             PERU                           3                    NA                1.1457081   1.0766470   1.2147692
6-12 months    ki1114097-CMIN             PERU                           4                    NA                1.1431603   1.0665502   1.2197705
6-12 months    ki1114097-CMIN             PERU                           5                    NA                1.1239051   1.0394719   1.2083383
6-12 months    ki1114097-CMIN             PERU                           6                    NA                1.1093250   1.0201836   1.1984663
6-12 months    ki1114097-CMIN             PERU                           7                    NA                1.1468320   1.0451522   1.2485117
6-12 months    ki1114097-CMIN             PERU                           8                    NA                1.0907904   1.0338947   1.1476860
6-12 months    ki1114097-CMIN             PERU                           9                    NA                1.0369156   0.9456192   1.1282119
6-12 months    ki1114097-CMIN             PERU                           10                   NA                1.0519726   0.9615775   1.1423677
6-12 months    ki1114097-CMIN             PERU                           11                   NA                1.1329730   1.0317404   1.2342057
6-12 months    ki1114097-CMIN             PERU                           12                   NA                1.1167802   1.0075495   1.2260108
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                1.3149897   1.1715853   1.4583941
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                1.3161421   1.2224239   1.4098603
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                1.3769623   1.3086065   1.4453181
6-12 months    ki1114097-CONTENT          PERU                           4                    NA                1.2713838   1.1778783   1.3648893
6-12 months    ki1114097-CONTENT          PERU                           5                    NA                1.3377129   1.1969614   1.4784644
6-12 months    ki1114097-CONTENT          PERU                           6                    NA                1.2396595   1.1267882   1.3525308
6-12 months    ki1114097-CONTENT          PERU                           7                    NA                1.3036471   1.2277471   1.3795472
6-12 months    ki1114097-CONTENT          PERU                           8                    NA                1.2675494   1.1831051   1.3519937
6-12 months    ki1114097-CONTENT          PERU                           9                    NA                1.2534081   1.1581441   1.3486721
6-12 months    ki1114097-CONTENT          PERU                           10                   NA                1.3109123   1.1924433   1.4293812
6-12 months    ki1114097-CONTENT          PERU                           11                   NA                1.3558843   1.2575911   1.4541775
6-12 months    ki1114097-CONTENT          PERU                           12                   NA                1.2539433   1.1491643   1.3587224
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.5250316   1.4729361   1.5771271
6-12 months    ki1119695-PROBIT           BELARUS                        2                    NA                1.5168017   1.4651153   1.5684880
6-12 months    ki1119695-PROBIT           BELARUS                        3                    NA                1.4980581   1.4472645   1.5488517
6-12 months    ki1119695-PROBIT           BELARUS                        4                    NA                1.4500807   1.4077834   1.4923780
6-12 months    ki1119695-PROBIT           BELARUS                        5                    NA                1.4455790   1.3986064   1.4925515
6-12 months    ki1119695-PROBIT           BELARUS                        6                    NA                1.4495778   1.4139943   1.4851613
6-12 months    ki1119695-PROBIT           BELARUS                        7                    NA                1.4519129   1.3777886   1.5260371
6-12 months    ki1119695-PROBIT           BELARUS                        8                    NA                1.4366493   1.3769322   1.4963665
6-12 months    ki1119695-PROBIT           BELARUS                        9                    NA                1.4574254   1.4004886   1.5143622
6-12 months    ki1119695-PROBIT           BELARUS                        10                   NA                1.4634651   1.4186407   1.5082894
6-12 months    ki1119695-PROBIT           BELARUS                        11                   NA                1.4744263   1.4252909   1.5235617
6-12 months    ki1119695-PROBIT           BELARUS                        12                   NA                1.5018002   1.4599064   1.5436941
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2126261   1.1773483   1.2479039
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.2033097   1.1646652   1.2419542
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                1.2184871   1.1730782   1.2638959
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                1.2493108   1.2119483   1.2866732
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                1.2177462   1.1760884   1.2594040
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                1.1587752   1.1170324   1.2005180
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                1.1494228   1.1137611   1.1850845
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                1.1922772   1.1577135   1.2268408
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                1.1776483   1.1428058   1.2124908
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                1.1673165   1.1299160   1.2047171
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                1.2031500   1.1730559   1.2332440
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                1.2208001   1.1840781   1.2575222
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                1.1850998   1.0863437   1.2838559
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                1.3181664   1.2457132   1.3906196
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    NA                1.2701221   1.1984780   1.3417662
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    NA                1.3505305   1.2581757   1.4428853
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    NA                1.2539974   1.1704206   1.3375741
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    NA                1.1976666   1.1100439   1.2852892
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    NA                1.3270646   1.2471996   1.4069295
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    NA                1.3004732   1.2293783   1.3715681
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    NA                1.3858450   1.2807879   1.4909022
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   NA                1.2498775   1.1824700   1.3172850
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   NA                1.2646284   1.1783953   1.3508616
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   NA                1.2383060   1.1500758   1.3265363
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.0389178   1.0202761   1.0575595
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.0656966   1.0437141   1.0876791
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                1.1086094   1.0875693   1.1296495
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                1.1276771   1.1104718   1.1448824
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                1.1429771   1.1170435   1.1689106
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                1.1470038   1.1251030   1.1689046
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                1.1587382   1.1344870   1.1829894
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                1.1417102   1.1189632   1.1644573
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                1.1248155   1.1030493   1.1465817
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                1.1103613   1.0906352   1.1300874
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                1.0862268   1.0676623   1.1047912
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                1.0657661   1.0471635   1.0843686
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                1.1741129   1.1094965   1.2387294
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                1.1721438   1.1500540   1.1942336
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                1.1898207   1.1630836   1.2165579
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                1.2053423   1.1793977   1.2312868
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                1.2133983   1.1792858   1.2475109
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                1.2474503   1.2194855   1.2754152
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                1.2157339   1.1861733   1.2452944
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                1.1998723   1.1755243   1.2242204
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                1.2074650   1.1631409   1.2517891
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.8879437   0.8131136   0.9627737
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.8119902   0.7550955   0.8688848
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.7964192   0.7469342   0.8459042
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.8785014   0.8221880   0.9348147
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                0.8175387   0.7579550   0.8771224
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                0.7793062   0.6969909   0.8616214
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                0.8831898   0.8476709   0.9187088
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                0.8471566   0.7900747   0.9042386
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                0.8276674   0.7822059   0.8731288
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                0.8727056   0.8293698   0.9160414
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                0.8704229   0.8129602   0.9278856
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                0.8495969   0.8101075   0.8890863
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                1.0215501   0.9085574   1.1345429
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                0.9861244   0.9034633   1.0687855
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                1.0601393   0.9471524   1.1731262
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                1.1449761   1.0179059   1.2720464
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                1.0275567   0.9338369   1.1212765
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                0.8769933   0.7945182   0.9594685
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                0.9587462   0.8663056   1.0511868
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                0.8681467   0.8114478   0.9248456
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                0.9518302   0.8882656   1.0153947
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                0.9685264   0.8463237   1.0907290
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                0.9848723   0.8721032   1.0976415
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                0.9093977   0.7837030   1.0350924
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.8247092   0.7585861   0.8908322
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.8580250   0.8050393   0.9110108
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.8747667   0.8029706   0.9465627
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                0.8853222   0.8160313   0.9546131
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                0.8527137   0.7749272   0.9305001
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                0.9136173   0.8542628   0.9729719
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                0.8899614   0.8185958   0.9613270
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                0.8778772   0.8335614   0.9221929
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                0.8699592   0.8157024   0.9242160
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                0.8657714   0.8144973   0.9170454
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                0.9085482   0.8618089   0.9552875
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                0.9251020   0.8877036   0.9625004
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.8603983   0.8207795   0.9000172
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.8544066   0.8070764   0.9017369
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.8291306   0.7708233   0.8874378
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                0.8875292   0.8482062   0.9268522
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                0.8545295   0.8111842   0.8978747
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                0.8458320   0.7832927   0.9083714
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                0.8939100   0.8441974   0.9436226
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                0.8596018   0.8125926   0.9066109
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                0.8639335   0.7885922   0.9392749
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                0.8484034   0.7932412   0.9035655
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                0.8554443   0.8018470   0.9090416
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                0.8865366   0.8246754   0.9483977
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.8372251   0.7954489   0.8790013
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.8315900   0.7827974   0.8803825
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.8164738   0.7491452   0.8838024
12-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.7877900   0.7095290   0.8660511
12-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.8385721   0.7634375   0.9137067
12-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.8742088   0.7806501   0.9677675
12-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.8584124   0.7795739   0.9372509
12-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.8611189   0.7615184   0.9607194
12-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.8752445   0.7993463   0.9511426
12-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.8672204   0.8018805   0.9325603
12-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.8724740   0.8016945   0.9432534
12-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.8209639   0.7492806   0.8926471
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.8640030   0.7846244   0.9433817
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.8007241   0.6985800   0.9028683
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.8753668   0.7800279   0.9707057
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                0.9734078   0.8976085   1.0492071
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                0.8395795   0.7447825   0.9343764
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                0.9219641   0.8546155   0.9893128
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                0.8547903   0.8152608   0.8943198
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                0.9045023   0.8113975   0.9976070
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                0.9267951   0.8728090   0.9807813
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                0.8764444   0.8091071   0.9437817
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                0.8335546   0.7704554   0.8966538
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                0.8484460   0.7989553   0.8979367
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7559756   0.6673615   0.8445898
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7482318   0.6700913   0.8263723
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7130447   0.6425221   0.7835673
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                0.7034662   0.5591121   0.8478203
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                0.7580593   0.6711115   0.8450070
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                0.7542776   0.6749681   0.8335871
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                0.8264144   0.7410578   0.9117710
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                0.8419975   0.7672328   0.9167622
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                0.8465533   0.7648639   0.9282427
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                0.7264044   0.6442804   0.8085285
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                0.7025847   0.6480708   0.7570986
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                0.8061127   0.7550464   0.8571790
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
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8433076   0.7745542   0.9120610
12-24 months   ki1000108-IRC              INDIA                          2                    NA                0.8877847   0.8179232   0.9576463
12-24 months   ki1000108-IRC              INDIA                          3                    NA                0.8255148   0.7588709   0.8921588
12-24 months   ki1000108-IRC              INDIA                          4                    NA                0.8702533   0.7526242   0.9878825
12-24 months   ki1000108-IRC              INDIA                          5                    NA                0.7882193   0.7162916   0.8601471
12-24 months   ki1000108-IRC              INDIA                          6                    NA                0.8063400   0.7382984   0.8743816
12-24 months   ki1000108-IRC              INDIA                          7                    NA                0.7616251   0.6945527   0.8286974
12-24 months   ki1000108-IRC              INDIA                          8                    NA                0.8063930   0.7577021   0.8550839
12-24 months   ki1000108-IRC              INDIA                          9                    NA                0.7879814   0.7048821   0.8710808
12-24 months   ki1000108-IRC              INDIA                          10                   NA                0.8235300   0.7679346   0.8791255
12-24 months   ki1000108-IRC              INDIA                          11                   NA                0.8780717   0.8181872   0.9379561
12-24 months   ki1000108-IRC              INDIA                          12                   NA                0.8658156   0.8110132   0.9206180
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7775486   0.7234530   0.8316443
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.7635878   0.7275063   0.7996693
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.7503848   0.7071477   0.7936219
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6937764   0.6453761   0.7421766
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6972639   0.6493347   0.7451932
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.7334858   0.6851720   0.7817995
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.7543519   0.7088110   0.7998927
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.7713762   0.6988716   0.8438808
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.7852279   0.7327873   0.8376686
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.7606204   0.7030476   0.8181933
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7570976   0.7062848   0.8079103
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.7692277   0.7287165   0.8097389
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8688294   0.8377651   0.8998937
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8448180   0.8083196   0.8813163
12-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.8157680   0.7781202   0.8534159
12-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.8240790   0.7953487   0.8528093
12-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.8152578   0.7843467   0.8461690
12-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.8168498   0.7658114   0.8678882
12-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.8301895   0.7861121   0.8742669
12-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.8617572   0.8329068   0.8906075
12-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.8480385   0.8152973   0.8807797
12-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.8616095   0.8264609   0.8967582
12-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.8499983   0.8047499   0.8952467
12-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.8640090   0.8263607   0.9016573
12-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    NA                0.7978454   0.7505614   0.8451294
12-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    NA                0.8232081   0.8017899   0.8446263
12-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    NA                0.8604640   0.8363409   0.8845870
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
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.9366312   0.7033801   1.1698823
12-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.8417136   0.7430458   0.9403813
12-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.9114131   0.7987779   1.0240483
12-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.8858378   0.8259643   0.9457114
12-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.8505665   0.6971893   1.0039438
12-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.8879827   0.8134474   0.9625181
12-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.8539591   0.7556028   0.9523154
12-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.9224642   0.8630858   0.9818426
12-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.8725649   0.7760020   0.9691278
12-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.7986415   0.7468059   0.8504771
12-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.8089485   0.6905414   0.9273555
12-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.8075364   0.6355502   0.9795226
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.8890302   0.8207730   0.9572875
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.8711145   0.8241118   0.9181173
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.8746882   0.8297658   0.9196107
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.8268482   0.7386350   0.9150614
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.7942682   0.7368244   0.8517120
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.8301460   0.7440273   0.9162647
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.8103988   0.7559751   0.8648226
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.8712657   0.8294336   0.9130978
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.8644784   0.7968170   0.9321398
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.8180635   0.7722870   0.8638401
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.8598552   0.8203513   0.8993592
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.7982393   0.7377374   0.8587411
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7780912   0.7598477   0.7963348
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7847411   0.7641275   0.8053546
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.7896498   0.7705448   0.8087548
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.7962323   0.7802854   0.8121791
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.7906728   0.7672302   0.8141153
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.7898955   0.7700354   0.8097555
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.7950351   0.7782003   0.8118698
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.8026623   0.7844212   0.8209035
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.8055724   0.7889722   0.8221725
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.8091639   0.7938270   0.8245008
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.8073218   0.7944220   0.8202216
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.7996748   0.7844743   0.8148753
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.8338456   0.8213371   0.8463540
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.8280345   0.8153138   0.8407552
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.8464799   0.8319851   0.8609747
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.8551256   0.8405924   0.8696588
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.8625982   0.8466605   0.8785358
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.8632420   0.8461234   0.8803606
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.8594477   0.8461713   0.8727241
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.8564261   0.8425286   0.8703236
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.8828079   0.8542317   0.9113842


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
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
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
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                1.8940471   1.8464513   1.9416429
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9747519   1.9548124   1.9946914
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
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1960560   1.1745115   1.2176004
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1807423   1.1621509   1.1993337
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1083850   1.0774528   1.1393172
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                1.1007081   1.0652677   1.1361485
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                1.0568796   1.0059921   1.1077672
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                1.1101018   1.0850311   1.1351725
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                1.3010517   1.2719491   1.3301542
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1980958   1.1871818   1.2090098
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
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8445901   0.8339177   0.8552625
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7916227   0.7669686   0.8162769
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7967156   0.7913996   0.8020317
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8491886   0.8437514   0.8546258


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0711161   -0.3536666    0.2114344
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0622212   -0.3522111    0.2277688
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0560418   -0.2088811    0.3209647
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0032211   -0.3031051    0.2966629
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0118789   -0.2590313    0.2352736
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0341826   -0.3457363    0.4141015
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.1598654   -0.4262327    0.1065019
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.2739441   -0.5374977   -0.0103904
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.2159045   -0.5318511    0.1000422
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.2501897   -0.5521521    0.0517727
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.1181997   -0.3892041    0.1528047
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.4983200   -0.0231061    1.0197462
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1364303   -0.3535368    0.6263975
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.3170854   -0.1593788    0.7935497
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.2939959   -0.1534183    0.7414101
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.1356000   -0.4567019    0.7279020
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.2472870   -0.3019811    0.7965552
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.0745938   -0.6608269    0.5116393
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.0318701   -0.4394471    0.3757070
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0147545   -0.5129828    0.4834738
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0874678   -0.3430852    0.5180209
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.4772484   -0.0305338    0.9850306
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0497033   -0.3064438    0.4058504
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.2539455   -0.1073021    0.6151931
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.2770447   -0.1002739    0.6543633
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    1                  0.0505098   -0.3564739    0.4574936
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    1                  0.1919022   -0.1733284    0.5571328
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    1                  0.1882330   -0.2095889    0.5860548
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    1                  0.0035254   -0.3751036    0.3821543
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.3026500   -0.1125342    0.7178341
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   1                  0.2086919   -0.2017029    0.6190868
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0524320   -0.2645948    0.3694589
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.1742766   -0.2424950    0.5910482
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                  0.0152268   -0.3160541    0.3465077
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1785898   -0.4994668    0.1422871
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0673108   -0.3077266    0.4423483
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0907920   -0.1851009    0.3666848
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    1                  0.3334375   -0.0228202    0.6896951
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1273908   -0.4890724    0.2342908
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    1                  0.1641729   -0.2487646    0.5771104
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1538504   -0.1627455    0.4704463
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.1427546   -0.4682914    0.1827821
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0657167   -0.2805596    0.4119929
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.1224410   -0.5738076    0.3289256
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0192855   -0.2660783    0.3046493
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.2283843   -0.0209087    0.4776774
0-3 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.1006105   -0.1326702    0.3338912
0-3 months     ki0047075b-MAL-ED          PERU                           5                    1                 -0.2789918   -0.5320242   -0.0259594
0-3 months     ki0047075b-MAL-ED          PERU                           6                    1                 -0.1344536   -0.4814469    0.2125396
0-3 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.0437882   -0.2798702    0.1922938
0-3 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0387353   -0.2931742    0.2157036
0-3 months     ki0047075b-MAL-ED          PERU                           9                    1                  0.1266501   -0.1159983    0.3692985
0-3 months     ki0047075b-MAL-ED          PERU                           10                   1                  0.0703161   -0.1557506    0.2963827
0-3 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.0451849   -0.2894390    0.1990693
0-3 months     ki0047075b-MAL-ED          PERU                           12                   1                 -0.2131909   -0.5020901    0.0757083
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.2398230   -0.6833958    0.2037497
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0967298   -0.4607275    0.6541871
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.2679775   -0.1936889    0.7296440
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0930210   -0.5980245    0.4119825
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0789965   -0.5018307    0.3438377
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0198865   -0.4026798    0.4424528
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.2017857   -0.2497044    0.6532758
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0883679   -0.3574523    0.5341880
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.2102000   -0.1803660    0.6007659
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0352462   -0.4313573    0.5018497
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1905628   -0.6145187    0.2333930
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.2346482   -0.5250026    0.0557063
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1407962   -0.4636674    0.1820749
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1518565   -0.5609942    0.2572812
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.3247848   -0.6601800    0.0106103
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.1755483   -0.6233426    0.2722460
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.4283703   -0.7292673   -0.1274732
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0061356   -0.4281062    0.4403774
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.1306743   -0.4178241    0.1564754
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.2371847   -0.5368266    0.0624572
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.2741106   -0.5722813    0.0240602
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.3545747   -0.6366616   -0.0724878
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.4110277   -0.9636188    0.1415635
0-3 months     ki1000108-IRC              INDIA                          3                    1                 -0.5071804   -1.0889774    0.0746166
0-3 months     ki1000108-IRC              INDIA                          4                    1                 -0.6449356   -1.1025414   -0.1873298
0-3 months     ki1000108-IRC              INDIA                          5                    1                 -1.1070168   -1.5683934   -0.6456403
0-3 months     ki1000108-IRC              INDIA                          6                    1                  0.1048641   -0.3930051    0.6027333
0-3 months     ki1000108-IRC              INDIA                          7                    1                 -0.1203019   -0.5559841    0.3153802
0-3 months     ki1000108-IRC              INDIA                          8                    1                 -0.0887390   -0.5060640    0.3285860
0-3 months     ki1000108-IRC              INDIA                          9                    1                  0.0561407   -0.5861861    0.6984675
0-3 months     ki1000108-IRC              INDIA                          10                   1                 -0.0147805   -0.4352341    0.4056731
0-3 months     ki1000108-IRC              INDIA                          11                   1                 -0.1568586   -0.5755397    0.2618225
0-3 months     ki1000108-IRC              INDIA                          12                   1                 -0.3648044   -0.7684221    0.0388132
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0041745   -0.0669853    0.0753342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0740049   -0.1993246    0.3473343
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                 -0.0650901   -0.3035372    0.1733569
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.1263336   -0.2337606   -0.0189065
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.0461553   -0.2814458    0.1891352
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.2459223   -0.3825976   -0.1092470
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.1727931   -0.3611324    0.0155462
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.1954313   -0.3322697   -0.0585929
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0995140   -0.3054217    0.1063937
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.1926985   -0.3764677   -0.0089293
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                 -0.1058834   -0.2782488    0.0664820
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0422232   -0.2263772    0.3108236
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0800958   -0.3152572    0.1550656
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.1444251   -0.4037744    0.1149241
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.2523887   -0.4952729   -0.0095044
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.1931698   -0.4523380    0.0659983
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.2754412   -0.5424844   -0.0083980
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.3901374   -0.7077346   -0.0725402
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.2957651   -0.5657052   -0.0258251
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.1564821   -0.4309843    0.1180200
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0755752   -0.3157534    0.1646030
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0206622   -0.2251855    0.2665098
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0539776   -0.1784822    0.2864373
0-3 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.0734730   -0.1361231    0.2830691
0-3 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0593178   -0.1694449    0.2880805
0-3 months     ki1101329-Keneba           GAMBIA                         5                    1                 -0.0898699   -0.3354405    0.1557008
0-3 months     ki1101329-Keneba           GAMBIA                         6                    1                 -0.0689505   -0.3567380    0.2188369
0-3 months     ki1101329-Keneba           GAMBIA                         7                    1                 -0.1202278   -0.3836729    0.1432174
0-3 months     ki1101329-Keneba           GAMBIA                         8                    1                 -0.0262011   -0.2643006    0.2118985
0-3 months     ki1101329-Keneba           GAMBIA                         9                    1                 -0.1472023   -0.3658800    0.0714755
0-3 months     ki1101329-Keneba           GAMBIA                         10                   1                 -0.1409341   -0.3536958    0.0718276
0-3 months     ki1101329-Keneba           GAMBIA                         11                   1                  0.0391094   -0.1887660    0.2669848
0-3 months     ki1101329-Keneba           GAMBIA                         12                   1                  0.0298485   -0.2051542    0.2648513
0-3 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        2                    1                  0.0195946   -0.0804169    0.1196061
0-3 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0574515   -0.0576872    0.1725902
0-3 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0221944   -0.1126841    0.1570729
0-3 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0120058   -0.1278802    0.1518917
0-3 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.1266337   -0.0338437    0.2871111
0-3 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0462644   -0.1156557    0.2081844
0-3 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0825355   -0.0894390    0.2545101
0-3 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0431744   -0.1170708    0.2034195
0-3 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0322630   -0.0962006    0.1607267
0-3 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0363026   -0.0937769    0.1663821
0-3 months     ki1119695-PROBIT           BELARUS                        12                   1                  0.0883730   -0.0346583    0.2114043
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0470762   -0.0576718    0.1518242
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0256269   -0.1209890    0.0697352
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.1868738   -0.2861795   -0.0875682
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.2029238   -0.3054960   -0.1003516
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.3977357   -0.4996389   -0.2958325
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.3211389   -0.4175306   -0.2247473
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.2522139   -0.3450354   -0.1593924
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.2420365   -0.3315709   -0.1525021
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.2652159   -0.3620456   -0.1683862
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.2269312   -0.3255110   -0.1283514
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0833643   -0.1787928    0.0120643
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0258621   -0.0649986    0.0132744
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0379064   -0.0767967    0.0009840
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0005524   -0.0432174    0.0443221
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0149654   -0.0651302    0.0351994
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0036117   -0.0410732    0.0482966
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0392570   -0.0845465    0.0060325
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0967434   -0.1392676   -0.0542192
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.2080070   -0.2487248   -0.1672892
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.2110917   -0.2491743   -0.1730092
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.1708047   -0.2085568   -0.1330526
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0551355   -0.0940459   -0.0162251
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.1298396   -0.2273749   -0.0323042
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 -0.1397014   -0.2261038   -0.0532991
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0189124   -0.1194975    0.1573223
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 -0.0665878   -0.2111375    0.0779620
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 -0.2165014   -0.3559985   -0.0770042
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 -0.3471964   -0.4826065   -0.2117862
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 -0.3343758   -0.4695767   -0.1991749
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 -0.3440851   -0.5206298   -0.1675405
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0359264   -0.2532240    0.1813711
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0509131   -0.2699336    0.1681074
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.1042559   -0.2836219    0.0751100
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0937878   -0.0712866    0.2588621
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0143625   -0.1615560    0.1902811
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0812608   -0.2619686    0.0994471
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0256419   -0.2445113    0.1932274
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.1389146   -0.0169166    0.2947458
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0740372   -0.1092315    0.2573059
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.1056406   -0.0757686    0.2870498
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.1563792   -0.0133435    0.3261018
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0720912   -0.3221228    0.4663051
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1615354   -0.2279052    0.5509761
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1852838   -0.2530659    0.6236335
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0685208   -0.2807350    0.4177767
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.2386868   -0.8217075    0.3443339
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.1650457   -0.6654602    0.3353688
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.1018962   -0.3768586    0.5806509
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.3015076   -0.0415613    0.6445766
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0742541   -0.4274362    0.2789279
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0005903   -0.3654326    0.3666132
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.1103884   -0.3026408    0.5234176
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0788468   -0.3787911    0.2210975
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0226649   -0.3201964    0.3655262
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                 -0.2190411   -0.6009400    0.1628578
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0872642   -0.3839407    0.2094123
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    1                 -0.1236107   -0.4280498    0.1808284
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    1                 -0.1773317   -0.5307228    0.1760593
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    1                 -0.0293869   -0.3102752    0.2515014
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    1                 -0.0037065   -0.3159840    0.3085711
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   1                 -0.0892104   -0.3987780    0.2203572
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0386252   -0.2319233    0.3091737
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.0687535   -0.2673649    0.4048720
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.2167523   -0.4446716    0.0111670
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.2459967   -0.5032591    0.0112656
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.3783643   -0.5681331   -0.1885955
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.2807763   -0.4897880   -0.0717647
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.2676162   -0.5333510   -0.0018814
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.2456843   -0.4494533   -0.0419153
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.2445769   -0.5085067    0.0193530
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.1444939   -0.4193183    0.1303304
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0942680   -0.1344829    0.3230189
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   1                  0.1011061   -0.1114145    0.3136267
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0864080   -0.3267278    0.1539118
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.1195495   -0.4096385    0.1705395
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.2753443   -0.5704171    0.0197285
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.1104059   -0.1601100    0.3809218
3-6 months     ki0047075b-MAL-ED          PERU                           5                    1                  0.2806994   -0.0418087    0.6032075
3-6 months     ki0047075b-MAL-ED          PERU                           6                    1                  0.1187243   -0.2188309    0.4562795
3-6 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.1287557   -0.4141564    0.1566449
3-6 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0810559   -0.3221233    0.1600116
3-6 months     ki0047075b-MAL-ED          PERU                           9                    1                 -0.3531290   -0.6566899   -0.0495681
3-6 months     ki0047075b-MAL-ED          PERU                           10                   1                 -0.1053018   -0.3710207    0.1604171
3-6 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.1140721   -0.3679865    0.1398422
3-6 months     ki0047075b-MAL-ED          PERU                           12                   1                  0.0875575   -0.2407796    0.4158945
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.2137278   -0.1292956    0.5567512
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1056499   -0.3801982    0.5914981
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0076602   -0.3843328    0.3996533
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0281127   -0.3738745    0.3176491
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.2555086   -0.0929690    0.6039863
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.1031704   -0.4155533    0.2092124
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1003841   -0.2989125    0.4996807
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.0412474   -0.3408754    0.2583807
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.1232988   -0.4346148    0.1880172
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0091155   -0.3640356    0.3458046
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1718916   -0.4659473    0.1221641
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0171386   -0.3317768    0.3660540
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.1400194   -0.5041141    0.2240753
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.2142602   -0.5603969    0.1318764
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.1066849   -0.2272338    0.4406037
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0370452   -0.3238180    0.3979085
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2680850   -0.0652614    0.6014314
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0752615   -0.3829056    0.5334287
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.3096362   -0.0461714    0.6654437
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.1095418   -0.4411192    0.2220356
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0974081   -0.4327136    0.2378974
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.1283724   -0.2091265    0.4658713
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
3-6 months     ki1000108-IRC              INDIA                          2                    1                 -0.2192910   -0.4944562    0.0558743
3-6 months     ki1000108-IRC              INDIA                          3                    1                  0.0896382   -0.1820848    0.3613612
3-6 months     ki1000108-IRC              INDIA                          4                    1                 -0.2064854   -0.4411802    0.0282095
3-6 months     ki1000108-IRC              INDIA                          5                    1                 -0.4170396   -0.6771872   -0.1568919
3-6 months     ki1000108-IRC              INDIA                          6                    1                 -0.0767151   -0.3821414    0.2287111
3-6 months     ki1000108-IRC              INDIA                          7                    1                 -0.0496615   -0.3320343    0.2327113
3-6 months     ki1000108-IRC              INDIA                          8                    1                 -0.0460972   -0.3258728    0.2336783
3-6 months     ki1000108-IRC              INDIA                          9                    1                  0.2132431   -0.0947075    0.5211937
3-6 months     ki1000108-IRC              INDIA                          10                   1                  0.1969246   -0.0274713    0.4213205
3-6 months     ki1000108-IRC              INDIA                          11                   1                  0.0118632   -0.2228872    0.2466136
3-6 months     ki1000108-IRC              INDIA                          12                   1                  0.1147278   -0.0997852    0.3292408
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1770151   -0.0056269    0.3596571
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.1247725   -0.0813765    0.3309214
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.1318781   -0.1407785    0.4045346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1102160   -0.0834164    0.3038484
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.0157419   -0.1794240    0.1479402
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.1161386   -0.1387568    0.3710340
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.2634697    0.0584478    0.4684916
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.2432382    0.0153557    0.4711208
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.2046814   -0.0255779    0.4349407
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.1348790    0.0390898    0.2306682
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.2589156    0.1317288    0.3861023
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0798166   -0.3020023    0.1423691
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0511552   -0.2558446    0.1535342
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0314215   -0.1848006    0.2476436
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1178491   -0.3695802    0.1338819
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0654797   -0.3123808    0.1814215
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.1538050   -0.0625985    0.3702086
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.1328408   -0.1422408    0.4079224
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.0021711   -0.2206011    0.2162588
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.1019987   -0.1366173    0.3406148
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0520066   -0.1395510    0.2435643
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0994536   -0.0956286    0.2945358
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.1026985   -0.0757699    0.2811669
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0153951   -0.1856443    0.1548540
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1894515   -0.3755961   -0.0033069
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.1618321   -0.3500125    0.0263483
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.2096691   -0.3997833   -0.0195550
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.2252106   -0.3920464   -0.0583747
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0459709   -0.2188044    0.1268625
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0582678   -0.2247947    0.1082592
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.1157624   -0.2796099    0.0480850
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.1462297   -0.3075904    0.0151309
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0237379   -0.1910717    0.1435958
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.3142951   -0.4841472   -0.1444430
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 -0.3802881   -0.5370088   -0.2235675
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                 -0.3107882   -0.4953320   -0.1262443
3-6 months     ki1101329-Keneba           GAMBIA                         5                    1                 -0.2647662   -0.4599277   -0.0696047
3-6 months     ki1101329-Keneba           GAMBIA                         6                    1                 -0.2597562   -0.4651148   -0.0543976
3-6 months     ki1101329-Keneba           GAMBIA                         7                    1                 -0.1973106   -0.4142156    0.0195944
3-6 months     ki1101329-Keneba           GAMBIA                         8                    1                 -0.1624988   -0.3275663    0.0025687
3-6 months     ki1101329-Keneba           GAMBIA                         9                    1                 -0.0976958   -0.2639256    0.0685339
3-6 months     ki1101329-Keneba           GAMBIA                         10                   1                 -0.1132255   -0.2607938    0.0343427
3-6 months     ki1101329-Keneba           GAMBIA                         11                   1                 -0.1040405   -0.2638236    0.0557425
3-6 months     ki1101329-Keneba           GAMBIA                         12                   1                 -0.0347477   -0.2103693    0.1408738
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
3-6 months     ki1114097-CMIN             PERU                           2                    1                  0.0567862   -0.1700439    0.2836164
3-6 months     ki1114097-CMIN             PERU                           3                    1                  0.1710943   -0.0514773    0.3936660
3-6 months     ki1114097-CMIN             PERU                           4                    1                  0.1519822   -0.0656833    0.3696477
3-6 months     ki1114097-CMIN             PERU                           5                    1                  0.0924313   -0.1501355    0.3349981
3-6 months     ki1114097-CMIN             PERU                           6                    1                  0.0806619   -0.1573842    0.3187079
3-6 months     ki1114097-CMIN             PERU                           7                    1                  0.0213108   -0.2169525    0.2595741
3-6 months     ki1114097-CMIN             PERU                           8                    1                  0.0984905   -0.1206737    0.3176547
3-6 months     ki1114097-CMIN             PERU                           9                    1                 -0.2187666   -0.4550409    0.0175076
3-6 months     ki1114097-CMIN             PERU                           10                   1                  0.0436082   -0.1997593    0.2869756
3-6 months     ki1114097-CMIN             PERU                           11                   1                  0.0693282   -0.1841909    0.3228473
3-6 months     ki1114097-CMIN             PERU                           12                   1                 -0.0452757   -0.2974860    0.2069346
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                 -0.0063053   -0.1428491    0.1302385
3-6 months     ki1114097-CONTENT          PERU                           3                    1                 -0.0461387   -0.2357863    0.1435089
3-6 months     ki1114097-CONTENT          PERU                           4                    1                 -0.1387065   -0.3207305    0.0433174
3-6 months     ki1114097-CONTENT          PERU                           5                    1                  0.0297171   -0.1757374    0.2351716
3-6 months     ki1114097-CONTENT          PERU                           6                    1                 -0.1348175   -0.3051244    0.0354895
3-6 months     ki1114097-CONTENT          PERU                           7                    1                  0.1861757    0.0291000    0.3432514
3-6 months     ki1114097-CONTENT          PERU                           8                    1                  0.2169250    0.0338984    0.3999516
3-6 months     ki1114097-CONTENT          PERU                           9                    1                  0.2749458    0.0976496    0.4522420
3-6 months     ki1114097-CONTENT          PERU                           10                   1                  0.1279307   -0.0718893    0.3277506
3-6 months     ki1114097-CONTENT          PERU                           11                   1                  0.0134541   -0.2569530    0.2838612
3-6 months     ki1114097-CONTENT          PERU                           12                   1                  0.0362304   -0.1939378    0.2663985
3-6 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        2                    1                 -0.0363220   -0.1243890    0.0517449
3-6 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0650020   -0.0485120    0.1785160
3-6 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0996995   -0.0170725    0.2164715
3-6 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.1009634   -0.0175882    0.2195150
3-6 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.0357196   -0.0707664    0.1422057
3-6 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0539000   -0.0717147    0.1795148
3-6 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0383511   -0.0907488    0.1674510
3-6 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0887159   -0.0029949    0.1804268
3-6 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0344162   -0.0674473    0.1362797
3-6 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0365095   -0.0535328    0.1265517
3-6 months     ki1119695-PROBIT           BELARUS                        12                   1                 -0.0002293   -0.1123618    0.1119031
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0647383   -0.0317586    0.1612353
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0495514   -0.1482546    0.0491519
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.1269557    0.0324989    0.2214125
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0917309    0.0006825    0.1827793
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.3382544    0.2364600    0.4400489
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.1099620    0.0210176    0.1989063
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.0937304    0.0104859    0.1769749
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.1231646    0.0368290    0.2095001
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.1403831    0.0484435    0.2323226
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0882625   -0.0006452    0.1771703
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.1174996    0.0299103    0.2050889
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0496263   -0.0980183   -0.0012342
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.1598487   -0.2066808   -0.1130165
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.1683445   -0.2142886   -0.1224004
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.1586298   -0.2132743   -0.1039854
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.2015814   -0.2516288   -0.1515340
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.1848413   -0.2326945   -0.1369882
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0737474   -0.1187158   -0.0287789
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0355511   -0.0099939    0.0810962
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0741488    0.0300329    0.1182646
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0668362    0.0233968    0.1102756
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0129052   -0.0287775    0.0545879
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    2                  0.1800583    0.0351251    0.3249915
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    2                  0.0749813   -0.0756303    0.2255929
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.1123587   -0.0384976    0.2632150
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 -0.0409294   -0.2448605    0.1630018
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    2                  0.0044187   -0.1515005    0.1603380
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    2                  0.1510777    0.0030518    0.2991037
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    2                  0.2877888    0.1320722    0.4435053
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   2                  0.3019679    0.1364300    0.4675058
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0272599   -0.1293402    0.0748203
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0585889   -0.0466847    0.1638624
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0381134   -0.1474695    0.0712427
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0000168   -0.1148577    0.1148913
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.1142024    0.0090259    0.2193788
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0670754   -0.0667978    0.2009487
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0139412   -0.0902002    0.1180825
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0285547   -0.0786743    0.1357836
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0247005   -0.0840122    0.1334133
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0282758   -0.1671361    0.1105846
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0398921   -0.0537404    0.1335246
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.2247353   -0.4354192   -0.0140514
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0002674   -0.1850796    0.1845448
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0591397   -0.2634148    0.1451354
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0576173   -0.1313633    0.2465979
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.3770333    0.0169690    0.7370976
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.0648837   -0.1777208    0.3074883
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0886708   -0.0861592    0.2635007
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.2261784    0.0299840    0.4223728
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.1340795   -0.0780902    0.3462492
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0630049   -0.1217039    0.2477138
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0699442   -0.2011786    0.3410671
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.1074791   -0.0186000    0.2335582
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.1530441    0.0135975    0.2924907
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0578027   -0.0871962    0.2028016
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.1624189    0.0325684    0.2922694
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.0502752   -0.0614830    0.1620334
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    1                  0.1408356   -0.0043629    0.2860340
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.0583510   -0.0753156    0.1920177
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0326044   -0.0949008    0.1601096
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.0439778   -0.0891578    0.1771135
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.0147941   -0.1064202    0.1360083
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.0336899   -0.0885945    0.1559743
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0511480   -0.1676764    0.0653803
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0458180   -0.1762066    0.0845706
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0275560   -0.0785394    0.1336513
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0393810   -0.0738105    0.1525725
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.1604376    0.0351833    0.2856920
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.1000853   -0.0071580    0.2073286
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.1582951    0.0476012    0.2689891
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.1211379   -0.0109009    0.2531766
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0745814   -0.0477397    0.1969026
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0445689   -0.0619858    0.1511236
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0457380   -0.0653250    0.1568010
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0699271   -0.0497425    0.1895967
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0843885   -0.0567102    0.2254871
6-12 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0596078   -0.2141082    0.0948926
6-12 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.0226763   -0.1622531    0.1169004
6-12 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0119223   -0.1547352    0.1785798
6-12 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0540167   -0.1754742    0.0674408
6-12 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.0683847   -0.0509704    0.1877399
6-12 months    ki0047075b-MAL-ED          PERU                           9                    1                  0.1108536   -0.0032182    0.2249255
6-12 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.1052557   -0.0941677    0.3046792
6-12 months    ki0047075b-MAL-ED          PERU                           11                   1                 -0.0163549   -0.1338745    0.1011647
6-12 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.0562017   -0.1514681    0.0390647
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0204405   -0.2277512    0.1868702
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.1153138   -0.0658333    0.2964609
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0539070   -0.2680021    0.1601881
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.1407344   -0.0626413    0.3441100
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.1062673   -0.3263531    0.1138184
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0044056   -0.1733944    0.1822057
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0031906   -0.2105481    0.2169293
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0114187   -0.1547705    0.1776078
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.0110198   -0.1951334    0.1730938
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0516599   -0.1469778    0.2502975
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0295376   -0.1332396    0.1923147
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0471992   -0.2301169    0.1357185
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0687112   -0.1468659    0.2842883
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0988258   -0.2818621    0.0842105
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0556165   -0.2298123    0.1185793
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0195259   -0.1873263    0.1482746
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0859766   -0.2817496    0.1097964
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.1595524   -0.4207504    0.1016455
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.2444796   -0.4130926   -0.0758665
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0719254   -0.2523020    0.1084512
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0071329   -0.1714521    0.1857180
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1618997   -0.3349963    0.0111968
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
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0189185   -0.1084020    0.1462390
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0336774   -0.1478895    0.0805347
6-12 months    ki1000108-IRC              INDIA                          4                    1                 -0.0083796   -0.1431224    0.1263631
6-12 months    ki1000108-IRC              INDIA                          5                    1                  0.0635876   -0.0849794    0.2121546
6-12 months    ki1000108-IRC              INDIA                          6                    1                  0.0851729   -0.0439703    0.2143162
6-12 months    ki1000108-IRC              INDIA                          7                    1                  0.1547787    0.0090937    0.3004637
6-12 months    ki1000108-IRC              INDIA                          8                    1                  0.0810399   -0.0372072    0.1992870
6-12 months    ki1000108-IRC              INDIA                          9                    1                  0.0259387   -0.1320722    0.1839496
6-12 months    ki1000108-IRC              INDIA                          10                   1                  0.0775444   -0.0305110    0.1855997
6-12 months    ki1000108-IRC              INDIA                          11                   1                  0.0867337   -0.0468048    0.2202723
6-12 months    ki1000108-IRC              INDIA                          12                   1                  0.0687976   -0.0506507    0.1882460
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0120790   -0.0408589    0.0650170
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0294684   -0.0903032    0.1492401
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0328011   -0.0361208    0.1017229
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.1220850   -0.0480645    0.2922345
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.1219593    0.0346156    0.2093031
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0891481   -0.0131240    0.1914201
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.0234653   -0.1123732    0.0654425
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.0060240   -0.1006806    0.0886325
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0013696   -0.0981470    0.0954078
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0895508    0.0149733    0.1641283
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.0452125   -0.0492196    0.1396446
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0274771   -0.1195878    0.0646336
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0394502   -0.0691453    0.1480458
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0395759   -0.0593479    0.1384997
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0482964   -0.0582046    0.1547974
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.0847292   -0.0246750    0.1941334
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0285883   -0.0764594    0.1336361
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0103357   -0.0883122    0.1089837
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.1082035   -0.0145396    0.2309467
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0343054   -0.0747436    0.1433544
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.1113101    0.0171085    0.2055117
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0055302   -0.0879287    0.0989891
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0123941   -0.1098075    0.1345957
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0583538   -0.0570595    0.1737671
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0851763   -0.0458963    0.2162489
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.1722069    0.0589262    0.2854877
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.1945629    0.0848658    0.3042600
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.2209833    0.1125972    0.3293693
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.2210393    0.1104497    0.3316289
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.2425408    0.1355977    0.3494838
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.2393522    0.1363439    0.3423605
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.1677049    0.0700742    0.2653355
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0822243   -0.0230160    0.1874646
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0219046   -0.0613143    0.1051235
6-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.1182725    0.0269651    0.2095798
6-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0789933   -0.0119161    0.1699028
6-12 months    ki1101329-Keneba           GAMBIA                         5                    1                  0.0630361   -0.0221386    0.1482109
6-12 months    ki1101329-Keneba           GAMBIA                         6                    1                  0.0634864   -0.0231352    0.1501080
6-12 months    ki1101329-Keneba           GAMBIA                         7                    1                  0.0293455   -0.0972975    0.1559886
6-12 months    ki1101329-Keneba           GAMBIA                         8                    1                  0.0398237   -0.0473626    0.1270099
6-12 months    ki1101329-Keneba           GAMBIA                         9                    1                 -0.0018318   -0.0845722    0.0809087
6-12 months    ki1101329-Keneba           GAMBIA                         10                   1                 -0.0057458   -0.0905110    0.0790195
6-12 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.0299721   -0.0549469    0.1148910
6-12 months    ki1101329-Keneba           GAMBIA                         12                   1                 -0.0411804   -0.1219441    0.0395832
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0741370   -0.0973960    0.2456700
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0816203   -0.0419090    0.2051497
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0297602   -0.0977832    0.1573035
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                 -0.0027846   -0.1371922    0.1316230
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.0764716   -0.0909888    0.2439321
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                 -0.0763593   -0.2196249    0.0669063
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                 -0.0471580   -0.2357134    0.1413973
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                 -0.0838315   -0.2381265    0.0704635
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 -0.0096205   -0.1412356    0.1219946
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.0273934   -0.1022255    0.1570123
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                  0.0287886   -0.1155207    0.1730979
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
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 -0.0072508   -0.3601433    0.3456416
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.1235079   -0.4777192    0.2307033
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.2763421   -0.6597960    0.1071119
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 -0.3011560   -0.7907282    0.1884163
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.0774489   -0.4756465    0.3207487
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.3065928   -0.6974938    0.0843082
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.2269843   -0.6620131    0.2080446
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.2447235   -0.6019042    0.1124572
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 -0.2986984   -0.6678465    0.0704498
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.2896925   -0.7365728    0.1571879
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.1456088   -0.5039852    0.2127677
6-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           2                    1                  0.0081811   -0.1051480    0.1215103
6-12 months    ki1114097-CMIN             PERU                           3                    1                  0.0254579   -0.0798030    0.1307189
6-12 months    ki1114097-CMIN             PERU                           4                    1                  0.0229102   -0.0874508    0.1332711
6-12 months    ki1114097-CMIN             PERU                           5                    1                  0.0036549   -0.1122735    0.1195833
6-12 months    ki1114097-CMIN             PERU                           6                    1                 -0.0109252   -0.1303262    0.1084758
6-12 months    ki1114097-CMIN             PERU                           7                    1                  0.0265818   -0.1024500    0.1556135
6-12 months    ki1114097-CMIN             PERU                           8                    1                 -0.0294598   -0.1271713    0.0682517
6-12 months    ki1114097-CMIN             PERU                           9                    1                 -0.0833346   -0.2043530    0.0376837
6-12 months    ki1114097-CMIN             PERU                           10                   1                 -0.0682776   -0.1886175    0.0520624
6-12 months    ki1114097-CMIN             PERU                           11                   1                  0.0127229   -0.1159569    0.1414026
6-12 months    ki1114097-CMIN             PERU                           12                   1                 -0.0034700   -0.1385321    0.1315920
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                  0.0011524   -0.1701600    0.1724648
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0619726   -0.0968901    0.2208352
6-12 months    ki1114097-CONTENT          PERU                           4                    1                 -0.0436059   -0.2148020    0.1275902
6-12 months    ki1114097-CONTENT          PERU                           5                    1                  0.0227232   -0.1782141    0.2236605
6-12 months    ki1114097-CONTENT          PERU                           6                    1                 -0.0753303   -0.2578261    0.1071656
6-12 months    ki1114097-CONTENT          PERU                           7                    1                 -0.0113426   -0.1735944    0.1509092
6-12 months    ki1114097-CONTENT          PERU                           8                    1                 -0.0474403   -0.2138604    0.1189798
6-12 months    ki1114097-CONTENT          PERU                           9                    1                 -0.0615816   -0.2337445    0.1105813
6-12 months    ki1114097-CONTENT          PERU                           10                   1                 -0.0040774   -0.1900874    0.1819325
6-12 months    ki1114097-CONTENT          PERU                           11                   1                  0.0408946   -0.1329627    0.2147519
6-12 months    ki1114097-CONTENT          PERU                           12                   1                 -0.0610464   -0.2386512    0.1165584
6-12 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        2                    1                 -0.0082299   -0.0567517    0.0402919
6-12 months    ki1119695-PROBIT           BELARUS                        3                    1                 -0.0269735   -0.0877802    0.0338332
6-12 months    ki1119695-PROBIT           BELARUS                        4                    1                 -0.0749509   -0.1279859   -0.0219160
6-12 months    ki1119695-PROBIT           BELARUS                        5                    1                 -0.0794526   -0.1339043   -0.0250010
6-12 months    ki1119695-PROBIT           BELARUS                        6                    1                 -0.0754538   -0.1295739   -0.0213338
6-12 months    ki1119695-PROBIT           BELARUS                        7                    1                 -0.0731187   -0.1519787    0.0057412
6-12 months    ki1119695-PROBIT           BELARUS                        8                    1                 -0.0883823   -0.1513281   -0.0254364
6-12 months    ki1119695-PROBIT           BELARUS                        9                    1                 -0.0676062   -0.1305013   -0.0047111
6-12 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0615665   -0.1128286   -0.0103045
6-12 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0506053   -0.1095852    0.0083746
6-12 months    ki1119695-PROBIT           BELARUS                        12                   1                 -0.0232314   -0.0783331    0.0318703
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0093164   -0.0616415    0.0430088
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0058610   -0.0516410    0.0633631
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0366847   -0.0147008    0.0880703
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0051201   -0.0494683    0.0597086
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.0538509   -0.1085042    0.0008024
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0632033   -0.1133658   -0.0130408
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0203489   -0.0697369    0.0290391
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0349777   -0.0845612    0.0146058
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.0453095   -0.0967228    0.0061037
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.0094761   -0.0558461    0.0368939
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.0081741   -0.0427478    0.0590959
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.1330666    0.0105830    0.2555502
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    1                  0.0850223   -0.0369844    0.2070290
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.1654307    0.0302191    0.3006423
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    1                  0.0688976   -0.0604772    0.1982724
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    1                  0.0125668   -0.1194578    0.1445914
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    1                  0.1419648    0.0149562    0.2689734
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.1153734   -0.0063117    0.2370585
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.2007452    0.0565587    0.3449318
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.0647777   -0.0547904    0.1843459
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   1                  0.0795286   -0.0515779    0.2106352
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   1                  0.0532062   -0.0792224    0.1856349
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0267788   -0.0000030    0.0535606
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0696916    0.0407715    0.0986117
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0887593    0.0640537    0.1134650
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.1040593    0.0734702    0.1346483
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.1080860    0.0793193    0.1368527
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.1198204    0.0892946    0.1503461
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.1027924    0.0736697    0.1319152
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0858977    0.0564605    0.1153349
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0714435    0.0456018    0.0972852
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0473089    0.0213423    0.0732756
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0268482    0.0004416    0.0532549
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0019691   -0.0704186    0.0664804
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    2                  0.0157078   -0.0533868    0.0848023
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0312294   -0.0400462    0.1025049
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    2                  0.0392854   -0.0334929    0.1120637
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    2                  0.0733374    0.0019793    0.1446955
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    2                  0.0416209   -0.0297455    0.1129874
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    2                  0.0257594   -0.0429523    0.0944711
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   2                  0.0333521   -0.0443779    0.1110820
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0759535   -0.1699564    0.0180494
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0915245   -0.1812368   -0.0018122
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0094423   -0.1030945    0.0842099
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0704050   -0.1660593    0.0252494
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.1086375   -0.2198820    0.0026070
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0047538   -0.0875858    0.0780781
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0407870   -0.1349034    0.0533293
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0602763   -0.1478336    0.0272810
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0152380   -0.1017108    0.0712347
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0175208   -0.1118685    0.0768270
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0383468   -0.1229574    0.0462638
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0354257   -0.1754265    0.1045751
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0385892   -0.1212026    0.1983809
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1234260   -0.0466158    0.2934678
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0060066   -0.1407952    0.1528084
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.1445568   -0.2844479   -0.0046657
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0628039   -0.2087924    0.0831845
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.1534034   -0.2798239   -0.0269830
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.0697200   -0.1993649    0.0599250
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0530237   -0.2194595    0.1134120
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.0366778   -0.1963157    0.1229601
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.1121524   -0.2811688    0.0568639
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                  0.0333159   -0.0514175    0.1180493
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0500575   -0.0475485    0.1476635
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0606131   -0.0351652    0.1563914
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    1                  0.0280045   -0.0740885    0.1300976
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.0889082    0.0000531    0.1777632
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0652522   -0.0320376    0.1625420
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.0531680   -0.0264319    0.1327679
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.0452500   -0.0402839    0.1307840
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.0410622   -0.0426114    0.1247359
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.0838390    0.0028649    0.1648132
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.1003928    0.0244264    0.1763593
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0059917   -0.0677153    0.0557319
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0312678   -0.1017617    0.0392261
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0271308   -0.0286899    0.0829515
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0058689   -0.0645925    0.0528547
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.0145663   -0.0885988    0.0594663
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0335116   -0.0300572    0.0970805
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.0007966   -0.0622743    0.0606812
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                  0.0035352   -0.0815881    0.0886585
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.0119950   -0.0799105    0.0559205
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0049541   -0.0716048    0.0616967
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0261382   -0.0473223    0.0995987
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0056351   -0.0698688    0.0585985
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0207513   -0.0999876    0.0584850
12-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 -0.0494350   -0.1381483    0.0392782
12-24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0013470   -0.0846207    0.0873148
12-24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.0369837   -0.0654784    0.1394458
12-24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.0211873   -0.0680357    0.1104104
12-24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.0238938   -0.0841132    0.1319008
12-24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.0380194   -0.0486166    0.1246553
12-24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.0299953   -0.0475583    0.1075489
12-24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.0352489   -0.0469399    0.1174376
12-24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.0162612   -0.0992295    0.0667071
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0632789   -0.1926404    0.0660826
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0113638   -0.1126946    0.1354221
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1094048   -0.0003518    0.2191613
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0244236   -0.1480659    0.0992187
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.0579611   -0.0461389    0.1620611
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0092127   -0.0978893    0.0794639
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0404992   -0.0818505    0.1628490
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0627921   -0.0332052    0.1587893
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0124413   -0.0916513    0.1165340
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0304484   -0.1318510    0.0709541
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0155571   -0.1091001    0.0779859
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0077438   -0.1258896    0.1104019
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0429309   -0.1561825    0.0703206
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0525094   -0.2218923    0.1168735
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0020837   -0.1220630    0.1262303
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0016980   -0.1206201    0.1172241
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0704388   -0.0525987    0.1934763
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0860218   -0.0299188    0.2019625
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0905777   -0.0299447    0.2111000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0295712   -0.1503886    0.0912461
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0533909   -0.1574305    0.0506487
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0501371   -0.0521382    0.1524124
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
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0444771   -0.0535416    0.1424958
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0177927   -0.1135448    0.0779593
12-24 months   ki1000108-IRC              INDIA                          4                    1                  0.0269457   -0.1093027    0.1631942
12-24 months   ki1000108-IRC              INDIA                          5                    1                 -0.0550882   -0.1545902    0.0444137
12-24 months   ki1000108-IRC              INDIA                          6                    1                 -0.0369676   -0.1336976    0.0597624
12-24 months   ki1000108-IRC              INDIA                          7                    1                 -0.0816825   -0.1777332    0.0143681
12-24 months   ki1000108-IRC              INDIA                          8                    1                 -0.0369145   -0.1211632    0.0473341
12-24 months   ki1000108-IRC              INDIA                          9                    1                 -0.0553262   -0.1631804    0.0525280
12-24 months   ki1000108-IRC              INDIA                          10                   1                 -0.0197776   -0.1081963    0.0686412
12-24 months   ki1000108-IRC              INDIA                          11                   1                  0.0347641   -0.0564125    0.1259407
12-24 months   ki1000108-IRC              INDIA                          12                   1                  0.0225080   -0.0654143    0.1104303
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0139608   -0.0789856    0.0510639
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0271638   -0.0964154    0.0420879
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0837722   -0.1563596   -0.0111849
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0802847   -0.1525588   -0.0080105
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0440628   -0.1165926    0.0284669
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.0231967   -0.0939096    0.0475161
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0061724   -0.0966338    0.0842890
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0076793   -0.0676623    0.0830210
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.0169282   -0.0959280    0.0620716
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0204510   -0.0946688    0.0537667
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0083209   -0.0759042    0.0592623
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0240115   -0.0719397    0.0239168
12-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0530614   -0.1018707   -0.0042521
12-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0447504   -0.0870638   -0.0024370
12-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.0535716   -0.0973950   -0.0097482
12-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.0519796   -0.1117283    0.0077691
12-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.0386399   -0.0925640    0.0152841
12-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 -0.0070723   -0.0494672    0.0353227
12-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.0207909   -0.0659238    0.0243420
12-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.0072199   -0.0541285    0.0396888
12-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0188311   -0.0737166    0.0360543
12-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.0048204   -0.0536301    0.0439892
12-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    6                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    6                  0.0253627   -0.0265461    0.0772714
12-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    6                  0.0626185    0.0095365    0.1157006
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
12-24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 -0.0949176   -0.3449454    0.1551102
12-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 -0.0252181   -0.2879573    0.2375210
12-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 -0.0507934   -0.2885239    0.1869371
12-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 -0.0860647   -0.3784183    0.2062889
12-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0486485   -0.2946301    0.1973331
12-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0826721   -0.3293342    0.1639900
12-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 -0.0141670   -0.2517108    0.2233768
12-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 -0.0640663   -0.3257666    0.1976340
12-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 -0.1379897   -0.3766923    0.1007129
12-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 -0.1276828   -0.3797394    0.1243739
12-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 -0.1290948   -0.2524422   -0.0057474
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 -0.0179157   -0.1007910    0.0649596
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 -0.0143420   -0.0960554    0.0673714
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 -0.0621820   -0.1737195    0.0493555
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0947620   -0.1839744   -0.0055497
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0588842   -0.1687727    0.0510043
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0786314   -0.1659297    0.0086669
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 -0.0177645   -0.0978206    0.0622915
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 -0.0245518   -0.1206618    0.0715581
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 -0.0709667   -0.1531527    0.0112193
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 -0.0291750   -0.1080395    0.0496895
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0907909   -0.1820024    0.0004205
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0066498   -0.0208843    0.0341840
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0115585   -0.0147550    0.0378721
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0181410   -0.0069840    0.0432660
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0125816   -0.0173199    0.0424830
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0118042   -0.0143124    0.0379208
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0169438   -0.0071155    0.0410032
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0245711   -0.0007449    0.0498871
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0274812    0.0027630    0.0521993
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0310727    0.0074022    0.0547431
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0292306    0.0070686    0.0513926
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0215835   -0.0020747    0.0452418
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0058111   -0.0231355    0.0115133
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    2                  0.0126344   -0.0064983    0.0317670
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0212800    0.0020299    0.0405301
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    2                  0.0287526    0.0084728    0.0490323
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    2                  0.0293964    0.0079197    0.0508731
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    2                  0.0256021    0.0071462    0.0440581
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    2                  0.0225806    0.0041416    0.0410195
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   2                  0.0489623    0.0178149    0.0801097
