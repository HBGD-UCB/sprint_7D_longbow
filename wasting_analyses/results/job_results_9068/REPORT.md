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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        month    wasted   n_cell       n
----------  -------------------------  -----------------------------  ------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             0       16     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2             1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             0       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3             1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4             0       17     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4             1        4     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5             0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5             1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             0        8     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6             1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7             0       16     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7             1        5     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8             0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8             1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9             0       13     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9             1        7     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10            0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10            1        3     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11            0       13     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11            1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12            0       22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12            1        4     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1             0        7     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1             1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2             0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2             1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3             0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4             0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5             0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6             0        7     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7             0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8             0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9             0       26     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9             1        1     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10            0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10            1        2     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11            0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11            1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12            0       13     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12            1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          1             0       11     203
Birth       ki0047075b-MAL-ED          INDIA                          1             1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          2             0       13     203
Birth       ki0047075b-MAL-ED          INDIA                          2             1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          3             0       15     203
Birth       ki0047075b-MAL-ED          INDIA                          3             1        5     203
Birth       ki0047075b-MAL-ED          INDIA                          4             0       12     203
Birth       ki0047075b-MAL-ED          INDIA                          4             1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          5             0        5     203
Birth       ki0047075b-MAL-ED          INDIA                          5             1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          6             0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          6             1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          7             0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          7             1        4     203
Birth       ki0047075b-MAL-ED          INDIA                          8             0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          8             1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          9             0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          9             1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          10            0       20     203
Birth       ki0047075b-MAL-ED          INDIA                          10            1        3     203
Birth       ki0047075b-MAL-ED          INDIA                          11            0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          11            1        2     203
Birth       ki0047075b-MAL-ED          INDIA                          12            0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          12            1        0     203
Birth       ki0047075b-MAL-ED          NEPAL                          1             0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          1             1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          2             0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          2             1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          3             0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          3             1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          4             0       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          4             1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          5             0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          5             1        4     168
Birth       ki0047075b-MAL-ED          NEPAL                          6             0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          6             1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          7             0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          7             1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          8             0       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          8             1        3     168
Birth       ki0047075b-MAL-ED          NEPAL                          9             0        7     168
Birth       ki0047075b-MAL-ED          NEPAL                          9             1        2     168
Birth       ki0047075b-MAL-ED          NEPAL                          10            0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          10            1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          11            0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11            1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          12            0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          12            1        0     168
Birth       ki0047075b-MAL-ED          PERU                           1             0       35     279
Birth       ki0047075b-MAL-ED          PERU                           1             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           2             0       21     279
Birth       ki0047075b-MAL-ED          PERU                           2             1        1     279
Birth       ki0047075b-MAL-ED          PERU                           3             0       22     279
Birth       ki0047075b-MAL-ED          PERU                           3             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           4             0       20     279
Birth       ki0047075b-MAL-ED          PERU                           4             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           5             0       23     279
Birth       ki0047075b-MAL-ED          PERU                           5             1        1     279
Birth       ki0047075b-MAL-ED          PERU                           6             0       18     279
Birth       ki0047075b-MAL-ED          PERU                           6             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           7             0       22     279
Birth       ki0047075b-MAL-ED          PERU                           7             1        1     279
Birth       ki0047075b-MAL-ED          PERU                           8             0       18     279
Birth       ki0047075b-MAL-ED          PERU                           8             1        1     279
Birth       ki0047075b-MAL-ED          PERU                           9             0       22     279
Birth       ki0047075b-MAL-ED          PERU                           9             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           10            0       23     279
Birth       ki0047075b-MAL-ED          PERU                           10            1        0     279
Birth       ki0047075b-MAL-ED          PERU                           11            0       29     279
Birth       ki0047075b-MAL-ED          PERU                           11            1        2     279
Birth       ki0047075b-MAL-ED          PERU                           12            0       20     279
Birth       ki0047075b-MAL-ED          PERU                           12            1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             0       25     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             0       20     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2             1        3     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3             1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4             0       11     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4             1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5             0       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5             1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6             0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6             1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7             0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7             1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8             0       10     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8             1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9             0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9             1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10            0       26     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10            1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11            0       26     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11            1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12            0       35     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12            1        4     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             0        9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             1        1     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             0       11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             0       14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            0       15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             0        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2             1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3             1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4             1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5             1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6             1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7             1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8             1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9             1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10            1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11            0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11            1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            0        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12            1        2      88
Birth       ki1000108-IRC              INDIA                          1             0       25     343
Birth       ki1000108-IRC              INDIA                          1             1        5     343
Birth       ki1000108-IRC              INDIA                          2             0       20     343
Birth       ki1000108-IRC              INDIA                          2             1        2     343
Birth       ki1000108-IRC              INDIA                          3             0       20     343
Birth       ki1000108-IRC              INDIA                          3             1        6     343
Birth       ki1000108-IRC              INDIA                          4             0       12     343
Birth       ki1000108-IRC              INDIA                          4             1        7     343
Birth       ki1000108-IRC              INDIA                          5             0        8     343
Birth       ki1000108-IRC              INDIA                          5             1        7     343
Birth       ki1000108-IRC              INDIA                          6             0       19     343
Birth       ki1000108-IRC              INDIA                          6             1        6     343
Birth       ki1000108-IRC              INDIA                          7             0       20     343
Birth       ki1000108-IRC              INDIA                          7             1       11     343
Birth       ki1000108-IRC              INDIA                          8             0       27     343
Birth       ki1000108-IRC              INDIA                          8             1       10     343
Birth       ki1000108-IRC              INDIA                          9             0       17     343
Birth       ki1000108-IRC              INDIA                          9             1        7     343
Birth       ki1000108-IRC              INDIA                          10            0       22     343
Birth       ki1000108-IRC              INDIA                          10            1       10     343
Birth       ki1000108-IRC              INDIA                          11            0       30     343
Birth       ki1000108-IRC              INDIA                          11            1        9     343
Birth       ki1000108-IRC              INDIA                          12            0       31     343
Birth       ki1000108-IRC              INDIA                          12            1       12     343
Birth       ki1000109-EE               PAKISTAN                       1             0        0       2
Birth       ki1000109-EE               PAKISTAN                       1             1        0       2
Birth       ki1000109-EE               PAKISTAN                       2             0        0       2
Birth       ki1000109-EE               PAKISTAN                       2             1        0       2
Birth       ki1000109-EE               PAKISTAN                       3             0        0       2
Birth       ki1000109-EE               PAKISTAN                       3             1        0       2
Birth       ki1000109-EE               PAKISTAN                       4             0        0       2
Birth       ki1000109-EE               PAKISTAN                       4             1        0       2
Birth       ki1000109-EE               PAKISTAN                       5             0        0       2
Birth       ki1000109-EE               PAKISTAN                       5             1        0       2
Birth       ki1000109-EE               PAKISTAN                       6             0        0       2
Birth       ki1000109-EE               PAKISTAN                       6             1        0       2
Birth       ki1000109-EE               PAKISTAN                       7             0        0       2
Birth       ki1000109-EE               PAKISTAN                       7             1        0       2
Birth       ki1000109-EE               PAKISTAN                       8             0        0       2
Birth       ki1000109-EE               PAKISTAN                       8             1        0       2
Birth       ki1000109-EE               PAKISTAN                       9             0        0       2
Birth       ki1000109-EE               PAKISTAN                       9             1        0       2
Birth       ki1000109-EE               PAKISTAN                       10            0        0       2
Birth       ki1000109-EE               PAKISTAN                       10            1        0       2
Birth       ki1000109-EE               PAKISTAN                       11            0        0       2
Birth       ki1000109-EE               PAKISTAN                       11            1        0       2
Birth       ki1000109-EE               PAKISTAN                       12            0        2       2
Birth       ki1000109-EE               PAKISTAN                       12            1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       1             0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       4             0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       4             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       5             0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       5             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       6             0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       6             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       7             0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       7             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10            0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10            1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11            0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11            1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12            0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12            1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             0       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             0        7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3             1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4             0       14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4             1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5             0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5             1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6             0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6             1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7             1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8             1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9             1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10            0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10            1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            0       17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11            1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12            0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12            1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             0        7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2             0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3             0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3             1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5             0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6             0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6             1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7             0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8             0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9             0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10            0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10            1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11            0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11            1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12            0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12            1        0      28
Birth       ki1114097-CMIN             BANGLADESH                     1             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     2             0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     2             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5             1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     6             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8             1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9             0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     10            0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     10            1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     11            0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     11            1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     12            0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     12            1        0       8
Birth       ki1114097-CMIN             BRAZIL                         1             0       12     111
Birth       ki1114097-CMIN             BRAZIL                         1             1        1     111
Birth       ki1114097-CMIN             BRAZIL                         2             0        6     111
Birth       ki1114097-CMIN             BRAZIL                         2             1        1     111
Birth       ki1114097-CMIN             BRAZIL                         3             0       12     111
Birth       ki1114097-CMIN             BRAZIL                         3             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         4             0        8     111
Birth       ki1114097-CMIN             BRAZIL                         4             1        1     111
Birth       ki1114097-CMIN             BRAZIL                         5             0        5     111
Birth       ki1114097-CMIN             BRAZIL                         5             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         6             0        6     111
Birth       ki1114097-CMIN             BRAZIL                         6             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         7             0        4     111
Birth       ki1114097-CMIN             BRAZIL                         7             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         8             0       11     111
Birth       ki1114097-CMIN             BRAZIL                         8             1        1     111
Birth       ki1114097-CMIN             BRAZIL                         9             0        8     111
Birth       ki1114097-CMIN             BRAZIL                         9             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         10            0       11     111
Birth       ki1114097-CMIN             BRAZIL                         10            1        3     111
Birth       ki1114097-CMIN             BRAZIL                         11            0       10     111
Birth       ki1114097-CMIN             BRAZIL                         11            1        1     111
Birth       ki1114097-CMIN             BRAZIL                         12            0       10     111
Birth       ki1114097-CMIN             BRAZIL                         12            1        0     111
Birth       ki1114097-CMIN             PERU                           1             0        1      10
Birth       ki1114097-CMIN             PERU                           1             1        0      10
Birth       ki1114097-CMIN             PERU                           2             0        1      10
Birth       ki1114097-CMIN             PERU                           2             1        0      10
Birth       ki1114097-CMIN             PERU                           3             0        2      10
Birth       ki1114097-CMIN             PERU                           3             1        0      10
Birth       ki1114097-CMIN             PERU                           4             0        3      10
Birth       ki1114097-CMIN             PERU                           4             1        0      10
Birth       ki1114097-CMIN             PERU                           5             0        0      10
Birth       ki1114097-CMIN             PERU                           5             1        0      10
Birth       ki1114097-CMIN             PERU                           6             0        0      10
Birth       ki1114097-CMIN             PERU                           6             1        0      10
Birth       ki1114097-CMIN             PERU                           7             0        0      10
Birth       ki1114097-CMIN             PERU                           7             1        0      10
Birth       ki1114097-CMIN             PERU                           8             0        1      10
Birth       ki1114097-CMIN             PERU                           8             1        0      10
Birth       ki1114097-CMIN             PERU                           9             0        2      10
Birth       ki1114097-CMIN             PERU                           9             1        0      10
Birth       ki1114097-CMIN             PERU                           10            0        0      10
Birth       ki1114097-CMIN             PERU                           10            1        0      10
Birth       ki1114097-CMIN             PERU                           11            0        0      10
Birth       ki1114097-CMIN             PERU                           11            1        0      10
Birth       ki1114097-CMIN             PERU                           12            0        0      10
Birth       ki1114097-CMIN             PERU                           12            1        0      10
Birth       ki1114097-CONTENT          PERU                           1             0        0       2
Birth       ki1114097-CONTENT          PERU                           1             1        0       2
Birth       ki1114097-CONTENT          PERU                           2             0        0       2
Birth       ki1114097-CONTENT          PERU                           2             1        0       2
Birth       ki1114097-CONTENT          PERU                           3             0        0       2
Birth       ki1114097-CONTENT          PERU                           3             1        0       2
Birth       ki1114097-CONTENT          PERU                           4             0        0       2
Birth       ki1114097-CONTENT          PERU                           4             1        0       2
Birth       ki1114097-CONTENT          PERU                           5             0        2       2
Birth       ki1114097-CONTENT          PERU                           5             1        0       2
Birth       ki1114097-CONTENT          PERU                           6             0        0       2
Birth       ki1114097-CONTENT          PERU                           6             1        0       2
Birth       ki1114097-CONTENT          PERU                           7             0        0       2
Birth       ki1114097-CONTENT          PERU                           7             1        0       2
Birth       ki1114097-CONTENT          PERU                           8             0        0       2
Birth       ki1114097-CONTENT          PERU                           8             1        0       2
Birth       ki1114097-CONTENT          PERU                           9             0        0       2
Birth       ki1114097-CONTENT          PERU                           9             1        0       2
Birth       ki1114097-CONTENT          PERU                           10            0        0       2
Birth       ki1114097-CONTENT          PERU                           10            1        0       2
Birth       ki1114097-CONTENT          PERU                           11            0        0       2
Birth       ki1114097-CONTENT          PERU                           11            1        0       2
Birth       ki1114097-CONTENT          PERU                           12            0        0       2
Birth       ki1114097-CONTENT          PERU                           12            1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1             0      668   13824
Birth       ki1119695-PROBIT           BELARUS                        1             1      186   13824
Birth       ki1119695-PROBIT           BELARUS                        2             0      642   13824
Birth       ki1119695-PROBIT           BELARUS                        2             1      144   13824
Birth       ki1119695-PROBIT           BELARUS                        3             0      769   13824
Birth       ki1119695-PROBIT           BELARUS                        3             1      192   13824
Birth       ki1119695-PROBIT           BELARUS                        4             0      753   13824
Birth       ki1119695-PROBIT           BELARUS                        4             1      202   13824
Birth       ki1119695-PROBIT           BELARUS                        5             0      719   13824
Birth       ki1119695-PROBIT           BELARUS                        5             1      229   13824
Birth       ki1119695-PROBIT           BELARUS                        6             0      800   13824
Birth       ki1119695-PROBIT           BELARUS                        6             1      207   13824
Birth       ki1119695-PROBIT           BELARUS                        7             0      973   13824
Birth       ki1119695-PROBIT           BELARUS                        7             1      303   13824
Birth       ki1119695-PROBIT           BELARUS                        8             0     1038   13824
Birth       ki1119695-PROBIT           BELARUS                        8             1      280   13824
Birth       ki1119695-PROBIT           BELARUS                        9             0     1053   13824
Birth       ki1119695-PROBIT           BELARUS                        9             1      260   13824
Birth       ki1119695-PROBIT           BELARUS                        10            0     1173   13824
Birth       ki1119695-PROBIT           BELARUS                        10            1      325   13824
Birth       ki1119695-PROBIT           BELARUS                        11            0     1135   13824
Birth       ki1119695-PROBIT           BELARUS                        11            1      257   13824
Birth       ki1119695-PROBIT           BELARUS                        12            0     1213   13824
Birth       ki1119695-PROBIT           BELARUS                        12            1      303   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             0     1057   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             1      181   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             0      822   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2             1      124   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3             0      907   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3             1      153   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             0      817   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4             1      120   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             0      773   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5             1      140   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6             0      850   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6             1      196   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7             0      885   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7             1      213   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8             0      955   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8             1      208   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9             0     1083   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9             1      181   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            0      819   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10            1      162   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11            0      880   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11            1      188   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12            0      988   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12            1      191   12893
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             0     2678   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             1      222   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2             0     2342   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2             1      216   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3             0     2810   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3             1      298   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4             0     2092   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4             1      212   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             0     1412   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5             1      156   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             0     1476   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6             1      168   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             0     1674   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7             1      144   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8             0     2154   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8             1      246   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9             0     2684   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9             1      362   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10            0     2944   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10            1      374   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11            0     2998   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11            1      340   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12            0     3142   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12            1      274   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             0      210    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2             1       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             0      246    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3             1       20    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             0      260    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4             1       14    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             0      200    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5             1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6             0      140    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6             1       10    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7             0      120    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7             1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             0       60    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8             1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             0       44    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9             1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            0       14    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10            1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11            1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12            1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             0       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             0       25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3             1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4             0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5             0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6             0        7     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6             1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7             0       18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7             1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8             0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8             1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9             0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9             1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10            0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10            1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11            0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11            1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12            0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12            1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1             0       13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             0       24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             0       18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4             0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5             0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6             0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7             0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8             0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9             0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10            0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10            1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11            0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11            1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12            0       13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12            1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          1             0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          1             1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          2             0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          2             1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          3             0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          3             1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          4             0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4             1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5             0        7     236
6 months    ki0047075b-MAL-ED          INDIA                          5             1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          6             0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          6             1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          7             0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          7             1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          8             0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          8             1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          9             0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          9             1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          10            0       24     236
6 months    ki0047075b-MAL-ED          INDIA                          10            1        2     236
6 months    ki0047075b-MAL-ED          INDIA                          11            0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          11            1        4     236
6 months    ki0047075b-MAL-ED          INDIA                          12            0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          12            1        2     236
6 months    ki0047075b-MAL-ED          NEPAL                          1             0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          1             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          2             0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          2             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3             0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          3             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4             0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          4             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5             0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6             0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          6             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          7             0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          7             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          8             0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          8             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          9             0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          9             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10            0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          10            1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11            0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          11            1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12            0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          12            1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1             0       37     273
6 months    ki0047075b-MAL-ED          PERU                           1             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           2             0       22     273
6 months    ki0047075b-MAL-ED          PERU                           2             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           3             0       21     273
6 months    ki0047075b-MAL-ED          PERU                           3             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           4             0       20     273
6 months    ki0047075b-MAL-ED          PERU                           4             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           5             0       24     273
6 months    ki0047075b-MAL-ED          PERU                           5             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6             0       19     273
6 months    ki0047075b-MAL-ED          PERU                           6             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           7             0       21     273
6 months    ki0047075b-MAL-ED          PERU                           7             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8             0       17     273
6 months    ki0047075b-MAL-ED          PERU                           8             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           9             0       22     273
6 months    ki0047075b-MAL-ED          PERU                           9             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10            0       19     273
6 months    ki0047075b-MAL-ED          PERU                           10            1        0     273
6 months    ki0047075b-MAL-ED          PERU                           11            0       33     273
6 months    ki0047075b-MAL-ED          PERU                           11            1        0     273
6 months    ki0047075b-MAL-ED          PERU                           12            0       18     273
6 months    ki0047075b-MAL-ED          PERU                           12            1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             0       34     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             0       26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4             0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5             0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6             0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7             0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             0        8     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9             0       20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10            0       21     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10            1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11            0       21     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11            1        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12            0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12            1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             0       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             0       25     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            0       28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            0       28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             0       23     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             0       18     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2             1        6     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3             1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4             0       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4             1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5             0       40     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5             1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6             0       32     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6             1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7             0       31     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7             1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8             0       39     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8             1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9             0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9             1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10            0       16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10            1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11            0       34     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11            1        6     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12            0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12            1        7     368
6 months    ki1000108-IRC              INDIA                          1             0       30     408
6 months    ki1000108-IRC              INDIA                          1             1        6     408
6 months    ki1000108-IRC              INDIA                          2             0       24     408
6 months    ki1000108-IRC              INDIA                          2             1        3     408
6 months    ki1000108-IRC              INDIA                          3             0       24     408
6 months    ki1000108-IRC              INDIA                          3             1        5     408
6 months    ki1000108-IRC              INDIA                          4             0       21     408
6 months    ki1000108-IRC              INDIA                          4             1        1     408
6 months    ki1000108-IRC              INDIA                          5             0       20     408
6 months    ki1000108-IRC              INDIA                          5             1        1     408
6 months    ki1000108-IRC              INDIA                          6             0       30     408
6 months    ki1000108-IRC              INDIA                          6             1        7     408
6 months    ki1000108-IRC              INDIA                          7             0       31     408
6 months    ki1000108-IRC              INDIA                          7             1        5     408
6 months    ki1000108-IRC              INDIA                          8             0       38     408
6 months    ki1000108-IRC              INDIA                          8             1        7     408
6 months    ki1000108-IRC              INDIA                          9             0       23     408
6 months    ki1000108-IRC              INDIA                          9             1        2     408
6 months    ki1000108-IRC              INDIA                          10            0       32     408
6 months    ki1000108-IRC              INDIA                          10            1        5     408
6 months    ki1000108-IRC              INDIA                          11            0       37     408
6 months    ki1000108-IRC              INDIA                          11            1        4     408
6 months    ki1000108-IRC              INDIA                          12            0       44     408
6 months    ki1000108-IRC              INDIA                          12            1        8     408
6 months    ki1000109-EE               PAKISTAN                       1             0      156     752
6 months    ki1000109-EE               PAKISTAN                       1             1       24     752
6 months    ki1000109-EE               PAKISTAN                       2             0      140     752
6 months    ki1000109-EE               PAKISTAN                       2             1       22     752
6 months    ki1000109-EE               PAKISTAN                       3             0       66     752
6 months    ki1000109-EE               PAKISTAN                       3             1       18     752
6 months    ki1000109-EE               PAKISTAN                       4             0       52     752
6 months    ki1000109-EE               PAKISTAN                       4             1        6     752
6 months    ki1000109-EE               PAKISTAN                       5             0        4     752
6 months    ki1000109-EE               PAKISTAN                       5             1        0     752
6 months    ki1000109-EE               PAKISTAN                       6             0        0     752
6 months    ki1000109-EE               PAKISTAN                       6             1        0     752
6 months    ki1000109-EE               PAKISTAN                       7             0        0     752
6 months    ki1000109-EE               PAKISTAN                       7             1        0     752
6 months    ki1000109-EE               PAKISTAN                       8             0        0     752
6 months    ki1000109-EE               PAKISTAN                       8             1        0     752
6 months    ki1000109-EE               PAKISTAN                       9             0        0     752
6 months    ki1000109-EE               PAKISTAN                       9             1        0     752
6 months    ki1000109-EE               PAKISTAN                       10            0        0     752
6 months    ki1000109-EE               PAKISTAN                       10            1        0     752
6 months    ki1000109-EE               PAKISTAN                       11            0       88     752
6 months    ki1000109-EE               PAKISTAN                       11            1       10     752
6 months    ki1000109-EE               PAKISTAN                       12            0      148     752
6 months    ki1000109-EE               PAKISTAN                       12            1       18     752
6 months    ki1000109-ResPak           PAKISTAN                       1             0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       1             1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       2             0       11     235
6 months    ki1000109-ResPak           PAKISTAN                       2             1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       3             0       13     235
6 months    ki1000109-ResPak           PAKISTAN                       3             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       4             0       24     235
6 months    ki1000109-ResPak           PAKISTAN                       4             1        4     235
6 months    ki1000109-ResPak           PAKISTAN                       5             0       24     235
6 months    ki1000109-ResPak           PAKISTAN                       5             1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       6             0       43     235
6 months    ki1000109-ResPak           PAKISTAN                       6             1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       7             0       30     235
6 months    ki1000109-ResPak           PAKISTAN                       7             1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       8             0       29     235
6 months    ki1000109-ResPak           PAKISTAN                       8             1        6     235
6 months    ki1000109-ResPak           PAKISTAN                       9             0       19     235
6 months    ki1000109-ResPak           PAKISTAN                       9             1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       10            0        6     235
6 months    ki1000109-ResPak           PAKISTAN                       10            1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11            0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       11            1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12            0        2     235
6 months    ki1000109-ResPak           PAKISTAN                       12            1        0     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             0       64    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             1       21    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2             0       69    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2             1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3             0       68    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3             1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4             0       68    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4             1        7    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5             0       64    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5             1       12    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6             0       94    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6             1        8    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             0      110    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7             1        5    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             0      144    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8             1        8    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             0      156    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9             1        9    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            0      131    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10            1       17    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            0       97    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11            1       29    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            0      103    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12            1       26    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             0       49     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3             0       27     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3             1        9     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4             0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4             1        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5             0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5             1        6     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6             0       26     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6             1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7             0       13     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7             1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8             1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9             0        9     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9             1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10            0       22     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10            1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11            0       41     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11            1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12            0       50     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12            1       12     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             0       44     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             1        6     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2             0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2             1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3             0       45     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3             1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4             0       39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4             1        5     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5             0       36     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5             1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6             0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6             1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7             0       44     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7             1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8             0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8             1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9             0       28     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9             1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10            0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10            1        4     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11            0       47     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11            1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12            0       47     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12            1        3     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0      184    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1       15    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0      133    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0      139    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             1       12    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0      136    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1        2    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             0      153    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1        7    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0      140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             0      141    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             0      167    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             1        7    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0      194    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             1        4    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0      192    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0      178    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            1        9    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0      184    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            1       17    2028
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             0       18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2             0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3             0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4             0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4             1        2     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5             0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6             0       39     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7             0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8             0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9             0       33     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9             1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10            0       29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10            1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11            0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11            1        1     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12            0       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12            1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1             0        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2             0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3             0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4             0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5             0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6             0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7             0      224    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7             1       14    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8             0      404    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8             1       36    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9             0      358    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9             1       50    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10            0       24    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10            1        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11            0        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11            1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12            0        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12            1        0    1126
6 months    ki1114097-CMIN             BANGLADESH                     1             0       24     243
6 months    ki1114097-CMIN             BANGLADESH                     1             1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     2             0       26     243
6 months    ki1114097-CMIN             BANGLADESH                     2             1        4     243
6 months    ki1114097-CMIN             BANGLADESH                     3             0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     3             1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     4             0       14     243
6 months    ki1114097-CMIN             BANGLADESH                     4             1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     5             0       18     243
6 months    ki1114097-CMIN             BANGLADESH                     5             1        2     243
6 months    ki1114097-CMIN             BANGLADESH                     6             0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     6             1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     7             0       11     243
6 months    ki1114097-CMIN             BANGLADESH                     7             1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     8             0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     8             1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     9             0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     9             1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     10            0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     10            1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     11            0        2     243
6 months    ki1114097-CMIN             BANGLADESH                     11            1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     12            0       41     243
6 months    ki1114097-CMIN             BANGLADESH                     12            1        3     243
6 months    ki1114097-CMIN             BRAZIL                         1             0       10     108
6 months    ki1114097-CMIN             BRAZIL                         1             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2             0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3             0       13     108
6 months    ki1114097-CMIN             BRAZIL                         3             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         4             0       10     108
6 months    ki1114097-CMIN             BRAZIL                         4             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5             0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6             0        6     108
6 months    ki1114097-CMIN             BRAZIL                         6             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7             0        4     108
6 months    ki1114097-CMIN             BRAZIL                         7             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         8             0       11     108
6 months    ki1114097-CMIN             BRAZIL                         8             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9             0        8     108
6 months    ki1114097-CMIN             BRAZIL                         9             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10            0       15     108
6 months    ki1114097-CMIN             BRAZIL                         10            1        0     108
6 months    ki1114097-CMIN             BRAZIL                         11            0       11     108
6 months    ki1114097-CMIN             BRAZIL                         11            1        1     108
6 months    ki1114097-CMIN             BRAZIL                         12            0        8     108
6 months    ki1114097-CMIN             BRAZIL                         12            1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             0       16     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2             0       84     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2             1        3     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3             0      109     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3             1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4             0      120     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4             1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5             0      105     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5             1        5     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6             0       59     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6             1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7             0       37     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7             1        3     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8             0       36     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8             1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9             0       92     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9             1        6     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10            0       32     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10            1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11            0       46     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11            1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12            0       79     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12            1        0     849
6 months    ki1114097-CMIN             PERU                           1             0       41     636
6 months    ki1114097-CMIN             PERU                           1             1        0     636
6 months    ki1114097-CMIN             PERU                           2             0       52     636
6 months    ki1114097-CMIN             PERU                           2             1        4     636
6 months    ki1114097-CMIN             PERU                           3             0       68     636
6 months    ki1114097-CMIN             PERU                           3             1        1     636
6 months    ki1114097-CMIN             PERU                           4             0       67     636
6 months    ki1114097-CMIN             PERU                           4             1        2     636
6 months    ki1114097-CMIN             PERU                           5             0       69     636
6 months    ki1114097-CMIN             PERU                           5             1        1     636
6 months    ki1114097-CMIN             PERU                           6             0       48     636
6 months    ki1114097-CMIN             PERU                           6             1        0     636
6 months    ki1114097-CMIN             PERU                           7             0       43     636
6 months    ki1114097-CMIN             PERU                           7             1        0     636
6 months    ki1114097-CMIN             PERU                           8             0       53     636
6 months    ki1114097-CMIN             PERU                           8             1        1     636
6 months    ki1114097-CMIN             PERU                           9             0       42     636
6 months    ki1114097-CMIN             PERU                           9             1        0     636
6 months    ki1114097-CMIN             PERU                           10            0       37     636
6 months    ki1114097-CMIN             PERU                           10            1        0     636
6 months    ki1114097-CMIN             PERU                           11            0       65     636
6 months    ki1114097-CMIN             PERU                           11            1        0     636
6 months    ki1114097-CMIN             PERU                           12            0       41     636
6 months    ki1114097-CMIN             PERU                           12            1        1     636
6 months    ki1114097-CONTENT          PERU                           1             0        9     215
6 months    ki1114097-CONTENT          PERU                           1             1        0     215
6 months    ki1114097-CONTENT          PERU                           2             0       13     215
6 months    ki1114097-CONTENT          PERU                           2             1        0     215
6 months    ki1114097-CONTENT          PERU                           3             0       27     215
6 months    ki1114097-CONTENT          PERU                           3             1        0     215
6 months    ki1114097-CONTENT          PERU                           4             0       18     215
6 months    ki1114097-CONTENT          PERU                           4             1        0     215
6 months    ki1114097-CONTENT          PERU                           5             0       25     215
6 months    ki1114097-CONTENT          PERU                           5             1        0     215
6 months    ki1114097-CONTENT          PERU                           6             0       14     215
6 months    ki1114097-CONTENT          PERU                           6             1        0     215
6 months    ki1114097-CONTENT          PERU                           7             0       16     215
6 months    ki1114097-CONTENT          PERU                           7             1        0     215
6 months    ki1114097-CONTENT          PERU                           8             0       26     215
6 months    ki1114097-CONTENT          PERU                           8             1        0     215
6 months    ki1114097-CONTENT          PERU                           9             0       19     215
6 months    ki1114097-CONTENT          PERU                           9             1        0     215
6 months    ki1114097-CONTENT          PERU                           10            0       23     215
6 months    ki1114097-CONTENT          PERU                           10            1        0     215
6 months    ki1114097-CONTENT          PERU                           11            0       18     215
6 months    ki1114097-CONTENT          PERU                           11            1        0     215
6 months    ki1114097-CONTENT          PERU                           12            0        7     215
6 months    ki1114097-CONTENT          PERU                           12            1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1             0     1094   15757
6 months    ki1119695-PROBIT           BELARUS                        1             1        7   15757
6 months    ki1119695-PROBIT           BELARUS                        2             0      942   15757
6 months    ki1119695-PROBIT           BELARUS                        2             1        9   15757
6 months    ki1119695-PROBIT           BELARUS                        3             0     1108   15757
6 months    ki1119695-PROBIT           BELARUS                        3             1        6   15757
6 months    ki1119695-PROBIT           BELARUS                        4             0     1061   15757
6 months    ki1119695-PROBIT           BELARUS                        4             1        9   15757
6 months    ki1119695-PROBIT           BELARUS                        5             0     1090   15757
6 months    ki1119695-PROBIT           BELARUS                        5             1        6   15757
6 months    ki1119695-PROBIT           BELARUS                        6             0     1113   15757
6 months    ki1119695-PROBIT           BELARUS                        6             1        7   15757
6 months    ki1119695-PROBIT           BELARUS                        7             0     1354   15757
6 months    ki1119695-PROBIT           BELARUS                        7             1       12   15757
6 months    ki1119695-PROBIT           BELARUS                        8             0     1482   15757
6 months    ki1119695-PROBIT           BELARUS                        8             1       15   15757
6 months    ki1119695-PROBIT           BELARUS                        9             0     1471   15757
6 months    ki1119695-PROBIT           BELARUS                        9             1       10   15757
6 months    ki1119695-PROBIT           BELARUS                        10            0     1652   15757
6 months    ki1119695-PROBIT           BELARUS                        10            1       17   15757
6 months    ki1119695-PROBIT           BELARUS                        11            0     1569   15757
6 months    ki1119695-PROBIT           BELARUS                        11            1       20   15757
6 months    ki1119695-PROBIT           BELARUS                        12            0     1691   15757
6 months    ki1119695-PROBIT           BELARUS                        12            1       12   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             0      781    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             1       24    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             0      552    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2             1       21    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             0      672    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3             1       29    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             0      641    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4             1       15    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             0      580    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5             1       17    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             0      631    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6             1       21    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             0      618    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7             1       18    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             0      698    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8             1       31    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             0      742    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9             1       21    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            0      579    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10            1       20    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            0      707    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11            1       18    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            0      783    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12            1       30    8249
6 months    ki1148112-LCNI-5           MALAWI                         1             0       55     839
6 months    ki1148112-LCNI-5           MALAWI                         1             1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         2             0      111     839
6 months    ki1148112-LCNI-5           MALAWI                         2             1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         3             0       97     839
6 months    ki1148112-LCNI-5           MALAWI                         3             1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         4             0      109     839
6 months    ki1148112-LCNI-5           MALAWI                         4             1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         5             0      109     839
6 months    ki1148112-LCNI-5           MALAWI                         5             1        2     839
6 months    ki1148112-LCNI-5           MALAWI                         6             0       88     839
6 months    ki1148112-LCNI-5           MALAWI                         6             1        3     839
6 months    ki1148112-LCNI-5           MALAWI                         7             0       71     839
6 months    ki1148112-LCNI-5           MALAWI                         7             1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         8             0       41     839
6 months    ki1148112-LCNI-5           MALAWI                         8             1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         9             0       29     839
6 months    ki1148112-LCNI-5           MALAWI                         9             1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         10            0       35     839
6 months    ki1148112-LCNI-5           MALAWI                         10            1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         11            0       48     839
6 months    ki1148112-LCNI-5           MALAWI                         11            1        1     839
6 months    ki1148112-LCNI-5           MALAWI                         12            0       32     839
6 months    ki1148112-LCNI-5           MALAWI                         12            1        2     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             0     2457   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             1      256   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2             0     2181   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2             1      190   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3             0     2617   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3             1      221   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4             0     2203   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4             1      172   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5             0     2114   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5             1      174   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6             0     2132   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6             1      176   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7             0     2239   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7             1      234   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8             0     2685   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8             1      246   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9             0     2885   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9             1      238   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10            0     3036   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10            1      330   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11            0     3092   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11            1      308   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12            0     3041   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12            1      296   33523
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1             0       95    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1             1        8    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             0      321    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2             1        6    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             0      789    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3             1       62    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             0     1578    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4             1      114    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             0     1116    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5             1       55    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             0      816    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6             1       52    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             0     1558    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7             1      114    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             0      970    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8             1       45    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             0      728    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9             1       31    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            0      535    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10            1       22    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11            0      274    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11            1       20    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12            0      144    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12            1        3    9456
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2             1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3             1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4             0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4             1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5             0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5             1        3     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             0        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6             1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7             0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7             1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8             0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8             1        1     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9             0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9             1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10            0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10            1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11            0        8     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11            1        2     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12            0       25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12            1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1             0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4             0        9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5             0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6             0        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7             0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8             0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8             1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9             0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10            0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10            1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11            0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11            1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12            0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12            1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1             0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          1             1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          2             0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          2             1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          3             0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          3             1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          4             0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          4             1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          5             0        7     227
24 months   ki0047075b-MAL-ED          INDIA                          5             1        1     227
24 months   ki0047075b-MAL-ED          INDIA                          6             0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          6             1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          7             0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          7             1        3     227
24 months   ki0047075b-MAL-ED          INDIA                          8             0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          8             1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          9             0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          9             1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          10            0       22     227
24 months   ki0047075b-MAL-ED          INDIA                          10            1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          11            0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          11            1        4     227
24 months   ki0047075b-MAL-ED          INDIA                          12            0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          12            1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          1             0       23     228
24 months   ki0047075b-MAL-ED          NEPAL                          1             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2             0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          2             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3             0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          3             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4             0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          4             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5             0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          6             0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          6             1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          7             0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          7             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8             0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          8             1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          9             0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          9             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          10            0       21     228
24 months   ki0047075b-MAL-ED          NEPAL                          10            1        1     228
24 months   ki0047075b-MAL-ED          NEPAL                          11            0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          11            1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          12            0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12            1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1             0       28     201
24 months   ki0047075b-MAL-ED          PERU                           1             1        1     201
24 months   ki0047075b-MAL-ED          PERU                           2             0       20     201
24 months   ki0047075b-MAL-ED          PERU                           2             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3             0       14     201
24 months   ki0047075b-MAL-ED          PERU                           3             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4             0       12     201
24 months   ki0047075b-MAL-ED          PERU                           4             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           5             0       18     201
24 months   ki0047075b-MAL-ED          PERU                           5             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           6             0       11     201
24 months   ki0047075b-MAL-ED          PERU                           6             1        1     201
24 months   ki0047075b-MAL-ED          PERU                           7             0       14     201
24 months   ki0047075b-MAL-ED          PERU                           7             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8             0       12     201
24 months   ki0047075b-MAL-ED          PERU                           8             1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9             0       20     201
24 months   ki0047075b-MAL-ED          PERU                           9             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10            0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10            1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11            0       21     201
24 months   ki0047075b-MAL-ED          PERU                           11            1        0     201
24 months   ki0047075b-MAL-ED          PERU                           12            0       14     201
24 months   ki0047075b-MAL-ED          PERU                           12            1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             0       30     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             0       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4             0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5             0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6             0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7             0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9             0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10            0       24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10            1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11            0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11            1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12            0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12            1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             0       19     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             0       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2             1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             0       25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8             1        1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             0       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10            1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11            1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            0       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12            1        1     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             0       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             0       24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2             1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             0       24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3             1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4             0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4             1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5             0       43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5             1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6             0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6             1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7             0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7             1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8             0       37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8             1        4     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9             0       22     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9             1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10            0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10            1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11            0       39     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11            1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12            0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12            1        4     372
24 months   ki1000108-IRC              INDIA                          1             0       34     409
24 months   ki1000108-IRC              INDIA                          1             1        2     409
24 months   ki1000108-IRC              INDIA                          2             0       26     409
24 months   ki1000108-IRC              INDIA                          2             1        1     409
24 months   ki1000108-IRC              INDIA                          3             0       29     409
24 months   ki1000108-IRC              INDIA                          3             1        0     409
24 months   ki1000108-IRC              INDIA                          4             0       20     409
24 months   ki1000108-IRC              INDIA                          4             1        2     409
24 months   ki1000108-IRC              INDIA                          5             0       18     409
24 months   ki1000108-IRC              INDIA                          5             1        3     409
24 months   ki1000108-IRC              INDIA                          6             0       34     409
24 months   ki1000108-IRC              INDIA                          6             1        3     409
24 months   ki1000108-IRC              INDIA                          7             0       34     409
24 months   ki1000108-IRC              INDIA                          7             1        2     409
24 months   ki1000108-IRC              INDIA                          8             0       40     409
24 months   ki1000108-IRC              INDIA                          8             1        5     409
24 months   ki1000108-IRC              INDIA                          9             0       22     409
24 months   ki1000108-IRC              INDIA                          9             1        5     409
24 months   ki1000108-IRC              INDIA                          10            0       32     409
24 months   ki1000108-IRC              INDIA                          10            1        4     409
24 months   ki1000108-IRC              INDIA                          11            0       38     409
24 months   ki1000108-IRC              INDIA                          11            1        3     409
24 months   ki1000108-IRC              INDIA                          12            0       51     409
24 months   ki1000108-IRC              INDIA                          12            1        1     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             0       39     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2             0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2             1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3             0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3             1        8     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4             0       26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4             1        8     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5             0       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5             1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6             0       26     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6             1        4     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7             0       32     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7             1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8             0       25     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8             1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9             0       16     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9             1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10            0       34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10            1        6     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11            0       35     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11            1        5     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12            0       44     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12            1        1     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11            1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12            1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          1             0        4     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2             0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3             0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4             0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5             0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6             0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7             0      136     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7             1       40     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8             0      340     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8             1       66     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9             0      308     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9             1       66     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10            0       20     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10            1        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11            0        4     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11            1        4     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12            0        2     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12            1        0     996
24 months   ki1114097-CMIN             BANGLADESH                     1             0       23     243
24 months   ki1114097-CMIN             BANGLADESH                     1             1        4     243
24 months   ki1114097-CMIN             BANGLADESH                     2             0       31     243
24 months   ki1114097-CMIN             BANGLADESH                     2             1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     3             0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     3             1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     4             0       17     243
24 months   ki1114097-CMIN             BANGLADESH                     4             1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     5             0       17     243
24 months   ki1114097-CMIN             BANGLADESH                     5             1        2     243
24 months   ki1114097-CMIN             BANGLADESH                     6             0       21     243
24 months   ki1114097-CMIN             BANGLADESH                     6             1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     7             0       12     243
24 months   ki1114097-CMIN             BANGLADESH                     7             1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     8             0       12     243
24 months   ki1114097-CMIN             BANGLADESH                     8             1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     9             0       15     243
24 months   ki1114097-CMIN             BANGLADESH                     9             1        3     243
24 months   ki1114097-CMIN             BANGLADESH                     10            0       15     243
24 months   ki1114097-CMIN             BANGLADESH                     10            1        4     243
24 months   ki1114097-CMIN             BANGLADESH                     11            0        2     243
24 months   ki1114097-CMIN             BANGLADESH                     11            1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     12            0       34     243
24 months   ki1114097-CMIN             BANGLADESH                     12            1        9     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             0       11     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2             0       53     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2             1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3             0       66     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3             1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4             0      104     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4             1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5             0       68     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5             1        2     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6             0       33     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6             1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7             0       29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7             1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8             0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8             1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9             0       57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9             1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10            0       14     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10            1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11            0       26     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11            1        4     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12            0       39     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12            1        4     551
24 months   ki1114097-CMIN             PERU                           1             0        8     429
24 months   ki1114097-CMIN             PERU                           1             1        0     429
24 months   ki1114097-CMIN             PERU                           2             0      133     429
24 months   ki1114097-CMIN             PERU                           2             1        1     429
24 months   ki1114097-CMIN             PERU                           3             0       81     429
24 months   ki1114097-CMIN             PERU                           3             1        1     429
24 months   ki1114097-CMIN             PERU                           4             0       26     429
24 months   ki1114097-CMIN             PERU                           4             1        0     429
24 months   ki1114097-CMIN             PERU                           5             0       31     429
24 months   ki1114097-CMIN             PERU                           5             1        0     429
24 months   ki1114097-CMIN             PERU                           6             0       13     429
24 months   ki1114097-CMIN             PERU                           6             1        0     429
24 months   ki1114097-CMIN             PERU                           7             0       18     429
24 months   ki1114097-CMIN             PERU                           7             1        0     429
24 months   ki1114097-CMIN             PERU                           8             0       31     429
24 months   ki1114097-CMIN             PERU                           8             1        0     429
24 months   ki1114097-CMIN             PERU                           9             0       14     429
24 months   ki1114097-CMIN             PERU                           9             1        0     429
24 months   ki1114097-CMIN             PERU                           10            0       15     429
24 months   ki1114097-CMIN             PERU                           10            1        0     429
24 months   ki1114097-CMIN             PERU                           11            0       42     429
24 months   ki1114097-CMIN             PERU                           11            1        0     429
24 months   ki1114097-CMIN             PERU                           12            0       15     429
24 months   ki1114097-CMIN             PERU                           12            1        0     429
24 months   ki1114097-CONTENT          PERU                           1             0        8     164
24 months   ki1114097-CONTENT          PERU                           1             1        0     164
24 months   ki1114097-CONTENT          PERU                           2             0       10     164
24 months   ki1114097-CONTENT          PERU                           2             1        0     164
24 months   ki1114097-CONTENT          PERU                           3             0       20     164
24 months   ki1114097-CONTENT          PERU                           3             1        0     164
24 months   ki1114097-CONTENT          PERU                           4             0       13     164
24 months   ki1114097-CONTENT          PERU                           4             1        0     164
24 months   ki1114097-CONTENT          PERU                           5             0       22     164
24 months   ki1114097-CONTENT          PERU                           5             1        0     164
24 months   ki1114097-CONTENT          PERU                           6             0       11     164
24 months   ki1114097-CONTENT          PERU                           6             1        0     164
24 months   ki1114097-CONTENT          PERU                           7             0       13     164
24 months   ki1114097-CONTENT          PERU                           7             1        0     164
24 months   ki1114097-CONTENT          PERU                           8             0       23     164
24 months   ki1114097-CONTENT          PERU                           8             1        0     164
24 months   ki1114097-CONTENT          PERU                           9             0       11     164
24 months   ki1114097-CONTENT          PERU                           9             1        0     164
24 months   ki1114097-CONTENT          PERU                           10            0       12     164
24 months   ki1114097-CONTENT          PERU                           10            1        0     164
24 months   ki1114097-CONTENT          PERU                           11            0       17     164
24 months   ki1114097-CONTENT          PERU                           11            1        0     164
24 months   ki1114097-CONTENT          PERU                           12            0        4     164
24 months   ki1114097-CONTENT          PERU                           12            1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1             0      261    3971
24 months   ki1119695-PROBIT           BELARUS                        1             1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        2             0      208    3971
24 months   ki1119695-PROBIT           BELARUS                        2             1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        3             0      318    3971
24 months   ki1119695-PROBIT           BELARUS                        3             1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        4             0      318    3971
24 months   ki1119695-PROBIT           BELARUS                        4             1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        5             0      299    3971
24 months   ki1119695-PROBIT           BELARUS                        5             1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        6             0      260    3971
24 months   ki1119695-PROBIT           BELARUS                        6             1        5    3971
24 months   ki1119695-PROBIT           BELARUS                        7             0      360    3971
24 months   ki1119695-PROBIT           BELARUS                        7             1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        8             0      339    3971
24 months   ki1119695-PROBIT           BELARUS                        8             1        7    3971
24 months   ki1119695-PROBIT           BELARUS                        9             0      371    3971
24 months   ki1119695-PROBIT           BELARUS                        9             1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        10            0      386    3971
24 months   ki1119695-PROBIT           BELARUS                        10            1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        11            0      383    3971
24 months   ki1119695-PROBIT           BELARUS                        11            1        3    3971
24 months   ki1119695-PROBIT           BELARUS                        12            0      424    3971
24 months   ki1119695-PROBIT           BELARUS                        12            1        4    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             0       43     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             1        6     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             0       49     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             1        9     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3             0       41     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3             1       12     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4             0       38     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4             1        6     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5             0       35     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5             1       14     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6             0       37     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6             1        7     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7             0       24     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7             1        7     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8             0       23     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8             1        7     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             0        2     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9             1        0     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            0        4     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10            1        0     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11            0       19     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11            1        1     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12            0       31     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12            1        7     422
24 months   ki1148112-LCNI-5           MALAWI                         1             0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         1             1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         2             0       85     563
24 months   ki1148112-LCNI-5           MALAWI                         2             1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         3             0       64     563
24 months   ki1148112-LCNI-5           MALAWI                         3             1        3     563
24 months   ki1148112-LCNI-5           MALAWI                         4             0       74     563
24 months   ki1148112-LCNI-5           MALAWI                         4             1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         5             0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         5             1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         6             0       61     563
24 months   ki1148112-LCNI-5           MALAWI                         6             1        3     563
24 months   ki1148112-LCNI-5           MALAWI                         7             0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         7             1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         8             0       27     563
24 months   ki1148112-LCNI-5           MALAWI                         8             1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         9             0       19     563
24 months   ki1148112-LCNI-5           MALAWI                         9             1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         10            0       25     563
24 months   ki1148112-LCNI-5           MALAWI                         10            1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         11            0       35     563
24 months   ki1148112-LCNI-5           MALAWI                         11            1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         12            0       24     563
24 months   ki1148112-LCNI-5           MALAWI                         12            1        0     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             0     1204   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             1      200   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             0     1016   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2             1      204   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             0     1197   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3             1      252   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             0      837   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4             1      231   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             0      610   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5             1      175   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             0      804   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6             1      322   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             0      915   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7             1      369   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             0      946   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8             1      348   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             0     1084   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9             1      380   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            0     1317   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10            1      438   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11            0     1506   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11            1      424   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12            0     1980   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12            1      409   17168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             0       72    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             1       19    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             0      560    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2             1       80    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             0      672    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3             1      120    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             0     1292    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4             1      296    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             0      852    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5             1      265    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             0      644    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6             1      202    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             0     1218    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7             1      341    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             0      763    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8             1      179    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             0      632    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9             1      130    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            0      423    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10            1       85    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11            0      205    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11            1       63    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12            0       99    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12            1       34    9246


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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8396a103-679f-4106-951a-dd9d8a48bc4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8396a103-679f-4106-951a-dd9d8a48bc4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8396a103-679f-4106-951a-dd9d8a48bc4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8396a103-679f-4106-951a-dd9d8a48bc4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1119695-PROBIT          BELARUS      1                    NA                0.2177986    0.1266018   0.3089954
Birth       ki1119695-PROBIT          BELARUS      2                    NA                0.1832061    0.1067709   0.2596413
Birth       ki1119695-PROBIT          BELARUS      3                    NA                0.1997919    0.1221371   0.2774467
Birth       ki1119695-PROBIT          BELARUS      4                    NA                0.2115183    0.1337556   0.2892811
Birth       ki1119695-PROBIT          BELARUS      5                    NA                0.2415612    0.1512803   0.3318421
Birth       ki1119695-PROBIT          BELARUS      6                    NA                0.2055611    0.1388339   0.2722883
Birth       ki1119695-PROBIT          BELARUS      7                    NA                0.2374608    0.1579282   0.3169934
Birth       ki1119695-PROBIT          BELARUS      8                    NA                0.2124431    0.1385383   0.2863478
Birth       ki1119695-PROBIT          BELARUS      9                    NA                0.1980198    0.1208014   0.2752382
Birth       ki1119695-PROBIT          BELARUS      10                   NA                0.2169559    0.1537285   0.2801833
Birth       ki1119695-PROBIT          BELARUS      11                   NA                0.1846264    0.1318246   0.2374283
Birth       ki1119695-PROBIT          BELARUS      12                   NA                0.1998681    0.1266637   0.2730724
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1462036    0.1265219   0.1658852
Birth       ki1126311-ZVITAMBO        ZIMBABWE     2                    NA                0.1310782    0.1095715   0.1525850
Birth       ki1126311-ZVITAMBO        ZIMBABWE     3                    NA                0.1443396    0.1231826   0.1654967
Birth       ki1126311-ZVITAMBO        ZIMBABWE     4                    NA                0.1280683    0.1066711   0.1494655
Birth       ki1126311-ZVITAMBO        ZIMBABWE     5                    NA                0.1533406    0.1299677   0.1767135
Birth       ki1126311-ZVITAMBO        ZIMBABWE     6                    NA                0.1873805    0.1637319   0.2110291
Birth       ki1126311-ZVITAMBO        ZIMBABWE     7                    NA                0.1939891    0.1705995   0.2173787
Birth       ki1126311-ZVITAMBO        ZIMBABWE     8                    NA                0.1788478    0.1568222   0.2008735
Birth       ki1126311-ZVITAMBO        ZIMBABWE     9                    NA                0.1431962    0.1238855   0.1625069
Birth       ki1126311-ZVITAMBO        ZIMBABWE     10                   NA                0.1651376    0.1419016   0.1883736
Birth       ki1126311-ZVITAMBO        ZIMBABWE     11                   NA                0.1760300    0.1531883   0.1988717
Birth       ki1126311-ZVITAMBO        ZIMBABWE     12                   NA                0.1620017    0.1409693   0.1830341
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0765517    0.0619340   0.0911694
Birth       kiGH5241-JiVitA-3         BANGLADESH   2                    NA                0.0844410    0.0678377   0.1010442
Birth       kiGH5241-JiVitA-3         BANGLADESH   3                    NA                0.0958816    0.0807115   0.1110517
Birth       kiGH5241-JiVitA-3         BANGLADESH   4                    NA                0.0920139    0.0741921   0.1098357
Birth       kiGH5241-JiVitA-3         BANGLADESH   5                    NA                0.0994898    0.0775983   0.1213813
Birth       kiGH5241-JiVitA-3         BANGLADESH   6                    NA                0.1021898    0.0801705   0.1242091
Birth       kiGH5241-JiVitA-3         BANGLADESH   7                    NA                0.0792079    0.0600984   0.0983174
Birth       kiGH5241-JiVitA-3         BANGLADESH   8                    NA                0.1025000    0.0840431   0.1209569
Birth       kiGH5241-JiVitA-3         BANGLADESH   9                    NA                0.1188444    0.1011482   0.1365406
Birth       kiGH5241-JiVitA-3         BANGLADESH   10                   NA                0.1127185    0.0967102   0.1287268
Birth       kiGH5241-JiVitA-3         BANGLADESH   11                   NA                0.1018574    0.0863085   0.1174063
Birth       kiGH5241-JiVitA-3         BANGLADESH   12                   NA                0.0802108    0.0661527   0.0942688
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2470588    0.1647948   0.3293228
6 months    ki1000304b-SAS-CompFeed   INDIA        2                    NA                0.1481481    0.0678756   0.2284207
6 months    ki1000304b-SAS-CompFeed   INDIA        3                    NA                0.1500000    0.0656571   0.2343429
6 months    ki1000304b-SAS-CompFeed   INDIA        4                    NA                0.0933333    0.0360271   0.1506396
6 months    ki1000304b-SAS-CompFeed   INDIA        5                    NA                0.1578947    0.0658459   0.2499436
6 months    ki1000304b-SAS-CompFeed   INDIA        6                    NA                0.0784314    0.0380840   0.1187787
6 months    ki1000304b-SAS-CompFeed   INDIA        7                    NA                0.0434783    0.0027716   0.0841850
6 months    ki1000304b-SAS-CompFeed   INDIA        8                    NA                0.0526316    0.0281136   0.0771496
6 months    ki1000304b-SAS-CompFeed   INDIA        9                    NA                0.0545455    0.0257270   0.0833639
6 months    ki1000304b-SAS-CompFeed   INDIA        10                   NA                0.1148649    0.0616044   0.1681254
6 months    ki1000304b-SAS-CompFeed   INDIA        11                   NA                0.2301587    0.1805256   0.2797918
6 months    ki1000304b-SAS-CompFeed   INDIA        12                   NA                0.2015504    0.1137198   0.2893809
6 months    ki1119695-PROBIT          BELARUS      1                    NA                0.0063579    0.0029219   0.0097939
6 months    ki1119695-PROBIT          BELARUS      2                    NA                0.0094637    0.0035999   0.0153276
6 months    ki1119695-PROBIT          BELARUS      3                    NA                0.0053860   -0.0004272   0.0111992
6 months    ki1119695-PROBIT          BELARUS      4                    NA                0.0084112    0.0014788   0.0153436
6 months    ki1119695-PROBIT          BELARUS      5                    NA                0.0054745   -0.0020625   0.0130114
6 months    ki1119695-PROBIT          BELARUS      6                    NA                0.0062500    0.0018436   0.0106564
6 months    ki1119695-PROBIT          BELARUS      7                    NA                0.0087848    0.0043750   0.0131946
6 months    ki1119695-PROBIT          BELARUS      8                    NA                0.0100200    0.0026446   0.0173955
6 months    ki1119695-PROBIT          BELARUS      9                    NA                0.0067522    0.0020810   0.0114234
6 months    ki1119695-PROBIT          BELARUS      10                   NA                0.0101857    0.0029853   0.0173861
6 months    ki1119695-PROBIT          BELARUS      11                   NA                0.0125865    0.0058370   0.0193360
6 months    ki1119695-PROBIT          BELARUS      12                   NA                0.0070464    0.0026233   0.0114695
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0298137    0.0180644   0.0415630
6 months    ki1126311-ZVITAMBO        ZIMBABWE     2                    NA                0.0366492    0.0212634   0.0520351
6 months    ki1126311-ZVITAMBO        ZIMBABWE     3                    NA                0.0413695    0.0266266   0.0561123
6 months    ki1126311-ZVITAMBO        ZIMBABWE     4                    NA                0.0228659    0.0114267   0.0343050
6 months    ki1126311-ZVITAMBO        ZIMBABWE     5                    NA                0.0284757    0.0151328   0.0418186
6 months    ki1126311-ZVITAMBO        ZIMBABWE     6                    NA                0.0322086    0.0186558   0.0457613
6 months    ki1126311-ZVITAMBO        ZIMBABWE     7                    NA                0.0283019    0.0154129   0.0411909
6 months    ki1126311-ZVITAMBO        ZIMBABWE     8                    NA                0.0425240    0.0278756   0.0571725
6 months    ki1126311-ZVITAMBO        ZIMBABWE     9                    NA                0.0275229    0.0159138   0.0391321
6 months    ki1126311-ZVITAMBO        ZIMBABWE     10                   NA                0.0333890    0.0190014   0.0477766
6 months    ki1126311-ZVITAMBO        ZIMBABWE     11                   NA                0.0248276    0.0135006   0.0361545
6 months    ki1126311-ZVITAMBO        ZIMBABWE     12                   NA                0.0369004    0.0239411   0.0498596
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0943605    0.0765267   0.1121943
6 months    kiGH5241-JiVitA-3         BANGLADESH   2                    NA                0.0801350    0.0633483   0.0969216
6 months    kiGH5241-JiVitA-3         BANGLADESH   3                    NA                0.0778717    0.0626053   0.0931382
6 months    kiGH5241-JiVitA-3         BANGLADESH   4                    NA                0.0724211    0.0574420   0.0874001
6 months    kiGH5241-JiVitA-3         BANGLADESH   5                    NA                0.0760490    0.0596114   0.0924865
6 months    kiGH5241-JiVitA-3         BANGLADESH   6                    NA                0.0762565    0.0591614   0.0933516
6 months    kiGH5241-JiVitA-3         BANGLADESH   7                    NA                0.0946219    0.0772239   0.1120199
6 months    kiGH5241-JiVitA-3         BANGLADESH   8                    NA                0.0839304    0.0674472   0.1004136
6 months    kiGH5241-JiVitA-3         BANGLADESH   9                    NA                0.0762088    0.0631318   0.0892857
6 months    kiGH5241-JiVitA-3         BANGLADESH   10                   NA                0.0980392    0.0830497   0.1130288
6 months    kiGH5241-JiVitA-3         BANGLADESH   11                   NA                0.0905882    0.0758977   0.1052787
6 months    kiGH5241-JiVitA-3         BANGLADESH   12                   NA                0.0887024    0.0743068   0.1030981
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.1424501    0.1155026   0.1693977
24 months   kiGH5241-JiVitA-3         BANGLADESH   2                    NA                0.1672131    0.1376671   0.1967592
24 months   kiGH5241-JiVitA-3         BANGLADESH   3                    NA                0.1739130    0.1428150   0.2050111
24 months   kiGH5241-JiVitA-3         BANGLADESH   4                    NA                0.2162921    0.1758415   0.2567427
24 months   kiGH5241-JiVitA-3         BANGLADESH   5                    NA                0.2229299    0.1787774   0.2670825
24 months   kiGH5241-JiVitA-3         BANGLADESH   6                    NA                0.2859680    0.2464517   0.3254844
24 months   kiGH5241-JiVitA-3         BANGLADESH   7                    NA                0.2873832    0.2472746   0.3274917
24 months   kiGH5241-JiVitA-3         BANGLADESH   8                    NA                0.2689335    0.2315688   0.3062982
24 months   kiGH5241-JiVitA-3         BANGLADESH   9                    NA                0.2595628    0.2217240   0.2974016
24 months   kiGH5241-JiVitA-3         BANGLADESH   10                   NA                0.2495726    0.2204959   0.2786494
24 months   kiGH5241-JiVitA-3         BANGLADESH   11                   NA                0.2196891    0.1918938   0.2474844
24 months   kiGH5241-JiVitA-3         BANGLADESH   12                   NA                0.1712013    0.1461715   0.1962311
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2087912    0.0619339   0.3556485
24 months   kiGH5241-JiVitA-4         BANGLADESH   2                    NA                0.1250000    0.0819820   0.1680180
24 months   kiGH5241-JiVitA-4         BANGLADESH   3                    NA                0.1515152    0.1098649   0.1931654
24 months   kiGH5241-JiVitA-4         BANGLADESH   4                    NA                0.1863980    0.1560427   0.2167533
24 months   kiGH5241-JiVitA-4         BANGLADESH   5                    NA                0.2372426    0.1916088   0.2828764
24 months   kiGH5241-JiVitA-4         BANGLADESH   6                    NA                0.2387707    0.1892585   0.2882829
24 months   kiGH5241-JiVitA-4         BANGLADESH   7                    NA                0.2187300    0.1854275   0.2520324
24 months   kiGH5241-JiVitA-4         BANGLADESH   8                    NA                0.1900212    0.1521510   0.2278915
24 months   kiGH5241-JiVitA-4         BANGLADESH   9                    NA                0.1706037    0.1330993   0.2081081
24 months   kiGH5241-JiVitA-4         BANGLADESH   10                   NA                0.1673228    0.1192258   0.2154198
24 months   kiGH5241-JiVitA-4         BANGLADESH   11                   NA                0.2350746    0.1182727   0.3518765
24 months   kiGH5241-JiVitA-4         BANGLADESH   12                   NA                0.2556391    0.1417843   0.3694939


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS      NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.1595439   0.1532229   0.1658649
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0958686   0.0906699   0.1010673
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1119695-PROBIT          BELARUS      NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0321251   0.0283197   0.0359306
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0847478   0.0799486   0.0895469
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.2185461   0.2086586   0.2284336
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1961929   0.1827435   0.2096424


