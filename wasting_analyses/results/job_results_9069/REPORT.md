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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        brthmon    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2               1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3               1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               0       17     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4               1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5               1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               0       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6               1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               0       14     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7               1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8               1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               0       12     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9               1        7     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              0       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10              1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              0       13     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              0       22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12              1        4     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2               1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4               0        9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5               0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6               0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7               0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9               0       27     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9               1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10              0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10              1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11              0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12              0       10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12              1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          1               0       11     203
Birth       ki0047075b-MAL-ED          INDIA                          1               1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          2               0       13     203
Birth       ki0047075b-MAL-ED          INDIA                          2               1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          3               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          3               1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          4               0       11     203
Birth       ki0047075b-MAL-ED          INDIA                          4               1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          5               0        5     203
Birth       ki0047075b-MAL-ED          INDIA                          5               1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          6               0       15     203
Birth       ki0047075b-MAL-ED          INDIA                          6               1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          7               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          7               1        4     203
Birth       ki0047075b-MAL-ED          INDIA                          8               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          8               1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          9               0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          9               1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          10              0       19     203
Birth       ki0047075b-MAL-ED          INDIA                          10              1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          11              0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          11              1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          12              0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          12              1        0     203
Birth       ki0047075b-MAL-ED          NEPAL                          1               0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          2               0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          2               1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          3               0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          3               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          4               0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          4               1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          5               0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          5               1        5     168
Birth       ki0047075b-MAL-ED          NEPAL                          6               0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          6               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          7               0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          7               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          8               0       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          8               1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          9               0        9     168
Birth       ki0047075b-MAL-ED          NEPAL                          9               1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          10              0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          10              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          11              0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          12              0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          12              1        0     168
Birth       ki0047075b-MAL-ED          PERU                           1               0       37     279
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           2               0       19     279
Birth       ki0047075b-MAL-ED          PERU                           2               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           3               0       23     279
Birth       ki0047075b-MAL-ED          PERU                           3               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           4               0       20     279
Birth       ki0047075b-MAL-ED          PERU                           4               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           5               0       25     279
Birth       ki0047075b-MAL-ED          PERU                           5               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           6               0       15     279
Birth       ki0047075b-MAL-ED          PERU                           6               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           7               0       22     279
Birth       ki0047075b-MAL-ED          PERU                           7               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           8               0       18     279
Birth       ki0047075b-MAL-ED          PERU                           8               1        1     279
Birth       ki0047075b-MAL-ED          PERU                           9               0       22     279
Birth       ki0047075b-MAL-ED          PERU                           9               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           10              0       24     279
Birth       ki0047075b-MAL-ED          PERU                           10              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           11              0       29     279
Birth       ki0047075b-MAL-ED          PERU                           11              1        2     279
Birth       ki0047075b-MAL-ED          PERU                           12              0       19     279
Birth       ki0047075b-MAL-ED          PERU                           12              1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       25     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        3     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       15     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       11     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       26     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       34     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        4     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               0        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9               1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10              1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11              1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              0        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12              1        2      88
Birth       ki1000108-IRC              INDIA                          1               0       26     343
Birth       ki1000108-IRC              INDIA                          1               1        5     343
Birth       ki1000108-IRC              INDIA                          2               0       21     343
Birth       ki1000108-IRC              INDIA                          2               1        2     343
Birth       ki1000108-IRC              INDIA                          3               0       18     343
Birth       ki1000108-IRC              INDIA                          3               1        6     343
Birth       ki1000108-IRC              INDIA                          4               0       12     343
Birth       ki1000108-IRC              INDIA                          4               1        7     343
Birth       ki1000108-IRC              INDIA                          5               0        8     343
Birth       ki1000108-IRC              INDIA                          5               1        7     343
Birth       ki1000108-IRC              INDIA                          6               0       20     343
Birth       ki1000108-IRC              INDIA                          6               1        6     343
Birth       ki1000108-IRC              INDIA                          7               0       20     343
Birth       ki1000108-IRC              INDIA                          7               1       11     343
Birth       ki1000108-IRC              INDIA                          8               0       26     343
Birth       ki1000108-IRC              INDIA                          8               1       10     343
Birth       ki1000108-IRC              INDIA                          9               0       17     343
Birth       ki1000108-IRC              INDIA                          9               1        7     343
Birth       ki1000108-IRC              INDIA                          10              0       23     343
Birth       ki1000108-IRC              INDIA                          10              1       10     343
Birth       ki1000108-IRC              INDIA                          11              0       29     343
Birth       ki1000108-IRC              INDIA                          11              1        9     343
Birth       ki1000108-IRC              INDIA                          12              0       31     343
Birth       ki1000108-IRC              INDIA                          12              1       12     343
Birth       ki1000109-EE               PAKISTAN                       1               0        0       2
Birth       ki1000109-EE               PAKISTAN                       1               1        0       2
Birth       ki1000109-EE               PAKISTAN                       2               0        0       2
Birth       ki1000109-EE               PAKISTAN                       2               1        0       2
Birth       ki1000109-EE               PAKISTAN                       3               0        0       2
Birth       ki1000109-EE               PAKISTAN                       3               1        0       2
Birth       ki1000109-EE               PAKISTAN                       4               0        0       2
Birth       ki1000109-EE               PAKISTAN                       4               1        0       2
Birth       ki1000109-EE               PAKISTAN                       5               0        0       2
Birth       ki1000109-EE               PAKISTAN                       5               1        0       2
Birth       ki1000109-EE               PAKISTAN                       6               0        0       2
Birth       ki1000109-EE               PAKISTAN                       6               1        0       2
Birth       ki1000109-EE               PAKISTAN                       7               0        0       2
Birth       ki1000109-EE               PAKISTAN                       7               1        0       2
Birth       ki1000109-EE               PAKISTAN                       8               0        0       2
Birth       ki1000109-EE               PAKISTAN                       8               1        0       2
Birth       ki1000109-EE               PAKISTAN                       9               0        0       2
Birth       ki1000109-EE               PAKISTAN                       9               1        0       2
Birth       ki1000109-EE               PAKISTAN                       10              0        0       2
Birth       ki1000109-EE               PAKISTAN                       10              1        0       2
Birth       ki1000109-EE               PAKISTAN                       11              0        0       2
Birth       ki1000109-EE               PAKISTAN                       11              1        0       2
Birth       ki1000109-EE               PAKISTAN                       12              0        2       2
Birth       ki1000109-EE               PAKISTAN                       12              1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       1               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       4               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       4               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       5               0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       5               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       6               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       6               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       7               0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       7               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12              1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       11     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               0        8     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              0       17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12              1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               0        8      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1               1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3               1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12              1        0      28
Birth       ki1101329-Keneba           GAMBIA                         1               0      142    1423
Birth       ki1101329-Keneba           GAMBIA                         1               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         2               0      133    1423
Birth       ki1101329-Keneba           GAMBIA                         2               1        5    1423
Birth       ki1101329-Keneba           GAMBIA                         3               0      152    1423
Birth       ki1101329-Keneba           GAMBIA                         3               1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         4               0       95    1423
Birth       ki1101329-Keneba           GAMBIA                         4               1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         5               0       96    1423
Birth       ki1101329-Keneba           GAMBIA                         5               1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         6               0       83    1423
Birth       ki1101329-Keneba           GAMBIA                         6               1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         7               0       65    1423
Birth       ki1101329-Keneba           GAMBIA                         7               1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         8               0      116    1423
Birth       ki1101329-Keneba           GAMBIA                         8               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         9               0      116    1423
Birth       ki1101329-Keneba           GAMBIA                         9               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         10              0      166    1423
Birth       ki1101329-Keneba           GAMBIA                         10              1        3    1423
Birth       ki1101329-Keneba           GAMBIA                         11              0      105    1423
Birth       ki1101329-Keneba           GAMBIA                         11              1        4    1423
Birth       ki1101329-Keneba           GAMBIA                         12              0      126    1423
Birth       ki1101329-Keneba           GAMBIA                         12              1        3    1423
Birth       ki1114097-CMIN             BANGLADESH                     1               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     2               0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     2               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5               1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     6               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8               1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9               0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     10              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     10              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     11              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     11              1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     12              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     12              1        0       8
Birth       ki1114097-CMIN             BRAZIL                         1               0       12     111
Birth       ki1114097-CMIN             BRAZIL                         1               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         2               0        6     111
Birth       ki1114097-CMIN             BRAZIL                         2               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         3               0       12     111
Birth       ki1114097-CMIN             BRAZIL                         3               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         4               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         4               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         5               0        5     111
Birth       ki1114097-CMIN             BRAZIL                         5               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         6               0        6     111
Birth       ki1114097-CMIN             BRAZIL                         6               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         7               0        4     111
Birth       ki1114097-CMIN             BRAZIL                         7               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         8               0       11     111
Birth       ki1114097-CMIN             BRAZIL                         8               1        1     111
Birth       ki1114097-CMIN             BRAZIL                         9               0        8     111
Birth       ki1114097-CMIN             BRAZIL                         9               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         10              0       11     111
Birth       ki1114097-CMIN             BRAZIL                         10              1        3     111
Birth       ki1114097-CMIN             BRAZIL                         11              0       10     111
Birth       ki1114097-CMIN             BRAZIL                         11              1        1     111
Birth       ki1114097-CMIN             BRAZIL                         12              0       10     111
Birth       ki1114097-CMIN             BRAZIL                         12              1        0     111
Birth       ki1114097-CMIN             PERU                           1               0        1      10
Birth       ki1114097-CMIN             PERU                           1               1        0      10
Birth       ki1114097-CMIN             PERU                           2               0        1      10
Birth       ki1114097-CMIN             PERU                           2               1        0      10
Birth       ki1114097-CMIN             PERU                           3               0        2      10
Birth       ki1114097-CMIN             PERU                           3               1        0      10
Birth       ki1114097-CMIN             PERU                           4               0        3      10
Birth       ki1114097-CMIN             PERU                           4               1        0      10
Birth       ki1114097-CMIN             PERU                           5               0        0      10
Birth       ki1114097-CMIN             PERU                           5               1        0      10
Birth       ki1114097-CMIN             PERU                           6               0        0      10
Birth       ki1114097-CMIN             PERU                           6               1        0      10
Birth       ki1114097-CMIN             PERU                           7               0        0      10
Birth       ki1114097-CMIN             PERU                           7               1        0      10
Birth       ki1114097-CMIN             PERU                           8               0        1      10
Birth       ki1114097-CMIN             PERU                           8               1        0      10
Birth       ki1114097-CMIN             PERU                           9               0        2      10
Birth       ki1114097-CMIN             PERU                           9               1        0      10
Birth       ki1114097-CMIN             PERU                           10              0        0      10
Birth       ki1114097-CMIN             PERU                           10              1        0      10
Birth       ki1114097-CMIN             PERU                           11              0        0      10
Birth       ki1114097-CMIN             PERU                           11              1        0      10
Birth       ki1114097-CMIN             PERU                           12              0        0      10
Birth       ki1114097-CMIN             PERU                           12              1        0      10
Birth       ki1114097-CONTENT          PERU                           1               0        0       2
Birth       ki1114097-CONTENT          PERU                           1               1        0       2
Birth       ki1114097-CONTENT          PERU                           2               0        0       2
Birth       ki1114097-CONTENT          PERU                           2               1        0       2
Birth       ki1114097-CONTENT          PERU                           3               0        0       2
Birth       ki1114097-CONTENT          PERU                           3               1        0       2
Birth       ki1114097-CONTENT          PERU                           4               0        0       2
Birth       ki1114097-CONTENT          PERU                           4               1        0       2
Birth       ki1114097-CONTENT          PERU                           5               0        2       2
Birth       ki1114097-CONTENT          PERU                           5               1        0       2
Birth       ki1114097-CONTENT          PERU                           6               0        0       2
Birth       ki1114097-CONTENT          PERU                           6               1        0       2
Birth       ki1114097-CONTENT          PERU                           7               0        0       2
Birth       ki1114097-CONTENT          PERU                           7               1        0       2
Birth       ki1114097-CONTENT          PERU                           8               0        0       2
Birth       ki1114097-CONTENT          PERU                           8               1        0       2
Birth       ki1114097-CONTENT          PERU                           9               0        0       2
Birth       ki1114097-CONTENT          PERU                           9               1        0       2
Birth       ki1114097-CONTENT          PERU                           10              0        0       2
Birth       ki1114097-CONTENT          PERU                           10              1        0       2
Birth       ki1114097-CONTENT          PERU                           11              0        0       2
Birth       ki1114097-CONTENT          PERU                           11              1        0       2
Birth       ki1114097-CONTENT          PERU                           12              0        0       2
Birth       ki1114097-CONTENT          PERU                           12              1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1               0      648   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1      174   13824
Birth       ki1119695-PROBIT           BELARUS                        2               0      652   13824
Birth       ki1119695-PROBIT           BELARUS                        2               1      147   13824
Birth       ki1119695-PROBIT           BELARUS                        3               0      750   13824
Birth       ki1119695-PROBIT           BELARUS                        3               1      191   13824
Birth       ki1119695-PROBIT           BELARUS                        4               0      760   13824
Birth       ki1119695-PROBIT           BELARUS                        4               1      209   13824
Birth       ki1119695-PROBIT           BELARUS                        5               0      720   13824
Birth       ki1119695-PROBIT           BELARUS                        5               1      222   13824
Birth       ki1119695-PROBIT           BELARUS                        6               0      801   13824
Birth       ki1119695-PROBIT           BELARUS                        6               1      219   13824
Birth       ki1119695-PROBIT           BELARUS                        7               0      984   13824
Birth       ki1119695-PROBIT           BELARUS                        7               1      303   13824
Birth       ki1119695-PROBIT           BELARUS                        8               0     1034   13824
Birth       ki1119695-PROBIT           BELARUS                        8               1      272   13824
Birth       ki1119695-PROBIT           BELARUS                        9               0     1061   13824
Birth       ki1119695-PROBIT           BELARUS                        9               1      263   13824
Birth       ki1119695-PROBIT           BELARUS                        10              0     1168   13824
Birth       ki1119695-PROBIT           BELARUS                        10              1      321   13824
Birth       ki1119695-PROBIT           BELARUS                        11              0     1125   13824
Birth       ki1119695-PROBIT           BELARUS                        11              1      258   13824
Birth       ki1119695-PROBIT           BELARUS                        12              0     1233   13824
Birth       ki1119695-PROBIT           BELARUS                        12              1      309   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     1052   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      181   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0      831   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      126   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               0      926   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3               1      151   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               0      804   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4               1      118   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               0      787   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5               1      142   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               0      850   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6               1      198   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               0      878   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7               1      218   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               0      980   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8               1      207   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               0     1067   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9               1      179   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              0      820   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10              1      160   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              0      908   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11              1      195   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              0      953   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12              1      185   12916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     2682   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      216   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     2336   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      222   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               0     2824   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3               1      294   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               0     2048   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4               1      210   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               0     1402   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5               1      154   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               0     1486   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6               1      164   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               0     1670   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7               1      148   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               0     2180   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8               1      254   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               0     2700   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9               1      356   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              0     2938   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10              1      380   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              0     2992   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11              1      336   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              0     3148   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12              1      278   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               0      220    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2               1       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               0      246    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3               1       20    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               0      262    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4               1       14    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               0      194    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5               1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               0      134    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6               1       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               0      128    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7               1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               0       52    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8               1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               0       48    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9               1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              0       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10              1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12              1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0       18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               0       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4               0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5               0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6               0        9     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6               1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7               0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7               1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8               0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9               0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10              1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11              0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12              0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12              1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4               0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5               0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               0        8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8               0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9               0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11              0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11              1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12              0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12              1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1               0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          2               0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          2               1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          3               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          3               1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          4               0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5               0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          5               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          6               0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          6               1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          7               0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          7               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          8               0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          8               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          9               0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          9               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          10              0       23     236
6 months    ki0047075b-MAL-ED          INDIA                          10              1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          11              0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          11              1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          12              0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          12              1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          2               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4               0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          4               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5               0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          5               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          6               0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          7               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          8               0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          8               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          9               0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          9               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10              0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11              0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          11              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          12              1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1               0       38     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           2               0       19     273
6 months    ki0047075b-MAL-ED          PERU                           2               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           3               0       22     273
6 months    ki0047075b-MAL-ED          PERU                           3               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           4               0       20     273
6 months    ki0047075b-MAL-ED          PERU                           4               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           5               0       27     273
6 months    ki0047075b-MAL-ED          PERU                           5               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6               0       15     273
6 months    ki0047075b-MAL-ED          PERU                           6               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           7               0       22     273
6 months    ki0047075b-MAL-ED          PERU                           7               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8               0       16     273
6 months    ki0047075b-MAL-ED          PERU                           8               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           9               0       23     273
6 months    ki0047075b-MAL-ED          PERU                           9               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10              0       20     273
6 months    ki0047075b-MAL-ED          PERU                           10              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           11              0       32     273
6 months    ki0047075b-MAL-ED          PERU                           11              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           12              0       19     273
6 months    ki0047075b-MAL-ED          PERU                           12              1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       37     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       21     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0       16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       26     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        8     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               0       12     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               0       28     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3               1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4               0       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5               0       30     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6               0       35     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7               0       37     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8               0       15     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9               0       19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9               1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10              0       24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10              1        5     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11              0       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11              1        6     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12              0       19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12              1        6     368
6 months    ki1000108-IRC              INDIA                          1               0       32     408
6 months    ki1000108-IRC              INDIA                          1               1        6     408
6 months    ki1000108-IRC              INDIA                          2               0       25     408
6 months    ki1000108-IRC              INDIA                          2               1        3     408
6 months    ki1000108-IRC              INDIA                          3               0       22     408
6 months    ki1000108-IRC              INDIA                          3               1        5     408
6 months    ki1000108-IRC              INDIA                          4               0       20     408
6 months    ki1000108-IRC              INDIA                          4               1        1     408
6 months    ki1000108-IRC              INDIA                          5               0       21     408
6 months    ki1000108-IRC              INDIA                          5               1        1     408
6 months    ki1000108-IRC              INDIA                          6               0       30     408
6 months    ki1000108-IRC              INDIA                          6               1        7     408
6 months    ki1000108-IRC              INDIA                          7               0       31     408
6 months    ki1000108-IRC              INDIA                          7               1        5     408
6 months    ki1000108-IRC              INDIA                          8               0       37     408
6 months    ki1000108-IRC              INDIA                          8               1        7     408
6 months    ki1000108-IRC              INDIA                          9               0       23     408
6 months    ki1000108-IRC              INDIA                          9               1        2     408
6 months    ki1000108-IRC              INDIA                          10              0       33     408
6 months    ki1000108-IRC              INDIA                          10              1        5     408
6 months    ki1000108-IRC              INDIA                          11              0       36     408
6 months    ki1000108-IRC              INDIA                          11              1        4     408
6 months    ki1000108-IRC              INDIA                          12              0       44     408
6 months    ki1000108-IRC              INDIA                          12              1        8     408
6 months    ki1000109-EE               PAKISTAN                       1               0      162     752
6 months    ki1000109-EE               PAKISTAN                       1               1       22     752
6 months    ki1000109-EE               PAKISTAN                       2               0      110     752
6 months    ki1000109-EE               PAKISTAN                       2               1       24     752
6 months    ki1000109-EE               PAKISTAN                       3               0       68     752
6 months    ki1000109-EE               PAKISTAN                       3               1       18     752
6 months    ki1000109-EE               PAKISTAN                       4               0       32     752
6 months    ki1000109-EE               PAKISTAN                       4               1        0     752
6 months    ki1000109-EE               PAKISTAN                       5               0        0     752
6 months    ki1000109-EE               PAKISTAN                       5               1        0     752
6 months    ki1000109-EE               PAKISTAN                       6               0        0     752
6 months    ki1000109-EE               PAKISTAN                       6               1        0     752
6 months    ki1000109-EE               PAKISTAN                       7               0        0     752
6 months    ki1000109-EE               PAKISTAN                       7               1        0     752
6 months    ki1000109-EE               PAKISTAN                       8               0        0     752
6 months    ki1000109-EE               PAKISTAN                       8               1        0     752
6 months    ki1000109-EE               PAKISTAN                       9               0        0     752
6 months    ki1000109-EE               PAKISTAN                       9               1        0     752
6 months    ki1000109-EE               PAKISTAN                       10              0        8     752
6 months    ki1000109-EE               PAKISTAN                       10              1        0     752
6 months    ki1000109-EE               PAKISTAN                       11              0      120     752
6 months    ki1000109-EE               PAKISTAN                       11              1       20     752
6 months    ki1000109-EE               PAKISTAN                       12              0      154     752
6 months    ki1000109-EE               PAKISTAN                       12              1       14     752
6 months    ki1000109-ResPak           PAKISTAN                       1               0        8     235
6 months    ki1000109-ResPak           PAKISTAN                       1               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       2               0       10     235
6 months    ki1000109-ResPak           PAKISTAN                       2               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       3               0       17     235
6 months    ki1000109-ResPak           PAKISTAN                       3               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       4               0       17     235
6 months    ki1000109-ResPak           PAKISTAN                       4               1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       5               0       38     235
6 months    ki1000109-ResPak           PAKISTAN                       5               1        7     235
6 months    ki1000109-ResPak           PAKISTAN                       6               0       39     235
6 months    ki1000109-ResPak           PAKISTAN                       6               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       7               0       24     235
6 months    ki1000109-ResPak           PAKISTAN                       7               1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       8               0       28     235
6 months    ki1000109-ResPak           PAKISTAN                       8               1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       9               0       19     235
6 months    ki1000109-ResPak           PAKISTAN                       9               1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       10              0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       10              1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11              0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12              0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       12              1        0     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0       67    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       20    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0       71    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3               0       63    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3               1       11    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4               0       59    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4               1        5    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5               0       75    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5               1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6               0       89    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6               1        7    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               0      118    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7               1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               0      152    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8               1       10    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               0      163    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9               1       10    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10              0      126    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10              1       23    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11              0       93    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11              1       26    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12              0       92    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12              1       26    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       21     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       27     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               0       15     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3               1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               0        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4               1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               0        9     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               0       18     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8               0       53     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8               1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9               0       48     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9               1       14     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10              0       41     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10              1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12              1       11     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               0       46     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1               1        6     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               0       46     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2               1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               0       45     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3               1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4               1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5               1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6               1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7               1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               0       35     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               0       40     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9               1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10              1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11              1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12              1        3     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      134    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        9    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0      136    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0      149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0      146    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0      138    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        5    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0      188    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        7    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0      195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0      178    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        5    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0      196    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1       12    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0      179    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1       16    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0      162    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1       10    2028
6 months    ki1101329-Keneba           GAMBIA                         1               0      199    2089
6 months    ki1101329-Keneba           GAMBIA                         1               1       11    2089
6 months    ki1101329-Keneba           GAMBIA                         2               0      178    2089
6 months    ki1101329-Keneba           GAMBIA                         2               1        9    2089
6 months    ki1101329-Keneba           GAMBIA                         3               0      202    2089
6 months    ki1101329-Keneba           GAMBIA                         3               1       18    2089
6 months    ki1101329-Keneba           GAMBIA                         4               0      128    2089
6 months    ki1101329-Keneba           GAMBIA                         4               1       15    2089
6 months    ki1101329-Keneba           GAMBIA                         5               0      132    2089
6 months    ki1101329-Keneba           GAMBIA                         5               1       12    2089
6 months    ki1101329-Keneba           GAMBIA                         6               0      111    2089
6 months    ki1101329-Keneba           GAMBIA                         6               1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         7               0       85    2089
6 months    ki1101329-Keneba           GAMBIA                         7               1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         8               0      164    2089
6 months    ki1101329-Keneba           GAMBIA                         8               1       10    2089
6 months    ki1101329-Keneba           GAMBIA                         9               0      166    2089
6 months    ki1101329-Keneba           GAMBIA                         9               1        8    2089
6 months    ki1101329-Keneba           GAMBIA                         10              0      242    2089
6 months    ki1101329-Keneba           GAMBIA                         10              1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         11              0      180    2089
6 months    ki1101329-Keneba           GAMBIA                         11              1        7    2089
6 months    ki1101329-Keneba           GAMBIA                         12              0      181    2089
6 months    ki1101329-Keneba           GAMBIA                         12              1       11    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2               0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3               0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4               0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5               0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6               0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6               1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7               0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8               0       14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9               0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10              0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10              1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11              0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12              0       30     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12              1        1     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4               0        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6               0      226    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6               1       16    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7               0      402    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7               1       34    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8               0      394    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8               1       52    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12              1        0    1126
6 months    ki1114097-CMIN             BANGLADESH                     1               0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     1               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     2               0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     2               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     3               0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     3               1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     4               0       19     243
6 months    ki1114097-CMIN             BANGLADESH                     4               1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     5               0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     5               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6               0        8     243
6 months    ki1114097-CMIN             BANGLADESH                     6               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     7               0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     7               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     8               0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     8               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     9               0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     9               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     10              0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     10              1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     11              0       24     243
6 months    ki1114097-CMIN             BANGLADESH                     11              1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     12              0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     12              1        5     243
6 months    ki1114097-CMIN             BRAZIL                         1               0       11     108
6 months    ki1114097-CMIN             BRAZIL                         1               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2               0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3               0       12     108
6 months    ki1114097-CMIN             BRAZIL                         3               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         4               0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5               0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6               0        7     108
6 months    ki1114097-CMIN             BRAZIL                         6               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7               0        4     108
6 months    ki1114097-CMIN             BRAZIL                         7               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         8               0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9               0        7     108
6 months    ki1114097-CMIN             BRAZIL                         9               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10              0       15     108
6 months    ki1114097-CMIN             BRAZIL                         10              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         11              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         11              1        1     108
6 months    ki1114097-CMIN             BRAZIL                         12              0        9     108
6 months    ki1114097-CMIN             BRAZIL                         12              1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               0       97     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1               1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2               0       56     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2               1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3               0       62     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3               1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4               0       45     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5               0       54     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6               0       36     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7               0       36     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7               1        3     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8               0       53     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9               0      114     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9               1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10              0       98     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11              0       72     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12              0       92     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12              1        6     849
6 months    ki1114097-CMIN             PERU                           1               0       42     636
6 months    ki1114097-CMIN             PERU                           1               1        0     636
6 months    ki1114097-CMIN             PERU                           2               0       58     636
6 months    ki1114097-CMIN             PERU                           2               1        2     636
6 months    ki1114097-CMIN             PERU                           3               0       66     636
6 months    ki1114097-CMIN             PERU                           3               1        1     636
6 months    ki1114097-CMIN             PERU                           4               0       60     636
6 months    ki1114097-CMIN             PERU                           4               1        1     636
6 months    ki1114097-CMIN             PERU                           5               0       53     636
6 months    ki1114097-CMIN             PERU                           5               1        1     636
6 months    ki1114097-CMIN             PERU                           6               0       54     636
6 months    ki1114097-CMIN             PERU                           6               1        0     636
6 months    ki1114097-CMIN             PERU                           7               0       51     636
6 months    ki1114097-CMIN             PERU                           7               1        0     636
6 months    ki1114097-CMIN             PERU                           8               0       72     636
6 months    ki1114097-CMIN             PERU                           8               1        1     636
6 months    ki1114097-CMIN             PERU                           9               0       50     636
6 months    ki1114097-CMIN             PERU                           9               1        0     636
6 months    ki1114097-CMIN             PERU                           10              0       49     636
6 months    ki1114097-CMIN             PERU                           10              1        1     636
6 months    ki1114097-CMIN             PERU                           11              0       33     636
6 months    ki1114097-CMIN             PERU                           11              1        1     636
6 months    ki1114097-CMIN             PERU                           12              0       38     636
6 months    ki1114097-CMIN             PERU                           12              1        2     636
6 months    ki1114097-CONTENT          PERU                           1               0       10     215
6 months    ki1114097-CONTENT          PERU                           1               1        0     215
6 months    ki1114097-CONTENT          PERU                           2               0       18     215
6 months    ki1114097-CONTENT          PERU                           2               1        0     215
6 months    ki1114097-CONTENT          PERU                           3               0       30     215
6 months    ki1114097-CONTENT          PERU                           3               1        0     215
6 months    ki1114097-CONTENT          PERU                           4               0       19     215
6 months    ki1114097-CONTENT          PERU                           4               1        0     215
6 months    ki1114097-CONTENT          PERU                           5               0       14     215
6 months    ki1114097-CONTENT          PERU                           5               1        0     215
6 months    ki1114097-CONTENT          PERU                           6               0       13     215
6 months    ki1114097-CONTENT          PERU                           6               1        0     215
6 months    ki1114097-CONTENT          PERU                           7               0       28     215
6 months    ki1114097-CONTENT          PERU                           7               1        0     215
6 months    ki1114097-CONTENT          PERU                           8               0       23     215
6 months    ki1114097-CONTENT          PERU                           8               1        0     215
6 months    ki1114097-CONTENT          PERU                           9               0       26     215
6 months    ki1114097-CONTENT          PERU                           9               1        0     215
6 months    ki1114097-CONTENT          PERU                           10              0       14     215
6 months    ki1114097-CONTENT          PERU                           10              1        0     215
6 months    ki1114097-CONTENT          PERU                           11              0        9     215
6 months    ki1114097-CONTENT          PERU                           11              1        0     215
6 months    ki1114097-CONTENT          PERU                           12              0       11     215
6 months    ki1114097-CONTENT          PERU                           12              1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1               0      968   15757
6 months    ki1119695-PROBIT           BELARUS                        1               1        7   15757
6 months    ki1119695-PROBIT           BELARUS                        2               0      925   15757
6 months    ki1119695-PROBIT           BELARUS                        2               1        8   15757
6 months    ki1119695-PROBIT           BELARUS                        3               0     1061   15757
6 months    ki1119695-PROBIT           BELARUS                        3               1        5   15757
6 months    ki1119695-PROBIT           BELARUS                        4               0     1089   15757
6 months    ki1119695-PROBIT           BELARUS                        4               1        9   15757
6 months    ki1119695-PROBIT           BELARUS                        5               0     1103   15757
6 months    ki1119695-PROBIT           BELARUS                        5               1        8   15757
6 months    ki1119695-PROBIT           BELARUS                        6               0     1106   15757
6 months    ki1119695-PROBIT           BELARUS                        6               1        9   15757
6 months    ki1119695-PROBIT           BELARUS                        7               0     1452   15757
6 months    ki1119695-PROBIT           BELARUS                        7               1       11   15757
6 months    ki1119695-PROBIT           BELARUS                        8               0     1459   15757
6 months    ki1119695-PROBIT           BELARUS                        8               1       14   15757
6 months    ki1119695-PROBIT           BELARUS                        9               0     1499   15757
6 months    ki1119695-PROBIT           BELARUS                        9               1       10   15757
6 months    ki1119695-PROBIT           BELARUS                        10              0     1675   15757
6 months    ki1119695-PROBIT           BELARUS                        10              1       14   15757
6 months    ki1119695-PROBIT           BELARUS                        11              0     1565   15757
6 months    ki1119695-PROBIT           BELARUS                        11              1       23   15757
6 months    ki1119695-PROBIT           BELARUS                        12              0     1725   15757
6 months    ki1119695-PROBIT           BELARUS                        12              1       12   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      770    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       24    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0      565    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       21    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               0      701    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3               1       29    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               0      617    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4               1       17    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               0      589    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5               1       17    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               0      619    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6               1       23    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               0      619    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7               1       15    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               0      714    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8               1       32    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               0      726    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9               1       21    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              0      579    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10              1       20    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              0      745    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11              1       17    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              0      755    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12              1       29    8264
6 months    ki1148112-LCNI-5           MALAWI                         1               0       67     839
6 months    ki1148112-LCNI-5           MALAWI                         1               1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         2               0       46     839
6 months    ki1148112-LCNI-5           MALAWI                         2               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         3               0       26     839
6 months    ki1148112-LCNI-5           MALAWI                         3               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         4               0       39     839
6 months    ki1148112-LCNI-5           MALAWI                         4               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         5               0       43     839
6 months    ki1148112-LCNI-5           MALAWI                         5               1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         6               0       32     839
6 months    ki1148112-LCNI-5           MALAWI                         6               1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         7               0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         7               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         8               0       90     839
6 months    ki1148112-LCNI-5           MALAWI                         8               1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         9               0       92     839
6 months    ki1148112-LCNI-5           MALAWI                         9               1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         10              0      134     839
6 months    ki1148112-LCNI-5           MALAWI                         10              1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         11              0      103     839
6 months    ki1148112-LCNI-5           MALAWI                         11              1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         12              0       92     839
6 months    ki1148112-LCNI-5           MALAWI                         12              1        3     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     2430   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      250   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     2113   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      192   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               0     2614   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3               1      202   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4               0     2162   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4               1      192   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5               0     2048   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5               1      170   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6               0     2199   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6               1      190   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7               0     2304   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7               1      204   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8               0     2765   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8               1      263   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9               0     2981   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9               1      256   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10              0     3001   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10              1      324   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11              0     3176   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11              1      334   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12              0     2889   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12              1      264   33523
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               0      983    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2               1       53    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               0     1705    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3               1      141    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4               0     1339    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4               1       94    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5               0     1123    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5               1       59    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6               0      820    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6               1       52    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7               0      986    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7               1       48    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8               0      999    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8               1       38    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9               0      724    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9               1       38    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10              0      245    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10              1        9    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              0        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11              1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              0        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12              1        0    9456
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       13     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4               0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4               1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5               1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7               0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7               1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8               0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8               1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9               0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9               1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10              0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10              1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11              0        9     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11              1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12              0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12              1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4               0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5               0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7               0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8               0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9               0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10              0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11              0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11              1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12              0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12              1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1               0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          2               0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          2               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          3               0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          3               1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          4               0       12     227
24 months   ki0047075b-MAL-ED          INDIA                          4               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          5               0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          5               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          6               0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          6               1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          7               0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          7               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          8               0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          8               1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          9               0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          9               1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          10              0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          10              1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          11              0       21     227
24 months   ki0047075b-MAL-ED          INDIA                          11              1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          12              0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          12              1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          2               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4               0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          4               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5               0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          5               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          6               0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          6               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          7               0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          7               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8               0       23     228
24 months   ki0047075b-MAL-ED          NEPAL                          8               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          9               0       14     228
24 months   ki0047075b-MAL-ED          NEPAL                          9               1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          10              0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          10              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          11              0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          11              1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          12              0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12              1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1               0       29     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           2               0       17     201
24 months   ki0047075b-MAL-ED          PERU                           2               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           3               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4               0       11     201
24 months   ki0047075b-MAL-ED          PERU                           4               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           5               0       19     201
24 months   ki0047075b-MAL-ED          PERU                           5               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           6               0       10     201
24 months   ki0047075b-MAL-ED          PERU                           6               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           7               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           7               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8               0       11     201
24 months   ki0047075b-MAL-ED          PERU                           8               1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9               0       21     201
24 months   ki0047075b-MAL-ED          PERU                           9               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10              0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11              0       21     201
24 months   ki0047075b-MAL-ED          PERU                           11              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           12              0       15     201
24 months   ki0047075b-MAL-ED          PERU                           12              1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       33     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5               0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6               0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7               0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9               0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10              0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11              0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12              0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12              1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2               1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               0       10     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8               1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              0       24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              0       25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12              1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               0       15     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4               0       42     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5               0       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5               1        3     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6               0       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6               1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7               0       35     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7               1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8               0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9               0       20     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10              0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11              0       41     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12              0       22     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12              1        3     372
24 months   ki1000108-IRC              INDIA                          1               0       36     409
24 months   ki1000108-IRC              INDIA                          1               1        2     409
24 months   ki1000108-IRC              INDIA                          2               0       27     409
24 months   ki1000108-IRC              INDIA                          2               1        1     409
24 months   ki1000108-IRC              INDIA                          3               0       27     409
24 months   ki1000108-IRC              INDIA                          3               1        0     409
24 months   ki1000108-IRC              INDIA                          4               0       19     409
24 months   ki1000108-IRC              INDIA                          4               1        2     409
24 months   ki1000108-IRC              INDIA                          5               0       19     409
24 months   ki1000108-IRC              INDIA                          5               1        3     409
24 months   ki1000108-IRC              INDIA                          6               0       34     409
24 months   ki1000108-IRC              INDIA                          6               1        3     409
24 months   ki1000108-IRC              INDIA                          7               0       34     409
24 months   ki1000108-IRC              INDIA                          7               1        2     409
24 months   ki1000108-IRC              INDIA                          8               0       39     409
24 months   ki1000108-IRC              INDIA                          8               1        5     409
24 months   ki1000108-IRC              INDIA                          9               0       22     409
24 months   ki1000108-IRC              INDIA                          9               1        5     409
24 months   ki1000108-IRC              INDIA                          10              0       33     409
24 months   ki1000108-IRC              INDIA                          10              1        4     409
24 months   ki1000108-IRC              INDIA                          11              0       37     409
24 months   ki1000108-IRC              INDIA                          11              1        3     409
24 months   ki1000108-IRC              INDIA                          12              0       51     409
24 months   ki1000108-IRC              INDIA                          12              1        1     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               0       40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2               0       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2               1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3               1        8     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4               0       27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4               1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5               1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6               1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7               0       29     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7               1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8               0       22     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8               1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9               0       23     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10              0       26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10              1        7     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11              0       38     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11              1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12              0       45     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12              1        1     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1               0      159    1726
24 months   ki1101329-Keneba           GAMBIA                         1               1       12    1726
24 months   ki1101329-Keneba           GAMBIA                         2               0      161    1726
24 months   ki1101329-Keneba           GAMBIA                         2               1        6    1726
24 months   ki1101329-Keneba           GAMBIA                         3               0      158    1726
24 months   ki1101329-Keneba           GAMBIA                         3               1       12    1726
24 months   ki1101329-Keneba           GAMBIA                         4               0      104    1726
24 months   ki1101329-Keneba           GAMBIA                         4               1       10    1726
24 months   ki1101329-Keneba           GAMBIA                         5               0      114    1726
24 months   ki1101329-Keneba           GAMBIA                         5               1        8    1726
24 months   ki1101329-Keneba           GAMBIA                         6               0       84    1726
24 months   ki1101329-Keneba           GAMBIA                         6               1        8    1726
24 months   ki1101329-Keneba           GAMBIA                         7               0       65    1726
24 months   ki1101329-Keneba           GAMBIA                         7               1       18    1726
24 months   ki1101329-Keneba           GAMBIA                         8               0      134    1726
24 months   ki1101329-Keneba           GAMBIA                         8               1       24    1726
24 months   ki1101329-Keneba           GAMBIA                         9               0      139    1726
24 months   ki1101329-Keneba           GAMBIA                         9               1       21    1726
24 months   ki1101329-Keneba           GAMBIA                         10              0      163    1726
24 months   ki1101329-Keneba           GAMBIA                         10              1       37    1726
24 months   ki1101329-Keneba           GAMBIA                         11              0      121    1726
24 months   ki1101329-Keneba           GAMBIA                         11              1       19    1726
24 months   ki1101329-Keneba           GAMBIA                         12              0      133    1726
24 months   ki1101329-Keneba           GAMBIA                         12              1       16    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6               0      140     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6               1       40     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7               0      338     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7               1       74     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8               0      336     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8               1       68     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12              1        0     996
24 months   ki1114097-CMIN             BANGLADESH                     1               0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     1               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     2               0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     2               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     3               0       17     243
24 months   ki1114097-CMIN             BANGLADESH                     3               1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     4               0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     4               1        3     243
24 months   ki1114097-CMIN             BANGLADESH                     5               0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     5               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     6               0        8     243
24 months   ki1114097-CMIN             BANGLADESH                     6               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     7               0       13     243
24 months   ki1114097-CMIN             BANGLADESH                     7               1        2     243
24 months   ki1114097-CMIN             BANGLADESH                     8               0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     8               1        2     243
24 months   ki1114097-CMIN             BANGLADESH                     9               0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     9               1        4     243
24 months   ki1114097-CMIN             BANGLADESH                     10              0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     10              1        5     243
24 months   ki1114097-CMIN             BANGLADESH                     11              0       20     243
24 months   ki1114097-CMIN             BANGLADESH                     11              1        5     243
24 months   ki1114097-CMIN             BANGLADESH                     12              0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     12              1        3     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               0       47     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               0       41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2               1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               0       52     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3               1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               0       49     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4               1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               0       44     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               0       38     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7               1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               0       48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               0       61     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9               1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              0       55     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10              1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              0       39     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11              1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              0       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12              1        3     551
24 months   ki1114097-CMIN             PERU                           1               0       13     429
24 months   ki1114097-CMIN             PERU                           1               1        0     429
24 months   ki1114097-CMIN             PERU                           2               0       38     429
24 months   ki1114097-CMIN             PERU                           2               1        1     429
24 months   ki1114097-CMIN             PERU                           3               0       51     429
24 months   ki1114097-CMIN             PERU                           3               1        0     429
24 months   ki1114097-CMIN             PERU                           4               0       47     429
24 months   ki1114097-CMIN             PERU                           4               1        0     429
24 months   ki1114097-CMIN             PERU                           5               0       33     429
24 months   ki1114097-CMIN             PERU                           5               1        0     429
24 months   ki1114097-CMIN             PERU                           6               0       39     429
24 months   ki1114097-CMIN             PERU                           6               1        1     429
24 months   ki1114097-CMIN             PERU                           7               0       41     429
24 months   ki1114097-CMIN             PERU                           7               1        0     429
24 months   ki1114097-CMIN             PERU                           8               0       34     429
24 months   ki1114097-CMIN             PERU                           8               1        0     429
24 months   ki1114097-CMIN             PERU                           9               0       39     429
24 months   ki1114097-CMIN             PERU                           9               1        0     429
24 months   ki1114097-CMIN             PERU                           10              0       33     429
24 months   ki1114097-CMIN             PERU                           10              1        0     429
24 months   ki1114097-CMIN             PERU                           11              0       32     429
24 months   ki1114097-CMIN             PERU                           11              1        0     429
24 months   ki1114097-CMIN             PERU                           12              0       27     429
24 months   ki1114097-CMIN             PERU                           12              1        0     429
24 months   ki1114097-CONTENT          PERU                           1               0        7     164
24 months   ki1114097-CONTENT          PERU                           1               1        0     164
24 months   ki1114097-CONTENT          PERU                           2               0       14     164
24 months   ki1114097-CONTENT          PERU                           2               1        0     164
24 months   ki1114097-CONTENT          PERU                           3               0       22     164
24 months   ki1114097-CONTENT          PERU                           3               1        0     164
24 months   ki1114097-CONTENT          PERU                           4               0       15     164
24 months   ki1114097-CONTENT          PERU                           4               1        0     164
24 months   ki1114097-CONTENT          PERU                           5               0       14     164
24 months   ki1114097-CONTENT          PERU                           5               1        0     164
24 months   ki1114097-CONTENT          PERU                           6               0       11     164
24 months   ki1114097-CONTENT          PERU                           6               1        0     164
24 months   ki1114097-CONTENT          PERU                           7               0       23     164
24 months   ki1114097-CONTENT          PERU                           7               1        0     164
24 months   ki1114097-CONTENT          PERU                           8               0       14     164
24 months   ki1114097-CONTENT          PERU                           8               1        0     164
24 months   ki1114097-CONTENT          PERU                           9               0       17     164
24 months   ki1114097-CONTENT          PERU                           9               1        0     164
24 months   ki1114097-CONTENT          PERU                           10              0       11     164
24 months   ki1114097-CONTENT          PERU                           10              1        0     164
24 months   ki1114097-CONTENT          PERU                           11              0        6     164
24 months   ki1114097-CONTENT          PERU                           11              1        0     164
24 months   ki1114097-CONTENT          PERU                           12              0       10     164
24 months   ki1114097-CONTENT          PERU                           12              1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1               0      245    3971
24 months   ki1119695-PROBIT           BELARUS                        1               1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        2               0      211    3971
24 months   ki1119695-PROBIT           BELARUS                        2               1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        3               0      310    3971
24 months   ki1119695-PROBIT           BELARUS                        3               1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        4               0      327    3971
24 months   ki1119695-PROBIT           BELARUS                        4               1        5    3971
24 months   ki1119695-PROBIT           BELARUS                        5               0      295    3971
24 months   ki1119695-PROBIT           BELARUS                        5               1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        6               0      263    3971
24 months   ki1119695-PROBIT           BELARUS                        6               1        5    3971
24 months   ki1119695-PROBIT           BELARUS                        7               0      367    3971
24 months   ki1119695-PROBIT           BELARUS                        7               1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        8               0      330    3971
24 months   ki1119695-PROBIT           BELARUS                        8               1        7    3971
24 months   ki1119695-PROBIT           BELARUS                        9               0      376    3971
24 months   ki1119695-PROBIT           BELARUS                        9               1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        10              0      388    3971
24 months   ki1119695-PROBIT           BELARUS                        10              1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        11              0      373    3971
24 months   ki1119695-PROBIT           BELARUS                        11              1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        12              0      442    3971
24 months   ki1119695-PROBIT           BELARUS                        12              1        4    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       41     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       52     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1        9     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               0       43     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3               1       12     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               0       39     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4               1        7     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               0       36     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5               1       14     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               0       35     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6               1        9     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               0       23     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7               1        4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               0       23     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8               1        7     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               0        2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9               1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              0        4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10              1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              0       19     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11              1        1     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              0       30     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12              1        7     423
24 months   ki1148112-LCNI-5           MALAWI                         1               0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         1               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         2               0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         2               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         3               0       18     563
24 months   ki1148112-LCNI-5           MALAWI                         3               1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         4               0       28     563
24 months   ki1148112-LCNI-5           MALAWI                         4               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         5               0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         5               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         6               0       24     563
24 months   ki1148112-LCNI-5           MALAWI                         6               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         7               0       45     563
24 months   ki1148112-LCNI-5           MALAWI                         7               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         8               0       68     563
24 months   ki1148112-LCNI-5           MALAWI                         8               1        2     563
24 months   ki1148112-LCNI-5           MALAWI                         9               0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         9               1        2     563
24 months   ki1148112-LCNI-5           MALAWI                         10              0       88     563
24 months   ki1148112-LCNI-5           MALAWI                         10              1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         11              0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         11              1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         12              0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         12              1        3     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1136   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      192   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0      930   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      192   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               0     1162   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3               1      263   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4               0      785   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4               1      222   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5               0      557   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5               1      170   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6               0      884   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6               1      333   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7               0      967   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7               1      374   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8               0      894   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8               1      338   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9               0     1158   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9               1      438   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10              0     1326   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10              1      417   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11              0     1619   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11              1      448   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12              0     1998   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12              1      365   17168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               0     1249    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2               1      219    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               0     1395    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3               1      246    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4               0     1020    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4               1      251    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5               0      848    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5               1      258    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6               0      619    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6               1      211    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7               0      714    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7               1      252    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8               0      816    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8               1      186    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9               0      576    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9               1      144    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10              0      195    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10              1       47    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              0        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11              1        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              0        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12              1        0    9246


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a7bc4f6c-708f-4d0e-9f41-d45f8ce81d94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7bc4f6c-708f-4d0e-9f41-d45f8ce81d94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7bc4f6c-708f-4d0e-9f41-d45f8ce81d94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7bc4f6c-708f-4d0e-9f41-d45f8ce81d94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.2116788    0.1193161   0.3040416
Birth       ki1119695-PROBIT     BELARUS      2                    NA                0.1839800    0.1064045   0.2615554
Birth       ki1119695-PROBIT     BELARUS      3                    NA                0.2029756    0.1258272   0.2801239
Birth       ki1119695-PROBIT     BELARUS      4                    NA                0.2156863    0.1364110   0.2949615
Birth       ki1119695-PROBIT     BELARUS      5                    NA                0.2356688    0.1478587   0.3234789
Birth       ki1119695-PROBIT     BELARUS      6                    NA                0.2147059    0.1458375   0.2835742
Birth       ki1119695-PROBIT     BELARUS      7                    NA                0.2354312    0.1577090   0.3131535
Birth       ki1119695-PROBIT     BELARUS      8                    NA                0.2082695    0.1357276   0.2808114
Birth       ki1119695-PROBIT     BELARUS      9                    NA                0.1986405    0.1215408   0.2757402
Birth       ki1119695-PROBIT     BELARUS      10                   NA                0.2155809    0.1536363   0.2775256
Birth       ki1119695-PROBIT     BELARUS      11                   NA                0.1865510    0.1324606   0.2406414
Birth       ki1119695-PROBIT     BELARUS      12                   NA                0.2003891    0.1263248   0.2744534
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.1467964    0.1270419   0.1665510
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.1316614    0.1102383   0.1530846
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.1402043    0.1194678   0.1609408
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.1279826    0.1064182   0.1495471
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.1528525    0.1297120   0.1759930
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.1889313    0.1652304   0.2126322
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.1989051    0.1752718   0.2225384
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.1743892    0.1528025   0.1959760
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.1436597    0.1241839   0.1631356
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.1632653    0.1401237   0.1864069
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.1767906    0.1542761   0.1993050
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.1625659    0.1411279   0.1840039
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0745342    0.0600178   0.0890505
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0867866    0.0698756   0.1036975
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0942912    0.0790919   0.1094905
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0930027    0.0747962   0.1112092
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0989717    0.0771798   0.1207636
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0993939    0.0776133   0.1211745
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0814081    0.0620481   0.1007682
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1043550    0.0860964   0.1226135
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.1164921    0.0988004   0.1341839
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1145268    0.0982026   0.1308511
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1009615    0.0856312   0.1162918
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0811442    0.0666471   0.0956413
6 months    ki1101329-Keneba     GAMBIA       1                    NA                0.0523810    0.0222408   0.0825211
6 months    ki1101329-Keneba     GAMBIA       2                    NA                0.0481283    0.0174437   0.0788130
6 months    ki1101329-Keneba     GAMBIA       3                    NA                0.0818182    0.0455914   0.1180450
6 months    ki1101329-Keneba     GAMBIA       4                    NA                0.1048951    0.0546610   0.1551292
6 months    ki1101329-Keneba     GAMBIA       5                    NA                0.0833333    0.0381804   0.1284863
6 months    ki1101329-Keneba     GAMBIA       6                    NA                0.0593220    0.0166897   0.1019544
6 months    ki1101329-Keneba     GAMBIA       7                    NA                0.0760870    0.0218958   0.1302782
6 months    ki1101329-Keneba     GAMBIA       8                    NA                0.0574713    0.0228813   0.0920612
6 months    ki1101329-Keneba     GAMBIA       9                    NA                0.0459770    0.0148507   0.0771033
6 months    ki1101329-Keneba     GAMBIA       10                   NA                0.0241935    0.0050661   0.0433210
6 months    ki1101329-Keneba     GAMBIA       11                   NA                0.0374332    0.0102202   0.0646461
6 months    ki1101329-Keneba     GAMBIA       12                   NA                0.0572917    0.0244114   0.0901720
6 months    ki1119695-PROBIT     BELARUS      1                    NA                0.0071795    0.0018796   0.0124793
6 months    ki1119695-PROBIT     BELARUS      2                    NA                0.0085745    0.0022686   0.0148804
6 months    ki1119695-PROBIT     BELARUS      3                    NA                0.0046904    0.0008089   0.0085720
6 months    ki1119695-PROBIT     BELARUS      4                    NA                0.0081967    0.0025025   0.0138909
6 months    ki1119695-PROBIT     BELARUS      5                    NA                0.0072007   -0.0008925   0.0152939
6 months    ki1119695-PROBIT     BELARUS      6                    NA                0.0080717    0.0041608   0.0119827
6 months    ki1119695-PROBIT     BELARUS      7                    NA                0.0075188    0.0040722   0.0109654
6 months    ki1119695-PROBIT     BELARUS      8                    NA                0.0095044    0.0020455   0.0169633
6 months    ki1119695-PROBIT     BELARUS      9                    NA                0.0066269    0.0024375   0.0108163
6 months    ki1119695-PROBIT     BELARUS      10                   NA                0.0082889    0.0022123   0.0143655
6 months    ki1119695-PROBIT     BELARUS      11                   NA                0.0144836    0.0074961   0.0214712
6 months    ki1119695-PROBIT     BELARUS      12                   NA                0.0069085    0.0029953   0.0108217
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0302267    0.0183172   0.0421362
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0358362    0.0207853   0.0508871
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0397260    0.0255567   0.0538953
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0268139    0.0142389   0.0393889
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0280528    0.0149052   0.0412004
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0358255    0.0214481   0.0502030
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0236593    0.0118280   0.0354906
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0428954    0.0283546   0.0574363
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0281124    0.0162583   0.0399666
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0333890    0.0190014   0.0477766
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0223097    0.0118229   0.0327965
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0369898    0.0237777   0.0502019
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0932836    0.0759068   0.1106604
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0832972    0.0657242   0.1008701
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0717330    0.0568289   0.0866370
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0815633    0.0658327   0.0972939
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0766456    0.0595310   0.0937602
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0795312    0.0630609   0.0960015
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0813397    0.0659756   0.0967039
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0868560    0.0704475   0.1032645
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0790856    0.0657357   0.0924354
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0974436    0.0821937   0.1126935
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0951567    0.0802829   0.1100305
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0837298    0.0695994   0.0978602
24 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0701754    0.0318781   0.1084728
24 months   ki1101329-Keneba     GAMBIA       2                    NA                0.0359282    0.0076932   0.0641632
24 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0705882    0.0320741   0.1091023
24 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0877193    0.0357755   0.1396631
24 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0655738    0.0216366   0.1095109
24 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0869565    0.0293626   0.1445505
24 months   ki1101329-Keneba     GAMBIA       7                    NA                0.2168675    0.1281826   0.3055524
24 months   ki1101329-Keneba     GAMBIA       8                    NA                0.1518987    0.0959170   0.2078805
24 months   ki1101329-Keneba     GAMBIA       9                    NA                0.1312500    0.0789127   0.1835873
24 months   ki1101329-Keneba     GAMBIA       10                   NA                0.1850000    0.1311701   0.2388299
24 months   ki1101329-Keneba     GAMBIA       11                   NA                0.1357143    0.0789662   0.1924624
24 months   ki1101329-Keneba     GAMBIA       12                   NA                0.1073826    0.0576569   0.1571082
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1445783    0.1183511   0.1708055
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.1711230    0.1387689   0.2034771
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.1845614    0.1525171   0.2166057
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.2204568    0.1815422   0.2593714
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.2338377    0.1865453   0.2811301
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.2736237    0.2370692   0.3101782
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.2788963    0.2393631   0.3184296
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.2743506    0.2360895   0.3126118
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.2744361    0.2389609   0.3099113
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.2392427    0.2096452   0.2688402
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.2167392    0.1897122   0.2437662
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1544647    0.1314239   0.1775055


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.1594921   0.1531776   0.1658066
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0958686   0.0906699   0.1010673
6 months    ki1101329-Keneba     GAMBIA       NA                   NA                0.0579225   0.0479029   0.0679420
6 months    ki1119695-PROBIT     BELARUS      NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0320668   0.0282681   0.0358654
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0847478   0.0799486   0.0895469
24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.1106605   0.0958563   0.1254646
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.2185461   0.2086586   0.2284336


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT     BELARUS      2                    1                 0.8691468   0.6971061   1.0836459
Birth       ki1119695-PROBIT     BELARUS      3                    1                 0.9588845   0.7740358   1.1878773
Birth       ki1119695-PROBIT     BELARUS      4                    1                 1.0189317   0.7883067   1.3170277
Birth       ki1119695-PROBIT     BELARUS      5                    1                 1.1133319   0.8484102   1.4609771
Birth       ki1119695-PROBIT     BELARUS      6                    1                 1.0143002   0.6937721   1.4829149
Birth       ki1119695-PROBIT     BELARUS      7                    1                 1.1122096   0.7692278   1.6081195
Birth       ki1119695-PROBIT     BELARUS      8                    1                 0.9838940   0.6815042   1.4204569
Birth       ki1119695-PROBIT     BELARUS      9                    1                 0.9384050   0.6438065   1.3678086
Birth       ki1119695-PROBIT     BELARUS      10                   1                 1.0184340   0.7199634   1.4406397
Birth       ki1119695-PROBIT     BELARUS      11                   1                 0.8812925   0.6606283   1.1756635
Birth       ki1119695-PROBIT     BELARUS      12                   1                 0.9466658   0.6827432   1.3126108
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.8968981   0.7261745   1.1077589
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.9550932   0.7819947   1.1665079
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8718376   0.7027244   1.0816484
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.0412551   0.8503319   1.2750458
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.2870292   1.0707536   1.5469892
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.3549724   1.1323132   1.6214155
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.1879663   0.9894545   1.4263051
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9786322   0.8084642   1.1846177
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.1121885   0.9147367   1.3522616
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.2043247   1.0006419   1.4494677
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.1074241   0.9172483   1.3370297
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1643862   0.8842677   1.5332408
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.2650738   0.9840190   1.6264032
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2477857   0.9536854   1.6325813
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.3278706   0.9932015   1.7753099
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.3335354   0.9872364   1.8013078
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0922259   0.8042828   1.4832560
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.4000959   1.0735395   1.8259863
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.5629363   1.2228573   1.9975920
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.5365682   1.2102553   1.9508627
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.3545673   1.0620946   1.7275793
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0886846   0.8348489   1.4196989
6 months    ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba     GAMBIA       2                    1                 0.9188138   0.3892666   2.1687420
6 months    ki1101329-Keneba     GAMBIA       3                    1                 1.5619835   0.7557194   3.2284369
6 months    ki1101329-Keneba     GAMBIA       4                    1                 2.0025429   0.9472399   4.2335403
6 months    ki1101329-Keneba     GAMBIA       5                    1                 1.5909091   0.7217633   3.5066783
6 months    ki1101329-Keneba     GAMBIA       6                    1                 1.1325116   0.4510427   2.8435945
6 months    ki1101329-Keneba     GAMBIA       7                    1                 1.4525692   0.5814184   3.6289822
6 months    ki1101329-Keneba     GAMBIA       8                    1                 1.0971787   0.4771506   2.5228954
6 months    ki1101329-Keneba     GAMBIA       9                    1                 0.8777429   0.3609950   2.1341919
6 months    ki1101329-Keneba     GAMBIA       10                   1                 0.4618768   0.1737249   1.2279770
6 months    ki1101329-Keneba     GAMBIA       11                   1                 0.7146330   0.2827700   1.8060623
6 months    ki1101329-Keneba     GAMBIA       12                   1                 1.0937500   0.4852570   2.4652689
6 months    ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT     BELARUS      2                    1                 1.1943041   0.4521821   3.1543981
6 months    ki1119695-PROBIT     BELARUS      3                    1                 0.6533101   0.2105749   2.0268987
6 months    ki1119695-PROBIT     BELARUS      4                    1                 1.1416862   0.4041330   3.2252929
6 months    ki1119695-PROBIT     BELARUS      5                    1                 1.0029574   0.2533124   3.9710791
6 months    ki1119695-PROBIT     BELARUS      6                    1                 1.1242793   0.4381864   2.8846259
6 months    ki1119695-PROBIT     BELARUS      7                    1                 1.0472610   0.4656049   2.3555498
6 months    ki1119695-PROBIT     BELARUS      8                    1                 1.3238289   0.4340459   4.0376448
6 months    ki1119695-PROBIT     BELARUS      9                    1                 0.9230332   0.4373358   1.9481378
6 months    ki1119695-PROBIT     BELARUS      10                   1                 1.1545293   0.4647745   2.8679236
6 months    ki1119695-PROBIT     BELARUS      11                   1                 2.0173624   0.9078644   4.4827741
6 months    ki1119695-PROBIT     BELARUS      12                   1                 0.9622502   0.3887436   2.3818408
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.1855802   0.6665471   2.1087788
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.3142694   0.7724504   2.2361359
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8870925   0.4807908   1.6367476
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.9280803   0.5031205   1.7119815
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.1852285   0.6753882   2.0799393
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.7827287   0.4141162   1.4794500
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.4191242   0.8439001   2.3864359
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9300535   0.5222466   1.6563050
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.1046188   0.6160751   1.9805747
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.7380796   0.3996960   1.3629396
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.2237457   0.7190007   2.0828263
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.8929458   0.6750446   1.1811843
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.7689773   0.5922844   0.9983819
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.8743585   0.6688292   1.1430465
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.8216411   0.6233023   1.0830926
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8525743   0.6462896   1.1247016
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.8719617   0.6699703   1.1348521
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.9310964   0.7246782   1.1963110
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.8477973   0.6622601   1.0853143
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.0445955   0.8192955   1.3318512
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0200798   0.8094159   1.2855724
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.8975833   0.7090701   1.1362145
24 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba     GAMBIA       2                    1                 0.5119763   0.1966644   1.3328275
24 months   ki1101329-Keneba     GAMBIA       3                    1                 1.0058824   0.4649439   2.1761753
24 months   ki1101329-Keneba     GAMBIA       4                    1                 1.2500000   0.5587015   2.7966633
24 months   ki1101329-Keneba     GAMBIA       5                    1                 0.9344262   0.3937695   2.2174200
24 months   ki1101329-Keneba     GAMBIA       6                    1                 1.2391304   0.5252966   2.9230046
24 months   ki1101329-Keneba     GAMBIA       7                    1                 3.0903614   1.5625770   6.1119125
24 months   ki1101329-Keneba     GAMBIA       8                    1                 2.1645570   1.1204049   4.1817978
24 months   ki1101329-Keneba     GAMBIA       9                    1                 1.8703125   0.9514262   3.6766582
24 months   ki1101329-Keneba     GAMBIA       10                   1                 2.6362500   1.4203398   4.8930645
24 months   ki1101329-Keneba     GAMBIA       11                   1                 1.9339286   0.9724279   3.8461253
24 months   ki1101329-Keneba     GAMBIA       12                   1                 1.5302013   0.7480194   3.1302880
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.1836007   0.9071365   1.5443218
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.2765497   1.0029602   1.6247695
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.5248262   1.1823158   1.9665600
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.6173773   1.2384904   2.1121759
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.8925637   1.5174579   2.3603932
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.9290331   1.5263340   2.4379779
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.8975920   1.5069174   2.3895506
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.8981830   1.5096725   2.3866757
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.6547619   1.3174645   2.0784142
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.4991130   1.2045921   1.8656439
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0683806   0.8421598   1.3553688


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0027668   -0.0590660   0.0535324
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0126957   -0.0061619   0.0315533
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0213344    0.0073775   0.0352914
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0055415   -0.0232019   0.0342848
6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.0010708   -0.0036980   0.0058396
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0018401   -0.0095182   0.0131984
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0085358   -0.0242746   0.0072030
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.0404850    0.0031322   0.0778379
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0739678    0.0476224   0.1003132


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0132438   -0.3212098   0.2229371
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0796006   -0.0465338   0.1905326
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2225384    0.0629423   0.3549528
6 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0956710   -0.5650275   0.4774463
6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.1297909   -0.7003385   0.5546394
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0573832   -0.3724683   0.3526070
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.1007200   -0.3017247   0.0692467
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.3658492   -0.0747368   0.6258179
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.3384540    0.2087415   0.4469026
