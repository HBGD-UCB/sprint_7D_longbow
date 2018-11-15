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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        brthmon    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                0       23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3                1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4                1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                0       10     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7                1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                0       22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8                1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                0       18     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9                1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10               0       23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10               1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11               0       15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11               1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12               0       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12               1        1     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0       10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2                0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3                0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4                0        9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5                0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6                0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7                0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8                0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9                0       28     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9                1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10               0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11               0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11               1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12               0       10     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12               1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          1                0       15     203
Birth       ki0047075b-MAL-ED          INDIA                          1                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          2                0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          2                1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          3                0       20     203
Birth       ki0047075b-MAL-ED          INDIA                          3                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          4                0       13     203
Birth       ki0047075b-MAL-ED          INDIA                          4                1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          5                0        7     203
Birth       ki0047075b-MAL-ED          INDIA                          5                1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          6                0       17     203
Birth       ki0047075b-MAL-ED          INDIA                          6                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          7                0       19     203
Birth       ki0047075b-MAL-ED          INDIA                          7                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          8                0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          8                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          9                0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          9                1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          10               0       21     203
Birth       ki0047075b-MAL-ED          INDIA                          10               1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          11               0       20     203
Birth       ki0047075b-MAL-ED          INDIA                          11               1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          12               0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          12               1        0     203
Birth       ki0047075b-MAL-ED          NEPAL                          1                0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          2                0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          2                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          3                0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          3                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          4                0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          4                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          5                0       18     168
Birth       ki0047075b-MAL-ED          NEPAL                          5                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          6                0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          6                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          7                0       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          7                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          8                0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          8                1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          9                0       11     168
Birth       ki0047075b-MAL-ED          NEPAL                          9                1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          10               0       14     168
Birth       ki0047075b-MAL-ED          NEPAL                          10               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          11               0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11               1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          12               0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          12               1        0     168
Birth       ki0047075b-MAL-ED          PERU                           1                0       37     279
Birth       ki0047075b-MAL-ED          PERU                           1                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           2                0       20     279
Birth       ki0047075b-MAL-ED          PERU                           2                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           3                0       23     279
Birth       ki0047075b-MAL-ED          PERU                           3                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           4                0       20     279
Birth       ki0047075b-MAL-ED          PERU                           4                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           5                0       26     279
Birth       ki0047075b-MAL-ED          PERU                           5                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           6                0       15     279
Birth       ki0047075b-MAL-ED          PERU                           6                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           7                0       23     279
Birth       ki0047075b-MAL-ED          PERU                           7                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           8                0       19     279
Birth       ki0047075b-MAL-ED          PERU                           8                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           9                0       22     279
Birth       ki0047075b-MAL-ED          PERU                           9                1        0     279
Birth       ki0047075b-MAL-ED          PERU                           10               0       24     279
Birth       ki0047075b-MAL-ED          PERU                           10               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           11               0       31     279
Birth       ki0047075b-MAL-ED          PERU                           11               1        0     279
Birth       ki0047075b-MAL-ED          PERU                           12               0       19     279
Birth       ki0047075b-MAL-ED          PERU                           12               1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       24     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       16     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       17     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       38     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                0        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9                1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11               0       11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12               0        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12               1        1      88
Birth       ki1000108-IRC              INDIA                          1                0       29     343
Birth       ki1000108-IRC              INDIA                          1                1        2     343
Birth       ki1000108-IRC              INDIA                          2                0       22     343
Birth       ki1000108-IRC              INDIA                          2                1        1     343
Birth       ki1000108-IRC              INDIA                          3                0       19     343
Birth       ki1000108-IRC              INDIA                          3                1        5     343
Birth       ki1000108-IRC              INDIA                          4                0       17     343
Birth       ki1000108-IRC              INDIA                          4                1        2     343
Birth       ki1000108-IRC              INDIA                          5                0       11     343
Birth       ki1000108-IRC              INDIA                          5                1        4     343
Birth       ki1000108-IRC              INDIA                          6                0       21     343
Birth       ki1000108-IRC              INDIA                          6                1        5     343
Birth       ki1000108-IRC              INDIA                          7                0       26     343
Birth       ki1000108-IRC              INDIA                          7                1        5     343
Birth       ki1000108-IRC              INDIA                          8                0       30     343
Birth       ki1000108-IRC              INDIA                          8                1        6     343
Birth       ki1000108-IRC              INDIA                          9                0       17     343
Birth       ki1000108-IRC              INDIA                          9                1        7     343
Birth       ki1000108-IRC              INDIA                          10               0       25     343
Birth       ki1000108-IRC              INDIA                          10               1        8     343
Birth       ki1000108-IRC              INDIA                          11               0       35     343
Birth       ki1000108-IRC              INDIA                          11               1        3     343
Birth       ki1000108-IRC              INDIA                          12               0       37     343
Birth       ki1000108-IRC              INDIA                          12               1        6     343
Birth       ki1000109-EE               PAKISTAN                       1                0        0       2
Birth       ki1000109-EE               PAKISTAN                       1                1        0       2
Birth       ki1000109-EE               PAKISTAN                       2                0        0       2
Birth       ki1000109-EE               PAKISTAN                       2                1        0       2
Birth       ki1000109-EE               PAKISTAN                       3                0        0       2
Birth       ki1000109-EE               PAKISTAN                       3                1        0       2
Birth       ki1000109-EE               PAKISTAN                       4                0        0       2
Birth       ki1000109-EE               PAKISTAN                       4                1        0       2
Birth       ki1000109-EE               PAKISTAN                       5                0        0       2
Birth       ki1000109-EE               PAKISTAN                       5                1        0       2
Birth       ki1000109-EE               PAKISTAN                       6                0        0       2
Birth       ki1000109-EE               PAKISTAN                       6                1        0       2
Birth       ki1000109-EE               PAKISTAN                       7                0        0       2
Birth       ki1000109-EE               PAKISTAN                       7                1        0       2
Birth       ki1000109-EE               PAKISTAN                       8                0        0       2
Birth       ki1000109-EE               PAKISTAN                       8                1        0       2
Birth       ki1000109-EE               PAKISTAN                       9                0        0       2
Birth       ki1000109-EE               PAKISTAN                       9                1        0       2
Birth       ki1000109-EE               PAKISTAN                       10               0        0       2
Birth       ki1000109-EE               PAKISTAN                       10               1        0       2
Birth       ki1000109-EE               PAKISTAN                       11               0        0       2
Birth       ki1000109-EE               PAKISTAN                       11               1        0       2
Birth       ki1000109-EE               PAKISTAN                       12               0        2       2
Birth       ki1000109-EE               PAKISTAN                       12               1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       1                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       4                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       4                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       5                0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       5                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       6                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       6                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       7                0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       7                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9                0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9                1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11               1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12               0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12               1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                0        9     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                0       14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5                1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6                1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8                1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                0       19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9                1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10               0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11               0       17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11               1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12               0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12               1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                0        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10               0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11               0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12               0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12               1        0      28
Birth       ki1101329-Keneba           GAMBIA                         1                0      143    1423
Birth       ki1101329-Keneba           GAMBIA                         1                1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         2                0      138    1423
Birth       ki1101329-Keneba           GAMBIA                         2                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         3                0      154    1423
Birth       ki1101329-Keneba           GAMBIA                         3                1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         4                0       95    1423
Birth       ki1101329-Keneba           GAMBIA                         4                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         5                0       97    1423
Birth       ki1101329-Keneba           GAMBIA                         5                1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         6                0       84    1423
Birth       ki1101329-Keneba           GAMBIA                         6                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         7                0       65    1423
Birth       ki1101329-Keneba           GAMBIA                         7                1        0    1423
Birth       ki1101329-Keneba           GAMBIA                         8                0      117    1423
Birth       ki1101329-Keneba           GAMBIA                         8                1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         9                0      116    1423
Birth       ki1101329-Keneba           GAMBIA                         9                1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         10               0      167    1423
Birth       ki1101329-Keneba           GAMBIA                         10               1        2    1423
Birth       ki1101329-Keneba           GAMBIA                         11               0      108    1423
Birth       ki1101329-Keneba           GAMBIA                         11               1        1    1423
Birth       ki1101329-Keneba           GAMBIA                         12               0      128    1423
Birth       ki1101329-Keneba           GAMBIA                         12               1        1    1423
Birth       ki1114097-CMIN             BANGLADESH                     1                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     2                0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     2                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     5                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7                0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     8                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     9                0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9                1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     10               0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     10               1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     11               0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     11               1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     12               0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     12               1        0       8
Birth       ki1114097-CMIN             BRAZIL                         1                0       13     111
Birth       ki1114097-CMIN             BRAZIL                         1                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         2                0        6     111
Birth       ki1114097-CMIN             BRAZIL                         2                1        1     111
Birth       ki1114097-CMIN             BRAZIL                         3                0       12     111
Birth       ki1114097-CMIN             BRAZIL                         3                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         4                0        9     111
Birth       ki1114097-CMIN             BRAZIL                         4                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         5                0        5     111
Birth       ki1114097-CMIN             BRAZIL                         5                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         6                0        6     111
Birth       ki1114097-CMIN             BRAZIL                         6                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         7                0        4     111
Birth       ki1114097-CMIN             BRAZIL                         7                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         8                0       12     111
Birth       ki1114097-CMIN             BRAZIL                         8                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         9                0        8     111
Birth       ki1114097-CMIN             BRAZIL                         9                1        0     111
Birth       ki1114097-CMIN             BRAZIL                         10               0       14     111
Birth       ki1114097-CMIN             BRAZIL                         10               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         11               0       11     111
Birth       ki1114097-CMIN             BRAZIL                         11               1        0     111
Birth       ki1114097-CMIN             BRAZIL                         12               0       10     111
Birth       ki1114097-CMIN             BRAZIL                         12               1        0     111
Birth       ki1114097-CMIN             PERU                           1                0        1      10
Birth       ki1114097-CMIN             PERU                           1                1        0      10
Birth       ki1114097-CMIN             PERU                           2                0        1      10
Birth       ki1114097-CMIN             PERU                           2                1        0      10
Birth       ki1114097-CMIN             PERU                           3                0        2      10
Birth       ki1114097-CMIN             PERU                           3                1        0      10
Birth       ki1114097-CMIN             PERU                           4                0        3      10
Birth       ki1114097-CMIN             PERU                           4                1        0      10
Birth       ki1114097-CMIN             PERU                           5                0        0      10
Birth       ki1114097-CMIN             PERU                           5                1        0      10
Birth       ki1114097-CMIN             PERU                           6                0        0      10
Birth       ki1114097-CMIN             PERU                           6                1        0      10
Birth       ki1114097-CMIN             PERU                           7                0        0      10
Birth       ki1114097-CMIN             PERU                           7                1        0      10
Birth       ki1114097-CMIN             PERU                           8                0        1      10
Birth       ki1114097-CMIN             PERU                           8                1        0      10
Birth       ki1114097-CMIN             PERU                           9                0        2      10
Birth       ki1114097-CMIN             PERU                           9                1        0      10
Birth       ki1114097-CMIN             PERU                           10               0        0      10
Birth       ki1114097-CMIN             PERU                           10               1        0      10
Birth       ki1114097-CMIN             PERU                           11               0        0      10
Birth       ki1114097-CMIN             PERU                           11               1        0      10
Birth       ki1114097-CMIN             PERU                           12               0        0      10
Birth       ki1114097-CMIN             PERU                           12               1        0      10
Birth       ki1114097-CONTENT          PERU                           1                0        0       2
Birth       ki1114097-CONTENT          PERU                           1                1        0       2
Birth       ki1114097-CONTENT          PERU                           2                0        0       2
Birth       ki1114097-CONTENT          PERU                           2                1        0       2
Birth       ki1114097-CONTENT          PERU                           3                0        0       2
Birth       ki1114097-CONTENT          PERU                           3                1        0       2
Birth       ki1114097-CONTENT          PERU                           4                0        0       2
Birth       ki1114097-CONTENT          PERU                           4                1        0       2
Birth       ki1114097-CONTENT          PERU                           5                0        2       2
Birth       ki1114097-CONTENT          PERU                           5                1        0       2
Birth       ki1114097-CONTENT          PERU                           6                0        0       2
Birth       ki1114097-CONTENT          PERU                           6                1        0       2
Birth       ki1114097-CONTENT          PERU                           7                0        0       2
Birth       ki1114097-CONTENT          PERU                           7                1        0       2
Birth       ki1114097-CONTENT          PERU                           8                0        0       2
Birth       ki1114097-CONTENT          PERU                           8                1        0       2
Birth       ki1114097-CONTENT          PERU                           9                0        0       2
Birth       ki1114097-CONTENT          PERU                           9                1        0       2
Birth       ki1114097-CONTENT          PERU                           10               0        0       2
Birth       ki1114097-CONTENT          PERU                           10               1        0       2
Birth       ki1114097-CONTENT          PERU                           11               0        0       2
Birth       ki1114097-CONTENT          PERU                           11               1        0       2
Birth       ki1114097-CONTENT          PERU                           12               0        0       2
Birth       ki1114097-CONTENT          PERU                           12               1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1                0      762   13824
Birth       ki1119695-PROBIT           BELARUS                        1                1       60   13824
Birth       ki1119695-PROBIT           BELARUS                        2                0      757   13824
Birth       ki1119695-PROBIT           BELARUS                        2                1       42   13824
Birth       ki1119695-PROBIT           BELARUS                        3                0      876   13824
Birth       ki1119695-PROBIT           BELARUS                        3                1       65   13824
Birth       ki1119695-PROBIT           BELARUS                        4                0      916   13824
Birth       ki1119695-PROBIT           BELARUS                        4                1       53   13824
Birth       ki1119695-PROBIT           BELARUS                        5                0      867   13824
Birth       ki1119695-PROBIT           BELARUS                        5                1       75   13824
Birth       ki1119695-PROBIT           BELARUS                        6                0      954   13824
Birth       ki1119695-PROBIT           BELARUS                        6                1       66   13824
Birth       ki1119695-PROBIT           BELARUS                        7                0     1173   13824
Birth       ki1119695-PROBIT           BELARUS                        7                1      114   13824
Birth       ki1119695-PROBIT           BELARUS                        8                0     1230   13824
Birth       ki1119695-PROBIT           BELARUS                        8                1       76   13824
Birth       ki1119695-PROBIT           BELARUS                        9                0     1231   13824
Birth       ki1119695-PROBIT           BELARUS                        9                1       93   13824
Birth       ki1119695-PROBIT           BELARUS                        10               0     1396   13824
Birth       ki1119695-PROBIT           BELARUS                        10               1       93   13824
Birth       ki1119695-PROBIT           BELARUS                        11               0     1303   13824
Birth       ki1119695-PROBIT           BELARUS                        11               1       80   13824
Birth       ki1119695-PROBIT           BELARUS                        12               0     1448   13824
Birth       ki1119695-PROBIT           BELARUS                        12               1       94   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     1167   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       66   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0      902   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1       55   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                0     1017   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                1       60   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                0      872   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                1       50   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                0      869   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                1       60   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                0      968   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                1       80   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                0     1007   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                1       89   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                0     1119   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                1       68   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                0     1178   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                1       68   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10               0      920   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10               1       60   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11               0     1040   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11               1       63   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12               0     1066   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12               1       72   12916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0     2864   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       34   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0     2516   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1       42   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                0     3064   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                1       54   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                0     2224   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                1       34   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                0     1536   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                1       20   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                0     1626   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                1       24   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                0     1796   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                1       22   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                0     2396   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                1       38   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                0     2978   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                1       78   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10               0     3250   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10               1       68   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11               0     3276   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11               1       52   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12               0     3384   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12               1       42   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                0      230    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                0      262    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3                1        4    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                0      274    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4                1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                0      198    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5                1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                0      142    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6                1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                0      130    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                0       54    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                0       54    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10               0       12    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       18     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0       10     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       23     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       15     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       23     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       11     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                0        8     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       20     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          2                0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          2                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          3                0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          3                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          4                0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5                0        8     236
6 months    ki0047075b-MAL-ED          INDIA                          5                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          6                0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          6                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          7                0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          7                1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          8                0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          8                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          9                0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          9                1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          10               0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          10               1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          11               0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          11               1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          12               0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          12               1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          4                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          7                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          8                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          9                1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10               0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11               0       24     236
6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12               0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                0       38     273
6 months    ki0047075b-MAL-ED          PERU                           1                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           2                0       19     273
6 months    ki0047075b-MAL-ED          PERU                           2                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           3                0       22     273
6 months    ki0047075b-MAL-ED          PERU                           3                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           4                0       20     273
6 months    ki0047075b-MAL-ED          PERU                           4                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           5                0       27     273
6 months    ki0047075b-MAL-ED          PERU                           5                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6                0       15     273
6 months    ki0047075b-MAL-ED          PERU                           6                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           7                0       22     273
6 months    ki0047075b-MAL-ED          PERU                           7                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8                0       16     273
6 months    ki0047075b-MAL-ED          PERU                           8                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           9                0       23     273
6 months    ki0047075b-MAL-ED          PERU                           9                1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10               0       20     273
6 months    ki0047075b-MAL-ED          PERU                           10               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           11               0       32     273
6 months    ki0047075b-MAL-ED          PERU                           11               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           12               0       19     273
6 months    ki0047075b-MAL-ED          PERU                           12               1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       38     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       15     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       13     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        9     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       20     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        9     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       16     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       30     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       15     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       30     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       32     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       36     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       38     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       17     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       28     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       41     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       23     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        2     368
6 months    ki1000108-IRC              INDIA                          1                0       36     408
6 months    ki1000108-IRC              INDIA                          1                1        2     408
6 months    ki1000108-IRC              INDIA                          2                0       26     408
6 months    ki1000108-IRC              INDIA                          2                1        2     408
6 months    ki1000108-IRC              INDIA                          3                0       27     408
6 months    ki1000108-IRC              INDIA                          3                1        0     408
6 months    ki1000108-IRC              INDIA                          4                0       21     408
6 months    ki1000108-IRC              INDIA                          4                1        0     408
6 months    ki1000108-IRC              INDIA                          5                0       21     408
6 months    ki1000108-IRC              INDIA                          5                1        1     408
6 months    ki1000108-IRC              INDIA                          6                0       36     408
6 months    ki1000108-IRC              INDIA                          6                1        1     408
6 months    ki1000108-IRC              INDIA                          7                0       33     408
6 months    ki1000108-IRC              INDIA                          7                1        3     408
6 months    ki1000108-IRC              INDIA                          8                0       40     408
6 months    ki1000108-IRC              INDIA                          8                1        4     408
6 months    ki1000108-IRC              INDIA                          9                0       23     408
6 months    ki1000108-IRC              INDIA                          9                1        2     408
6 months    ki1000108-IRC              INDIA                          10               0       37     408
6 months    ki1000108-IRC              INDIA                          10               1        1     408
6 months    ki1000108-IRC              INDIA                          11               0       38     408
6 months    ki1000108-IRC              INDIA                          11               1        2     408
6 months    ki1000108-IRC              INDIA                          12               0       48     408
6 months    ki1000108-IRC              INDIA                          12               1        4     408
6 months    ki1000109-EE               PAKISTAN                       1                0      178     752
6 months    ki1000109-EE               PAKISTAN                       1                1        6     752
6 months    ki1000109-EE               PAKISTAN                       2                0      132     752
6 months    ki1000109-EE               PAKISTAN                       2                1        2     752
6 months    ki1000109-EE               PAKISTAN                       3                0       86     752
6 months    ki1000109-EE               PAKISTAN                       3                1        0     752
6 months    ki1000109-EE               PAKISTAN                       4                0       32     752
6 months    ki1000109-EE               PAKISTAN                       4                1        0     752
6 months    ki1000109-EE               PAKISTAN                       5                0        0     752
6 months    ki1000109-EE               PAKISTAN                       5                1        0     752
6 months    ki1000109-EE               PAKISTAN                       6                0        0     752
6 months    ki1000109-EE               PAKISTAN                       6                1        0     752
6 months    ki1000109-EE               PAKISTAN                       7                0        0     752
6 months    ki1000109-EE               PAKISTAN                       7                1        0     752
6 months    ki1000109-EE               PAKISTAN                       8                0        0     752
6 months    ki1000109-EE               PAKISTAN                       8                1        0     752
6 months    ki1000109-EE               PAKISTAN                       9                0        0     752
6 months    ki1000109-EE               PAKISTAN                       9                1        0     752
6 months    ki1000109-EE               PAKISTAN                       10               0        8     752
6 months    ki1000109-EE               PAKISTAN                       10               1        0     752
6 months    ki1000109-EE               PAKISTAN                       11               0      138     752
6 months    ki1000109-EE               PAKISTAN                       11               1        2     752
6 months    ki1000109-EE               PAKISTAN                       12               0      160     752
6 months    ki1000109-EE               PAKISTAN                       12               1        8     752
6 months    ki1000109-ResPak           PAKISTAN                       1                0        9     235
6 months    ki1000109-ResPak           PAKISTAN                       1                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       2                0       11     235
6 months    ki1000109-ResPak           PAKISTAN                       2                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       3                0       18     235
6 months    ki1000109-ResPak           PAKISTAN                       3                1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       4                0       18     235
6 months    ki1000109-ResPak           PAKISTAN                       4                1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       5                0       44     235
6 months    ki1000109-ResPak           PAKISTAN                       5                1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       6                0       40     235
6 months    ki1000109-ResPak           PAKISTAN                       6                1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       7                0       25     235
6 months    ki1000109-ResPak           PAKISTAN                       7                1        1     235
6 months    ki1000109-ResPak           PAKISTAN                       8                0       31     235
6 months    ki1000109-ResPak           PAKISTAN                       8                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       9                0       20     235
6 months    ki1000109-ResPak           PAKISTAN                       9                1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       10               0        4     235
6 months    ki1000109-ResPak           PAKISTAN                       10               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11               0        1     235
6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12               0        5     235
6 months    ki1000109-ResPak           PAKISTAN                       12               1        0     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0       80    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1        7    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0       80    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                0       71    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                0       63    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4                1        1    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                0       87    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5                1        0    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                0       94    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6                1        2    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                0      121    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7                1        1    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                0      159    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                0      170    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9                1        3    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10               0      144    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10               1        5    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11               0      109    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11               1       10    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12               0      113    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12               1        5    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                0        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                0       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                0       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                1        1     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                0       61     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                0       58     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                1        4     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               0       47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10               1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               0       25     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11               1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12               1        3     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       51     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       47     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0       41     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       43     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0       35     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       42     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       50     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1        2     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      141    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      140    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      152    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      149    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      142    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      194    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      196    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      182    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      206    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        2    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      194    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      171    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        1    2028
6 months    ki1101329-Keneba           GAMBIA                         1                0      209    2089
6 months    ki1101329-Keneba           GAMBIA                         1                1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         2                0      186    2089
6 months    ki1101329-Keneba           GAMBIA                         2                1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         3                0      214    2089
6 months    ki1101329-Keneba           GAMBIA                         3                1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         4                0      137    2089
6 months    ki1101329-Keneba           GAMBIA                         4                1        6    2089
6 months    ki1101329-Keneba           GAMBIA                         5                0      140    2089
6 months    ki1101329-Keneba           GAMBIA                         5                1        4    2089
6 months    ki1101329-Keneba           GAMBIA                         6                0      117    2089
6 months    ki1101329-Keneba           GAMBIA                         6                1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         7                0       90    2089
6 months    ki1101329-Keneba           GAMBIA                         7                1        2    2089
6 months    ki1101329-Keneba           GAMBIA                         8                0      171    2089
6 months    ki1101329-Keneba           GAMBIA                         8                1        3    2089
6 months    ki1101329-Keneba           GAMBIA                         9                0      172    2089
6 months    ki1101329-Keneba           GAMBIA                         9                1        2    2089
6 months    ki1101329-Keneba           GAMBIA                         10               0      245    2089
6 months    ki1101329-Keneba           GAMBIA                         10               1        3    2089
6 months    ki1101329-Keneba           GAMBIA                         11               0      186    2089
6 months    ki1101329-Keneba           GAMBIA                         11               1        1    2089
6 months    ki1101329-Keneba           GAMBIA                         12               0      188    2089
6 months    ki1101329-Keneba           GAMBIA                         12               1        4    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                0       25     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                0       22     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                0       14     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                0       16     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               0       29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6                0      242    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7                0      428    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7                1        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      440    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8                1        6    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9                0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9                1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0    1126
6 months    ki1114097-CMIN             BANGLADESH                     1                0       25     243
6 months    ki1114097-CMIN             BANGLADESH                     1                1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     2                0       23     243
6 months    ki1114097-CMIN             BANGLADESH                     2                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     3                0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     3                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     4                0       21     243
6 months    ki1114097-CMIN             BANGLADESH                     4                1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     5                0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     5                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6                0        8     243
6 months    ki1114097-CMIN             BANGLADESH                     6                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     7                0       15     243
6 months    ki1114097-CMIN             BANGLADESH                     7                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     8                0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     8                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     9                0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     9                1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     10               0       24     243
6 months    ki1114097-CMIN             BANGLADESH                     10               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     11               0       26     243
6 months    ki1114097-CMIN             BANGLADESH                     11               1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     12               0       25     243
6 months    ki1114097-CMIN             BANGLADESH                     12               1        3     243
6 months    ki1114097-CMIN             BRAZIL                         1                0       11     108
6 months    ki1114097-CMIN             BRAZIL                         1                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2                0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3                0       12     108
6 months    ki1114097-CMIN             BRAZIL                         3                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         4                0        9     108
6 months    ki1114097-CMIN             BRAZIL                         4                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5                0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6                0        7     108
6 months    ki1114097-CMIN             BRAZIL                         6                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7                0        4     108
6 months    ki1114097-CMIN             BRAZIL                         7                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         8                0       12     108
6 months    ki1114097-CMIN             BRAZIL                         8                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9                0        7     108
6 months    ki1114097-CMIN             BRAZIL                         9                1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10               0       15     108
6 months    ki1114097-CMIN             BRAZIL                         10               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         11               0       11     108
6 months    ki1114097-CMIN             BRAZIL                         11               1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12               0        9     108
6 months    ki1114097-CMIN             BRAZIL                         12               1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0      102     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                0       57     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                0       65     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                0       45     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                0       54     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                0       37     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                0       38     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                0       55     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                0      115     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               0      100     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               0       74     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               0       97     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               1        1     849
6 months    ki1114097-CMIN             PERU                           1                0       42     636
6 months    ki1114097-CMIN             PERU                           1                1        0     636
6 months    ki1114097-CMIN             PERU                           2                0       59     636
6 months    ki1114097-CMIN             PERU                           2                1        1     636
6 months    ki1114097-CMIN             PERU                           3                0       67     636
6 months    ki1114097-CMIN             PERU                           3                1        0     636
6 months    ki1114097-CMIN             PERU                           4                0       61     636
6 months    ki1114097-CMIN             PERU                           4                1        0     636
6 months    ki1114097-CMIN             PERU                           5                0       54     636
6 months    ki1114097-CMIN             PERU                           5                1        0     636
6 months    ki1114097-CMIN             PERU                           6                0       54     636
6 months    ki1114097-CMIN             PERU                           6                1        0     636
6 months    ki1114097-CMIN             PERU                           7                0       51     636
6 months    ki1114097-CMIN             PERU                           7                1        0     636
6 months    ki1114097-CMIN             PERU                           8                0       73     636
6 months    ki1114097-CMIN             PERU                           8                1        0     636
6 months    ki1114097-CMIN             PERU                           9                0       50     636
6 months    ki1114097-CMIN             PERU                           9                1        0     636
6 months    ki1114097-CMIN             PERU                           10               0       49     636
6 months    ki1114097-CMIN             PERU                           10               1        1     636
6 months    ki1114097-CMIN             PERU                           11               0       34     636
6 months    ki1114097-CMIN             PERU                           11               1        0     636
6 months    ki1114097-CMIN             PERU                           12               0       39     636
6 months    ki1114097-CMIN             PERU                           12               1        1     636
6 months    ki1114097-CONTENT          PERU                           1                0       10     215
6 months    ki1114097-CONTENT          PERU                           1                1        0     215
6 months    ki1114097-CONTENT          PERU                           2                0       18     215
6 months    ki1114097-CONTENT          PERU                           2                1        0     215
6 months    ki1114097-CONTENT          PERU                           3                0       30     215
6 months    ki1114097-CONTENT          PERU                           3                1        0     215
6 months    ki1114097-CONTENT          PERU                           4                0       19     215
6 months    ki1114097-CONTENT          PERU                           4                1        0     215
6 months    ki1114097-CONTENT          PERU                           5                0       14     215
6 months    ki1114097-CONTENT          PERU                           5                1        0     215
6 months    ki1114097-CONTENT          PERU                           6                0       13     215
6 months    ki1114097-CONTENT          PERU                           6                1        0     215
6 months    ki1114097-CONTENT          PERU                           7                0       28     215
6 months    ki1114097-CONTENT          PERU                           7                1        0     215
6 months    ki1114097-CONTENT          PERU                           8                0       23     215
6 months    ki1114097-CONTENT          PERU                           8                1        0     215
6 months    ki1114097-CONTENT          PERU                           9                0       26     215
6 months    ki1114097-CONTENT          PERU                           9                1        0     215
6 months    ki1114097-CONTENT          PERU                           10               0       14     215
6 months    ki1114097-CONTENT          PERU                           10               1        0     215
6 months    ki1114097-CONTENT          PERU                           11               0        9     215
6 months    ki1114097-CONTENT          PERU                           11               1        0     215
6 months    ki1114097-CONTENT          PERU                           12               0       11     215
6 months    ki1114097-CONTENT          PERU                           12               1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1                0      974   15757
6 months    ki1119695-PROBIT           BELARUS                        1                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        2                0      932   15757
6 months    ki1119695-PROBIT           BELARUS                        2                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        3                0     1065   15757
6 months    ki1119695-PROBIT           BELARUS                        3                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        4                0     1098   15757
6 months    ki1119695-PROBIT           BELARUS                        4                1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        5                0     1109   15757
6 months    ki1119695-PROBIT           BELARUS                        5                1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        6                0     1113   15757
6 months    ki1119695-PROBIT           BELARUS                        6                1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        7                0     1461   15757
6 months    ki1119695-PROBIT           BELARUS                        7                1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        8                0     1472   15757
6 months    ki1119695-PROBIT           BELARUS                        8                1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        9                0     1509   15757
6 months    ki1119695-PROBIT           BELARUS                        9                1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        10               0     1688   15757
6 months    ki1119695-PROBIT           BELARUS                        10               1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        11               0     1586   15757
6 months    ki1119695-PROBIT           BELARUS                        11               1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        12               0     1734   15757
6 months    ki1119695-PROBIT           BELARUS                        12               1        3   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      783    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       11    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0      578    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1        8    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0      722    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1        8    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0      629    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1        5    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0      601    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1        5    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0      630    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0      630    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1        4    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0      740    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1        6    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0      738    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1        9    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0      597    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1        2    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0      757    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1        5    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0      780    8264
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1        4    8264
6 months    ki1148112-LCNI-5           MALAWI                         1                0       68     839
6 months    ki1148112-LCNI-5           MALAWI                         1                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         2                0       46     839
6 months    ki1148112-LCNI-5           MALAWI                         2                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         3                0       26     839
6 months    ki1148112-LCNI-5           MALAWI                         3                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         4                0       39     839
6 months    ki1148112-LCNI-5           MALAWI                         4                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         5                0       44     839
6 months    ki1148112-LCNI-5           MALAWI                         5                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         6                0       34     839
6 months    ki1148112-LCNI-5           MALAWI                         6                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         7                0       61     839
6 months    ki1148112-LCNI-5           MALAWI                         7                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         8                0       93     839
6 months    ki1148112-LCNI-5           MALAWI                         8                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         9                0       93     839
6 months    ki1148112-LCNI-5           MALAWI                         9                1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         10               0      135     839
6 months    ki1148112-LCNI-5           MALAWI                         10               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         11               0      105     839
6 months    ki1148112-LCNI-5           MALAWI                         11               1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         12               0       95     839
6 months    ki1148112-LCNI-5           MALAWI                         12               1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0     2648   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       32   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0     2277   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1       28   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0     2776   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1       40   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0     2320   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1       34   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0     2182   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1       36   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0     2363   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1       26   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0     2476   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1       32   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0     2986   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1       42   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0     3203   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1       34   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0     3271   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1       54   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0     3464   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1       46   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0     3097   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1       56   33523
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                0     1032    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                1        4    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                0     1828    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                1       18    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                0     1416    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                1       17    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                0     1172    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                1       10    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                0      866    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                1        6    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                0     1026    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                1        8    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                0     1037    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                0      760    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                1        2    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               0      254    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10               1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    9456
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       14     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       18     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       11     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       27     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                0        6     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       10     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          2                0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          2                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          3                0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          3                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          4                0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          5                0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          5                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          6                0       16     227
24 months   ki0047075b-MAL-ED          INDIA                          6                1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          7                0       23     227
24 months   ki0047075b-MAL-ED          INDIA                          7                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          8                0       21     227
24 months   ki0047075b-MAL-ED          INDIA                          8                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          9                0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          10               0       26     227
24 months   ki0047075b-MAL-ED          INDIA                          10               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          11               0       24     227
24 months   ki0047075b-MAL-ED          INDIA                          11               1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          12               0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          12               1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          6                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                0       17     228
24 months   ki0047075b-MAL-ED          NEPAL                          7                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          10               0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          11               0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1                0       30     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           2                0       17     201
24 months   ki0047075b-MAL-ED          PERU                           2                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3                0       15     201
24 months   ki0047075b-MAL-ED          PERU                           3                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           4                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           5                0       19     201
24 months   ki0047075b-MAL-ED          PERU                           5                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           6                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           6                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           7                0       15     201
24 months   ki0047075b-MAL-ED          PERU                           7                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8                0       11     201
24 months   ki0047075b-MAL-ED          PERU                           8                1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9                0       21     201
24 months   ki0047075b-MAL-ED          PERU                           9                1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10               0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11               0       21     201
24 months   ki0047075b-MAL-ED          PERU                           11               1        0     201
24 months   ki0047075b-MAL-ED          PERU                           12               0       15     201
24 months   ki0047075b-MAL-ED          PERU                           12               1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       14     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       19     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       22     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       11     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       24     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       26     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       16     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       31     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       44     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       37     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       38     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       43     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        0     372
24 months   ki1000108-IRC              INDIA                          1                0       37     409
24 months   ki1000108-IRC              INDIA                          1                1        1     409
24 months   ki1000108-IRC              INDIA                          2                0       28     409
24 months   ki1000108-IRC              INDIA                          2                1        0     409
24 months   ki1000108-IRC              INDIA                          3                0       27     409
24 months   ki1000108-IRC              INDIA                          3                1        0     409
24 months   ki1000108-IRC              INDIA                          4                0       21     409
24 months   ki1000108-IRC              INDIA                          4                1        0     409
24 months   ki1000108-IRC              INDIA                          5                0       21     409
24 months   ki1000108-IRC              INDIA                          5                1        1     409
24 months   ki1000108-IRC              INDIA                          6                0       36     409
24 months   ki1000108-IRC              INDIA                          6                1        1     409
24 months   ki1000108-IRC              INDIA                          7                0       36     409
24 months   ki1000108-IRC              INDIA                          7                1        0     409
24 months   ki1000108-IRC              INDIA                          8                0       42     409
24 months   ki1000108-IRC              INDIA                          8                1        2     409
24 months   ki1000108-IRC              INDIA                          9                0       27     409
24 months   ki1000108-IRC              INDIA                          9                1        0     409
24 months   ki1000108-IRC              INDIA                          10               0       37     409
24 months   ki1000108-IRC              INDIA                          10               1        0     409
24 months   ki1000108-IRC              INDIA                          11               0       40     409
24 months   ki1000108-IRC              INDIA                          11               1        0     409
24 months   ki1000108-IRC              INDIA                          12               0       52     409
24 months   ki1000108-IRC              INDIA                          12               1        0     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       43     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       38     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       27     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       25     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       31     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       45     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        1     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1                0      170    1726
24 months   ki1101329-Keneba           GAMBIA                         1                1        1    1726
24 months   ki1101329-Keneba           GAMBIA                         2                0      167    1726
24 months   ki1101329-Keneba           GAMBIA                         2                1        0    1726
24 months   ki1101329-Keneba           GAMBIA                         3                0      168    1726
24 months   ki1101329-Keneba           GAMBIA                         3                1        2    1726
24 months   ki1101329-Keneba           GAMBIA                         4                0      109    1726
24 months   ki1101329-Keneba           GAMBIA                         4                1        5    1726
24 months   ki1101329-Keneba           GAMBIA                         5                0      122    1726
24 months   ki1101329-Keneba           GAMBIA                         5                1        0    1726
24 months   ki1101329-Keneba           GAMBIA                         6                0       91    1726
24 months   ki1101329-Keneba           GAMBIA                         6                1        1    1726
24 months   ki1101329-Keneba           GAMBIA                         7                0       80    1726
24 months   ki1101329-Keneba           GAMBIA                         7                1        3    1726
24 months   ki1101329-Keneba           GAMBIA                         8                0      155    1726
24 months   ki1101329-Keneba           GAMBIA                         8                1        3    1726
24 months   ki1101329-Keneba           GAMBIA                         9                0      156    1726
24 months   ki1101329-Keneba           GAMBIA                         9                1        4    1726
24 months   ki1101329-Keneba           GAMBIA                         10               0      198    1726
24 months   ki1101329-Keneba           GAMBIA                         10               1        2    1726
24 months   ki1101329-Keneba           GAMBIA                         11               0      133    1726
24 months   ki1101329-Keneba           GAMBIA                         11               1        7    1726
24 months   ki1101329-Keneba           GAMBIA                         12               0      147    1726
24 months   ki1101329-Keneba           GAMBIA                         12               1        2    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6                0      168     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6                1       12     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      402     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       10     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      396     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8                1        8     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9                0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9                1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0     996
24 months   ki1114097-CMIN             BANGLADESH                     1                0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     1                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     2                0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     2                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     3                0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     4                0       22     243
24 months   ki1114097-CMIN             BANGLADESH                     4                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     5                0       16     243
24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     6                0        8     243
24 months   ki1114097-CMIN             BANGLADESH                     6                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     7                0       15     243
24 months   ki1114097-CMIN             BANGLADESH                     7                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     8                0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     8                1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     9                0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     10               0       24     243
24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     11               0       25     243
24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     12               0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     12               1        1     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0       41     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0       54     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0       51     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0       45     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       40     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       48     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0       64     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       42     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        1     551
24 months   ki1114097-CMIN             PERU                           1                0       13     429
24 months   ki1114097-CMIN             PERU                           1                1        0     429
24 months   ki1114097-CMIN             PERU                           2                0       39     429
24 months   ki1114097-CMIN             PERU                           2                1        0     429
24 months   ki1114097-CMIN             PERU                           3                0       51     429
24 months   ki1114097-CMIN             PERU                           3                1        0     429
24 months   ki1114097-CMIN             PERU                           4                0       47     429
24 months   ki1114097-CMIN             PERU                           4                1        0     429
24 months   ki1114097-CMIN             PERU                           5                0       33     429
24 months   ki1114097-CMIN             PERU                           5                1        0     429
24 months   ki1114097-CMIN             PERU                           6                0       39     429
24 months   ki1114097-CMIN             PERU                           6                1        1     429
24 months   ki1114097-CMIN             PERU                           7                0       41     429
24 months   ki1114097-CMIN             PERU                           7                1        0     429
24 months   ki1114097-CMIN             PERU                           8                0       34     429
24 months   ki1114097-CMIN             PERU                           8                1        0     429
24 months   ki1114097-CMIN             PERU                           9                0       39     429
24 months   ki1114097-CMIN             PERU                           9                1        0     429
24 months   ki1114097-CMIN             PERU                           10               0       33     429
24 months   ki1114097-CMIN             PERU                           10               1        0     429
24 months   ki1114097-CMIN             PERU                           11               0       32     429
24 months   ki1114097-CMIN             PERU                           11               1        0     429
24 months   ki1114097-CMIN             PERU                           12               0       27     429
24 months   ki1114097-CMIN             PERU                           12               1        0     429
24 months   ki1114097-CONTENT          PERU                           1                0        7     164
24 months   ki1114097-CONTENT          PERU                           1                1        0     164
24 months   ki1114097-CONTENT          PERU                           2                0       14     164
24 months   ki1114097-CONTENT          PERU                           2                1        0     164
24 months   ki1114097-CONTENT          PERU                           3                0       22     164
24 months   ki1114097-CONTENT          PERU                           3                1        0     164
24 months   ki1114097-CONTENT          PERU                           4                0       15     164
24 months   ki1114097-CONTENT          PERU                           4                1        0     164
24 months   ki1114097-CONTENT          PERU                           5                0       14     164
24 months   ki1114097-CONTENT          PERU                           5                1        0     164
24 months   ki1114097-CONTENT          PERU                           6                0       11     164
24 months   ki1114097-CONTENT          PERU                           6                1        0     164
24 months   ki1114097-CONTENT          PERU                           7                0       23     164
24 months   ki1114097-CONTENT          PERU                           7                1        0     164
24 months   ki1114097-CONTENT          PERU                           8                0       14     164
24 months   ki1114097-CONTENT          PERU                           8                1        0     164
24 months   ki1114097-CONTENT          PERU                           9                0       17     164
24 months   ki1114097-CONTENT          PERU                           9                1        0     164
24 months   ki1114097-CONTENT          PERU                           10               0       11     164
24 months   ki1114097-CONTENT          PERU                           10               1        0     164
24 months   ki1114097-CONTENT          PERU                           11               0        6     164
24 months   ki1114097-CONTENT          PERU                           11               1        0     164
24 months   ki1114097-CONTENT          PERU                           12               0       10     164
24 months   ki1114097-CONTENT          PERU                           12               1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1                0      248    3971
24 months   ki1119695-PROBIT           BELARUS                        1                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        2                0      212    3971
24 months   ki1119695-PROBIT           BELARUS                        2                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        3                0      311    3971
24 months   ki1119695-PROBIT           BELARUS                        3                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        4                0      332    3971
24 months   ki1119695-PROBIT           BELARUS                        4                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        5                0      296    3971
24 months   ki1119695-PROBIT           BELARUS                        5                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        6                0      268    3971
24 months   ki1119695-PROBIT           BELARUS                        6                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        7                0      370    3971
24 months   ki1119695-PROBIT           BELARUS                        7                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        8                0      337    3971
24 months   ki1119695-PROBIT           BELARUS                        8                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        9                0      380    3971
24 months   ki1119695-PROBIT           BELARUS                        9                1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        10               0      391    3971
24 months   ki1119695-PROBIT           BELARUS                        10               1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        11               0      376    3971
24 months   ki1119695-PROBIT           BELARUS                        11               1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        12               0      446    3971
24 months   ki1119695-PROBIT           BELARUS                        12               1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       46     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1        1     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0       58     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0       49     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0       43     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0       44     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        6     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0       41     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0       25     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1        2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0       27     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1        3     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0        2     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0        4     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0       20     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1        0     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0       34     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1        3     423
24 months   ki1148112-LCNI-5           MALAWI                         1                0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         2                0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         2                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         3                0       19     563
24 months   ki1148112-LCNI-5           MALAWI                         3                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         4                0       28     563
24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         5                0       30     563
24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         6                0       24     563
24 months   ki1148112-LCNI-5           MALAWI                         6                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         7                0       45     563
24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         8                0       70     563
24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         9                0       63     563
24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         10               0       89     563
24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         11               0       62     563
24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         12               0       63     563
24 months   ki1148112-LCNI-5           MALAWI                         12               1        1     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     1308   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       20   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     1092   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       30   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     1374   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       51   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0      957   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       50   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0      695   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       32   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     1165   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       52   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     1259   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       82   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     1160   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       72   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     1512   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       84   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     1671   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1       72   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     1997   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       70   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     2309   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       54   17168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0     1434    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       34    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0     1604    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       37    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0     1224    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       47    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0     1064    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       42    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      799    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       31    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      948    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       18    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      990    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       12    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      694    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       26    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      237    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1        5    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0        0    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        0    9246


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/d7f5869e-ece4-4691-b88f-235a3cd9416f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d7f5869e-ece4-4691-b88f-235a3cd9416f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d7f5869e-ece4-4691-b88f-235a3cd9416f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d7f5869e-ece4-4691-b88f-235a3cd9416f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0729927   0.0232126   0.1227728
Birth       ki1119695-PROBIT     BELARUS      2                    NA                0.0525657   0.0115748   0.0935566
Birth       ki1119695-PROBIT     BELARUS      3                    NA                0.0690755   0.0248616   0.1132893
Birth       ki1119695-PROBIT     BELARUS      4                    NA                0.0546956   0.0234987   0.0858924
Birth       ki1119695-PROBIT     BELARUS      5                    NA                0.0796178   0.0307804   0.1284553
Birth       ki1119695-PROBIT     BELARUS      6                    NA                0.0647059   0.0336448   0.0957670
Birth       ki1119695-PROBIT     BELARUS      7                    NA                0.0885781   0.0481392   0.1290170
Birth       ki1119695-PROBIT     BELARUS      8                    NA                0.0581930   0.0234977   0.0928882
Birth       ki1119695-PROBIT     BELARUS      9                    NA                0.0702417   0.0205076   0.1199758
Birth       ki1119695-PROBIT     BELARUS      10                   NA                0.0624580   0.0317916   0.0931244
Birth       ki1119695-PROBIT     BELARUS      11                   NA                0.0578453   0.0271874   0.0885031
Birth       ki1119695-PROBIT     BELARUS      12                   NA                0.0609598   0.0250457   0.0968739
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0535280   0.0409640   0.0660920
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0574713   0.0427250   0.0722175
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0557103   0.0420117   0.0694089
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0542299   0.0396111   0.0688487
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0645856   0.0487794   0.0803918
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0763359   0.0602589   0.0924129
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0812044   0.0650326   0.0973762
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0572873   0.0440665   0.0705081
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0545746   0.0419617   0.0671875
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0612245   0.0462140   0.0762350
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0571170   0.0434211   0.0708128
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0632689   0.0491241   0.0774137
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0117322   0.0057854   0.0176791
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0164191   0.0102255   0.0226127
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0173188   0.0103813   0.0242563
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0150576   0.0081695   0.0219457
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0128535   0.0049817   0.0207253
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0145455   0.0063419   0.0227490
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0121012   0.0046487   0.0195537
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0156122   0.0073076   0.0239167
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0255236   0.0164792   0.0345679
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0204943   0.0126789   0.0283097
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0156250   0.0087031   0.0225469
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0122592   0.0055757   0.0189427
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0119403   0.0057261   0.0181545
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0121475   0.0045203   0.0197747
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0142045   0.0071371   0.0212720
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0144435   0.0079921   0.0208949
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0162308   0.0078175   0.0246442
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0108832   0.0036803   0.0180861
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0127592   0.0067495   0.0187688
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0138705   0.0072778   0.0204633
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0105036   0.0056678   0.0153393
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0162406   0.0095863   0.0228949
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0131054   0.0077496   0.0184612
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0177609   0.0103249   0.0251968
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0150602   0.0065347   0.0235858
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0267380   0.0118172   0.0416587
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0357895   0.0200295   0.0515495
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0496524   0.0305400   0.0687648
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0440165   0.0220371   0.0659959
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0427280   0.0264640   0.0589921
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0611484   0.0419641   0.0803327
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0584416   0.0372053   0.0796778
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0526316   0.0372641   0.0679991
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0413081   0.0275322   0.0550839
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0338655   0.0216425   0.0460885
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0228523   0.0130151   0.0326896


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0612419   0.0571066   0.0653771
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0161691   0.0138058   0.0185324
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137219   0.0116409   0.0158029
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0389678   0.0346422   0.0432935


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      2                    1                 0.7201502   0.4486025   1.156071
Birth       ki1119695-PROBIT     BELARUS      3                    1                 0.9463337   0.6583751   1.360239
Birth       ki1119695-PROBIT     BELARUS      4                    1                 0.7493292   0.5101932   1.100552
Birth       ki1119695-PROBIT     BELARUS      5                    1                 1.0907643   0.6823302   1.743682
Birth       ki1119695-PROBIT     BELARUS      6                    1                 0.8864706   0.5043755   1.558026
Birth       ki1119695-PROBIT     BELARUS      7                    1                 1.2135198   0.6601137   2.230874
Birth       ki1119695-PROBIT     BELARUS      8                    1                 0.7972435   0.4148578   1.532084
Birth       ki1119695-PROBIT     BELARUS      9                    1                 0.9623112   0.5167545   1.792036
Birth       ki1119695-PROBIT     BELARUS      10                   1                 0.8556749   0.4862109   1.505889
Birth       ki1119695-PROBIT     BELARUS      11                   1                 0.7924801   0.5018575   1.251400
Birth       ki1119695-PROBIT     BELARUS      12                   1                 0.8351492   0.4497695   1.550737
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.0736677   0.7583069   1.520179
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0407698   0.7408383   1.462130
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0131138   0.7086396   1.448408
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.2065760   0.8595811   1.693645
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4260930   1.0403774   1.954811
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.5170455   1.1151006   2.063874
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.0702305   0.7700534   1.487421
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 1.0195535   0.7334195   1.417319
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.1437848   0.8145894   1.606016
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.0670485   0.7628852   1.492482
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.1819779   0.8547359   1.634507
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.3994849   0.7382020   2.653147
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.4761725   0.7678535   2.837892
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2834367   0.6416246   2.567248
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.0955693   0.4984826   2.407852
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.2397861   0.5828211   2.637292
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0314502   0.4705435   2.260980
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.3307071   0.6351210   2.788101
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 2.1755082   1.1688967   4.048977
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.7468354   0.9196699   3.317967
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.3318015   0.6960775   2.548129
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0449160   0.4902653   2.227058
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.0173536   0.4527395   2.286101
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.1896307   0.6096581   2.321336
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2096432   0.6038761   2.423074
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.3593327   0.6458480   2.861022
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.9114692   0.3903761   2.128143
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0685805   0.5252844   2.173802
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.1616579   0.5825207   2.316568
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.8796725   0.4396106   1.760248
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.3601504   0.6990784   2.646354
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0975783   0.6132313   1.964476
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.4874722   0.7777811   2.844725
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.7754006   0.8161301   3.862187
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 2.3764204   1.1703021   4.825569
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 3.2969206   1.6406848   6.625090
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 2.9226952   1.3799798   6.190052
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 2.8371397   1.5466299   5.204452
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 4.0602524   2.1118331   7.806322
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 3.8805184   1.9623234   7.673772
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 3.4947358   1.8329534   6.663114
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 2.7428563   1.4185553   5.303467
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 2.2486689   1.1497800   4.397808
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.5173927   0.7500130   3.069921


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0070928   -0.0390314   0.0248458
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0077139   -0.0043201   0.0197478
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0044368   -0.0014564   0.0103301
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0017816   -0.0040342   0.0075975
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0239076    0.0151387   0.0326765


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.1076302   -0.7057972   0.2807793
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1259578   -0.0941772   0.3018043
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2744032   -0.1909198   0.5579125
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.1298378   -0.4175895   0.4658663
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.6135212    0.3267462   0.7781433