### Parameter: RR


agecat      studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT          BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT          BELARUS      2                    1                 0.8411721   0.6936888   1.0200115
Birth       ki1119695-PROBIT          BELARUS      3                    1                 0.9173240   0.7512310   1.1201392
Birth       ki1119695-PROBIT          BELARUS      4                    1                 0.9711648   0.7626993   1.2366092
Birth       ki1119695-PROBIT          BELARUS      5                    1                 1.1091035   0.8704630   1.4131680
Birth       ki1119695-PROBIT          BELARUS      6                    1                 0.9438127   0.6616481   1.3463084
Birth       ki1119695-PROBIT          BELARUS      7                    1                 1.0902771   0.7657046   1.5524318
Birth       ki1119695-PROBIT          BELARUS      8                    1                 0.9754108   0.6913368   1.3762123
Birth       ki1119695-PROBIT          BELARUS      9                    1                 0.9091877   0.6383123   1.2950122
Birth       ki1119695-PROBIT          BELARUS      10                   1                 0.9961310   0.7213143   1.3756514
Birth       ki1119695-PROBIT          BELARUS      11                   1                 0.8476934   0.6525064   1.1012676
Birth       ki1119695-PROBIT          BELARUS      12                   1                 0.9176738   0.6801926   1.2380688
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE     2                    1                 0.8965461   0.7251052   1.1085218
Birth       ki1126311-ZVITAMBO        ZIMBABWE     3                    1                 0.9872511   0.8090889   1.2046448
Birth       ki1126311-ZVITAMBO        ZIMBABWE     4                    1                 0.8759589   0.7068071   1.0855917
Birth       ki1126311-ZVITAMBO        ZIMBABWE     5                    1                 1.0488161   0.8558176   1.2853382
Birth       ki1126311-ZVITAMBO        ZIMBABWE     6                    1                 1.2816412   1.0656821   1.5413641
Birth       ki1126311-ZVITAMBO        ZIMBABWE     7                    1                 1.3268424   1.1074748   1.5896620
Birth       ki1126311-ZVITAMBO        ZIMBABWE     8                    1                 1.2232795   1.0192668   1.4681265
Birth       ki1126311-ZVITAMBO        ZIMBABWE     9                    1                 0.9794304   0.8095068   1.1850227
Birth       ki1126311-ZVITAMBO        ZIMBABWE     10                   1                 1.1295048   0.9296452   1.3723311
Birth       ki1126311-ZVITAMBO        ZIMBABWE     11                   1                 1.2040060   0.9986801   1.4515465
Birth       ki1126311-ZVITAMBO        ZIMBABWE     12                   1                 1.1080558   0.9190493   1.3359323
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   2                    1                 1.1030577   0.8380519   1.4518628
Birth       kiGH5241-JiVitA-3         BANGLADESH   3                    1                 1.2525073   0.9797800   1.6011499
Birth       kiGH5241-JiVitA-3         BANGLADESH   4                    1                 1.2019832   0.9235799   1.5643083
Birth       kiGH5241-JiVitA-3         BANGLADESH   5                    1                 1.2996415   0.9723534   1.7370926
Birth       kiGH5241-JiVitA-3         BANGLADESH   6                    1                 1.3349116   0.9963924   1.7884408
Birth       kiGH5241-JiVitA-3         BANGLADESH   7                    1                 1.0346981   0.7616506   1.4056315
Birth       kiGH5241-JiVitA-3         BANGLADESH   8                    1                 1.3389640   1.0254025   1.7484104
Birth       kiGH5241-JiVitA-3         BANGLADESH   9                    1                 1.5524717   1.2178214   1.9790821
Birth       kiGH5241-JiVitA-3         BANGLADESH   10                   1                 1.4724489   1.1658036   1.8597523
Birth       kiGH5241-JiVitA-3         BANGLADESH   11                   1                 1.3305696   1.0457625   1.6929424
Birth       kiGH5241-JiVitA-3         BANGLADESH   12                   1                 1.0477984   0.8071381   1.3602151
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        2                    1                 0.5996473   0.3264094   1.1016131
6 months    ki1000304b-SAS-CompFeed   INDIA        3                    1                 0.6071429   0.3664489   1.0059315
6 months    ki1000304b-SAS-CompFeed   INDIA        4                    1                 0.3777778   0.1865663   0.7649614
6 months    ki1000304b-SAS-CompFeed   INDIA        5                    1                 0.6390977   0.2777063   1.4707837
6 months    ki1000304b-SAS-CompFeed   INDIA        6                    1                 0.3174603   0.1920116   0.5248695
6 months    ki1000304b-SAS-CompFeed   INDIA        7                    1                 0.1759834   0.0568232   0.5450268
6 months    ki1000304b-SAS-CompFeed   INDIA        8                    1                 0.2130326   0.1173307   0.3867947
6 months    ki1000304b-SAS-CompFeed   INDIA        9                    1                 0.2207792   0.1377080   0.3539625
6 months    ki1000304b-SAS-CompFeed   INDIA        10                   1                 0.4649292   0.3628166   0.5957808
6 months    ki1000304b-SAS-CompFeed   INDIA        11                   1                 0.9315949   0.6608966   1.3131691
6 months    ki1000304b-SAS-CompFeed   INDIA        12                   1                 0.8157992   0.5600733   1.1882879
6 months    ki1119695-PROBIT          BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT          BELARUS      2                    1                 1.4885083   0.8562807   2.5875358
6 months    ki1119695-PROBIT          BELARUS      3                    1                 0.8471403   0.2412628   2.9745433
6 months    ki1119695-PROBIT          BELARUS      4                    1                 1.3229640   0.4689666   3.7321072
6 months    ki1119695-PROBIT          BELARUS      5                    1                 0.8610532   0.1997957   3.7108532
6 months    ki1119695-PROBIT          BELARUS      6                    1                 0.9830357   0.4136327   2.3362736
6 months    ki1119695-PROBIT          BELARUS      7                    1                 1.3817193   0.6738400   2.8332366
6 months    ki1119695-PROBIT          BELARUS      8                    1                 1.5760092   0.6396452   3.8830976
6 months    ki1119695-PROBIT          BELARUS      9                    1                 1.0620237   0.4455006   2.5317463
6 months    ki1119695-PROBIT          BELARUS      10                   1                 1.6020714   0.6923192   3.7072965
6 months    ki1119695-PROBIT          BELARUS      11                   1                 1.9796817   0.9309385   4.2098803
6 months    ki1119695-PROBIT          BELARUS      12                   1                 1.1082963   0.4917229   2.4979936
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE     2                    1                 1.2292757   0.6911628   2.1863429
6 months    ki1126311-ZVITAMBO        ZIMBABWE     3                    1                 1.3876010   0.8156667   2.3605679
6 months    ki1126311-ZVITAMBO        ZIMBABWE     4                    1                 0.7669588   0.4056870   1.4499498
6 months    ki1126311-ZVITAMBO        ZIMBABWE     5                    1                 0.9551228   0.5177930   1.7618232
6 months    ki1126311-ZVITAMBO        ZIMBABWE     6                    1                 1.0803298   0.6069895   1.9227884
6 months    ki1126311-ZVITAMBO        ZIMBABWE     7                    1                 0.9492925   0.5198110   1.7336228
6 months    ki1126311-ZVITAMBO        ZIMBABWE     8                    1                 1.4263260   0.8450833   2.4073435
6 months    ki1126311-ZVITAMBO        ZIMBABWE     9                    1                 0.9231651   0.5183004   1.6442855
6 months    ki1126311-ZVITAMBO        ZIMBABWE     10                   1                 1.1199221   0.6245747   2.0081272
6 months    ki1126311-ZVITAMBO        ZIMBABWE     11                   1                 0.8327586   0.4557192   1.5217418
6 months    ki1126311-ZVITAMBO        ZIMBABWE     12                   1                 1.2376999   0.7300701   2.0982930
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   2                    1                 0.8492428   0.6437992   1.1202458
6 months    kiGH5241-JiVitA-3         BANGLADESH   3                    1                 0.8252579   0.6356387   1.0714430
6 months    kiGH5241-JiVitA-3         BANGLADESH   4                    1                 0.7674934   0.5838904   1.0088301
6 months    kiGH5241-JiVitA-3         BANGLADESH   5                    1                 0.8059406   0.6157123   1.0549412
6 months    kiGH5241-JiVitA-3         BANGLADESH   6                    1                 0.8081402   0.6034299   1.0822973
6 months    kiGH5241-JiVitA-3         BANGLADESH   7                    1                 1.0027705   0.7716472   1.3031198
6 months    kiGH5241-JiVitA-3         BANGLADESH   8                    1                 0.8894655   0.6867427   1.1520311
6 months    kiGH5241-JiVitA-3         BANGLADESH   9                    1                 0.8076344   0.6269488   1.0403933
6 months    kiGH5241-JiVitA-3         BANGLADESH   10                   1                 1.0389859   0.8124214   1.3287337
6 months    kiGH5241-JiVitA-3         BANGLADESH   11                   1                 0.9600230   0.7552941   1.2202453
6 months    kiGH5241-JiVitA-3         BANGLADESH   12                   1                 0.9400378   0.7439227   1.1878534
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   2                    1                 1.1738361   0.8974077   1.5354126
24 months   kiGH5241-JiVitA-3         BANGLADESH   3                    1                 1.2208696   0.9517260   1.5661256
24 months   kiGH5241-JiVitA-3         BANGLADESH   4                    1                 1.5183708   1.1634332   1.9815919
24 months   kiGH5241-JiVitA-3         BANGLADESH   5                    1                 1.5649682   1.1970283   2.0460045
24 months   kiGH5241-JiVitA-3         BANGLADESH   6                    1                 2.0074956   1.5984844   2.5211622
24 months   kiGH5241-JiVitA-3         BANGLADESH   7                    1                 2.0174299   1.5914866   2.5573721
24 months   kiGH5241-JiVitA-3         BANGLADESH   8                    1                 1.8879134   1.4882459   2.3949115
24 months   kiGH5241-JiVitA-3         BANGLADESH   9                    1                 1.8221311   1.4324998   2.3177398
24 months   kiGH5241-JiVitA-3         BANGLADESH   10                   1                 1.7520000   1.3962724   2.1983561
24 months   kiGH5241-JiVitA-3         BANGLADESH   11                   1                 1.5422176   1.2307254   1.9325474
24 months   kiGH5241-JiVitA-3         BANGLADESH   12                   1                 1.2018334   0.9467465   1.5256496
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   2                    1                 0.5986842   0.2734812   1.3105938
24 months   kiGH5241-JiVitA-4         BANGLADESH   3                    1                 0.7256778   0.3409182   1.5446765
24 months   kiGH5241-JiVitA-4         BANGLADESH   4                    1                 0.8927482   0.4326802   1.8420060
24 months   kiGH5241-JiVitA-4         BANGLADESH   5                    1                 1.1362673   0.5480636   2.3557545
24 months   kiGH5241-JiVitA-4         BANGLADESH   6                    1                 1.1435859   0.5522279   2.3682048
24 months   kiGH5241-JiVitA-4         BANGLADESH   7                    1                 1.0476014   0.5100041   2.1518821
24 months   kiGH5241-JiVitA-4         BANGLADESH   8                    1                 0.9101017   0.4387442   1.8878541
24 months   kiGH5241-JiVitA-4         BANGLADESH   9                    1                 0.8171018   0.3928075   1.6997011
24 months   kiGH5241-JiVitA-4         BANGLADESH   10                   1                 0.8013883   0.3882733   1.6540492
24 months   kiGH5241-JiVitA-4         BANGLADESH   11                   1                 1.1258837   0.4761047   2.6624695
24 months   kiGH5241-JiVitA-4         BANGLADESH   12                   1                 1.2243767   0.5340009   2.8072958


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS      1                    NA                -0.0088866   -0.0612288    0.0434557
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0133404   -0.0054461    0.0321268
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0193169    0.0052738    0.0333600
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.1226210   -0.1913269   -0.0539152
6 months    ki1119695-PROBIT          BELARUS      1                    NA                 0.0018924   -0.0013975    0.0051823
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0023114   -0.0088950    0.0135179
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0096127   -0.0258142    0.0065888
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.0760960    0.0496629    0.1025291
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0125983   -0.1581483    0.1329518


### Parameter: PAF


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1119695-PROBIT          BELARUS      1                    NA                -0.0425373   -0.3229664    0.1784492
Birth       ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0836157   -0.0420005    0.1940886
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.2014933    0.0411741    0.3350066
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.9854004   -1.5599574   -0.5397970
6 months    ki1119695-PROBIT          BELARUS      1                    NA                 0.2293789   -0.2849958    0.5378530
6 months    ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                 0.0719512   -0.3513528    0.3626576
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.1134272   -0.3205225    0.0611897
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                 0.3481919    0.2166133    0.4576703
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0642136   -1.1364466    0.4698905
