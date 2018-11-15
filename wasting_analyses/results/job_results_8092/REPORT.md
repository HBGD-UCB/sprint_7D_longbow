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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        month    swasted   n_cell       n
----------  -------------------------  -----------------------------  ------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              0       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     2              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              0       23     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     3              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     4              1        2     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              0       20     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     5              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              0        8     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     6              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              0       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     7              1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              0       21     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     8              1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              0       19     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     9              1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             0       22     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     10             1        1     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             0       15     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     11             1        0     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             0       25     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     12             1        1     241
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        9     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2              0       19     183
Birth       ki0047075b-MAL-ED          BRAZIL                         2              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3              0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         3              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4              0        8     183
Birth       ki0047075b-MAL-ED          BRAZIL                         4              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5              0       16     183
Birth       ki0047075b-MAL-ED          BRAZIL                         5              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6              0        7     183
Birth       ki0047075b-MAL-ED          BRAZIL                         6              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7              0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         7              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8              0       17     183
Birth       ki0047075b-MAL-ED          BRAZIL                         8              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9              0       27     183
Birth       ki0047075b-MAL-ED          BRAZIL                         9              1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10             0       18     183
Birth       ki0047075b-MAL-ED          BRAZIL                         10             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11             0       15     183
Birth       ki0047075b-MAL-ED          BRAZIL                         11             1        0     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12             0       13     183
Birth       ki0047075b-MAL-ED          BRAZIL                         12             1        0     183
Birth       ki0047075b-MAL-ED          INDIA                          1              0       15     203
Birth       ki0047075b-MAL-ED          INDIA                          1              1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          2              0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          2              1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          3              0       19     203
Birth       ki0047075b-MAL-ED          INDIA                          3              1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          4              0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          4              1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          5              0        7     203
Birth       ki0047075b-MAL-ED          INDIA                          5              1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          6              0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          6              1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          7              0       19     203
Birth       ki0047075b-MAL-ED          INDIA                          7              1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          8              0       16     203
Birth       ki0047075b-MAL-ED          INDIA                          8              1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          9              0       18     203
Birth       ki0047075b-MAL-ED          INDIA                          9              1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          10             0       22     203
Birth       ki0047075b-MAL-ED          INDIA                          10             1        1     203
Birth       ki0047075b-MAL-ED          INDIA                          11             0       20     203
Birth       ki0047075b-MAL-ED          INDIA                          11             1        0     203
Birth       ki0047075b-MAL-ED          INDIA                          12             0       14     203
Birth       ki0047075b-MAL-ED          INDIA                          12             1        0     203
Birth       ki0047075b-MAL-ED          NEPAL                          1              0       15     168
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          2              0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          2              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          3              0       12     168
Birth       ki0047075b-MAL-ED          NEPAL                          3              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          4              0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          4              1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          5              0       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          5              1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          6              0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          6              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          7              0       17     168
Birth       ki0047075b-MAL-ED          NEPAL                          7              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          8              0       13     168
Birth       ki0047075b-MAL-ED          NEPAL                          8              1        1     168
Birth       ki0047075b-MAL-ED          NEPAL                          9              0        9     168
Birth       ki0047075b-MAL-ED          NEPAL                          9              1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          10             0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          10             1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          11             0       16     168
Birth       ki0047075b-MAL-ED          NEPAL                          11             1        0     168
Birth       ki0047075b-MAL-ED          NEPAL                          12             0       10     168
Birth       ki0047075b-MAL-ED          NEPAL                          12             1        0     168
Birth       ki0047075b-MAL-ED          PERU                           1              0       35     279
Birth       ki0047075b-MAL-ED          PERU                           1              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           2              0       22     279
Birth       ki0047075b-MAL-ED          PERU                           2              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           3              0       22     279
Birth       ki0047075b-MAL-ED          PERU                           3              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           4              0       20     279
Birth       ki0047075b-MAL-ED          PERU                           4              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           5              0       24     279
Birth       ki0047075b-MAL-ED          PERU                           5              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           6              0       18     279
Birth       ki0047075b-MAL-ED          PERU                           6              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           7              0       23     279
Birth       ki0047075b-MAL-ED          PERU                           7              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           8              0       19     279
Birth       ki0047075b-MAL-ED          PERU                           8              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           9              0       22     279
Birth       ki0047075b-MAL-ED          PERU                           9              1        0     279
Birth       ki0047075b-MAL-ED          PERU                           10             0       23     279
Birth       ki0047075b-MAL-ED          PERU                           10             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           11             0       31     279
Birth       ki0047075b-MAL-ED          PERU                           11             1        0     279
Birth       ki0047075b-MAL-ED          PERU                           12             0       20     279
Birth       ki0047075b-MAL-ED          PERU                           12             1        0     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       27     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       23     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       17     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       13     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       17     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       22     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              0       10     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       21     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       28     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       26     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        1     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       39     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       10     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        4     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       11     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       14     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0        7     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0        8     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       13     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        0     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       15     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        1     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              0        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              0        9      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              0        7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              0        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              0        6      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9              1        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10             1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             0       11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11             1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             0        3      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12             1        1      88
Birth       ki1000108-IRC              INDIA                          1              0       28     343
Birth       ki1000108-IRC              INDIA                          1              1        2     343
Birth       ki1000108-IRC              INDIA                          2              0       21     343
Birth       ki1000108-IRC              INDIA                          2              1        1     343
Birth       ki1000108-IRC              INDIA                          3              0       21     343
Birth       ki1000108-IRC              INDIA                          3              1        5     343
Birth       ki1000108-IRC              INDIA                          4              0       17     343
Birth       ki1000108-IRC              INDIA                          4              1        2     343
Birth       ki1000108-IRC              INDIA                          5              0       11     343
Birth       ki1000108-IRC              INDIA                          5              1        4     343
Birth       ki1000108-IRC              INDIA                          6              0       20     343
Birth       ki1000108-IRC              INDIA                          6              1        5     343
Birth       ki1000108-IRC              INDIA                          7              0       26     343
Birth       ki1000108-IRC              INDIA                          7              1        5     343
Birth       ki1000108-IRC              INDIA                          8              0       31     343
Birth       ki1000108-IRC              INDIA                          8              1        6     343
Birth       ki1000108-IRC              INDIA                          9              0       17     343
Birth       ki1000108-IRC              INDIA                          9              1        7     343
Birth       ki1000108-IRC              INDIA                          10             0       24     343
Birth       ki1000108-IRC              INDIA                          10             1        8     343
Birth       ki1000108-IRC              INDIA                          11             0       36     343
Birth       ki1000108-IRC              INDIA                          11             1        3     343
Birth       ki1000108-IRC              INDIA                          12             0       37     343
Birth       ki1000108-IRC              INDIA                          12             1        6     343
Birth       ki1000109-EE               PAKISTAN                       1              0        0       2
Birth       ki1000109-EE               PAKISTAN                       1              1        0       2
Birth       ki1000109-EE               PAKISTAN                       2              0        0       2
Birth       ki1000109-EE               PAKISTAN                       2              1        0       2
Birth       ki1000109-EE               PAKISTAN                       3              0        0       2
Birth       ki1000109-EE               PAKISTAN                       3              1        0       2
Birth       ki1000109-EE               PAKISTAN                       4              0        0       2
Birth       ki1000109-EE               PAKISTAN                       4              1        0       2
Birth       ki1000109-EE               PAKISTAN                       5              0        0       2
Birth       ki1000109-EE               PAKISTAN                       5              1        0       2
Birth       ki1000109-EE               PAKISTAN                       6              0        0       2
Birth       ki1000109-EE               PAKISTAN                       6              1        0       2
Birth       ki1000109-EE               PAKISTAN                       7              0        0       2
Birth       ki1000109-EE               PAKISTAN                       7              1        0       2
Birth       ki1000109-EE               PAKISTAN                       8              0        0       2
Birth       ki1000109-EE               PAKISTAN                       8              1        0       2
Birth       ki1000109-EE               PAKISTAN                       9              0        0       2
Birth       ki1000109-EE               PAKISTAN                       9              1        0       2
Birth       ki1000109-EE               PAKISTAN                       10             0        0       2
Birth       ki1000109-EE               PAKISTAN                       10             1        0       2
Birth       ki1000109-EE               PAKISTAN                       11             0        0       2
Birth       ki1000109-EE               PAKISTAN                       11             1        0       2
Birth       ki1000109-EE               PAKISTAN                       12             0        2       2
Birth       ki1000109-EE               PAKISTAN                       12             1        0       2
Birth       ki1000109-ResPak           PAKISTAN                       1              0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       1              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       2              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       3              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       4              0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       4              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       5              0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       5              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       6              0        2       6
Birth       ki1000109-ResPak           PAKISTAN                       6              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       7              0        1       6
Birth       ki1000109-ResPak           PAKISTAN                       7              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       8              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9              0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       9              1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       10             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       11             1        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12             0        0       6
Birth       ki1000109-ResPak           PAKISTAN                       12             1        0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0       14     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              0        7     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              0       16     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          4              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          5              1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              0       12     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          6              1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              0        6     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          7              1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              0       15     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          8              1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              0       19     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          9              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             0       18     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          10             1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             0       17     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          11             1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          12             1        0     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              0        8      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              1        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     2              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     3              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     4              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     5              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     6              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     7              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     8              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     9              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             0        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     10             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             0        2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     11             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             0        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     12             1        0      28
Birth       ki1114097-CMIN             BANGLADESH                     1              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     1              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     2              0        2       8
Birth       ki1114097-CMIN             BANGLADESH                     2              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     3              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     4              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     5              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     5              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     6              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7              0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     7              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     8              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     8              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     9              0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     9              1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     10             0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     10             1        0       8
Birth       ki1114097-CMIN             BANGLADESH                     11             0        1       8
Birth       ki1114097-CMIN             BANGLADESH                     11             1        1       8
Birth       ki1114097-CMIN             BANGLADESH                     12             0        0       8
Birth       ki1114097-CMIN             BANGLADESH                     12             1        0       8
Birth       ki1114097-CMIN             BRAZIL                         1              0       13     111
Birth       ki1114097-CMIN             BRAZIL                         1              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         2              0        6     111
Birth       ki1114097-CMIN             BRAZIL                         2              1        1     111
Birth       ki1114097-CMIN             BRAZIL                         3              0       12     111
Birth       ki1114097-CMIN             BRAZIL                         3              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         4              0        9     111
Birth       ki1114097-CMIN             BRAZIL                         4              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         5              0        5     111
Birth       ki1114097-CMIN             BRAZIL                         5              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         6              0        6     111
Birth       ki1114097-CMIN             BRAZIL                         6              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         7              0        4     111
Birth       ki1114097-CMIN             BRAZIL                         7              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         8              0       12     111
Birth       ki1114097-CMIN             BRAZIL                         8              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         9              0        8     111
Birth       ki1114097-CMIN             BRAZIL                         9              1        0     111
Birth       ki1114097-CMIN             BRAZIL                         10             0       14     111
Birth       ki1114097-CMIN             BRAZIL                         10             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         11             0       11     111
Birth       ki1114097-CMIN             BRAZIL                         11             1        0     111
Birth       ki1114097-CMIN             BRAZIL                         12             0       10     111
Birth       ki1114097-CMIN             BRAZIL                         12             1        0     111
Birth       ki1114097-CMIN             PERU                           1              0        1      10
Birth       ki1114097-CMIN             PERU                           1              1        0      10
Birth       ki1114097-CMIN             PERU                           2              0        1      10
Birth       ki1114097-CMIN             PERU                           2              1        0      10
Birth       ki1114097-CMIN             PERU                           3              0        2      10
Birth       ki1114097-CMIN             PERU                           3              1        0      10
Birth       ki1114097-CMIN             PERU                           4              0        3      10
Birth       ki1114097-CMIN             PERU                           4              1        0      10
Birth       ki1114097-CMIN             PERU                           5              0        0      10
Birth       ki1114097-CMIN             PERU                           5              1        0      10
Birth       ki1114097-CMIN             PERU                           6              0        0      10
Birth       ki1114097-CMIN             PERU                           6              1        0      10
Birth       ki1114097-CMIN             PERU                           7              0        0      10
Birth       ki1114097-CMIN             PERU                           7              1        0      10
Birth       ki1114097-CMIN             PERU                           8              0        1      10
Birth       ki1114097-CMIN             PERU                           8              1        0      10
Birth       ki1114097-CMIN             PERU                           9              0        2      10
Birth       ki1114097-CMIN             PERU                           9              1        0      10
Birth       ki1114097-CMIN             PERU                           10             0        0      10
Birth       ki1114097-CMIN             PERU                           10             1        0      10
Birth       ki1114097-CMIN             PERU                           11             0        0      10
Birth       ki1114097-CMIN             PERU                           11             1        0      10
Birth       ki1114097-CMIN             PERU                           12             0        0      10
Birth       ki1114097-CMIN             PERU                           12             1        0      10
Birth       ki1114097-CONTENT          PERU                           1              0        0       2
Birth       ki1114097-CONTENT          PERU                           1              1        0       2
Birth       ki1114097-CONTENT          PERU                           2              0        0       2
Birth       ki1114097-CONTENT          PERU                           2              1        0       2
Birth       ki1114097-CONTENT          PERU                           3              0        0       2
Birth       ki1114097-CONTENT          PERU                           3              1        0       2
Birth       ki1114097-CONTENT          PERU                           4              0        0       2
Birth       ki1114097-CONTENT          PERU                           4              1        0       2
Birth       ki1114097-CONTENT          PERU                           5              0        2       2
Birth       ki1114097-CONTENT          PERU                           5              1        0       2
Birth       ki1114097-CONTENT          PERU                           6              0        0       2
Birth       ki1114097-CONTENT          PERU                           6              1        0       2
Birth       ki1114097-CONTENT          PERU                           7              0        0       2
Birth       ki1114097-CONTENT          PERU                           7              1        0       2
Birth       ki1114097-CONTENT          PERU                           8              0        0       2
Birth       ki1114097-CONTENT          PERU                           8              1        0       2
Birth       ki1114097-CONTENT          PERU                           9              0        0       2
Birth       ki1114097-CONTENT          PERU                           9              1        0       2
Birth       ki1114097-CONTENT          PERU                           10             0        0       2
Birth       ki1114097-CONTENT          PERU                           10             1        0       2
Birth       ki1114097-CONTENT          PERU                           11             0        0       2
Birth       ki1114097-CONTENT          PERU                           11             1        0       2
Birth       ki1114097-CONTENT          PERU                           12             0        0       2
Birth       ki1114097-CONTENT          PERU                           12             1        0       2
Birth       ki1119695-PROBIT           BELARUS                        1              0      791   13824
Birth       ki1119695-PROBIT           BELARUS                        1              1       63   13824
Birth       ki1119695-PROBIT           BELARUS                        2              0      746   13824
Birth       ki1119695-PROBIT           BELARUS                        2              1       40   13824
Birth       ki1119695-PROBIT           BELARUS                        3              0      894   13824
Birth       ki1119695-PROBIT           BELARUS                        3              1       67   13824
Birth       ki1119695-PROBIT           BELARUS                        4              0      905   13824
Birth       ki1119695-PROBIT           BELARUS                        4              1       50   13824
Birth       ki1119695-PROBIT           BELARUS                        5              0      871   13824
Birth       ki1119695-PROBIT           BELARUS                        5              1       77   13824
Birth       ki1119695-PROBIT           BELARUS                        6              0      942   13824
Birth       ki1119695-PROBIT           BELARUS                        6              1       65   13824
Birth       ki1119695-PROBIT           BELARUS                        7              0     1168   13824
Birth       ki1119695-PROBIT           BELARUS                        7              1      108   13824
Birth       ki1119695-PROBIT           BELARUS                        8              0     1236   13824
Birth       ki1119695-PROBIT           BELARUS                        8              1       82   13824
Birth       ki1119695-PROBIT           BELARUS                        9              0     1219   13824
Birth       ki1119695-PROBIT           BELARUS                        9              1       94   13824
Birth       ki1119695-PROBIT           BELARUS                        10             0     1405   13824
Birth       ki1119695-PROBIT           BELARUS                        10             1       93   13824
Birth       ki1119695-PROBIT           BELARUS                        11             0     1314   13824
Birth       ki1119695-PROBIT           BELARUS                        11             1       78   13824
Birth       ki1119695-PROBIT           BELARUS                        12             0     1422   13824
Birth       ki1119695-PROBIT           BELARUS                        12             1       94   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     1173   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1       65   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0      890   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1       56   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              0     1001   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3              1       59   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              0      887   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4              1       50   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              0      852   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5              1       61   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              0      969   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6              1       77   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              0     1011   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7              1       87   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              0     1090   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8              1       73   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              0     1199   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9              1       65   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             0      919   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10             1       62   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             0     1009   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11             1       59   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             0     1102   12893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12             1       77   12893
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     2866   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1       34   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0     2522   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1       36   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              0     3046   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3              1       62   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              0     2270   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4              1       34   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              0     1550   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5              1       18   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              0     1618   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6              1       26   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              0     1796   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7              1       22   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              0     2362   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8              1       38   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              0     2968   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9              1       78   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             0     3254   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10             1       64   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             0     3282   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11             1       56   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             0     3376   31418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12             1       40   31418
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              0      220    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              0      262    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3              1        4    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              0      272    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4              1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              0      204    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5              1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              0      148    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6              1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              0      122    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              0       62    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              0       50    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9              1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             0       16    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10             1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11             0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11             1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12             0        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12             1        0    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0       17     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              0       20     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     2              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              0       25     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     3              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     4              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              0       21     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     5              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              0        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     6              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              0       19     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     7              1        1     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     8              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     9              1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             0       22     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     10             1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             0       16     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     11             1        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             0       26     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     12             1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       13     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              0       24     209
6 months    ki0047075b-MAL-ED          BRAZIL                         2              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              0       18     209
6 months    ki0047075b-MAL-ED          BRAZIL                         3              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         4              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         5              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6              0       10     209
6 months    ki0047075b-MAL-ED          BRAZIL                         6              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              0       17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         7              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         8              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         9              1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             0       21     209
6 months    ki0047075b-MAL-ED          BRAZIL                         10             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             0       19     209
6 months    ki0047075b-MAL-ED          BRAZIL                         11             1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             0       14     209
6 months    ki0047075b-MAL-ED          BRAZIL                         12             1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1              0       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          2              0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          2              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          3              0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          3              1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          4              0       15     236
6 months    ki0047075b-MAL-ED          INDIA                          4              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          5              0        8     236
6 months    ki0047075b-MAL-ED          INDIA                          5              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          6              0       17     236
6 months    ki0047075b-MAL-ED          INDIA                          6              1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          7              0       22     236
6 months    ki0047075b-MAL-ED          INDIA                          7              1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          8              0       20     236
6 months    ki0047075b-MAL-ED          INDIA                          8              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          9              0       21     236
6 months    ki0047075b-MAL-ED          INDIA                          9              1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          10             0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          10             1        1     236
6 months    ki0047075b-MAL-ED          INDIA                          11             0       25     236
6 months    ki0047075b-MAL-ED          INDIA                          11             1        0     236
6 months    ki0047075b-MAL-ED          INDIA                          12             0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          12             1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       25     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          2              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          3              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          4              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              0       20     236
6 months    ki0047075b-MAL-ED          NEPAL                          5              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              0       18     236
6 months    ki0047075b-MAL-ED          NEPAL                          6              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              0       21     236
6 months    ki0047075b-MAL-ED          NEPAL                          7              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              0       19     236
6 months    ki0047075b-MAL-ED          NEPAL                          8              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              0       17     236
6 months    ki0047075b-MAL-ED          NEPAL                          9              1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             0       22     236
6 months    ki0047075b-MAL-ED          NEPAL                          10             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             0       23     236
6 months    ki0047075b-MAL-ED          NEPAL                          11             1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             0       16     236
6 months    ki0047075b-MAL-ED          NEPAL                          12             1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1              0       37     273
6 months    ki0047075b-MAL-ED          PERU                           1              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           2              0       22     273
6 months    ki0047075b-MAL-ED          PERU                           2              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           3              0       21     273
6 months    ki0047075b-MAL-ED          PERU                           3              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           4              0       20     273
6 months    ki0047075b-MAL-ED          PERU                           4              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           5              0       24     273
6 months    ki0047075b-MAL-ED          PERU                           5              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           6              0       19     273
6 months    ki0047075b-MAL-ED          PERU                           6              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           7              0       21     273
6 months    ki0047075b-MAL-ED          PERU                           7              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           8              0       17     273
6 months    ki0047075b-MAL-ED          PERU                           8              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           9              0       22     273
6 months    ki0047075b-MAL-ED          PERU                           9              1        0     273
6 months    ki0047075b-MAL-ED          PERU                           10             0       19     273
6 months    ki0047075b-MAL-ED          PERU                           10             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           11             0       33     273
6 months    ki0047075b-MAL-ED          PERU                           11             1        0     273
6 months    ki0047075b-MAL-ED          PERU                           12             0       18     273
6 months    ki0047075b-MAL-ED          PERU                           12             1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       26     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       18     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       17     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        8     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       20     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       22     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       23     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       35     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       23     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       27     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       22     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0       10     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       13     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       19     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       25     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       12     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       21     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       18     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       29     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       28     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        0     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0       27     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              0       23     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2              1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              0       24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3              1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              0       28     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4              1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              0       42     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5              1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              0       33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6              1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              0       32     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7              1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              0       40     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8              1        1     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              0       24     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9              1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             0       19     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10             1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             0       38     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11             1        2     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             0       26     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12             1        2     368
6 months    ki1000108-IRC              INDIA                          1              0       34     408
6 months    ki1000108-IRC              INDIA                          1              1        2     408
6 months    ki1000108-IRC              INDIA                          2              0       25     408
6 months    ki1000108-IRC              INDIA                          2              1        2     408
6 months    ki1000108-IRC              INDIA                          3              0       29     408
6 months    ki1000108-IRC              INDIA                          3              1        0     408
6 months    ki1000108-IRC              INDIA                          4              0       22     408
6 months    ki1000108-IRC              INDIA                          4              1        0     408
6 months    ki1000108-IRC              INDIA                          5              0       20     408
6 months    ki1000108-IRC              INDIA                          5              1        1     408
6 months    ki1000108-IRC              INDIA                          6              0       36     408
6 months    ki1000108-IRC              INDIA                          6              1        1     408
6 months    ki1000108-IRC              INDIA                          7              0       33     408
6 months    ki1000108-IRC              INDIA                          7              1        3     408
6 months    ki1000108-IRC              INDIA                          8              0       41     408
6 months    ki1000108-IRC              INDIA                          8              1        4     408
6 months    ki1000108-IRC              INDIA                          9              0       23     408
6 months    ki1000108-IRC              INDIA                          9              1        2     408
6 months    ki1000108-IRC              INDIA                          10             0       36     408
6 months    ki1000108-IRC              INDIA                          10             1        1     408
6 months    ki1000108-IRC              INDIA                          11             0       39     408
6 months    ki1000108-IRC              INDIA                          11             1        2     408
6 months    ki1000108-IRC              INDIA                          12             0       48     408
6 months    ki1000108-IRC              INDIA                          12             1        4     408
6 months    ki1000109-EE               PAKISTAN                       1              0      172     752
6 months    ki1000109-EE               PAKISTAN                       1              1        8     752
6 months    ki1000109-EE               PAKISTAN                       2              0      160     752
6 months    ki1000109-EE               PAKISTAN                       2              1        2     752
6 months    ki1000109-EE               PAKISTAN                       3              0       84     752
6 months    ki1000109-EE               PAKISTAN                       3              1        0     752
6 months    ki1000109-EE               PAKISTAN                       4              0       56     752
6 months    ki1000109-EE               PAKISTAN                       4              1        2     752
6 months    ki1000109-EE               PAKISTAN                       5              0        4     752
6 months    ki1000109-EE               PAKISTAN                       5              1        0     752
6 months    ki1000109-EE               PAKISTAN                       6              0        0     752
6 months    ki1000109-EE               PAKISTAN                       6              1        0     752
6 months    ki1000109-EE               PAKISTAN                       7              0        0     752
6 months    ki1000109-EE               PAKISTAN                       7              1        0     752
6 months    ki1000109-EE               PAKISTAN                       8              0        0     752
6 months    ki1000109-EE               PAKISTAN                       8              1        0     752
6 months    ki1000109-EE               PAKISTAN                       9              0        0     752
6 months    ki1000109-EE               PAKISTAN                       9              1        0     752
6 months    ki1000109-EE               PAKISTAN                       10             0        0     752
6 months    ki1000109-EE               PAKISTAN                       10             1        0     752
6 months    ki1000109-EE               PAKISTAN                       11             0       96     752
6 months    ki1000109-EE               PAKISTAN                       11             1        2     752
6 months    ki1000109-EE               PAKISTAN                       12             0      162     752
6 months    ki1000109-EE               PAKISTAN                       12             1        4     752
6 months    ki1000109-ResPak           PAKISTAN                       1              0        6     235
6 months    ki1000109-ResPak           PAKISTAN                       1              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       2              0       12     235
6 months    ki1000109-ResPak           PAKISTAN                       2              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       3              0       13     235
6 months    ki1000109-ResPak           PAKISTAN                       3              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       4              0       25     235
6 months    ki1000109-ResPak           PAKISTAN                       4              1        3     235
6 months    ki1000109-ResPak           PAKISTAN                       5              0       28     235
6 months    ki1000109-ResPak           PAKISTAN                       5              1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       6              0       46     235
6 months    ki1000109-ResPak           PAKISTAN                       6              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       7              0       31     235
6 months    ki1000109-ResPak           PAKISTAN                       7              1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       8              0       33     235
6 months    ki1000109-ResPak           PAKISTAN                       8              1        2     235
6 months    ki1000109-ResPak           PAKISTAN                       9              0       20     235
6 months    ki1000109-ResPak           PAKISTAN                       9              1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       10             0        7     235
6 months    ki1000109-ResPak           PAKISTAN                       10             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       11             0        3     235
6 months    ki1000109-ResPak           PAKISTAN                       11             1        0     235
6 months    ki1000109-ResPak           PAKISTAN                       12             0        2     235
6 months    ki1000109-ResPak           PAKISTAN                       12             1        0     235
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0       79    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1        6    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0       77    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              0       76    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3              1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              0       73    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          4              1        2    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              0       76    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          5              1        0    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              0      100    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          6              1        2    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              0      114    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          7              1        1    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              0      151    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          8              1        1    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              0      161    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          9              1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             0      143    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          10             1        5    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             0      117    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          11             1        9    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             0      124    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          12             1        5    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       58     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       37     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              0       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3              1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4              1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              0       27     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5              1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              0       29     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6              1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              0       16     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              0        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              0       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10             1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             0       44     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11             1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             0       59     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12             1        3     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              0       49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              0       49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     2              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              0       49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     3              1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              0       44     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     4              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              0       39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     5              1        1     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              0       39     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     6              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              0       45     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     7              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              0       38     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     8              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              0       30     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     9              1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             0       52     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     10             1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             0       49     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     11             1        0     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             0       48     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     12             1        2     536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      198    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      137    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0      150    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0      138    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0      159    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0      143    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0      144    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0      174    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0      195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        3    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0      195    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0      186    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        1    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0      197    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        4    2028
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              0       18     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              0       21     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              0       27     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              0       31     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              0       39     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              0       24     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              0       19     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              0       34     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9              1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             0       29     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             0       28     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11             1        0     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             0       10     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12             1        0     299
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          4              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          5              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6              0        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          6              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7              0      238    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          7              1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8              0      432    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          8              1        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9              0      402    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          9              1        6    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10             0       26    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          10             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11             0        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          11             1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12             0        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          12             1        0    1126
6 months    ki1114097-CMIN             BANGLADESH                     1              0       25     243
6 months    ki1114097-CMIN             BANGLADESH                     1              1        3     243
6 months    ki1114097-CMIN             BANGLADESH                     2              0       29     243
6 months    ki1114097-CMIN             BANGLADESH                     2              1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     3              0       18     243
6 months    ki1114097-CMIN             BANGLADESH                     3              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     4              0       17     243
6 months    ki1114097-CMIN             BANGLADESH                     4              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     5              0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     5              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     6              0       22     243
6 months    ki1114097-CMIN             BANGLADESH                     6              1        1     243
6 months    ki1114097-CMIN             BANGLADESH                     7              0       12     243
6 months    ki1114097-CMIN             BANGLADESH                     7              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     8              0       13     243
6 months    ki1114097-CMIN             BANGLADESH                     8              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     9              0       16     243
6 months    ki1114097-CMIN             BANGLADESH                     9              1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     10             0       20     243
6 months    ki1114097-CMIN             BANGLADESH                     10             1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     11             0        2     243
6 months    ki1114097-CMIN             BANGLADESH                     11             1        0     243
6 months    ki1114097-CMIN             BANGLADESH                     12             0       44     243
6 months    ki1114097-CMIN             BANGLADESH                     12             1        0     243
6 months    ki1114097-CMIN             BRAZIL                         1              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         1              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         2              0        6     108
6 months    ki1114097-CMIN             BRAZIL                         2              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         3              0       13     108
6 months    ki1114097-CMIN             BRAZIL                         3              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         4              0       10     108
6 months    ki1114097-CMIN             BRAZIL                         4              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         5              0        5     108
6 months    ki1114097-CMIN             BRAZIL                         5              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         6              0        6     108
6 months    ki1114097-CMIN             BRAZIL                         6              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         7              0        4     108
6 months    ki1114097-CMIN             BRAZIL                         7              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         8              0       11     108
6 months    ki1114097-CMIN             BRAZIL                         8              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         9              0        8     108
6 months    ki1114097-CMIN             BRAZIL                         9              1        0     108
6 months    ki1114097-CMIN             BRAZIL                         10             0       15     108
6 months    ki1114097-CMIN             BRAZIL                         10             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         11             0       12     108
6 months    ki1114097-CMIN             BRAZIL                         11             1        0     108
6 months    ki1114097-CMIN             BRAZIL                         12             0        8     108
6 months    ki1114097-CMIN             BRAZIL                         12             1        0     108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              0       16     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1              1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              0       85     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              0      114     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3              1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              0      124     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4              1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              0      109     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5              1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              0       59     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              0       40     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7              1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              0       37     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8              1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              0       96     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9              1        2     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             0       33     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10             1        1     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             0       47     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11             1        0     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             0       79     849
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12             1        0     849
6 months    ki1114097-CMIN             PERU                           1              0       41     636
6 months    ki1114097-CMIN             PERU                           1              1        0     636
6 months    ki1114097-CMIN             PERU                           2              0       54     636
6 months    ki1114097-CMIN             PERU                           2              1        2     636
6 months    ki1114097-CMIN             PERU                           3              0       68     636
6 months    ki1114097-CMIN             PERU                           3              1        1     636
6 months    ki1114097-CMIN             PERU                           4              0       69     636
6 months    ki1114097-CMIN             PERU                           4              1        0     636
6 months    ki1114097-CMIN             PERU                           5              0       70     636
6 months    ki1114097-CMIN             PERU                           5              1        0     636
6 months    ki1114097-CMIN             PERU                           6              0       48     636
6 months    ki1114097-CMIN             PERU                           6              1        0     636
6 months    ki1114097-CMIN             PERU                           7              0       43     636
6 months    ki1114097-CMIN             PERU                           7              1        0     636
6 months    ki1114097-CMIN             PERU                           8              0       54     636
6 months    ki1114097-CMIN             PERU                           8              1        0     636
6 months    ki1114097-CMIN             PERU                           9              0       42     636
6 months    ki1114097-CMIN             PERU                           9              1        0     636
6 months    ki1114097-CMIN             PERU                           10             0       37     636
6 months    ki1114097-CMIN             PERU                           10             1        0     636
6 months    ki1114097-CMIN             PERU                           11             0       65     636
6 months    ki1114097-CMIN             PERU                           11             1        0     636
6 months    ki1114097-CMIN             PERU                           12             0       42     636
6 months    ki1114097-CMIN             PERU                           12             1        0     636
6 months    ki1114097-CONTENT          PERU                           1              0        9     215
6 months    ki1114097-CONTENT          PERU                           1              1        0     215
6 months    ki1114097-CONTENT          PERU                           2              0       13     215
6 months    ki1114097-CONTENT          PERU                           2              1        0     215
6 months    ki1114097-CONTENT          PERU                           3              0       27     215
6 months    ki1114097-CONTENT          PERU                           3              1        0     215
6 months    ki1114097-CONTENT          PERU                           4              0       18     215
6 months    ki1114097-CONTENT          PERU                           4              1        0     215
6 months    ki1114097-CONTENT          PERU                           5              0       25     215
6 months    ki1114097-CONTENT          PERU                           5              1        0     215
6 months    ki1114097-CONTENT          PERU                           6              0       14     215
6 months    ki1114097-CONTENT          PERU                           6              1        0     215
6 months    ki1114097-CONTENT          PERU                           7              0       16     215
6 months    ki1114097-CONTENT          PERU                           7              1        0     215
6 months    ki1114097-CONTENT          PERU                           8              0       26     215
6 months    ki1114097-CONTENT          PERU                           8              1        0     215
6 months    ki1114097-CONTENT          PERU                           9              0       19     215
6 months    ki1114097-CONTENT          PERU                           9              1        0     215
6 months    ki1114097-CONTENT          PERU                           10             0       23     215
6 months    ki1114097-CONTENT          PERU                           10             1        0     215
6 months    ki1114097-CONTENT          PERU                           11             0       18     215
6 months    ki1114097-CONTENT          PERU                           11             1        0     215
6 months    ki1114097-CONTENT          PERU                           12             0        7     215
6 months    ki1114097-CONTENT          PERU                           12             1        0     215
6 months    ki1119695-PROBIT           BELARUS                        1              0     1100   15757
6 months    ki1119695-PROBIT           BELARUS                        1              1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        2              0      949   15757
6 months    ki1119695-PROBIT           BELARUS                        2              1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        3              0     1113   15757
6 months    ki1119695-PROBIT           BELARUS                        3              1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        4              0     1070   15757
6 months    ki1119695-PROBIT           BELARUS                        4              1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        5              0     1094   15757
6 months    ki1119695-PROBIT           BELARUS                        5              1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        6              0     1120   15757
6 months    ki1119695-PROBIT           BELARUS                        6              1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        7              0     1363   15757
6 months    ki1119695-PROBIT           BELARUS                        7              1        3   15757
6 months    ki1119695-PROBIT           BELARUS                        8              0     1495   15757
6 months    ki1119695-PROBIT           BELARUS                        8              1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        9              0     1481   15757
6 months    ki1119695-PROBIT           BELARUS                        9              1        0   15757
6 months    ki1119695-PROBIT           BELARUS                        10             0     1668   15757
6 months    ki1119695-PROBIT           BELARUS                        10             1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        11             0     1587   15757
6 months    ki1119695-PROBIT           BELARUS                        11             1        2   15757
6 months    ki1119695-PROBIT           BELARUS                        12             0     1701   15757
6 months    ki1119695-PROBIT           BELARUS                        12             1        2   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0      794    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       11    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0      565    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1        8    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              0      693    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3              1        8    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              0      651    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4              1        5    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              0      592    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5              1        5    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              0      640    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6              1       12    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              0      632    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7              1        4    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              0      723    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8              1        6    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              0      754    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9              1        9    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             0      597    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10             1        2    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             0      720    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11             1        5    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             0      809    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12             1        4    8249
6 months    ki1148112-LCNI-5           MALAWI                         1              0       55     839
6 months    ki1148112-LCNI-5           MALAWI                         1              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         2              0      114     839
6 months    ki1148112-LCNI-5           MALAWI                         2              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         3              0       98     839
6 months    ki1148112-LCNI-5           MALAWI                         3              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         4              0      110     839
6 months    ki1148112-LCNI-5           MALAWI                         4              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         5              0      111     839
6 months    ki1148112-LCNI-5           MALAWI                         5              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         6              0       91     839
6 months    ki1148112-LCNI-5           MALAWI                         6              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         7              0       72     839
6 months    ki1148112-LCNI-5           MALAWI                         7              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         8              0       41     839
6 months    ki1148112-LCNI-5           MALAWI                         8              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         9              0       29     839
6 months    ki1148112-LCNI-5           MALAWI                         9              1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         10             0       35     839
6 months    ki1148112-LCNI-5           MALAWI                         10             1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         11             0       49     839
6 months    ki1148112-LCNI-5           MALAWI                         11             1        0     839
6 months    ki1148112-LCNI-5           MALAWI                         12             0       34     839
6 months    ki1148112-LCNI-5           MALAWI                         12             1        0     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0     2681   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1       32   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0     2343   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1       28   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              0     2800   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3              1       38   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              0     2339   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4              1       36   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              0     2250   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5              1       38   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              0     2284   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6              1       24   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              0     2433   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7              1       40   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              0     2899   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8              1       32   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              0     3085   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9              1       38   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             0     3308   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10             1       58   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             0     3360   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11             1       40   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             0     3281   33523
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12             1       56   33523
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0      103    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              0      327    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2              1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              0      843    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3              1        8    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              0     1674    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4              1       18    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              0     1161    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5              1       10    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              0      862    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6              1        6    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              0     1652    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7              1       20    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              0     1015    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8              1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              0      757    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9              1        2    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             0      556    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10             1        1    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             0      294    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11             1        0    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             0      147    9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12             1        0    9456
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              0       17     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     2              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     3              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     4              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     5              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              0        5     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     6              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     7              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     8              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              0       19     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     9              1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             0       20     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     10             1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             0       10     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     11             1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             0       26     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     12             1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       13     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              0       17     169
24 months   ki0047075b-MAL-ED          BRAZIL                         2              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         3              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              0        9     169
24 months   ki0047075b-MAL-ED          BRAZIL                         4              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         5              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6              0        5     169
24 months   ki0047075b-MAL-ED          BRAZIL                         6              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         7              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              0       14     169
24 months   ki0047075b-MAL-ED          BRAZIL                         8              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         9              1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         10             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             0       16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         11             1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             0       12     169
24 months   ki0047075b-MAL-ED          BRAZIL                         12             1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1              0       18     227
24 months   ki0047075b-MAL-ED          INDIA                          1              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          2              0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          2              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          3              0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          3              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          4              0       14     227
24 months   ki0047075b-MAL-ED          INDIA                          4              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          5              0        8     227
24 months   ki0047075b-MAL-ED          INDIA                          5              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          6              0       15     227
24 months   ki0047075b-MAL-ED          INDIA                          6              1        2     227
24 months   ki0047075b-MAL-ED          INDIA                          7              0       23     227
24 months   ki0047075b-MAL-ED          INDIA                          7              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          8              0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          8              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          9              0       19     227
24 months   ki0047075b-MAL-ED          INDIA                          9              1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          10             0       26     227
24 months   ki0047075b-MAL-ED          INDIA                          10             1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          11             0       24     227
24 months   ki0047075b-MAL-ED          INDIA                          11             1        0     227
24 months   ki0047075b-MAL-ED          INDIA                          12             0       20     227
24 months   ki0047075b-MAL-ED          INDIA                          12             1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       23     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              0       15     228
24 months   ki0047075b-MAL-ED          NEPAL                          2              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          3              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          4              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          5              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              0       18     228
24 months   ki0047075b-MAL-ED          NEPAL                          6              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              0       20     228
24 months   ki0047075b-MAL-ED          NEPAL                          7              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              0       19     228
24 months   ki0047075b-MAL-ED          NEPAL                          8              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          9              1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          10             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             0       22     228
24 months   ki0047075b-MAL-ED          NEPAL                          11             1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             0       16     228
24 months   ki0047075b-MAL-ED          NEPAL                          12             1        0     228
24 months   ki0047075b-MAL-ED          PERU                           1              0       29     201
24 months   ki0047075b-MAL-ED          PERU                           1              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           2              0       20     201
24 months   ki0047075b-MAL-ED          PERU                           2              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           3              0       14     201
24 months   ki0047075b-MAL-ED          PERU                           3              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           4              0       12     201
24 months   ki0047075b-MAL-ED          PERU                           4              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           5              0       18     201
24 months   ki0047075b-MAL-ED          PERU                           5              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           6              0       12     201
24 months   ki0047075b-MAL-ED          PERU                           6              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           7              0       14     201
24 months   ki0047075b-MAL-ED          PERU                           7              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           8              0       12     201
24 months   ki0047075b-MAL-ED          PERU                           8              1        1     201
24 months   ki0047075b-MAL-ED          PERU                           9              0       20     201
24 months   ki0047075b-MAL-ED          PERU                           9              1        0     201
24 months   ki0047075b-MAL-ED          PERU                           10             0       14     201
24 months   ki0047075b-MAL-ED          PERU                           10             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           11             0       21     201
24 months   ki0047075b-MAL-ED          PERU                           11             1        0     201
24 months   ki0047075b-MAL-ED          PERU                           12             0       14     201
24 months   ki0047075b-MAL-ED          PERU                           12             1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              0       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              0       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              0       11     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              0       15     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              0       23     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              0        8     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              0       20     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             0       24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             0       22     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12             1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0       20     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              0       21     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              0        8     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              0       14     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              0       18     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              0       25     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              0       12     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              0       17     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9              1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             0       15     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11             1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             0       23     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12             1        0     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              0       24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              0       45     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              0       34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              0       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              0       40     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8              1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              0       24     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             0       19     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10             1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             0       40     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11             1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             0       29     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12             1        0     372
24 months   ki1000108-IRC              INDIA                          1              0       35     409
24 months   ki1000108-IRC              INDIA                          1              1        1     409
24 months   ki1000108-IRC              INDIA                          2              0       27     409
24 months   ki1000108-IRC              INDIA                          2              1        0     409
24 months   ki1000108-IRC              INDIA                          3              0       29     409
24 months   ki1000108-IRC              INDIA                          3              1        0     409
24 months   ki1000108-IRC              INDIA                          4              0       22     409
24 months   ki1000108-IRC              INDIA                          4              1        0     409
24 months   ki1000108-IRC              INDIA                          5              0       20     409
24 months   ki1000108-IRC              INDIA                          5              1        1     409
24 months   ki1000108-IRC              INDIA                          6              0       36     409
24 months   ki1000108-IRC              INDIA                          6              1        1     409
24 months   ki1000108-IRC              INDIA                          7              0       36     409
24 months   ki1000108-IRC              INDIA                          7              1        0     409
24 months   ki1000108-IRC              INDIA                          8              0       43     409
24 months   ki1000108-IRC              INDIA                          8              1        2     409
24 months   ki1000108-IRC              INDIA                          9              0       27     409
24 months   ki1000108-IRC              INDIA                          9              1        0     409
24 months   ki1000108-IRC              INDIA                          10             0       36     409
24 months   ki1000108-IRC              INDIA                          10             1        0     409
24 months   ki1000108-IRC              INDIA                          11             0       41     409
24 months   ki1000108-IRC              INDIA                          11             1        0     409
24 months   ki1000108-IRC              INDIA                          12             0       52     409
24 months   ki1000108-IRC              INDIA                          12             1        0     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              0       42     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              0       36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     2              1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              0       40     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     3              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     4              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              0       33     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     5              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              0       30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     6              1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              0       36     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     7              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              0       30     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     8              1        0     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              0       18     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     9              1        1     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             0       38     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     10             1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             0       38     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     11             1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             0       44     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     12             1        1     428
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0        4     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          4              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          5              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6              0        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          6              1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7              0      164     996
24 months   ki1113344-GMS-Nepal        NEPAL                          7              1       12     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8              0      396     996
24 months   ki1113344-GMS-Nepal        NEPAL                          8              1       10     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9              0      368     996
24 months   ki1113344-GMS-Nepal        NEPAL                          9              1        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10             0       26     996
24 months   ki1113344-GMS-Nepal        NEPAL                          10             1        0     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11             0        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          11             1        2     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12             0        2     996
24 months   ki1113344-GMS-Nepal        NEPAL                          12             1        0     996
24 months   ki1114097-CMIN             BANGLADESH                     1              0       26     243
24 months   ki1114097-CMIN             BANGLADESH                     1              1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     2              0       31     243
24 months   ki1114097-CMIN             BANGLADESH                     2              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     3              0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     3              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     4              0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     4              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     5              0       19     243
24 months   ki1114097-CMIN             BANGLADESH                     5              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     6              0       22     243
24 months   ki1114097-CMIN             BANGLADESH                     6              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     7              0       12     243
24 months   ki1114097-CMIN             BANGLADESH                     7              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     8              0       13     243
24 months   ki1114097-CMIN             BANGLADESH                     8              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     9              0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     9              1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     10             0       18     243
24 months   ki1114097-CMIN             BANGLADESH                     10             1        1     243
24 months   ki1114097-CMIN             BANGLADESH                     11             0        2     243
24 months   ki1114097-CMIN             BANGLADESH                     11             1        0     243
24 months   ki1114097-CMIN             BANGLADESH                     12             0       43     243
24 months   ki1114097-CMIN             BANGLADESH                     12             1        0     243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              0       11     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              0       57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              0       68     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              0      108     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              0       70     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              0       34     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              0       29     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              0       28     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8              1        0     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              0       57     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9              1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             0       14     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10             1        1     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             0       27     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11             1        3     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             0       43     551
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12             1        0     551
24 months   ki1114097-CMIN             PERU                           1              0        8     429
24 months   ki1114097-CMIN             PERU                           1              1        0     429
24 months   ki1114097-CMIN             PERU                           2              0      133     429
24 months   ki1114097-CMIN             PERU                           2              1        1     429
24 months   ki1114097-CMIN             PERU                           3              0       82     429
24 months   ki1114097-CMIN             PERU                           3              1        0     429
24 months   ki1114097-CMIN             PERU                           4              0       26     429
24 months   ki1114097-CMIN             PERU                           4              1        0     429
24 months   ki1114097-CMIN             PERU                           5              0       31     429
24 months   ki1114097-CMIN             PERU                           5              1        0     429
24 months   ki1114097-CMIN             PERU                           6              0       13     429
24 months   ki1114097-CMIN             PERU                           6              1        0     429
24 months   ki1114097-CMIN             PERU                           7              0       18     429
24 months   ki1114097-CMIN             PERU                           7              1        0     429
24 months   ki1114097-CMIN             PERU                           8              0       31     429
24 months   ki1114097-CMIN             PERU                           8              1        0     429
24 months   ki1114097-CMIN             PERU                           9              0       14     429
24 months   ki1114097-CMIN             PERU                           9              1        0     429
24 months   ki1114097-CMIN             PERU                           10             0       15     429
24 months   ki1114097-CMIN             PERU                           10             1        0     429
24 months   ki1114097-CMIN             PERU                           11             0       42     429
24 months   ki1114097-CMIN             PERU                           11             1        0     429
24 months   ki1114097-CMIN             PERU                           12             0       15     429
24 months   ki1114097-CMIN             PERU                           12             1        0     429
24 months   ki1114097-CONTENT          PERU                           1              0        8     164
24 months   ki1114097-CONTENT          PERU                           1              1        0     164
24 months   ki1114097-CONTENT          PERU                           2              0       10     164
24 months   ki1114097-CONTENT          PERU                           2              1        0     164
24 months   ki1114097-CONTENT          PERU                           3              0       20     164
24 months   ki1114097-CONTENT          PERU                           3              1        0     164
24 months   ki1114097-CONTENT          PERU                           4              0       13     164
24 months   ki1114097-CONTENT          PERU                           4              1        0     164
24 months   ki1114097-CONTENT          PERU                           5              0       22     164
24 months   ki1114097-CONTENT          PERU                           5              1        0     164
24 months   ki1114097-CONTENT          PERU                           6              0       11     164
24 months   ki1114097-CONTENT          PERU                           6              1        0     164
24 months   ki1114097-CONTENT          PERU                           7              0       13     164
24 months   ki1114097-CONTENT          PERU                           7              1        0     164
24 months   ki1114097-CONTENT          PERU                           8              0       23     164
24 months   ki1114097-CONTENT          PERU                           8              1        0     164
24 months   ki1114097-CONTENT          PERU                           9              0       11     164
24 months   ki1114097-CONTENT          PERU                           9              1        0     164
24 months   ki1114097-CONTENT          PERU                           10             0       12     164
24 months   ki1114097-CONTENT          PERU                           10             1        0     164
24 months   ki1114097-CONTENT          PERU                           11             0       17     164
24 months   ki1114097-CONTENT          PERU                           11             1        0     164
24 months   ki1114097-CONTENT          PERU                           12             0        4     164
24 months   ki1114097-CONTENT          PERU                           12             1        0     164
24 months   ki1119695-PROBIT           BELARUS                        1              0      264    3971
24 months   ki1119695-PROBIT           BELARUS                        1              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        2              0      209    3971
24 months   ki1119695-PROBIT           BELARUS                        2              1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        3              0      319    3971
24 months   ki1119695-PROBIT           BELARUS                        3              1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        4              0      322    3971
24 months   ki1119695-PROBIT           BELARUS                        4              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        5              0      301    3971
24 months   ki1119695-PROBIT           BELARUS                        5              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        6              0      265    3971
24 months   ki1119695-PROBIT           BELARUS                        6              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        7              0      363    3971
24 months   ki1119695-PROBIT           BELARUS                        7              1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        8              0      346    3971
24 months   ki1119695-PROBIT           BELARUS                        8              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        9              0      375    3971
24 months   ki1119695-PROBIT           BELARUS                        9              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        10             0      389    3971
24 months   ki1119695-PROBIT           BELARUS                        10             1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        11             0      386    3971
24 months   ki1119695-PROBIT           BELARUS                        11             1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        12             0      428    3971
24 months   ki1119695-PROBIT           BELARUS                        12             1        0    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0       48     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1        1     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0       55     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1        3     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              0       47     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3              1        6     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              0       41     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4              1        3     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              0       43     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5              1        6     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              0       41     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6              1        3     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              0       29     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7              1        2     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              0       27     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8              1        3     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              0        2     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9              1        0     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             0        4     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10             1        0     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             0       20     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11             1        0     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             0       35     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12             1        3     422
24 months   ki1148112-LCNI-5           MALAWI                         1              0       40     563
24 months   ki1148112-LCNI-5           MALAWI                         1              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         2              0       86     563
24 months   ki1148112-LCNI-5           MALAWI                         2              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         3              0       67     563
24 months   ki1148112-LCNI-5           MALAWI                         3              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         4              0       74     563
24 months   ki1148112-LCNI-5           MALAWI                         4              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         5              0       62     563
24 months   ki1148112-LCNI-5           MALAWI                         5              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         6              0       63     563
24 months   ki1148112-LCNI-5           MALAWI                         6              1        1     563
24 months   ki1148112-LCNI-5           MALAWI                         7              0       39     563
24 months   ki1148112-LCNI-5           MALAWI                         7              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         8              0       27     563
24 months   ki1148112-LCNI-5           MALAWI                         8              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         9              0       20     563
24 months   ki1148112-LCNI-5           MALAWI                         9              1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         10             0       25     563
24 months   ki1148112-LCNI-5           MALAWI                         10             1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         11             0       35     563
24 months   ki1148112-LCNI-5           MALAWI                         11             1        0     563
24 months   ki1148112-LCNI-5           MALAWI                         12             0       24     563
24 months   ki1148112-LCNI-5           MALAWI                         12             1        0     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     1376   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1       28   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     1190   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1       30   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              0     1399   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3              1       50   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              0     1017   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4              1       51   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              0      753   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5              1       32   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              0     1080   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6              1       46   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              0     1204   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7              1       80   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              0     1216   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8              1       78   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              0     1388   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9              1       76   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             0     1685   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10             1       70   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             0     1862   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11             1       68   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             0     2329   17168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12             1       60   17168
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0       90    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1        1    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              0      620    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2              1       20    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              0      782    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3              1       10    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              0     1536    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4              1       52    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              0     1074    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5              1       43    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              0      810    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6              1       36    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              0     1520    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7              1       39    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              0      932    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8              1       10    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              0      747    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9              1       15    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             0      500    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10             1        8    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             0      253    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11             1       15    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             0      130    9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12             1        3    9246


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
![](/tmp/3aa7626d-1f5f-42d8-ae6a-fe6e70206cdb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3aa7626d-1f5f-42d8-ae6a-fe6e70206cdb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3aa7626d-1f5f-42d8-ae6a-fe6e70206cdb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3aa7626d-1f5f-42d8-ae6a-fe6e70206cdb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0737705   0.0234941   0.1240469
Birth       ki1119695-PROBIT     BELARUS      2                    NA                0.0508906   0.0123799   0.0894013
Birth       ki1119695-PROBIT     BELARUS      3                    NA                0.0697190   0.0246172   0.1148209
Birth       ki1119695-PROBIT     BELARUS      4                    NA                0.0523560   0.0219843   0.0827277
Birth       ki1119695-PROBIT     BELARUS      5                    NA                0.0812236   0.0314005   0.1310468
Birth       ki1119695-PROBIT     BELARUS      6                    NA                0.0645482   0.0329448   0.0961515
Birth       ki1119695-PROBIT     BELARUS      7                    NA                0.0846395   0.0450669   0.1242121
Birth       ki1119695-PROBIT     BELARUS      8                    NA                0.0622155   0.0266118   0.0978192
Birth       ki1119695-PROBIT     BELARUS      9                    NA                0.0715918   0.0197862   0.1233974
Birth       ki1119695-PROBIT     BELARUS      10                   NA                0.0620828   0.0317130   0.0924525
Birth       ki1119695-PROBIT     BELARUS      11                   NA                0.0560345   0.0263187   0.0857503
Birth       ki1119695-PROBIT     BELARUS      12                   NA                0.0620053   0.0268989   0.0971117
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0525040   0.0400792   0.0649288
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0591966   0.0441577   0.0742356
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0556604   0.0418581   0.0694626
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0533618   0.0389704   0.0677532
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0668127   0.0506154   0.0830100
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0736138   0.0577876   0.0894399
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0792350   0.0632579   0.0952120
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0627687   0.0488285   0.0767089
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0514241   0.0392479   0.0636002
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0632008   0.0479738   0.0784278
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0552434   0.0415416   0.0689453
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0653096   0.0512060   0.0794132
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0117241   0.0054908   0.0179574
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0140735   0.0079946   0.0201523
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0199485   0.0127994   0.0270976
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0147569   0.0080266   0.0214873
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0114796   0.0038025   0.0191567
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0158151   0.0074545   0.0241756
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0121012   0.0046610   0.0195414
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0158333   0.0073862   0.0242805
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0256074   0.0165305   0.0346842
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0192887   0.0116156   0.0269619
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0167765   0.0097178   0.0238353
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0117096   0.0052904   0.0181288
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0117951   0.0057628   0.0178273
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0118094   0.0048107   0.0188080
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0133897   0.0071155   0.0196639
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0151579   0.0076695   0.0226463
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0166084   0.0073309   0.0258859
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0103986   0.0033535   0.0174437
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0161747   0.0090301   0.0233192
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0109178   0.0048608   0.0169747
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0121678   0.0067373   0.0175983
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0172311   0.0105991   0.0238631
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0117647   0.0062684   0.0172610
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0167815   0.0098074   0.0237557
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0199430   0.0105053   0.0293808
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0245902   0.0111189   0.0380614
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0345066   0.0187097   0.0503034
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0477528   0.0284942   0.0670114
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0407643   0.0203539   0.0611747
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0408526   0.0238057   0.0578995
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0623053   0.0420643   0.0825463
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0602782   0.0394126   0.0811438
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0519126   0.0359055   0.0679196
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0398860   0.0275081   0.0522639
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0352332   0.0213666   0.0490997
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0251151   0.0148063   0.0354239


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0613511   0.0572087   0.0654935
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0161691   0.0138058   0.0185324
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137219   0.0116409   0.0158029
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0389678   0.0346422   0.0432935


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      2                    1                 0.6898502   0.4492995   1.059190
Birth       ki1119695-PROBIT     BELARUS      3                    1                 0.9450804   0.6617226   1.349775
Birth       ki1119695-PROBIT     BELARUS      4                    1                 0.7097150   0.4971546   1.013156
Birth       ki1119695-PROBIT     BELARUS      5                    1                 1.1010314   0.6971109   1.738992
Birth       ki1119695-PROBIT     BELARUS      6                    1                 0.8749862   0.5056793   1.514005
Birth       ki1119695-PROBIT     BELARUS      7                    1                 1.1473354   0.6235454   2.111119
Birth       ki1119695-PROBIT     BELARUS      8                    1                 0.8433654   0.4391192   1.619754
Birth       ki1119695-PROBIT     BELARUS      9                    1                 0.9704663   0.5149391   1.828963
Birth       ki1119695-PROBIT     BELARUS      10                   1                 0.8415665   0.4839723   1.463378
Birth       ki1119695-PROBIT     BELARUS      11                   1                 0.7595785   0.4829786   1.194586
Birth       ki1119695-PROBIT     BELARUS      12                   1                 0.8405160   0.4665145   1.514352
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.1274679   0.7967471   1.595467
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0601161   0.7524723   1.493538
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0163369   0.7099272   1.454995
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.2725251   0.9068504   1.785653
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4020591   1.0183890   1.930274
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.5091215   1.1058627   2.059431
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.1955023   0.8641832   1.653846
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9794304   0.7007909   1.368859
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.2037325   0.8587448   1.687313
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.0521752   0.7468062   1.482409
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.2438964   0.9029225   1.713634
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.2003863   0.5993170   2.404282
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.7014914   0.8889762   3.256637
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2586806   0.6177433   2.564620
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.9791417   0.4196428   2.284606
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.3489337   0.6400836   2.842789
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.0321620   0.4637005   2.297514
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.3504902   0.6327158   2.882532
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 2.1841567   1.1391968   4.187635
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.6452150   0.8682688   3.117390
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.4309379   0.7423498   2.758246
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.9987602   0.4600776   2.168160
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.0012126   0.4661249   2.150554
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.1351964   0.5656529   2.278201
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.2851053   0.6675940   2.473802
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.4080802   0.6537786   3.032663
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8816075   0.3747484   2.074009
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.3713101   0.6923003   2.716295
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.9256227   0.4447859   1.926269
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.0316002   0.5222817   2.037596
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.4608772   0.7661159   2.785691
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 0.9974265   0.5444030   1.827432
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.4227600   0.7509755   2.695489
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.2330211   0.5926185   2.565463
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.7302573   0.9127908   3.279821
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 2.3944623   1.2649764   4.532456
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 2.0440400   1.0263662   4.070769
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 2.0484648   1.1681870   3.592069
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 3.1241655   1.7616728   5.540422
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 3.0225215   1.6661206   5.483178
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 2.6030445   1.4755894   4.591955
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 2.0000000   1.1259066   3.552693
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.7666913   0.9535771   3.273147
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.2593434   0.6774794   2.340951


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.0078706   -0.0394790   0.0237378
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0088471   -0.0030646   0.0207588
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0044449   -0.0016367   0.0105266
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0019269   -0.0037084   0.0075621
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0190248    0.0095080   0.0285417


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1119695-PROBIT     BELARUS      1                    NA                -0.1194328   -0.7047252   0.2649081
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1442041   -0.0734687   0.3177382
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2749036   -0.2129487   0.5665400
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.1404221   -0.3873697   0.4674281
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.4882186    0.1870778   0.6778041
