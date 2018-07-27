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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        month    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       17     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        3     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   0       18     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                   1        6     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   0       20     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                   1        8     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                   0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                   1        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                   0       17     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                   1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                   0        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                   1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                   0       17     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                   1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                   0       20     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                   1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                   0       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                   1        3     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                  0       19     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                  1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                  0       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                  1        2     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                  0       26     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                  1        2     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                   1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                   1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                   0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                   1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                   0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                   1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                   0        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                   1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                   0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                   1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                   0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                   1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                   0       27     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                   1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                  0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                  1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                  0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                  1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                  0       14     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                  1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                   1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                   1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                   0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                   1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                   0        7     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                   1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                   0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                   1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                   0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                   1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                   0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                   1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                   0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                   1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                  0       22     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                  1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                  0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                  1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                  0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                  1        5     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                   1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                   1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                   0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                   1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                   0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                   1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                   0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                   1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                   0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                   1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                   0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                   1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                   0       12     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                   1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                  0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                  1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                  0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                  1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                  0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                  1        3     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       35     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        5     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                   0       21     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                   1        4     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                   0       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                   1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                   0       18     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                   1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                   0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                   1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                   0       17     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                   1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                   0       22     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                   1        2     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                   0       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                   1        0     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                   0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                   1        0     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                  0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                  1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                  0       25     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                  1        8     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                  0       21     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                  1        3     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       38     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        5     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       17     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       19     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        3     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       24     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       12     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       23     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       27     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       21     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        8     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       43     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        3     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       19     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       25     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        1     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       21     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       11     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        1     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       25     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       27     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        6     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       25     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       38     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       10     368
0-6 months    ki1000108-IRC              INDIA                          1                   0       29     410
0-6 months    ki1000108-IRC              INDIA                          1                   1        7     410
0-6 months    ki1000108-IRC              INDIA                          2                   0       25     410
0-6 months    ki1000108-IRC              INDIA                          2                   1        2     410
0-6 months    ki1000108-IRC              INDIA                          3                   0       25     410
0-6 months    ki1000108-IRC              INDIA                          3                   1        4     410
0-6 months    ki1000108-IRC              INDIA                          4                   0       20     410
0-6 months    ki1000108-IRC              INDIA                          4                   1        2     410
0-6 months    ki1000108-IRC              INDIA                          5                   0       20     410
0-6 months    ki1000108-IRC              INDIA                          5                   1        1     410
0-6 months    ki1000108-IRC              INDIA                          6                   0       31     410
0-6 months    ki1000108-IRC              INDIA                          6                   1        6     410
0-6 months    ki1000108-IRC              INDIA                          7                   0       31     410
0-6 months    ki1000108-IRC              INDIA                          7                   1        5     410
0-6 months    ki1000108-IRC              INDIA                          8                   0       41     410
0-6 months    ki1000108-IRC              INDIA                          8                   1        4     410
0-6 months    ki1000108-IRC              INDIA                          9                   0       25     410
0-6 months    ki1000108-IRC              INDIA                          9                   1        2     410
0-6 months    ki1000108-IRC              INDIA                          10                  0       33     410
0-6 months    ki1000108-IRC              INDIA                          10                  1        4     410
0-6 months    ki1000108-IRC              INDIA                          11                  0       35     410
0-6 months    ki1000108-IRC              INDIA                          11                  1        6     410
0-6 months    ki1000108-IRC              INDIA                          12                  0       45     410
0-6 months    ki1000108-IRC              INDIA                          12                  1        7     410
0-6 months    ki1000109-EE               PAKISTAN                       1                   0       53     379
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       42     379
0-6 months    ki1000109-EE               PAKISTAN                       2                   0       49     379
0-6 months    ki1000109-EE               PAKISTAN                       2                   1       17     379
0-6 months    ki1000109-EE               PAKISTAN                       3                   0       31     379
0-6 months    ki1000109-EE               PAKISTAN                       3                   1       12     379
0-6 months    ki1000109-EE               PAKISTAN                       4                   0        8     379
0-6 months    ki1000109-EE               PAKISTAN                       4                   1        8     379
0-6 months    ki1000109-EE               PAKISTAN                       10                  0        3     379
0-6 months    ki1000109-EE               PAKISTAN                       10                  1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       11                  0       49     379
0-6 months    ki1000109-EE               PAKISTAN                       11                  1       21     379
0-6 months    ki1000109-EE               PAKISTAN                       12                  0       56     379
0-6 months    ki1000109-EE               PAKISTAN                       12                  1       29     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1                   0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                   1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                   0        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                   1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                   0       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                   1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                   0       22     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                   1       11     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                   0       25     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                   1       12     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                   0       39     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                   1       15     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                   0       20     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                   1       17     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                   0       33     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                   1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                   0       22     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                   1        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                  0        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                  1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                  0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                  1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                  0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                  1        0     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       77    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       35    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       63    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       30    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                   0       59    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                   1       30    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                   0       64    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                   1       18    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                   0       64    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                   1       28    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                   0       85    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                   1       30    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                   0       85    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                   1       41    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                   0      111    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                   1       59    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                   0      143    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                   1       44    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                  0      122    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                  1       45    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                  0      108    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                  1       40    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                  0      108    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                  1       41    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       29     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       34     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       24     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       22     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                   0       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       20     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                   1       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        7     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                   0       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        8     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        9     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        4     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                  0       17     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       13     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       36     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       15     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       43     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       23     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   0       50     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   1       18     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                   0       50     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                   1       11     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                   0       54     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                   1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                   0       44     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                   1        9     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                   0       41     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                   1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                   0       41     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                   1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                   0       42     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                   1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                   0       38     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                   1        5     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                   0       28     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                   1        6     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                  0       50     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                  1       11     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                  0       44     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                  1        8     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                  0       48     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                  1        6     629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      150    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       13    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      167    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       12    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      160    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       11    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      168    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       16    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      175    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       15    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      154    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       10    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      198    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       10    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      227    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       12    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      197    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       20    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      237    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       13    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      202    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       16    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      200    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       13    2396
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       13     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                   0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                   1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                   0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                   1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                   0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                   1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                   0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                   1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                   0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                   1        8     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                   0       18     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                   1        7     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                   0       14     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                   1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                   0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                   1       11     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                  0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                  1        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                  0       24     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                  1        7     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                  0        8     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                  1        2     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                   0      102     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                   1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                   0      206     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                   1       27     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                   0      211     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                   1       28     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                   0       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                   1        2     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                  0        2     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                  1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                   0       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     1                   1       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                   0       21     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                   1        6     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                   0       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                   1        4     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                   0       15     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                   1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                   0        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                   1       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                   0        3     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                   1        6     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                   0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                   1        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                   0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                   1       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                   0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                   1       10     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                  0       19     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                  1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                  0       20     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                  1       10     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                  0       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                  1       14     277
0-6 months    ki1114097-CMIN             BRAZIL                         1                   0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                   0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                   0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                   1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                   0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                   0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                   0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                   0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                   0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                   1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                   0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                   1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                  0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                  1        2     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                  0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                  1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                  0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                  1        1     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                   0       69     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                   1       11     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                   0       58     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                   1       12     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                   0       42     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                   1       10     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                   0      138     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                   1       12     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                   0       92     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                   1       14     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                   0       74     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                   1       10     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                   0       49     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                   1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                   0       41     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                   1        3     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                   0       97     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                   1       19     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                  0       62     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                  1        7     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                  0       58     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                  1       10     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                  0       61     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                  1       10     965
0-6 months    ki1114097-CMIN             PERU                           1                   0       68     699
0-6 months    ki1114097-CMIN             PERU                           1                   1        2     699
0-6 months    ki1114097-CMIN             PERU                           2                   0       60     699
0-6 months    ki1114097-CMIN             PERU                           2                   1        1     699
0-6 months    ki1114097-CMIN             PERU                           3                   0       63     699
0-6 months    ki1114097-CMIN             PERU                           3                   1        5     699
0-6 months    ki1114097-CMIN             PERU                           4                   0       68     699
0-6 months    ki1114097-CMIN             PERU                           4                   1        2     699
0-6 months    ki1114097-CMIN             PERU                           5                   0       58     699
0-6 months    ki1114097-CMIN             PERU                           5                   1        6     699
0-6 months    ki1114097-CMIN             PERU                           6                   0       54     699
0-6 months    ki1114097-CMIN             PERU                           6                   1        3     699
0-6 months    ki1114097-CMIN             PERU                           7                   0       45     699
0-6 months    ki1114097-CMIN             PERU                           7                   1        3     699
0-6 months    ki1114097-CMIN             PERU                           8                   0       47     699
0-6 months    ki1114097-CMIN             PERU                           8                   1        5     699
0-6 months    ki1114097-CMIN             PERU                           9                   0       40     699
0-6 months    ki1114097-CMIN             PERU                           9                   1        3     699
0-6 months    ki1114097-CMIN             PERU                           10                  0       29     699
0-6 months    ki1114097-CMIN             PERU                           10                  1        1     699
0-6 months    ki1114097-CMIN             PERU                           11                  0       78     699
0-6 months    ki1114097-CMIN             PERU                           11                  1        6     699
0-6 months    ki1114097-CMIN             PERU                           12                  0       48     699
0-6 months    ki1114097-CMIN             PERU                           12                  1        4     699
0-6 months    ki1114097-CONTENT          PERU                           1                   0        8     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           2                   0       16     215
0-6 months    ki1114097-CONTENT          PERU                           2                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                   0       30     215
0-6 months    ki1114097-CONTENT          PERU                           3                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                   0       12     215
0-6 months    ki1114097-CONTENT          PERU                           4                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                   0       21     215
0-6 months    ki1114097-CONTENT          PERU                           5                   1        4     215
0-6 months    ki1114097-CONTENT          PERU                           6                   0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           7                   0       24     215
0-6 months    ki1114097-CONTENT          PERU                           7                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                   0       15     215
0-6 months    ki1114097-CONTENT          PERU                           8                   1        3     215
0-6 months    ki1114097-CONTENT          PERU                           9                   0       15     215
0-6 months    ki1114097-CONTENT          PERU                           9                   1        5     215
0-6 months    ki1114097-CONTENT          PERU                           10                  0       22     215
0-6 months    ki1114097-CONTENT          PERU                           10                  1        2     215
0-6 months    ki1114097-CONTENT          PERU                           11                  0       16     215
0-6 months    ki1114097-CONTENT          PERU                           11                  1        2     215
0-6 months    ki1114097-CONTENT          PERU                           12                  0        5     215
0-6 months    ki1114097-CONTENT          PERU                           12                  1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0     1045   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1       11   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                   0      963   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                   1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                   0     1156   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                   1       13   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                   0     1134   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                   1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                   0     1172   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                   1        8   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                   0     1190   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                   1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                   0     1556   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                   1       11   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                   0     1596   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                   1       15   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                   0     1589   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                   1       18   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                  0     1808   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                  1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                  0     1694   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                  1       17   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                  0     1837   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                  1       14   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1189   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      179   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      898   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      160   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                   0     1041   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      144   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      907   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      116   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      889   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      132   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                   0     1017   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      134   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                   0     1060   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      124   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1144   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       93   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1239   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       86   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      965   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       86   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                  0     1055   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       99   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1144   14026
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      125   14026
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                   1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                   0       31     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                   1       16     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                   0       38     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                   1       20     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                   0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                   1       20     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                   0       16     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                   1       10     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                   0       19     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                   1        9     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                   0       18     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                   1       11     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                   0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                   1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                   0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                   1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                  0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                  1        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                  0        9     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                  1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                  0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                  1        3     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1633   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      937   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1460   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      682   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1756   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      720   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1333   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                   1      508   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                   0      984   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                   1      395   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                   0      983   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                   1      381   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1109   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                   1      449   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1408   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                   1      627   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1888   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                   1      788   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1940   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                  1     1000   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1923   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                  1     1088   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     2008   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                  1     1170   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       34    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       16    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      240    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                   1      123    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      294    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                   1      171    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                   0      656    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                   1      274    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                   0      436    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                   1      187    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                   0      318    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                   1      142    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                   0      635    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                   1      255    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                   0      405    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                   1      119    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                   0      271    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                   1       75    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                  0      201    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                  1       63    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                  0      118    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                  1       23    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                  0       51    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                  1       23    5130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1        9     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                   0       13     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                   1        6     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                   0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                   1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                   0        3     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                   1        3     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                   0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                   1        5     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                   0       13     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                   1        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                   0       12     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                   1        7     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                  0       13     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                  1        3     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                  0        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                  1        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                  0       16     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                  1       10     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       12     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       20     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        2     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       17     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                   0       11     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                   0       20     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                   0        7     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                   1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                   0       13     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                   1        4     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                   0       16     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                   0       28     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                  0       19     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                  1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                  0       18     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                  1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                  0       14     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                  1        0     203
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        6     194
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       14     194
6-24 months   ki0047075b-MAL-ED          INDIA                          2                   1        3     194
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       15     194
6-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        4     194
6-24 months   ki0047075b-MAL-ED          INDIA                          4                   0        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          4                   1        4     194
6-24 months   ki0047075b-MAL-ED          INDIA                          5                   0        3     194
6-24 months   ki0047075b-MAL-ED          INDIA                          5                   1        4     194
6-24 months   ki0047075b-MAL-ED          INDIA                          6                   0        9     194
6-24 months   ki0047075b-MAL-ED          INDIA                          6                   1        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          7                   0       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          7                   1        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          8                   0       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          8                   1        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          9                   0       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          9                   1        5     194
6-24 months   ki0047075b-MAL-ED          INDIA                          10                  0       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          10                  1        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          11                  0       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          11                  1        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          12                  0       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          12                  1        3     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       15     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       12     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                   0       17     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                   1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                   0       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                   1        5     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                   0       19     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                   1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                   0       15     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                   1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                   0       20     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                   1        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                   0       11     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                   1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                  0       19     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                  1        3     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                  0       20     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                  1        3     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                  0       14     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                  1        4     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       19     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        9     229
6-24 months   ki0047075b-MAL-ED          PERU                           2                   0       13     229
6-24 months   ki0047075b-MAL-ED          PERU                           2                   1        5     229
6-24 months   ki0047075b-MAL-ED          PERU                           3                   0       12     229
6-24 months   ki0047075b-MAL-ED          PERU                           3                   1        4     229
6-24 months   ki0047075b-MAL-ED          PERU                           4                   0        9     229
6-24 months   ki0047075b-MAL-ED          PERU                           4                   1        9     229
6-24 months   ki0047075b-MAL-ED          PERU                           5                   0       14     229
6-24 months   ki0047075b-MAL-ED          PERU                           5                   1        7     229
6-24 months   ki0047075b-MAL-ED          PERU                           6                   0        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           6                   1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           7                   0       10     229
6-24 months   ki0047075b-MAL-ED          PERU                           7                   1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           8                   0       10     229
6-24 months   ki0047075b-MAL-ED          PERU                           8                   1        4     229
6-24 months   ki0047075b-MAL-ED          PERU                           9                   0       17     229
6-24 months   ki0047075b-MAL-ED          PERU                           9                   1        5     229
6-24 months   ki0047075b-MAL-ED          PERU                           10                  0       13     229
6-24 months   ki0047075b-MAL-ED          PERU                           10                  1        3     229
6-24 months   ki0047075b-MAL-ED          PERU                           11                  0       18     229
6-24 months   ki0047075b-MAL-ED          PERU                           11                  1        7     229
6-24 months   ki0047075b-MAL-ED          PERU                           12                  0       11     229
6-24 months   ki0047075b-MAL-ED          PERU                           12                  1        6     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       24     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        8     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1       10     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        4     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        1     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        1     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0        9     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        7     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       15     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        5     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        7     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        2     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       13     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        5     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       19     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        5     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       14     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        4     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       20     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        7     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        8     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        8     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        8     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       15     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        6     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        3     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0        4     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1       10     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1       13     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0        8     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        9     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        4     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        6     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0        5     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1       12     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        5     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1       11     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1       12     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1       10     187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       18     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        2     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        9     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        6     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       21     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       19     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1       15     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0        6     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       20     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       10     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       17     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       11     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       15     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0        7     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        7     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0        4     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1       14     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        8     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1       15     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       13     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       23     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0        2     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       17     288
6-24 months   ki1000108-IRC              INDIA                          1                   0       20     339
6-24 months   ki1000108-IRC              INDIA                          1                   1        6     339
6-24 months   ki1000108-IRC              INDIA                          2                   0       15     339
6-24 months   ki1000108-IRC              INDIA                          2                   1        6     339
6-24 months   ki1000108-IRC              INDIA                          3                   0       17     339
6-24 months   ki1000108-IRC              INDIA                          3                   1        6     339
6-24 months   ki1000108-IRC              INDIA                          4                   0       11     339
6-24 months   ki1000108-IRC              INDIA                          4                   1        6     339
6-24 months   ki1000108-IRC              INDIA                          5                   0       10     339
6-24 months   ki1000108-IRC              INDIA                          5                   1        3     339
6-24 months   ki1000108-IRC              INDIA                          6                   0       33     339
6-24 months   ki1000108-IRC              INDIA                          6                   1        3     339
6-24 months   ki1000108-IRC              INDIA                          7                   0       24     339
6-24 months   ki1000108-IRC              INDIA                          7                   1        8     339
6-24 months   ki1000108-IRC              INDIA                          8                   0       31     339
6-24 months   ki1000108-IRC              INDIA                          8                   1       11     339
6-24 months   ki1000108-IRC              INDIA                          9                   0       13     339
6-24 months   ki1000108-IRC              INDIA                          9                   1        8     339
6-24 months   ki1000108-IRC              INDIA                          10                  0       27     339
6-24 months   ki1000108-IRC              INDIA                          10                  1        6     339
6-24 months   ki1000108-IRC              INDIA                          11                  0       24     339
6-24 months   ki1000108-IRC              INDIA                          11                  1       11     339
6-24 months   ki1000108-IRC              INDIA                          12                  0       31     339
6-24 months   ki1000108-IRC              INDIA                          12                  1        9     339
6-24 months   ki1000109-EE               PAKISTAN                       1                   0        9     188
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       36     188
6-24 months   ki1000109-EE               PAKISTAN                       2                   0        9     188
6-24 months   ki1000109-EE               PAKISTAN                       2                   1       25     188
6-24 months   ki1000109-EE               PAKISTAN                       3                   0        5     188
6-24 months   ki1000109-EE               PAKISTAN                       3                   1       18     188
6-24 months   ki1000109-EE               PAKISTAN                       4                   0        1     188
6-24 months   ki1000109-EE               PAKISTAN                       4                   1        4     188
6-24 months   ki1000109-EE               PAKISTAN                       10                  0        1     188
6-24 months   ki1000109-EE               PAKISTAN                       10                  1        2     188
6-24 months   ki1000109-EE               PAKISTAN                       11                  0       11     188
6-24 months   ki1000109-EE               PAKISTAN                       11                  1       20     188
6-24 months   ki1000109-EE               PAKISTAN                       12                  0       11     188
6-24 months   ki1000109-EE               PAKISTAN                       12                  1       36     188
6-24 months   ki1000109-ResPak           PAKISTAN                       1                   0        4     167
6-24 months   ki1000109-ResPak           PAKISTAN                       1                   1        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       2                   0        7     167
6-24 months   ki1000109-ResPak           PAKISTAN                       2                   1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       3                   0       10     167
6-24 months   ki1000109-ResPak           PAKISTAN                       3                   1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       4                   0       17     167
6-24 months   ki1000109-ResPak           PAKISTAN                       4                   1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       5                   0       21     167
6-24 months   ki1000109-ResPak           PAKISTAN                       5                   1        4     167
6-24 months   ki1000109-ResPak           PAKISTAN                       6                   0       28     167
6-24 months   ki1000109-ResPak           PAKISTAN                       6                   1        5     167
6-24 months   ki1000109-ResPak           PAKISTAN                       7                   0       20     167
6-24 months   ki1000109-ResPak           PAKISTAN                       7                   1        2     167
6-24 months   ki1000109-ResPak           PAKISTAN                       8                   0       20     167
6-24 months   ki1000109-ResPak           PAKISTAN                       8                   1        4     167
6-24 months   ki1000109-ResPak           PAKISTAN                       9                   0       16     167
6-24 months   ki1000109-ResPak           PAKISTAN                       9                   1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       10                  0        5     167
6-24 months   ki1000109-ResPak           PAKISTAN                       10                  1        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       11                  0        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       11                  1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       12                  0        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       12                  1        0     167
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       47     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       16     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       50     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       11     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                   0       42     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                   1       17     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                   0       41     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                   1       17     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                   0       34     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                   1       18     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                   0       58     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                   1       25     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                   0       48     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                   1       26     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                   0       57     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                   1       38     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                   0       86     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                   1       39     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                  0       60     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                  1       40     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                  0       65     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                  1       27     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                  0       69     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                  1       33     964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        7     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       22     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        9     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       12     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        7     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       11     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       10     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       11     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        5     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       12     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        8     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        1     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        1     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       10     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       16     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       19     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       18     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       23     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0       23     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                   0       21     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                   1       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                   0       27     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                   1       12     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                   0       20     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                   1       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                   0       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                   1       17     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                   0       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                   1       17     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                   0       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                   1       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                   0       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                   1       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                   0       13     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                   1        9     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                  0       21     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                  1       17     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                  0       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                  1       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                  0       24     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                  1       21     420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       98    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       24    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      125    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       15    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      110    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       23    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0       92    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       32    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      123    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       13    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      114    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       10    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      150    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       22    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      171    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       17    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      152    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       21    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      168    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       25    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      156    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       22    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      141    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       23    1847
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        9     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        3     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                   0       12     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        2     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                   0        6     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                   1        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       13     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                   1        2     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       21     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                   1        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       20     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                   1        8     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       12     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       14     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        1     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       20     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        3     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       11     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       13     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        3     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                  0        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     193
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      175    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       27    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      135    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       25    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      155    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1       28    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      120    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       27    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      173    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1       28    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      264    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1       41    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      287    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1       59    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      247    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1       45    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      193    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1       41    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      268    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1       44    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      134    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       25    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      117    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       19    2677
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                   0       48     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                   1       44     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                   0       97     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                   1       85     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                   0      110     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                   1       80     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                   0        9     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                   1        6     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                  0        1     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                  1        0     480
6-24 months   ki1114097-CMIN             BANGLADESH                     1                   0        8     166
6-24 months   ki1114097-CMIN             BANGLADESH                     1                   1        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     2                   0        9     166
6-24 months   ki1114097-CMIN             BANGLADESH                     2                   1       12     166
6-24 months   ki1114097-CMIN             BANGLADESH                     3                   0        8     166
6-24 months   ki1114097-CMIN             BANGLADESH                     3                   1        8     166
6-24 months   ki1114097-CMIN             BANGLADESH                     4                   0        7     166
6-24 months   ki1114097-CMIN             BANGLADESH                     4                   1        9     166
6-24 months   ki1114097-CMIN             BANGLADESH                     5                   0        5     166
6-24 months   ki1114097-CMIN             BANGLADESH                     5                   1       10     166
6-24 months   ki1114097-CMIN             BANGLADESH                     6                   0        2     166
6-24 months   ki1114097-CMIN             BANGLADESH                     6                   1        3     166
6-24 months   ki1114097-CMIN             BANGLADESH                     7                   0        4     166
6-24 months   ki1114097-CMIN             BANGLADESH                     7                   1        7     166
6-24 months   ki1114097-CMIN             BANGLADESH                     8                   0        3     166
6-24 months   ki1114097-CMIN             BANGLADESH                     8                   1        5     166
6-24 months   ki1114097-CMIN             BANGLADESH                     9                   0        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     9                   1        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     10                  0        7     166
6-24 months   ki1114097-CMIN             BANGLADESH                     10                  1       10     166
6-24 months   ki1114097-CMIN             BANGLADESH                     11                  0        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     11                  1       10     166
6-24 months   ki1114097-CMIN             BANGLADESH                     12                  0        4     166
6-24 months   ki1114097-CMIN             BANGLADESH                     12                  1       11     166
6-24 months   ki1114097-CMIN             BRAZIL                         1                   0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         1                   1        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                   0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                   1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                   0       10     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                   1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                   0        8     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                   1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                   0        4     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                   1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                   0        5     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                   1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                   0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                   1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                   0       13     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                   1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                   0        6     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                   1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                  0       12     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                  1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                  0       10     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                  1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                  0        7     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                  1        2     104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       71    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   1       16    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                   0       76    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                   1       17    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                   0       69    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                   1       15    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      210    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                   1       69    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      117    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                   1       21    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       85    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                   1       14    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       62    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                   1       15    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       49    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                   1       10    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                   0      103    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                   1       21    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       63    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                  1       14    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       50    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                  1       20    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                  0       63    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                  1        7    1257
6-24 months   ki1114097-CMIN             PERU                           1                   0      134     752
6-24 months   ki1114097-CMIN             PERU                           1                   1       25     752
6-24 months   ki1114097-CMIN             PERU                           2                   0       50     752
6-24 months   ki1114097-CMIN             PERU                           2                   1        8     752
6-24 months   ki1114097-CMIN             PERU                           3                   0       49     752
6-24 months   ki1114097-CMIN             PERU                           3                   1        9     752
6-24 months   ki1114097-CMIN             PERU                           4                   0       57     752
6-24 months   ki1114097-CMIN             PERU                           4                   1       15     752
6-24 months   ki1114097-CMIN             PERU                           5                   0       49     752
6-24 months   ki1114097-CMIN             PERU                           5                   1        9     752
6-24 months   ki1114097-CMIN             PERU                           6                   0       43     752
6-24 months   ki1114097-CMIN             PERU                           6                   1       14     752
6-24 months   ki1114097-CMIN             PERU                           7                   0       49     752
6-24 months   ki1114097-CMIN             PERU                           7                   1        7     752
6-24 months   ki1114097-CMIN             PERU                           8                   0       50     752
6-24 months   ki1114097-CMIN             PERU                           8                   1       10     752
6-24 months   ki1114097-CMIN             PERU                           9                   0       33     752
6-24 months   ki1114097-CMIN             PERU                           9                   1        5     752
6-24 months   ki1114097-CMIN             PERU                           10                  0       17     752
6-24 months   ki1114097-CMIN             PERU                           10                  1        5     752
6-24 months   ki1114097-CMIN             PERU                           11                  0       54     752
6-24 months   ki1114097-CMIN             PERU                           11                  1       17     752
6-24 months   ki1114097-CMIN             PERU                           12                  0       35     752
6-24 months   ki1114097-CMIN             PERU                           12                  1        8     752
6-24 months   ki1114097-CONTENT          PERU                           1                   0        9     200
6-24 months   ki1114097-CONTENT          PERU                           1                   1        0     200
6-24 months   ki1114097-CONTENT          PERU                           2                   0       14     200
6-24 months   ki1114097-CONTENT          PERU                           2                   1        2     200
6-24 months   ki1114097-CONTENT          PERU                           3                   0       26     200
6-24 months   ki1114097-CONTENT          PERU                           3                   1        1     200
6-24 months   ki1114097-CONTENT          PERU                           4                   0        6     200
6-24 months   ki1114097-CONTENT          PERU                           4                   1        4     200
6-24 months   ki1114097-CONTENT          PERU                           5                   0       20     200
6-24 months   ki1114097-CONTENT          PERU                           5                   1        1     200
6-24 months   ki1114097-CONTENT          PERU                           6                   0       10     200
6-24 months   ki1114097-CONTENT          PERU                           6                   1        1     200
6-24 months   ki1114097-CONTENT          PERU                           7                   0       22     200
6-24 months   ki1114097-CONTENT          PERU                           7                   1        2     200
6-24 months   ki1114097-CONTENT          PERU                           8                   0       15     200
6-24 months   ki1114097-CONTENT          PERU                           8                   1        2     200
6-24 months   ki1114097-CONTENT          PERU                           9                   0       17     200
6-24 months   ki1114097-CONTENT          PERU                           9                   1        1     200
6-24 months   ki1114097-CONTENT          PERU                           10                  0       20     200
6-24 months   ki1114097-CONTENT          PERU                           10                  1        4     200
6-24 months   ki1114097-CONTENT          PERU                           11                  0       18     200
6-24 months   ki1114097-CONTENT          PERU                           11                  1        0     200
6-24 months   ki1114097-CONTENT          PERU                           12                  0        4     200
6-24 months   ki1114097-CONTENT          PERU                           12                  1        1     200
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0      960   16303
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1       47   16303
6-24 months   ki1119695-PROBIT           BELARUS                        2                   0      873   16303
6-24 months   ki1119695-PROBIT           BELARUS                        2                   1       64   16303
6-24 months   ki1119695-PROBIT           BELARUS                        3                   0     1077   16303
6-24 months   ki1119695-PROBIT           BELARUS                        3                   1       59   16303
6-24 months   ki1119695-PROBIT           BELARUS                        4                   0     1059   16303
6-24 months   ki1119695-PROBIT           BELARUS                        4                   1       41   16303
6-24 months   ki1119695-PROBIT           BELARUS                        5                   0     1100   16303
6-24 months   ki1119695-PROBIT           BELARUS                        5                   1       46   16303
6-24 months   ki1119695-PROBIT           BELARUS                        6                   0     1125   16303
6-24 months   ki1119695-PROBIT           BELARUS                        6                   1       33   16303
6-24 months   ki1119695-PROBIT           BELARUS                        7                   0     1470   16303
6-24 months   ki1119695-PROBIT           BELARUS                        7                   1       37   16303
6-24 months   ki1119695-PROBIT           BELARUS                        8                   0     1512   16303
6-24 months   ki1119695-PROBIT           BELARUS                        8                   1       49   16303
6-24 months   ki1119695-PROBIT           BELARUS                        9                   0     1498   16303
6-24 months   ki1119695-PROBIT           BELARUS                        9                   1       46   16303
6-24 months   ki1119695-PROBIT           BELARUS                        10                  0     1705   16303
6-24 months   ki1119695-PROBIT           BELARUS                        10                  1       66   16303
6-24 months   ki1119695-PROBIT           BELARUS                        11                  0     1598   16303
6-24 months   ki1119695-PROBIT           BELARUS                        11                  1       48   16303
6-24 months   ki1119695-PROBIT           BELARUS                        12                  0     1706   16303
6-24 months   ki1119695-PROBIT           BELARUS                        12                  1       84   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      775    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      140    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      612    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       95    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      684    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      101    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      599    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       83    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      552    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       97    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      656    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      103    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      666    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       91    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      689    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      116    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      775    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      106    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      589    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       86    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      676    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      109    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      761    9299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      138    9299
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       28     589
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     589
6-24 months   ki1148112-LCNI-5           MALAWI                         2                   0       65     589
6-24 months   ki1148112-LCNI-5           MALAWI                         2                   1       21     589
6-24 months   ki1148112-LCNI-5           MALAWI                         3                   0       46     589
6-24 months   ki1148112-LCNI-5           MALAWI                         3                   1       23     589
6-24 months   ki1148112-LCNI-5           MALAWI                         4                   0       45     589
6-24 months   ki1148112-LCNI-5           MALAWI                         4                   1       25     589
6-24 months   ki1148112-LCNI-5           MALAWI                         5                   0       47     589
6-24 months   ki1148112-LCNI-5           MALAWI                         5                   1       31     589
6-24 months   ki1148112-LCNI-5           MALAWI                         6                   0       42     589
6-24 months   ki1148112-LCNI-5           MALAWI                         6                   1       22     589
6-24 months   ki1148112-LCNI-5           MALAWI                         7                   0       33     589
6-24 months   ki1148112-LCNI-5           MALAWI                         7                   1       12     589
6-24 months   ki1148112-LCNI-5           MALAWI                         8                   0       28     589
6-24 months   ki1148112-LCNI-5           MALAWI                         8                   1        7     589
6-24 months   ki1148112-LCNI-5           MALAWI                         9                   0       14     589
6-24 months   ki1148112-LCNI-5           MALAWI                         9                   1        4     589
6-24 months   ki1148112-LCNI-5           MALAWI                         10                  0       21     589
6-24 months   ki1148112-LCNI-5           MALAWI                         10                  1        7     589
6-24 months   ki1148112-LCNI-5           MALAWI                         11                  0       27     589
6-24 months   ki1148112-LCNI-5           MALAWI                         11                  1        5     589
6-24 months   ki1148112-LCNI-5           MALAWI                         12                  0       13     589
6-24 months   ki1148112-LCNI-5           MALAWI                         12                  1        6     589
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      797   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      245   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      692   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      249   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      934   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      226   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                   0      812   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                   1      158   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                   0      788   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                   1      151   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                   0      770   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                   1      178   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                   0      829   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                   1      164   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1015   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                   1      179   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1020   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                   1      243   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1054   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                  1      236   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                  0      987   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                  1      287   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                  0      984   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                  1      306   13304
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       31    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       14    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      220    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       73    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      277    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1       98    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      498    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                   1      230    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      330    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                   1      158    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      249    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                   1      120    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      484    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                   1      228    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      347    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                   1      140    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      286    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                   1      102    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      176    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                  1       53    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                  0       97    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                  1       37    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       45    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                  1       19    4312
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   0        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                   1       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   0       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                   1       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                   0       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                   1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                   0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                   1       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                   0        3     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                   1        6     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                   0       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                   1       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                   0       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                   1       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                   0       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                   1       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                  0       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                  1       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                  0        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                  1        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                  0       15     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                  1       13     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                   1        6     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                   1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                   0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                   0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                   1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                   0        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                   1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                   0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                   1        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                   0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                   1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                   0       27     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                   1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                  0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                  1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                  0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                  1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                  0       13     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                  1        5     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                   1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   0       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                   1        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                   0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                   1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                   0        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                   1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                   0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                   1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                   0       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                   1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                   0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                   1       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                   0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                   1       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                  0       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                  1       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                  0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                  1       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                  0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                  1        8     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       14     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                   1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                   1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                   0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                   1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                   0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                   1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                   0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                   1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                   0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                   1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                   0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                   1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                   0       11     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                   1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                  0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                  1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                  0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                  1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                  0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                  1        5     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       20     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1       20     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                   0       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                   1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                   0       12     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                   1       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                   0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                   1       12     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                   0       15     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                   1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                   0       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                   1       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                   0       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                   1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                   0       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                   1        6     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                   0       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                   1        7     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                  0       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                  1        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                  0       15     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                  1       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                  0       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                  1       10     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       25     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       16     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1       13     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       13     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        5     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       13     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        2     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       16     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        4     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        7     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       19     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1       15     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       27     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1       19     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1       11     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       23     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        6     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1       14     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1       19     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        6     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1       20     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       12     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1       21     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       33     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       24     373
0-24 months   ki1000108-IRC              INDIA                          1                   0       18     410
0-24 months   ki1000108-IRC              INDIA                          1                   1       18     410
0-24 months   ki1000108-IRC              INDIA                          2                   0       12     410
0-24 months   ki1000108-IRC              INDIA                          2                   1       15     410
0-24 months   ki1000108-IRC              INDIA                          3                   0       13     410
0-24 months   ki1000108-IRC              INDIA                          3                   1       16     410
0-24 months   ki1000108-IRC              INDIA                          4                   0        8     410
0-24 months   ki1000108-IRC              INDIA                          4                   1       14     410
0-24 months   ki1000108-IRC              INDIA                          5                   0        7     410
0-24 months   ki1000108-IRC              INDIA                          5                   1       14     410
0-24 months   ki1000108-IRC              INDIA                          6                   0       25     410
0-24 months   ki1000108-IRC              INDIA                          6                   1       12     410
0-24 months   ki1000108-IRC              INDIA                          7                   0       21     410
0-24 months   ki1000108-IRC              INDIA                          7                   1       15     410
0-24 months   ki1000108-IRC              INDIA                          8                   0       28     410
0-24 months   ki1000108-IRC              INDIA                          8                   1       17     410
0-24 months   ki1000108-IRC              INDIA                          9                   0       12     410
0-24 months   ki1000108-IRC              INDIA                          9                   1       15     410
0-24 months   ki1000108-IRC              INDIA                          10                  0       24     410
0-24 months   ki1000108-IRC              INDIA                          10                  1       13     410
0-24 months   ki1000108-IRC              INDIA                          11                  0       21     410
0-24 months   ki1000108-IRC              INDIA                          11                  1       20     410
0-24 months   ki1000108-IRC              INDIA                          12                  0       26     410
0-24 months   ki1000108-IRC              INDIA                          12                  1       26     410
0-24 months   ki1000109-EE               PAKISTAN                       1                   0        8     379
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       87     379
0-24 months   ki1000109-EE               PAKISTAN                       2                   0       10     379
0-24 months   ki1000109-EE               PAKISTAN                       2                   1       56     379
0-24 months   ki1000109-EE               PAKISTAN                       3                   0        6     379
0-24 months   ki1000109-EE               PAKISTAN                       3                   1       37     379
0-24 months   ki1000109-EE               PAKISTAN                       4                   0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       4                   1       15     379
0-24 months   ki1000109-EE               PAKISTAN                       10                  0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       10                  1        3     379
0-24 months   ki1000109-EE               PAKISTAN                       11                  0       10     379
0-24 months   ki1000109-EE               PAKISTAN                       11                  1       60     379
0-24 months   ki1000109-EE               PAKISTAN                       12                  0        9     379
0-24 months   ki1000109-EE               PAKISTAN                       12                  1       76     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1                   0        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                   1        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                   0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                   1        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                   0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                   1       10     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                   0       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                   1       15     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                   0       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                   1       19     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                   0       25     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                   1       29     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                   0       16     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                   1       21     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                   0       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                   1       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                   0       15     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                   1       11     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                  0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                  1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                  0        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                  1        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                  0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                  1        1     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       44    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       68    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       44    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       49    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                   0       38    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                   1       52    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                   0       32    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                   1       50    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                   0       34    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                   1       58    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                   0       55    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                   1       60    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                   0       47    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                   1       80    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                   0       56    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                   1      114    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                   0       86    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                   1      101    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                  0       59    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                  1      109    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                  0       65    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                  1       83    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                  0       62    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                  1       87    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       56     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       30     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       30     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        1     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       48     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                   0       30     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                   1       31     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                   0       36     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                   1       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                   0       24     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                   1       29     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                   0       22     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                   1       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                   0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                   1       26     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                   0       17     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                   1       31     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                   0       19     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                   1       24     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                   0       17     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                   1       17     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                  0       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                  1       36     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                  0       16     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                  1       36     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                  0       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                  1       29     629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      119    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       44    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      146    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       33    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      127    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       44    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      125    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       59    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      153    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       37    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      130    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       34    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      156    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       52    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      191    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       48    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      166    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       51    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      196    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       54    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      174    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       44    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      172    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       41    2396
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       10     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                   0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        8     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                   0        8     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                   1       14     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       18     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                   1       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       21     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                   1       11     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       19     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                   1       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                   1       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        6     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                   1       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       17     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                  1       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                  1       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                  0        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        5     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      161    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       78    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      125    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       83    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      146    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1       68    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      118    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       65    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      163    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1       95    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      248    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1      118    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      278    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1      133    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      240    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1      121    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      185    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1      109    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      259    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1      113    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      127    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       70    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      110    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       52    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                   0       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                   1       65     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                   0       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                   1      143     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                   0      108     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                   1      131     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                   0        8     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                   1        8     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                  0        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                  1        1     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                   0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     1                   1       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                   0       10     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                   1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                   0        9     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                   1       11     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                   0        6     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                   1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                   0        4     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                   1       16     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                   0        1     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                   1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                   0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                   1       14     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                   0        4     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                   1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                   0        5     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                   1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                  0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                  1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                  0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                  1       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                  0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                  1       26     277
0-24 months   ki1114097-CMIN             BRAZIL                         1                   0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                   1        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                   0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                   1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                   0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                   1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                   0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                   1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                   0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                   1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                   0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                   1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                   0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                   1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                   0       12     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                   1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                   0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                   1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                  0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                  1        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                  0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                  1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                  0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                  1        5     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       68    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                   1       35    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                   0       71    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                   1       45    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                   0       63    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                   1       34    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      205    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                   1      154    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      104    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                   1       50    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       81    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                   1       32    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       58    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                   1       39    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       48    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                   1       20    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                   0      100    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                   1       51    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       58    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                  1       28    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       46    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                  1       33    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                  0       57    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                  1       27    1507
0-24 months   ki1114097-CMIN             PERU                           1                   0      136     929
0-24 months   ki1114097-CMIN             PERU                           1                   1       95     929
0-24 months   ki1114097-CMIN             PERU                           2                   0       56     929
0-24 months   ki1114097-CMIN             PERU                           2                   1       14     929
0-24 months   ki1114097-CMIN             PERU                           3                   0       50     929
0-24 months   ki1114097-CMIN             PERU                           3                   1       18     929
0-24 months   ki1114097-CMIN             PERU                           4                   0       57     929
0-24 months   ki1114097-CMIN             PERU                           4                   1       23     929
0-24 months   ki1114097-CMIN             PERU                           5                   0       48     929
0-24 months   ki1114097-CMIN             PERU                           5                   1       19     929
0-24 months   ki1114097-CMIN             PERU                           6                   0       44     929
0-24 months   ki1114097-CMIN             PERU                           6                   1       16     929
0-24 months   ki1114097-CMIN             PERU                           7                   0       47     929
0-24 months   ki1114097-CMIN             PERU                           7                   1       17     929
0-24 months   ki1114097-CMIN             PERU                           8                   0       49     929
0-24 months   ki1114097-CMIN             PERU                           8                   1       22     929
0-24 months   ki1114097-CMIN             PERU                           9                   0       35     929
0-24 months   ki1114097-CMIN             PERU                           9                   1        8     929
0-24 months   ki1114097-CMIN             PERU                           10                  0       21     929
0-24 months   ki1114097-CMIN             PERU                           10                  1       15     929
0-24 months   ki1114097-CMIN             PERU                           11                  0       60     929
0-24 months   ki1114097-CMIN             PERU                           11                  1       24     929
0-24 months   ki1114097-CMIN             PERU                           12                  0       42     929
0-24 months   ki1114097-CMIN             PERU                           12                  1       13     929
0-24 months   ki1114097-CONTENT          PERU                           1                   0        8     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        1     215
0-24 months   ki1114097-CONTENT          PERU                           2                   0       14     215
0-24 months   ki1114097-CONTENT          PERU                           2                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           3                   0       25     215
0-24 months   ki1114097-CONTENT          PERU                           3                   1        5     215
0-24 months   ki1114097-CONTENT          PERU                           4                   0        6     215
0-24 months   ki1114097-CONTENT          PERU                           4                   1        6     215
0-24 months   ki1114097-CONTENT          PERU                           5                   0       17     215
0-24 months   ki1114097-CONTENT          PERU                           5                   1        8     215
0-24 months   ki1114097-CONTENT          PERU                           6                   0       10     215
0-24 months   ki1114097-CONTENT          PERU                           6                   1        4     215
0-24 months   ki1114097-CONTENT          PERU                           7                   0       21     215
0-24 months   ki1114097-CONTENT          PERU                           7                   1        3     215
0-24 months   ki1114097-CONTENT          PERU                           8                   0       13     215
0-24 months   ki1114097-CONTENT          PERU                           8                   1        5     215
0-24 months   ki1114097-CONTENT          PERU                           9                   0       15     215
0-24 months   ki1114097-CONTENT          PERU                           9                   1        5     215
0-24 months   ki1114097-CONTENT          PERU                           10                  0       18     215
0-24 months   ki1114097-CONTENT          PERU                           10                  1        6     215
0-24 months   ki1114097-CONTENT          PERU                           11                  0       15     215
0-24 months   ki1114097-CONTENT          PERU                           11                  1        3     215
0-24 months   ki1114097-CONTENT          PERU                           12                  0        4     215
0-24 months   ki1114097-CONTENT          PERU                           12                  1        1     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0      915   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1      142   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                   0      838   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                   1      134   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                   0     1038   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                   1      131   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                   0     1036   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                   1      109   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                   0     1081   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                   1       99   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                   0     1087   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                   1      112   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                   0     1443   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                   1      124   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                   0     1467   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                   1      145   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                   0     1461   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                   1      146   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                  0     1636   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                  1      191   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                  0     1532   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                  1      179   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                  0     1663   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                  1      188   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      932   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      440   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      708   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      353   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      813   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      378   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      728   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      298   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      693   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      330   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      817   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      334   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      846   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      339   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      914   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      323   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      989   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      336   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      768   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      285   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      828   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      327   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      902   14048
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      367   14048
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0       26     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1       30     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                   0       56     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                   1       59     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                   0       40     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                   1       58     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                   0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                   1       72     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                   0       42     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                   1       67     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                   0       38     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                   1       53     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                   0       26     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                   1       46     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                   0       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                   1       20     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                   0       14     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                   1       13     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                  0       17     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                  1       18     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                  0       26     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                  1       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                  0       12     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                  1       22     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1371   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1206   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1184   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      960   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1480   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                   1     1000   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1118   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                   1      729   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                   0      782   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                   1      610   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                   0      744   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                   1      626   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                   0      865   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                   1      696   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1135   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                   1      905   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1580   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                   1     1100   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1624   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                  1     1321   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1584   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                  1     1432   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1683   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                  1     1501   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       29    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       25    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      171    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      194    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      215    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      257    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      412    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                   1      525    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      274    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                   1      352    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      199    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                   1      262    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      419    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                   1      500    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      298    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                   1      288    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      248    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                   1      234    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      156    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                  1      141    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                  0       89    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                  1       73    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       39    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                  1       42    5442


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9c14fee1-e87b-4b23-be14-05a3cdcd1eb7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c14fee1-e87b-4b23-be14-05a3cdcd1eb7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c14fee1-e87b-4b23-be14-05a3cdcd1eb7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c14fee1-e87b-4b23-be14-05a3cdcd1eb7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5000000    0.3447949   0.6552051
0-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4400000    0.2450980   0.6349020
0-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.4545455    0.2461335   0.6629574
0-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.5714286    0.3594222   0.7834349
0-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.4230769    0.2328606   0.6132933
0-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.5000000    0.2805069   0.7194931
0-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.5416667    0.3419947   0.7413386
0-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.3157895    0.1064347   0.5251442
0-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.3043478    0.1159902   0.4927054
0-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.3076923    0.1299924   0.4853922
0-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.5454545    0.3752869   0.7156222
0-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.4166667    0.2191003   0.6142331
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5000000    0.3364701   0.6635299
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.5555556    0.3678967   0.7432144
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.5517241    0.3705013   0.7329470
0-24 months   ki1000108-IRC              INDIA                          4                    NA                0.6363636    0.4351055   0.8376217
0-24 months   ki1000108-IRC              INDIA                          5                    NA                0.6666667    0.4648010   0.8685323
0-24 months   ki1000108-IRC              INDIA                          6                    NA                0.3243243    0.1733036   0.4753450
0-24 months   ki1000108-IRC              INDIA                          7                    NA                0.4166667    0.2554240   0.5779093
0-24 months   ki1000108-IRC              INDIA                          8                    NA                0.3777778    0.2359494   0.5196061
0-24 months   ki1000108-IRC              INDIA                          9                    NA                0.5555556    0.3678967   0.7432144
0-24 months   ki1000108-IRC              INDIA                          10                   NA                0.3513514    0.1973399   0.5053628
0-24 months   ki1000108-IRC              INDIA                          11                   NA                0.4878049    0.3346160   0.6409938
0-24 months   ki1000108-IRC              INDIA                          12                   NA                0.5000000    0.3639349   0.6360651
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6071429    0.5252734   0.6890123
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5268817    0.3569367   0.6968267
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.5777778    0.4628351   0.6927205
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.6097561    0.4674441   0.7520681
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.6304348    0.5665746   0.6942950
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.5217391    0.4363537   0.6071246
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.6299213    0.5386515   0.7211910
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.6705882    0.5810234   0.7601531
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.5401070    0.4792035   0.6010104
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.6488095    0.5843362   0.7132829
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.5608108    0.4539919   0.6676298
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.5838926    0.4855108   0.6822744
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5000000    0.3810651   0.6189349
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5081967    0.3826399   0.6337535
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4098361    0.2863210   0.5333512
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.5471698    0.4130526   0.6812870
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5319149    0.3891478   0.6746820
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5531915    0.4109445   0.6954385
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6458333    0.5104276   0.7812391
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5581395    0.4095893   0.7066898
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5000000    0.3318007   0.6681993
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5901639    0.4666488   0.7136790
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.6923077    0.5667626   0.8178528
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5370370    0.4039389   0.6701352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2699387    0.2017743   0.3381030
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1843575    0.1275387   0.2411764
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2573099    0.1917750   0.3228449
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3206522    0.2532005   0.3881039
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1947368    0.1384178   0.2510558
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2073171    0.1452610   0.2693731
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2500000    0.1911417   0.3088583
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2008368    0.1500350   0.2516386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2350230    0.1785959   0.2914502
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2160000    0.1649785   0.2670215
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2018349    0.1485437   0.2551260
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1924883    0.1395310   0.2454455
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4736842    0.2488153   0.6985531
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.4000000    0.1849551   0.6150449
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.6363636    0.4350313   0.8376960
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.4000000    0.2244166   0.5755834
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                0.3437500    0.1789263   0.5085737
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                0.5128205    0.3556998   0.6699412
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                0.4800000    0.2838489   0.6761511
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                0.3157895    0.1064479   0.5251310
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                0.4285714    0.2643624   0.5927805
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                0.4848485    0.3140626   0.6556344
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                0.4838710    0.3076727   0.6600692
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                0.5000000    0.1896094   0.8103906
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3263598    0.2207847   0.4319350
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3990385    0.3273840   0.4706929
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3177570    0.2481188   0.3873952
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3551913    0.2582441   0.4521384
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3682171    0.3008470   0.4355871
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3224044    0.2215532   0.4232555
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3236010    0.2528816   0.3943204
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3351801    0.2523680   0.4179921
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3707483    0.2965169   0.4449797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3037634   -0.0542848   0.6618117
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3553299    0.2658586   0.4448013
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3209877    0.2582716   0.3837037
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3398058    0.2483050   0.4313066
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3879310    0.2992276   0.4766345
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3505155    0.2555328   0.4454981
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4289694    0.3777555   0.4801833
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.3246753    0.2506956   0.3986551
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2831858    0.2000876   0.3662841
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.4020619    0.3044549   0.4996688
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.2941176    0.1857837   0.4024516
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3377483    0.2622892   0.4132075
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.3255814    0.2265124   0.4246503
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.4177215    0.3089319   0.5265111
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.3214286    0.2215223   0.4213348
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.4112554    0.3477669   0.4747439
0-24 months   ki1114097-CMIN             PERU                           2                    NA                0.2000000    0.1062453   0.2937547
0-24 months   ki1114097-CMIN             PERU                           3                    NA                0.2647059    0.1597903   0.3696214
0-24 months   ki1114097-CMIN             PERU                           4                    NA                0.2875000    0.1882688   0.3867312
0-24 months   ki1114097-CMIN             PERU                           5                    NA                0.2835821    0.1755962   0.3915680
0-24 months   ki1114097-CMIN             PERU                           6                    NA                0.2666667    0.1547122   0.3786211
0-24 months   ki1114097-CMIN             PERU                           7                    NA                0.2656250    0.1573607   0.3738893
0-24 months   ki1114097-CMIN             PERU                           8                    NA                0.3098592    0.2022365   0.4174818
0-24 months   ki1114097-CMIN             PERU                           9                    NA                0.1860465    0.0696719   0.3024211
0-24 months   ki1114097-CMIN             PERU                           10                   NA                0.4166667    0.2555340   0.5777993
0-24 months   ki1114097-CMIN             PERU                           11                   NA                0.2857143    0.1890548   0.3823737
0-24 months   ki1114097-CMIN             PERU                           12                   NA                0.2363636    0.1240237   0.3487036
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1343425    0.1006157   0.1680692
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.1378601    0.0997925   0.1759276
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.1120616    0.0824878   0.1416354
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0951965    0.0710162   0.1193768
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0838983    0.0635013   0.1042953
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0934112    0.0682241   0.1185982
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0791321    0.0592296   0.0990346
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0899504    0.0701993   0.1097015
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0908525    0.0643665   0.1173385
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1045430    0.0825442   0.1265418
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1046172    0.0830615   0.1261729
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1015667    0.0729268   0.1302066
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3206997    0.2960014   0.3453980
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3327050    0.3043523   0.3610577
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.3173804    0.2909449   0.3438158
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2904483    0.2626694   0.3182273
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3225806    0.2939340   0.3512273
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2901825    0.2639623   0.3164026
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2860759    0.2603441   0.3118078
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2611156    0.2366372   0.2855940
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2535849    0.2301584   0.2770114
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2706553    0.2438189   0.2974917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2831169    0.2571345   0.3090993
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2892041    0.2642577   0.3141505
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5357143    0.4050154   0.6664132
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.5130435    0.4216364   0.6044506
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.5918367    0.4944698   0.6892037
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.6486486    0.5597857   0.7375116
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.6146789    0.5232615   0.7060963
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5824176    0.4810324   0.6838027
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.6388889    0.5278760   0.7499018
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4651163    0.3159458   0.6142868
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4814815    0.2929010   0.6700620
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.5142857    0.3486075   0.6799639
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4693878    0.3295697   0.6092058
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6470588    0.4863313   0.8077864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4679860    0.4481626   0.4878094
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4477612    0.4262603   0.4692621
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4032258    0.3815393   0.4249123
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.3946941    0.3708500   0.4185382
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4382184    0.4112402   0.4651965
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.4569343    0.4283108   0.4855579
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4458680    0.4198276   0.4719085
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4436275    0.4211596   0.4660953
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4104478    0.3904021   0.4304934
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4485569    0.4280561   0.4690577
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4748011    0.4556257   0.4939764
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4714196    0.4533386   0.4895006
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4629630    0.3190378   0.6068881
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5315068    0.4759873   0.5870263
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.5444915    0.4964492   0.5925339
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.5602988    0.5246673   0.5959304
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.5623003    0.5107920   0.6138086
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.5683297    0.5176449   0.6190145
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.5440696    0.5054677   0.5826716
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.4914676    0.4442870   0.5386481
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.4854772    0.4365615   0.5343928
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.4747475    0.4069683   0.5425266
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.4506173    0.3673574   0.5338771
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.5185185    0.4033757   0.6336613
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3125000    0.2296760   0.3953240
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3225806    0.2142174   0.4309439
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.3370787    0.2499822   0.4241751
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2195122    0.1020206   0.3370038
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3043478    0.2073997   0.4012960
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2608696    0.1994278   0.3223113
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.3253968    0.2455756   0.4052181
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3470588    0.2764634   0.4176543
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.2352941    0.1753646   0.2952236
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.2694611    0.1973288   0.3415933
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2702703    0.2047148   0.3358257
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2751678    0.2169701   0.3333655
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2647059    0.1597634   0.3696484
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.1803279    0.0837717   0.2768841
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1147541    0.0347072   0.1948010
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1698113    0.0686470   0.2709756
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1276596    0.0321791   0.2231400
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.1276596    0.0321791   0.2231400
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.1250000    0.0313663   0.2186337
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.1162791    0.0203903   0.2121678
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.1764706    0.0482287   0.3047125
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.1803279    0.0837717   0.2768841
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.1538462    0.0557030   0.2519893
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1111111    0.0272232   0.1949990
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0797546    0.0381564   0.1213528
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0670391    0.0303947   0.1036835
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0643275    0.0275484   0.1011066
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0869565    0.0462348   0.1276783
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0789474    0.0405967   0.1172980
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0609756    0.0243459   0.0976053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0480769    0.0189981   0.0771557
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0502092    0.0225178   0.0779006
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0921659    0.0536715   0.1306603
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0520000    0.0244720   0.0795280
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0733945    0.0387695   0.1080195
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0610329    0.0288773   0.0931884
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0104167    0.0033325   0.0175008
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0092593    0.0035530   0.0149656
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0111206    0.0048778   0.0173634
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0078740   -0.0018521   0.0176001
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0067797    0.0012871   0.0122723
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0075063    0.0028314   0.0121811
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0070198    0.0033193   0.0107203
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0093110    0.0031970   0.0154249
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0112010    0.0043697   0.0180323
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0103996    0.0043198   0.0164793
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0099357    0.0041306   0.0157408
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0075635    0.0007059   0.0144211
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1308480    0.1129768   0.1487191
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1512287    0.1296397   0.1728178
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1215190    0.1029156   0.1401224
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1133920    0.0939615   0.1328224
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1292850    0.1087042   0.1498658
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1164205    0.0978910   0.1349500
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1047297    0.0872876   0.1221719
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0751819    0.0604871   0.0898767
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0649057    0.0516401   0.0781712
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0818268    0.0652549   0.0983987
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0857886    0.0696301   0.1019470
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0985028    0.0821067   0.1148988
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3645914    0.3453744   0.3838085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3183940    0.2970414   0.3397466
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2907916    0.2707943   0.3107889
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2759370    0.2540036   0.2978704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2864394    0.2615348   0.3113441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2793255    0.2531340   0.3055170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2881900    0.2648937   0.3114863
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3081081    0.2865553   0.3296609
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2944694    0.2767590   0.3121797
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3401361    0.3209865   0.3592856
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3613417    0.3425372   0.3801463
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3681561    0.3499114   0.3864008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3200000    0.1863637   0.4536363
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3388430    0.2837532   0.3939328
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3677419    0.3211483   0.4143356
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.2946237    0.2619960   0.3272513
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3001605    0.2577901   0.3425309
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3086957    0.2559955   0.3613958
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.2865169    0.2530533   0.3199804
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2270992    0.1841014   0.2700970
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2167630    0.1658356   0.2676904
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2386364    0.1845298   0.2927430
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.1631206    0.0824967   0.2437444
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.3108108    0.1977173   0.4239043
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2539683    0.1735564   0.3343801
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1803279    0.0853241   0.2753317
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2881356    0.1474509   0.4288203
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2931034    0.1393618   0.4468451
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3461538    0.2395706   0.4527371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3012048    0.1545065   0.4479032
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.3513514    0.1953477   0.5073550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.4000000    0.2897326   0.5102674
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.3120000    0.2301596   0.3938404
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.4000000    0.3048804   0.4951196
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2934783    0.1774495   0.4095071
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.3235294    0.2214866   0.4255722
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4102564    0.2556980   0.5648148
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.4615385    0.3048941   0.6181828
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3076923    0.1626678   0.4527168
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.4444444    0.2819319   0.6069570
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.4857143    0.3199372   0.6514913
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5312500    0.3581445   0.7043555
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5000000    0.3208672   0.6791328
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4838710    0.3077428   0.6599991
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4090909    0.2033955   0.6147863
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.4473684    0.2890890   0.6056478
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4705882    0.3026136   0.6385628
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4666667    0.3207307   0.6126026
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1967213    0.1261636   0.2672790
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1071429    0.0558952   0.1583905
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1729323    0.1086416   0.2372231
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2580645    0.1810270   0.3351020
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0955882    0.0461593   0.1450172
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0806452    0.0327065   0.1285838
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1279070    0.0779806   0.1778333
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0904255    0.0494192   0.1314319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1213873    0.0727098   0.1700648
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1295337    0.0821472   0.1769202
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1235955    0.0752329   0.1719581
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1402439    0.0870853   0.1934025
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1336634    0.0623551   0.2049716
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1562500    0.1145909   0.1979091
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1530055    0.0881050   0.2179059
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.1836735    0.1168515   0.2504955
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1393035    0.0908963   0.1877106
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1344262    0.0781062   0.1907463
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1705202    0.1102669   0.2307736
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1541096    0.1026772   0.2055420
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1752137    0.1159807   0.2344467
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1410256    0.0601029   0.2219484
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1572327    0.0925607   0.2219047
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1397059    0.0851538   0.1942580
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1839080    0.1024693   0.2653468
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1827957    0.1042129   0.2613785
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1785714    0.0966359   0.2605069
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.2473118    0.1966654   0.2979583
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1521739    0.0922217   0.2121261
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1414141    0.0727482   0.2100801
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1948052    0.1063087   0.2833017
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1694915    0.0737190   0.2652640
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1693548    0.1033134   0.2353963
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1818182    0.0956357   0.2680007
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2857143    0.1798441   0.3915845
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1000000    0.0296939   0.1703061
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.1572327    0.1006135   0.2138519
6-24 months   ki1114097-CMIN             PERU                           2                    NA                0.1379310    0.0491286   0.2267335
6-24 months   ki1114097-CMIN             PERU                           3                    NA                0.1551724    0.0619298   0.2484150
6-24 months   ki1114097-CMIN             PERU                           4                    NA                0.2083333    0.1144645   0.3022022
6-24 months   ki1114097-CMIN             PERU                           5                    NA                0.1551724    0.0619298   0.2484150
6-24 months   ki1114097-CMIN             PERU                           6                    NA                0.2456140    0.1337931   0.3574349
6-24 months   ki1114097-CMIN             PERU                           7                    NA                0.1250000    0.0383234   0.2116766
6-24 months   ki1114097-CMIN             PERU                           8                    NA                0.1666667    0.0723051   0.2610282
6-24 months   ki1114097-CMIN             PERU                           9                    NA                0.1315789    0.0240306   0.2391273
6-24 months   ki1114097-CMIN             PERU                           10                   NA                0.2272727    0.0520411   0.4025044
6-24 months   ki1114097-CMIN             PERU                           11                   NA                0.2394366    0.1401088   0.3387644
6-24 months   ki1114097-CMIN             PERU                           12                   NA                0.1860465    0.0696571   0.3024359
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0466733    0.0267724   0.0665742
6-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0683031    0.0352001   0.1014061
6-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0519366    0.0285573   0.0753160
6-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0372727    0.0215627   0.0529827
6-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0401396    0.0235477   0.0567315
6-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0284974    0.0173474   0.0396475
6-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0245521    0.0133997   0.0357045
6-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0313901    0.0188439   0.0439364
6-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0297927    0.0175581   0.0420273
6-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0372671    0.0270210   0.0475132
6-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0291616    0.0182400   0.0400832
6-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0469274    0.0253683   0.0684865
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1530055    0.1296787   0.1763322
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1343706    0.1092297   0.1595114
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1286624    0.1052387   0.1520861
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1217009    0.0971624   0.1462393
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1494607    0.1220286   0.1768929
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1357049    0.1113392   0.1600706
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1202114    0.0970435   0.1433792
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1440994    0.1198380   0.1683608
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1203178    0.0988340   0.1418016
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1274074    0.1022525   0.1525623
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1388535    0.1146625   0.1630445
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1535039    0.1299391   0.1770687
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2351248    0.2092153   0.2610342
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2646121    0.2350505   0.2941737
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1948276    0.1696123   0.2200429
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1628866    0.1401563   0.1856169
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1608094    0.1343318   0.1872869
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1877637    0.1594986   0.2160288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1651561    0.1411881   0.1891241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1499162    0.1295849   0.1702476
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1923990    0.1693720   0.2154261
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1829457    0.1612069   0.2046846
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2252747    0.2007689   0.2497806
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2372093    0.2130647   0.2613539
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3111111    0.1711538   0.4510684
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2491468    0.1904808   0.3078127
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2613333    0.2122952   0.3103715
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.3159341    0.2782168   0.3536513
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3237705    0.2759820   0.3715590
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3252033    0.2721037   0.3783028
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.3202247    0.2797248   0.3607247
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2874743    0.2346519   0.3402967
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2628866    0.2162315   0.3095417
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2314410    0.1718196   0.2910625
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.2761194    0.1907166   0.3615222
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.2968750    0.1798792   0.4138708


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5942596   0.5539147   0.6346046
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2257930   0.2090482   0.2425378
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4539683   0.3988995   0.5090370
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3384380   0.2882099   0.3886661
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3636364   0.3393411   0.3879316
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3057051   0.2760637   0.3353464
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2925683   0.2850450   0.3000917
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5726190   0.5391450   0.6060930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4437509   0.4362402   0.4512616
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5316060   0.5154292   0.5477829
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882353   0.2618269   0.3146436
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1573927   0.1289105   0.1858749
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0671953   0.0571686   0.0772221
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1053757   0.1002943   0.1104572
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3218623   0.3151120   0.3286127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2867446   0.2729319   0.3005573
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3184647   0.2882909   0.3486385
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1337304   0.1182039   0.1492569
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1527830   0.1267871   0.1787788
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1901352   0.1684337   0.2118368
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.1755319   0.1483241   0.2027397
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1360361   0.1290678   0.1430045
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1970836   0.1890247   0.2051424
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2949907   0.2786334   0.3113480


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8800000   0.5123598   1.5114379
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.9090909   0.5225634   1.5815236
0-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 1.1428571   0.7045416   1.8538614
0-24 months   ki0047075b-MAL-ED          PERU                           5                    1                 0.8461538   0.4899742   1.4612532
0-24 months   ki0047075b-MAL-ED          PERU                           6                    1                 1.0000000   0.5841216   1.7119724
0-24 months   ki0047075b-MAL-ED          PERU                           7                    1                 1.0833333   0.6690683   1.7540976
0-24 months   ki0047075b-MAL-ED          PERU                           8                    1                 0.6315789   0.3037467   1.3132388
0-24 months   ki0047075b-MAL-ED          PERU                           9                    1                 0.6086957   0.3045840   1.2164475
0-24 months   ki0047075b-MAL-ED          PERU                           10                   1                 0.6153846   0.3194460   1.1854845
0-24 months   ki0047075b-MAL-ED          PERU                           11                   1                 1.0909091   0.7025196   1.6940207
0-24 months   ki0047075b-MAL-ED          PERU                           12                   1                 0.8333333   0.4728153   1.4687435
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.1111111   0.6943233   1.7780879
0-24 months   ki1000108-IRC              INDIA                          3                    1                 1.1034483   0.6941355   1.7541215
0-24 months   ki1000108-IRC              INDIA                          4                    1                 1.2727273   0.8075101   2.0059621
0-24 months   ki1000108-IRC              INDIA                          5                    1                 1.3333333   0.8538282   2.0821258
0-24 months   ki1000108-IRC              INDIA                          6                    1                 0.6486486   0.3671833   1.1458721
0-24 months   ki1000108-IRC              INDIA                          7                    1                 0.8333333   0.5020777   1.3831413
0-24 months   ki1000108-IRC              INDIA                          8                    1                 0.7555556   0.4592264   1.2430996
0-24 months   ki1000108-IRC              INDIA                          9                    1                 1.1111111   0.6943233   1.7780879
0-24 months   ki1000108-IRC              INDIA                          10                   1                 0.7027027   0.4066790   1.2142037
0-24 months   ki1000108-IRC              INDIA                          11                   1                 0.9756098   0.6199539   1.5352986
0-24 months   ki1000108-IRC              INDIA                          12                   1                 1.0000000   0.6534640   1.5303063
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8678052   0.6002048   1.2547147
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9516340   0.7612219   1.1896757
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0043042   0.8160801   1.2359410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.0383632   0.9063821   1.1895624
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.8593350   0.6732413   1.0968677
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0375174   0.8682115   1.2398388
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1044983   0.9181194   1.3287122
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.8895879   0.7821132   1.0118313
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0686275   0.9824502   1.1623639
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9236884   0.7191027   1.1864791
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9617055   0.7406575   1.2487248
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0163934   0.7212997   1.4322142
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8196721   0.5583379   1.2033258
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0943396   0.7777066   1.5398857
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0638298   0.7432199   1.5227442
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.1063830   0.7794296   1.5704859
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.2916667   0.9406856   1.7736029
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.1162791   0.7811741   1.5951361
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.0000000   0.6623227   1.5098381
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.1803279   0.8598114   1.6203250
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.3846154   1.0266608   1.8673740
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.0740741   0.7618082   1.5143381
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6829609   0.4585185   1.0172668
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9532164   0.6659314   1.3644369
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1878706   0.8551356   1.6500733
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.7214115   0.4914086   1.0590669
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7680155   0.5191505   1.1361789
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9261364   0.6557480   1.3080155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7440091   0.5204183   1.0636628
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8706535   0.6144979   1.2335886
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8001818   0.5662656   1.1307254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7477064   0.5188749   1.0774560
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7130815   0.4908594   1.0359082
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.8444444   0.4121839   1.7300199
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 1.3434343   0.7593746   2.3767134
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.8444444   0.4423554   1.6120216
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1                 0.7256944   0.3695892   1.4249130
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1                 1.0826211   0.6153137   1.9048307
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1                 1.0133333   0.5416487   1.8957757
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1                 0.6666667   0.2949855   1.5066653
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1                 0.9047619   0.4915752   1.6652471
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 1.0235690   0.5667492   1.8486017
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1                 1.0215054   0.5615682   1.8581418
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 1.0555556   0.4831511   2.3061058
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.2226948   0.8466028   1.7658607
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9736401   0.6702240   1.4144152
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.0883424   0.7091260   1.6703509
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1282548   0.7967469   1.5976954
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9878801   0.6775631   1.4403190
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9915466   0.6338544   1.5510890
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0270261   0.6940761   1.5196929
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1360108   0.8617274   1.4975972
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9307623   0.2811500   3.0813398
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0887674   0.7809483   1.5179167
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.9835391   0.6882053   1.4056112
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.1416256   0.8018714   1.6253342
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.0315169   0.7039918   1.5114198
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.2623955   0.9403129   1.6948003
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.9554731   0.6714663   1.3596048
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.8333755   0.5595977   1.2410963
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.1832106   0.8233943   1.7002636
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.8655462   0.5484489   1.3659801
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.9939451   0.7004973   1.4103223
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9581395   0.6382133   1.4384397
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.2292948   0.8452079   1.7879219
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9459184   0.6269820   1.4270929
0-24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           2                    1                 0.4863158   0.2968773   0.7966355
0-24 months   ki1114097-CMIN             PERU                           3                    1                 0.6436533   0.4206532   0.9848719
0-24 months   ki1114097-CMIN             PERU                           4                    1                 0.6990789   0.4789806   1.0203156
0-24 months   ki1114097-CMIN             PERU                           5                    1                 0.6895522   0.4572118   1.0399607
0-24 months   ki1114097-CMIN             PERU                           6                    1                 0.6484211   0.4145639   1.0141979
0-24 months   ki1114097-CMIN             PERU                           7                    1                 0.6458882   0.4177095   0.9987120
0-24 months   ki1114097-CMIN             PERU                           8                    1                 0.7534470   0.5152066   1.1018539
0-24 months   ki1114097-CMIN             PERU                           9                    1                 0.4523868   0.2375208   0.8616247
0-24 months   ki1114097-CMIN             PERU                           10                   1                 1.0131579   0.6680974   1.5364360
0-24 months   ki1114097-CMIN             PERU                           11                   1                 0.6947368   0.4789837   1.0076737
0-24 months   ki1114097-CMIN             PERU                           12                   1                 0.5747368   0.3486905   0.9473228
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.0261839   0.7173855   1.4679043
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.8341486   0.6201151   1.1220560
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7086106   0.5050170   0.9942814
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.6245106   0.4554117   0.8563977
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.6953212   0.5142754   0.9401026
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.5890326   0.4203625   0.8253815
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6695602   0.4794059   0.9351383
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.6762754   0.4971408   0.9199577
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.7781825   0.6118282   0.9897681
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.7787349   0.6094170   0.9950955
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.7560283   0.5346104   1.0691503
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0374347   0.9248615   1.1637101
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9896496   0.8835168   1.1085318
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9056707   0.8010164   1.0239983
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0058651   0.8943131   1.1313315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9048416   0.8035466   1.0189059
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8920368   0.7924221   1.0041740
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8142059   0.7211809   0.9192302
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7907238   0.7011182   0.8917814
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8439523   0.7443767   0.9568483
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8828099   0.7831345   0.9951718
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9017910   0.8033149   1.0123389
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9576812   0.7079783   1.2954538
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.1047619   0.8231408   1.4827341
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.2108108   0.9152906   1.6017457
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.1474006   0.8622332   1.5268818
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0871795   0.8056380   1.4671097
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.1925926   0.8839154   1.6090647
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.8682171   0.5802600   1.2990743
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.8987654   0.5665605   1.4257600
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.9600000   0.6408686   1.4380483
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.8761905   0.5961846   1.2877047
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.2078431   0.8527107   1.7108792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9567832   0.8962735   1.0213781
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8616193   0.8066743   0.9203068
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8433886   0.7846776   0.9064925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9363920   0.8685342   1.0095515
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9763845   0.9052356   1.0531255
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9527379   0.8863096   1.0241450
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9479502   0.8883849   1.0115093
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8770513   0.8237836   0.9337634
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9584835   0.9031165   1.0172448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0145625   0.9592740   1.0730375
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0073369   0.9540257   1.0636271
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.1480548   0.8311218   1.5858443
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.1761017   0.8501394   1.6270452
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.2102455   0.8829950   1.6587796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.2145687   0.8842130   1.6683503
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.2275922   0.8921690   1.6891223
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.1751904   0.8514124   1.6220958
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.0615700   0.7647519   1.4735901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0486307   0.7581971   1.4503174
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.0254545   0.7347702   1.4311373
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.9733333   0.6799046   1.3933981
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.1200000   0.7642100   1.6414337
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0322581   0.6651860   1.6018928
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.0786517   0.6835847   1.7020415
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.7024390   0.3782833   1.3043678
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9739130   0.5717273   1.6590192
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.8347826   0.5182844   1.3445553
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0412698   0.7557442   1.4346692
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1105882   0.8376270   1.4725006
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7529412   0.5685277   0.9971730
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.8622754   0.6989444   1.0637741
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8648649   0.6114186   1.2233702
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.8805369   0.5929646   1.3075742
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.6812386   0.3499085   1.3263067
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.4335155   0.1943356   0.9670676
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6415094   0.3136328   1.3121535
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.4822695   0.2068508   1.1244042
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.4822695   0.2068508   1.1244042
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.4722222   0.2023376   1.1020881
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.4392765   0.1759391   1.0967650
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6666667   0.2913366   1.5255359
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.6812386   0.3499085   1.3263067
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.5811966   0.2742404   1.2317278
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4197531   0.1789159   0.9847789
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8405673   0.3948654   1.7893524
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8065677   0.3719936   1.7488242
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0903010   0.5409066   2.1977108
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9898785   0.4853288   2.0189603
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7645403   0.3450587   1.6939782
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6028107   0.2712209   1.3397962
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.6295462   0.2946855   1.3449201
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.1556186   0.5924075   2.2542833
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6520000   0.3100959   1.3708791
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9202541   0.4554872   1.8592565
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7652582   0.3646176   1.6061214
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8888889   0.3537573   2.2335184
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 1.0675791   0.5226589   2.1806292
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.7559055   0.1752762   3.2599594
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.6508475   0.2354772   1.7989107
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.7206005   0.3196014   1.6247270
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.6738992   0.3438763   1.3206498
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.8938547   0.3976664   2.0091622
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 1.0752956   0.5231430   2.2102191
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.9983580   0.4223724   2.3598100
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9538282   0.3927873   2.3162364
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.7260940   0.2521364   2.0909814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1557593   0.9485585   1.4082204
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9287038   0.7564450   1.1401896
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8665935   0.6960645   1.0789004
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9880553   0.8011020   1.2186379
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8897388   0.7214045   1.0973527
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8003926   0.6453010   0.9927589
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5745745   0.4526785   0.7292941
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4960388   0.3879349   0.6342675
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6253581   0.4898260   0.7983912
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.6556355   0.5195411   0.8273800
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7528032   0.6069760   0.9336657
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8732899   0.7991423   0.9543172
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7975821   0.7333938   0.8673883
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7568389   0.6883949   0.8320880
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7856450   0.7091018   0.8704506
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7661329   0.6883519   0.8527030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7904464   0.7191059   0.8688644
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8450777   0.7748901   0.9216227
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8076694   0.7476601   0.8724953
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9329239   0.8654670   1.0056385
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9910868   0.9240792   1.0629532
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0097771   0.9421742   1.0822306
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.0588843   0.6821864   1.6435918
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.1491935   0.7423723   1.7789535
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 0.9206989   0.5991926   1.4147145
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 0.9380016   0.6052991   1.4535739
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 0.9646739   0.6108703   1.5233933
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 0.8953652   0.5799476   1.3823296
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 0.7096851   0.4494477   1.1206042
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 0.6773844   0.4232867   1.0840162
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 0.7457386   0.4603386   1.2080807
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.5097518   0.2712633   0.9579140
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.9712838   0.5449164   1.7312605
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7100410   0.4038656   1.2483317
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.1345339   0.5310497   2.4238166
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.1540948   0.5973250   2.2298328
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.3629808   0.8753842   2.1221729
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.1859940   0.6159864   2.2834624
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.3834459   0.7314025   2.6167845
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.5750000   1.2688864   1.9549622
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.2285000   0.9812066   1.5381187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.5750000   1.1513227   2.1545870
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 1.1555707   0.6233996   2.1420345
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.2738971   0.8170128   1.9862769
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.1250000   0.6775399   1.8679712
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7500000   0.4102150   1.3712322
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0833333   0.6408471   1.8313435
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.1839286   0.7121179   1.9683354
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.2949219   0.7869020   2.1309168
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.2187500   0.7246525   2.0497433
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.1794355   0.6985002   1.9915071
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9971591   0.5319873   1.8690788
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.0904605   0.6503645   1.8283656
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1470588   0.6826457   1.9274184
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.1375000   0.6971301   1.8560469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5446429   0.2995495   0.9902731
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8790727   0.5244173   1.4735760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3118280   0.8226510   2.0918867
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.4859069   0.2589671   0.9117201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.4099462   0.2047446   0.8208076
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6501938   0.3826700   1.1047429
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.4596631   0.2578341   0.8194812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6170520   0.3603033   1.0567575
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6584629   0.3944885   1.0990774
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.6282772   0.3695086   1.0682625
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7129065   0.4230583   1.2013372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.1689815   0.6719931   2.0335293
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.1447075   0.5670951   2.3106450
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.3741497   0.8198794   2.3031281
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0421964   0.5439560   1.9968037
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0057073   0.5429150   1.8629937
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.2757440   0.7210999   2.2570001
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.1529680   0.6040613   2.2006628
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.3108579   0.7161161   2.3995388
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 1.0550807   0.5042255   2.2077331
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1763336   0.6536934   2.1168343
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0452070   0.5778293   1.8906233
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.9939516   0.5362048   1.8424672
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9709821   0.5131848   1.8371671
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.3447581   0.8255796   2.1904298
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.8274457   0.4574341   1.4967540
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7689394   0.3985552   1.4835280
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.0592532   0.5616721   1.9976377
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9216102   0.4495381   1.8894179
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.9208669   0.5104355   1.6613185
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9886364   0.5168006   1.8912552
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.5535714   0.8721022   2.7675475
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.5437500   0.2368895   1.2481094
6-24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           2                    1                 0.8772414   0.4195161   1.8343811
6-24 months   ki1114097-CMIN             PERU                           3                    1                 0.9868966   0.4898168   1.9884266
6-24 months   ki1114097-CMIN             PERU                           4                    1                 1.3250000   0.7442521   2.3589117
6-24 months   ki1114097-CMIN             PERU                           5                    1                 0.9868966   0.4898168   1.9884266
6-24 months   ki1114097-CMIN             PERU                           6                    1                 1.5621053   0.8742116   2.7912839
6-24 months   ki1114097-CMIN             PERU                           7                    1                 0.7950000   0.3639447   1.7365962
6-24 months   ki1114097-CMIN             PERU                           8                    1                 1.0600000   0.5418780   2.0735293
6-24 months   ki1114097-CMIN             PERU                           9                    1                 0.8368421   0.3425650   2.0442974
6-24 months   ki1114097-CMIN             PERU                           10                   1                 1.4454545   0.6172130   3.3851178
6-24 months   ki1114097-CMIN             PERU                           11                   1                 1.5228169   0.8791784   2.6376572
6-24 months   ki1114097-CMIN             PERU                           12                   1                 1.1832558   0.5748999   2.4353704
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.4634301   0.8490586   2.5223556
6-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 1.1127697   0.6741327   1.8368140
6-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7985880   0.4711318   1.3536398
6-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.8600126   0.5230077   1.4141698
6-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.6105722   0.3427299   1.0877324
6-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.5260416   0.2834263   0.9763377
6-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6725503   0.3808633   1.1876280
6-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.6383254   0.3830216   1.0638025
6-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.7984670   0.4849770   1.3145977
6-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.6248029   0.3848653   1.0143255
6-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 1.0054440   0.5630990   1.7952749
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8782077   0.6898906   1.1179291
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.8409008   0.6631581   1.0662830
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.7954022   0.6177404   1.0241595
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9768325   0.7694794   1.2400614
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8869283   0.7007981   1.1224943
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7856671   0.6144925   1.0045246
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9417924   0.7504327   1.1819486
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7863629   0.6218060   0.9944687
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8326984   0.6488641   1.0686162
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9075068   0.7199587   1.1439109
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0032576   0.8080734   1.2455870
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1254115   0.9593313   1.3202437
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8286137   0.6999309   0.9809549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.6927667   0.5775564   0.8309590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.6839321   0.5588715   0.8369780
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7985706   0.6613010   0.9643339
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7024190   0.5861164   0.8417993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.6376030   0.5368390   0.7572802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8182849   0.7008107   0.9554510
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.7780794   0.6637023   0.9121673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9581072   0.8226162   1.1159146
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0088657   0.8700728   1.1697987
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8008289   0.4823751   1.3295191
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.8400000   0.5152038   1.3695551
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.0155024   0.6394399   1.6127317
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.0406909   0.6500916   1.6659768
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.0452962   0.6516722   1.6766774
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.0292937   0.6379733   1.6606427
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 0.9240246   0.5668244   1.5063245
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 0.8449926   0.5224144   1.3667551
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 0.7439177   0.4567616   1.2116023
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.8875267   0.5244177   1.5020539
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.9542411   0.5496318   1.6567020


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0511551   -0.1956380    0.0933278
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0243902   -0.1805580    0.1317775
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0128832   -0.0924427    0.0666762
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0453100   -0.0669562    0.1575762
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0441457   -0.1096787    0.0213874
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0197160   -0.2376576    0.1982257
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0120781   -0.0858545    0.1100108
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0238305   -0.0645900    0.1122511
0-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.1055504   -0.1594470   -0.0516537
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0337329   -0.0632736   -0.0041922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0281314   -0.0515291   -0.0047336
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0369048   -0.0892899    0.1630994
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0242351   -0.0426858   -0.0057844
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0686431   -0.0739047    0.2111908
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0242647   -0.1061387    0.0576093
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1073132   -0.2044883   -0.0101381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0125593   -0.0525031    0.0273845
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0013597   -0.0077642    0.0050449
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0254722   -0.0422918   -0.0086526
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0427291   -0.0605722   -0.0248860
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0332554   -0.1660611    0.0995504
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0644965   -0.0185366    0.1475295
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0397436   -0.1076370    0.1871242
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0629909   -0.1305320    0.0045501
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0191196   -0.0438709    0.0821101
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0062272   -0.0724186    0.0848730
6-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0182992   -0.0325966    0.0691950
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0086435   -0.0265800    0.0092931
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0169693   -0.0390059    0.0050673
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0380412   -0.0628909   -0.0131914
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0161204   -0.1549673    0.1227266


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1139706   -0.4875447    0.1657861
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0512821   -0.4367471    0.2307666
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0216795   -0.1650640    0.1040587
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0830904   -0.1478583    0.2675723
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1955139   -0.5238720    0.0620909
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0434303   -0.6530680    0.3413782
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0356879   -0.3011456    0.2853238
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0655340   -0.2121938    0.2796311
0-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.3452686   -0.5343139   -0.1795159
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3352852   -0.6682225   -0.0687943
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0961532   -0.1791125   -0.0190306
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0644491   -0.1841148    0.2608356
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0546142   -0.0970479   -0.0138219
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1291239   -0.1850803    0.3600222
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0841837   -0.4103088    0.1665270
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.6818182   -1.4211589   -0.1682473
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1869070   -0.9576158    0.2803756
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.1501225   -1.1323572    0.3796622
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2417276   -0.4117130   -0.0922103
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1327558   -0.1895801   -0.0786459
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.1159755   -0.6900119    0.2630813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2025231   -0.0997123    0.4216948
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0883191   -0.3058405    0.3635041
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4710294   -1.0713397   -0.0446995
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1251422   -0.4070003    0.4560228
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0327514   -0.4833858    0.3693011
6-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.1042500   -0.2377462    0.3517508
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.2272816   -0.8108958    0.1682458
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1247414   -0.2988843    0.0260541
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1930205   -0.3265300   -0.0729482
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0546471   -0.6478686    0.3250187
