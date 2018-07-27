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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        brthmon    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       17     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       19     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1        6     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       18     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1        7     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     0       22     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     1        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     0       17     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     0        7     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     1        4     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     0       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     0       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     0       20     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     1        3     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    0       20     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    0       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    1        2     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    0       26     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    1        2     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       14     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     0       12     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     0        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     0       28     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    0       22     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1        0     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     0        7     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     0       19     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    1        5     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    0       21     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    1        3     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       36     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        6     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                     0       18     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                     1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                     0       25     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                     1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                     1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                     0       22     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                     1        2     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                     0       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                     1        0     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                     0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                     1        0     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                    0       24     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                    1        3     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                    0       25     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                    1        8     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                    0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                    1        3     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       38     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       17     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        1     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        0     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       20     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        3     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       24     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0       10     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       23     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        2     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       27     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       23     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        8     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       41     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        4     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       18     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       26     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       18     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        3     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       21     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0       10     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        6     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       25     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        2     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       27     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1        7     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       38     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       30     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     1        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       10     368
0-6 months    ki1000108-IRC              INDIA                          1                     0       31     410
0-6 months    ki1000108-IRC              INDIA                          1                     1        7     410
0-6 months    ki1000108-IRC              INDIA                          2                     0       26     410
0-6 months    ki1000108-IRC              INDIA                          2                     1        2     410
0-6 months    ki1000108-IRC              INDIA                          3                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          3                     1        4     410
0-6 months    ki1000108-IRC              INDIA                          4                     0       19     410
0-6 months    ki1000108-IRC              INDIA                          4                     1        2     410
0-6 months    ki1000108-IRC              INDIA                          5                     0       21     410
0-6 months    ki1000108-IRC              INDIA                          5                     1        1     410
0-6 months    ki1000108-IRC              INDIA                          6                     0       31     410
0-6 months    ki1000108-IRC              INDIA                          6                     1        6     410
0-6 months    ki1000108-IRC              INDIA                          7                     0       31     410
0-6 months    ki1000108-IRC              INDIA                          7                     1        5     410
0-6 months    ki1000108-IRC              INDIA                          8                     0       40     410
0-6 months    ki1000108-IRC              INDIA                          8                     1        4     410
0-6 months    ki1000108-IRC              INDIA                          9                     0       25     410
0-6 months    ki1000108-IRC              INDIA                          9                     1        2     410
0-6 months    ki1000108-IRC              INDIA                          10                    0       34     410
0-6 months    ki1000108-IRC              INDIA                          10                    1        4     410
0-6 months    ki1000108-IRC              INDIA                          11                    0       34     410
0-6 months    ki1000108-IRC              INDIA                          11                    1        6     410
0-6 months    ki1000108-IRC              INDIA                          12                    0       45     410
0-6 months    ki1000108-IRC              INDIA                          12                    1        7     410
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       53     379
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       42     379
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       49     379
0-6 months    ki1000109-EE               PAKISTAN                       2                     1       18     379
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       31     379
0-6 months    ki1000109-EE               PAKISTAN                       3                     1       11     379
0-6 months    ki1000109-EE               PAKISTAN                       4                     0        8     379
0-6 months    ki1000109-EE               PAKISTAN                       4                     1        8     379
0-6 months    ki1000109-EE               PAKISTAN                       10                    0        3     379
0-6 months    ki1000109-EE               PAKISTAN                       10                    1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       49     379
0-6 months    ki1000109-EE               PAKISTAN                       11                    1       21     379
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       56     379
0-6 months    ki1000109-EE               PAKISTAN                       12                    1       29     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     0        9     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     0       14     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     1        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     0       17     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     1       10     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     0       35     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     1       18     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     0       36     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     1       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     0       20     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     1       14     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     0       32     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     0       19     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    0        4     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    1        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    1        1     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    0        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    1        0     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0       77    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1       36    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0       60    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1       31    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     0       58    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     1       24    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     0       57    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     1       18    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     0       74    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     1       27    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     0       79    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     1       30    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     0       90    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     1       44    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     0      119    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     1       63    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     0      152    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     1       40    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    0      117    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    1       51    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    0      107    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    1       35    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    0       99    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    1       42    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       17     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        9     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       28     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        8     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     0       12     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        9     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     0       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        3     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     0       13     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       12     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       11     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       44     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       23     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     0       34     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       24     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    0       19     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       14     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       24     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       14     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       54     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       19     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     0       50     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     1        8     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     0       52     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     0       42     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     1       11     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     0       44     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     1        5     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     0       43     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     0       37     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     1        4     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     0       36     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     1        5     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     0       38     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     1       10     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    0       42     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    1        7     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    0       44     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    1        9     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    0       48     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    1        7     629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      155    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       16    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      166    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       12    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      156    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1        8    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      172    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       18    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      171    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       14    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      157    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1        9    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      208    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       10    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      220    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       12    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      196    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       20    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      237    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       13    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      205    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       16    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      192    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       13    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      231    2465
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       28    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      196    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1       20    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                     0      244    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                     1       18    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                     0      151    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                     1       16    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                     0      158    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                     1       11    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                     0      133    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                     1        8    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                     0       97    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                     1        8    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                     0      181    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                     1       17    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                     0      192    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                     1       22    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                    0      253    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                    1       37    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                    0      197    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                    1       21    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                    0      201    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                    1       25    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1        8     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     0       18     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     1        7     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     1        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     0       24     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     1       11     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     0       19     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     0       17     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     0       11     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     0        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    0       22     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    1        4     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    0       26     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    1        5     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0      115     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      208     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1       27     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      212     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1       25     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     0       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     1       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     0       21     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     1        6     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     0       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     1        4     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     0       15     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     0        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     1       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     0        3     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     1        6     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     1        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     1       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     1       10     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    0       19     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    0       20     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    1       10     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    0       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    1       14     277
0-6 months    ki1114097-CMIN             BRAZIL                         1                     0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    0       14     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    1        2     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    0       11     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    1        1     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     0      102     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     1       13     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     0       64     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     1       16     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     0       63     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     1       10     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     0       50     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     0       57     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     1        8     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     0       54     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     1        3     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     0       58     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     1        5     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     0       53     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     1        8     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     0       82     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     1       20     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    0       85     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    1       11     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    0       78     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    1        8     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    0       95     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    1       16     965
0-6 months    ki1114097-CMIN             PERU                           1                     0       43     699
0-6 months    ki1114097-CMIN             PERU                           1                     1        0     699
0-6 months    ki1114097-CMIN             PERU                           2                     0       64     699
0-6 months    ki1114097-CMIN             PERU                           2                     1        3     699
0-6 months    ki1114097-CMIN             PERU                           3                     0       68     699
0-6 months    ki1114097-CMIN             PERU                           3                     1        4     699
0-6 months    ki1114097-CMIN             PERU                           4                     0       58     699
0-6 months    ki1114097-CMIN             PERU                           4                     1        4     699
0-6 months    ki1114097-CMIN             PERU                           5                     0       60     699
0-6 months    ki1114097-CMIN             PERU                           5                     1        5     699
0-6 months    ki1114097-CMIN             PERU                           6                     0       54     699
0-6 months    ki1114097-CMIN             PERU                           6                     1        4     699
0-6 months    ki1114097-CMIN             PERU                           7                     0       52     699
0-6 months    ki1114097-CMIN             PERU                           7                     1        5     699
0-6 months    ki1114097-CMIN             PERU                           8                     0       69     699
0-6 months    ki1114097-CMIN             PERU                           8                     1        4     699
0-6 months    ki1114097-CMIN             PERU                           9                     0       51     699
0-6 months    ki1114097-CMIN             PERU                           9                     1        5     699
0-6 months    ki1114097-CMIN             PERU                           10                    0       50     699
0-6 months    ki1114097-CMIN             PERU                           10                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           11                    0       39     699
0-6 months    ki1114097-CMIN             PERU                           11                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           12                    0       50     699
0-6 months    ki1114097-CMIN             PERU                           12                    1        1     699
0-6 months    ki1114097-CONTENT          PERU                           1                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                     0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                     0       30     215
0-6 months    ki1114097-CONTENT          PERU                           3                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                     0       16     215
0-6 months    ki1114097-CONTENT          PERU                           4                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           5                     0       12     215
0-6 months    ki1114097-CONTENT          PERU                           5                     1        2     215
0-6 months    ki1114097-CONTENT          PERU                           6                     0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                     0       25     215
0-6 months    ki1114097-CONTENT          PERU                           7                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           8                     0       19     215
0-6 months    ki1114097-CONTENT          PERU                           8                     1        4     215
0-6 months    ki1114097-CONTENT          PERU                           9                     0       23     215
0-6 months    ki1114097-CONTENT          PERU                           9                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           10                    0       13     215
0-6 months    ki1114097-CONTENT          PERU                           10                    1        1     215
0-6 months    ki1114097-CONTENT          PERU                           11                    0        7     215
0-6 months    ki1114097-CONTENT          PERU                           11                    1        2     215
0-6 months    ki1114097-CONTENT          PERU                           12                    0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                    1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0     1013   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1       12   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                     0      975   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                     1        8   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                     0     1131   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                     1       14   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                     0     1152   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                     1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                     0     1167   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                     1        7   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                     0     1202   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                     1        9   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                     0     1578   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                     1       12   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                     0     1573   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                     1       14   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                     0     1608   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                     1       19   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                    0     1796   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                    1       18   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                    0     1685   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                    1       17   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                    0     1860   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                    1       14   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1183   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      176   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      906   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      164   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     0     1056   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      143   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      893   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      113   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      905   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      131   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     0     1018   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      136   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     0     1058   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      122   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     0     1169   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     1       96   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1223   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     1       84   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      966   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       84   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    0     1085   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      114   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    0     1110   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      116   14051
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0       18     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1       11     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                     1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                     1        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                     1        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     0        9     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                     1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                     1        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     0        2     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                     1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     0       25     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                     1        7     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     0       33     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                     1       20     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    0       40     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                    1       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    0       19     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                    1       11     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    0       19     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                    1        9     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1623   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      910   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1421   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1      645   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1734   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1      694   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1276   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1      496   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0      943   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1      377   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1006   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1      389   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1132   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1      442   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1482   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1      670   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1957   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1      836   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1952   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1     1007   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1893   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1     1146   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     2006   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1     1133   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0      534    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1      255    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      636    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1      299    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     0      507    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     1      223    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     0      443    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     1      171    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     0      323    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     1      131    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     0      384    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     1      150    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     0      429    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     1      121    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     0      300    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     1       93    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    0      103    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    1       28    5130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        9     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        9     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       13     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        6     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0       10     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0        5     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        3     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        5     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       13     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        5     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       12     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        6     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       14     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        3     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        4     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       15     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1       11     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       14     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       19     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        2     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       16     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       11     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       20     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        8     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       12     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        4     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       16     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       29     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       18     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        1     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       20     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        0     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       12     203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     203
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        6     194
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       14     194
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        3     194
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       15     194
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        5     194
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     0        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        3     194
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        3     194
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        4     194
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       10     194
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       10     194
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     0       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       11     194
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        4     194
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        8     194
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        7     194
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    0       13     194
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        3     194
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       15     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       12     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       19     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        6     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       17     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       15     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        2     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       20     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        4     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        1     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       18     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        3     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       20     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        3     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       13     224
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        4     224
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       20     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        9     229
6-24 months   ki0047075b-MAL-ED          PERU                           2                     0       12     229
6-24 months   ki0047075b-MAL-ED          PERU                           2                     1        5     229
6-24 months   ki0047075b-MAL-ED          PERU                           3                     0       12     229
6-24 months   ki0047075b-MAL-ED          PERU                           3                     1        5     229
6-24 months   ki0047075b-MAL-ED          PERU                           4                     0        9     229
6-24 months   ki0047075b-MAL-ED          PERU                           4                     1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           5                     0       16     229
6-24 months   ki0047075b-MAL-ED          PERU                           5                     1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           6                     0        6     229
6-24 months   ki0047075b-MAL-ED          PERU                           6                     1        7     229
6-24 months   ki0047075b-MAL-ED          PERU                           7                     0       10     229
6-24 months   ki0047075b-MAL-ED          PERU                           7                     1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           8                     0       10     229
6-24 months   ki0047075b-MAL-ED          PERU                           8                     1        4     229
6-24 months   ki0047075b-MAL-ED          PERU                           9                     0       17     229
6-24 months   ki0047075b-MAL-ED          PERU                           9                     1        5     229
6-24 months   ki0047075b-MAL-ED          PERU                           10                    0       13     229
6-24 months   ki0047075b-MAL-ED          PERU                           10                    1        3     229
6-24 months   ki0047075b-MAL-ED          PERU                           11                    0       18     229
6-24 months   ki0047075b-MAL-ED          PERU                           11                    1        8     229
6-24 months   ki0047075b-MAL-ED          PERU                           12                    0       11     229
6-24 months   ki0047075b-MAL-ED          PERU                           12                    1        5     229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       24     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        8     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        3     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       11     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        1     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       12     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        1     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0        9     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        8     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       15     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        4     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        6     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        2     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       13     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        5     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       19     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        5     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       15     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        4     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       19     224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        7     224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0        9     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       15     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        5     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        2     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        3     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0        4     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1       12     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0        8     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1       11     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1       10     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        5     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        5     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0        4     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1       12     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        6     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1       11     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1       12     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0        7     187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       11     187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       18     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        2     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        9     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0        6     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       21     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       19     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       15     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0        6     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       20     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       10     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       17     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       11     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       15     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        7     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        7     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0        4     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       14     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0        8     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       15     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       13     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       23     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        2     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       17     288
6-24 months   ki1000108-IRC              INDIA                          1                     0       22     339
6-24 months   ki1000108-IRC              INDIA                          1                     1        6     339
6-24 months   ki1000108-IRC              INDIA                          2                     0       15     339
6-24 months   ki1000108-IRC              INDIA                          2                     1        6     339
6-24 months   ki1000108-IRC              INDIA                          3                     0       16     339
6-24 months   ki1000108-IRC              INDIA                          3                     1        6     339
6-24 months   ki1000108-IRC              INDIA                          4                     0       10     339
6-24 months   ki1000108-IRC              INDIA                          4                     1        6     339
6-24 months   ki1000108-IRC              INDIA                          5                     0       11     339
6-24 months   ki1000108-IRC              INDIA                          5                     1        3     339
6-24 months   ki1000108-IRC              INDIA                          6                     0       33     339
6-24 months   ki1000108-IRC              INDIA                          6                     1        3     339
6-24 months   ki1000108-IRC              INDIA                          7                     0       24     339
6-24 months   ki1000108-IRC              INDIA                          7                     1        8     339
6-24 months   ki1000108-IRC              INDIA                          8                     0       30     339
6-24 months   ki1000108-IRC              INDIA                          8                     1       11     339
6-24 months   ki1000108-IRC              INDIA                          9                     0       13     339
6-24 months   ki1000108-IRC              INDIA                          9                     1        8     339
6-24 months   ki1000108-IRC              INDIA                          10                    0       28     339
6-24 months   ki1000108-IRC              INDIA                          10                    1        6     339
6-24 months   ki1000108-IRC              INDIA                          11                    0       23     339
6-24 months   ki1000108-IRC              INDIA                          11                    1       11     339
6-24 months   ki1000108-IRC              INDIA                          12                    0       31     339
6-24 months   ki1000108-IRC              INDIA                          12                    1        9     339
6-24 months   ki1000109-EE               PAKISTAN                       1                     0        9     188
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       36     188
6-24 months   ki1000109-EE               PAKISTAN                       2                     0        9     188
6-24 months   ki1000109-EE               PAKISTAN                       2                     1       25     188
6-24 months   ki1000109-EE               PAKISTAN                       3                     0        5     188
6-24 months   ki1000109-EE               PAKISTAN                       3                     1       18     188
6-24 months   ki1000109-EE               PAKISTAN                       4                     0        1     188
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        4     188
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        1     188
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        2     188
6-24 months   ki1000109-EE               PAKISTAN                       11                    0       11     188
6-24 months   ki1000109-EE               PAKISTAN                       11                    1       20     188
6-24 months   ki1000109-EE               PAKISTAN                       12                    0       11     188
6-24 months   ki1000109-EE               PAKISTAN                       12                    1       36     188
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        4     167
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        9     167
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     0       12     167
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       12     167
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       30     167
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     1        5     167
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       26     167
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        4     167
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       16     167
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        2     167
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       21     167
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        3     167
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       14     167
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        3     167
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        1     167
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0     167
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        2     167
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        1     167
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       52     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       13     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       46     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       12     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       38     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1       18     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       35     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       14     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       45     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       20     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       46     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       26     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0       50     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1       28     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0       68     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1       38     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0       92     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1       41     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       56     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1       42     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       63     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       24     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       66     964
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       31     964
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        9     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       13     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        8     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        1     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        2     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        0     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        2     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        4     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1        9     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       11     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       14     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       22     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       22     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0        7     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       25     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0        9     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       13     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        6     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       10     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        8     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       13     226
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       22     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       21     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1       18     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       27     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       13     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       19     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       17     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1       19     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1       17     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       14     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1       12     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       17     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1       12     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1       16     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       21     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1       15     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       24     420
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1       20     420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       99    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       25    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      128    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       15    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      104    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       22    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0       97    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       34    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      122    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       11    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      115    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       10    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      157    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       24    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      167    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       15    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      150    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       23    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      168    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       24    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      156    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       22    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      137    1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       22    1847
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      187    2377
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       58    2377
6-24 months   ki1101329-Keneba           GAMBIA                         2                     0      166    2377
6-24 months   ki1101329-Keneba           GAMBIA                         2                     1       50    2377
6-24 months   ki1101329-Keneba           GAMBIA                         3                     0      193    2377
6-24 months   ki1101329-Keneba           GAMBIA                         3                     1       57    2377
6-24 months   ki1101329-Keneba           GAMBIA                         4                     0      127    2377
6-24 months   ki1101329-Keneba           GAMBIA                         4                     1       39    2377
6-24 months   ki1101329-Keneba           GAMBIA                         5                     0      122    2377
6-24 months   ki1101329-Keneba           GAMBIA                         5                     1       40    2377
6-24 months   ki1101329-Keneba           GAMBIA                         6                     0      100    2377
6-24 months   ki1101329-Keneba           GAMBIA                         6                     1       31    2377
6-24 months   ki1101329-Keneba           GAMBIA                         7                     0       81    2377
6-24 months   ki1101329-Keneba           GAMBIA                         7                     1       32    2377
6-24 months   ki1101329-Keneba           GAMBIA                         8                     0      151    2377
6-24 months   ki1101329-Keneba           GAMBIA                         8                     1       50    2377
6-24 months   ki1101329-Keneba           GAMBIA                         9                     0      155    2377
6-24 months   ki1101329-Keneba           GAMBIA                         9                     1       47    2377
6-24 months   ki1101329-Keneba           GAMBIA                         10                    0      219    2377
6-24 months   ki1101329-Keneba           GAMBIA                         10                    1       59    2377
6-24 months   ki1101329-Keneba           GAMBIA                         11                    0      154    2377
6-24 months   ki1101329-Keneba           GAMBIA                         11                    1       52    2377
6-24 months   ki1101329-Keneba           GAMBIA                         12                    0      164    2377
6-24 months   ki1101329-Keneba           GAMBIA                         12                    1       43    2377
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       12     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        7     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       18     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        3     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       14     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        3     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       20     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       15     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        3     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0        8     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        2     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       11     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        2     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0        8     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        0     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0        6     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        4     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       17     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1        5     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       11     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        2     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       15     193
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1        3     193
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      224    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       41    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      137    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       18    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      139    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       26    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      136    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       28    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      158    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       24    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      131    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       25    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      130    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1       23    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      219    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1       30    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      282    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1       64    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      261    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1       48    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      231    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1       39    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      220    2677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1       43    2677
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       52     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       51     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      102     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       83     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      111     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       81     480
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        8     166
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     0        9     166
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     1       12     166
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     0        8     166
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        8     166
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     0        7     166
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        9     166
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     0        5     166
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     1       10     166
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        2     166
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        3     166
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     0        4     166
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        7     166
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     0        3     166
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        5     166
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     0        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    0        7     166
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    1       10     166
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    0        6     166
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    1       10     166
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    0        4     166
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    1       11     166
6-24 months   ki1114097-CMIN             BRAZIL                         1                     0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         1                     1        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                     0       10     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                     1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                     0        8     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                     1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                     0        4     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                     1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                     0        5     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                     1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                     0       13     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                     1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                     0        6     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                     1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                    0       12     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                    1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                    0       10     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                    1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                    0        7     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                    1        2     104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      104    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       22    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0       74    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1       22    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0       88    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       11    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       64    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1       16    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0       72    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1       16    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       59    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1       16    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       69    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1       15    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0       84    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1       20    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0      103    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1       28    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0      106    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       32    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0       94    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1       21    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0      101    1257
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       20    1257
6-24 months   ki1114097-CMIN             PERU                           1                     0       38     752
6-24 months   ki1114097-CMIN             PERU                           1                     1        5     752
6-24 months   ki1114097-CMIN             PERU                           2                     0       51     752
6-24 months   ki1114097-CMIN             PERU                           2                     1       13     752
6-24 months   ki1114097-CMIN             PERU                           3                     0       71     752
6-24 months   ki1114097-CMIN             PERU                           3                     1       11     752
6-24 months   ki1114097-CMIN             PERU                           4                     0       61     752
6-24 months   ki1114097-CMIN             PERU                           4                     1       11     752
6-24 months   ki1114097-CMIN             PERU                           5                     0       61     752
6-24 months   ki1114097-CMIN             PERU                           5                     1       13     752
6-24 months   ki1114097-CMIN             PERU                           6                     0       58     752
6-24 months   ki1114097-CMIN             PERU                           6                     1       13     752
6-24 months   ki1114097-CMIN             PERU                           7                     0       52     752
6-24 months   ki1114097-CMIN             PERU                           7                     1       15     752
6-24 months   ki1114097-CMIN             PERU                           8                     0       60     752
6-24 months   ki1114097-CMIN             PERU                           8                     1       18     752
6-24 months   ki1114097-CMIN             PERU                           9                     0       45     752
6-24 months   ki1114097-CMIN             PERU                           9                     1        8     752
6-24 months   ki1114097-CMIN             PERU                           10                    0       38     752
6-24 months   ki1114097-CMIN             PERU                           10                    1        8     752
6-24 months   ki1114097-CMIN             PERU                           11                    0       39     752
6-24 months   ki1114097-CMIN             PERU                           11                    1        6     752
6-24 months   ki1114097-CMIN             PERU                           12                    0       46     752
6-24 months   ki1114097-CMIN             PERU                           12                    1       11     752
6-24 months   ki1114097-CONTENT          PERU                           1                     0       10     200
6-24 months   ki1114097-CONTENT          PERU                           1                     1        0     200
6-24 months   ki1114097-CONTENT          PERU                           2                     0       14     200
6-24 months   ki1114097-CONTENT          PERU                           2                     1        2     200
6-24 months   ki1114097-CONTENT          PERU                           3                     0       25     200
6-24 months   ki1114097-CONTENT          PERU                           3                     1        3     200
6-24 months   ki1114097-CONTENT          PERU                           4                     0       12     200
6-24 months   ki1114097-CONTENT          PERU                           4                     1        2     200
6-24 months   ki1114097-CONTENT          PERU                           5                     0       12     200
6-24 months   ki1114097-CONTENT          PERU                           5                     1        0     200
6-24 months   ki1114097-CONTENT          PERU                           6                     0        9     200
6-24 months   ki1114097-CONTENT          PERU                           6                     1        3     200
6-24 months   ki1114097-CONTENT          PERU                           7                     0       25     200
6-24 months   ki1114097-CONTENT          PERU                           7                     1        3     200
6-24 months   ki1114097-CONTENT          PERU                           8                     0       21     200
6-24 months   ki1114097-CONTENT          PERU                           8                     1        0     200
6-24 months   ki1114097-CONTENT          PERU                           9                     0       23     200
6-24 months   ki1114097-CONTENT          PERU                           9                     1        2     200
6-24 months   ki1114097-CONTENT          PERU                           10                    0       12     200
6-24 months   ki1114097-CONTENT          PERU                           10                    1        2     200
6-24 months   ki1114097-CONTENT          PERU                           11                    0        8     200
6-24 months   ki1114097-CONTENT          PERU                           11                    1        1     200
6-24 months   ki1114097-CONTENT          PERU                           12                    0       10     200
6-24 months   ki1114097-CONTENT          PERU                           12                    1        1     200
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0      932   16303
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1       46   16303
6-24 months   ki1119695-PROBIT           BELARUS                        2                     0      884   16303
6-24 months   ki1119695-PROBIT           BELARUS                        2                     1       63   16303
6-24 months   ki1119695-PROBIT           BELARUS                        3                     0     1057   16303
6-24 months   ki1119695-PROBIT           BELARUS                        3                     1       57   16303
6-24 months   ki1119695-PROBIT           BELARUS                        4                     0     1077   16303
6-24 months   ki1119695-PROBIT           BELARUS                        4                     1       40   16303
6-24 months   ki1119695-PROBIT           BELARUS                        5                     0     1093   16303
6-24 months   ki1119695-PROBIT           BELARUS                        5                     1       46   16303
6-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1138   16303
6-24 months   ki1119695-PROBIT           BELARUS                        6                     1       33   16303
6-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1488   16303
6-24 months   ki1119695-PROBIT           BELARUS                        7                     1       38   16303
6-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1493   16303
6-24 months   ki1119695-PROBIT           BELARUS                        8                     1       49   16303
6-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1515   16303
6-24 months   ki1119695-PROBIT           BELARUS                        9                     1       46   16303
6-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1691   16303
6-24 months   ki1119695-PROBIT           BELARUS                        10                    1       67   16303
6-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1591   16303
6-24 months   ki1119695-PROBIT           BELARUS                        11                    1       48   16303
6-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1724   16303
6-24 months   ki1119695-PROBIT           BELARUS                        12                    1       87   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      765    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      139    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      621    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1       96    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      692    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      105    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      584    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1       81    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      564    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1       96    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      657    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      104    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      660    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1       94    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      706    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      114    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      772    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      104    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      584    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1       88    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      705    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      116    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      740    9317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      130    9317
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       32     589
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       11     589
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       31     589
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     1        8     589
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       13     589
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     1        3     589
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       22     589
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     1        9     589
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       24     589
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     1        3     589
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       14     589
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     1        6     589
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       34     589
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     1       16     589
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       51     589
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     1       18     589
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       48     589
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     1       21     589
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    0       51     589
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    1       32     589
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    0       46     589
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    1       30     589
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       43     589
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    1       23     589
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      785   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      256   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0      674   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      237   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0      945   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      207   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0      795   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      154   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      750   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      157   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      819   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      170   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      848   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      172   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1035   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      183   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1066   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1      240   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1047   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1      246   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0      981   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1      313   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0      937   13304
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      287   13304
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      539    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      192    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      579    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      219    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      412    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      190    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      350    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      156    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      248    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      120    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      269    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      142    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      311    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      146    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      247    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1       80    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       85    4312
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       27    4312
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0        5     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        6     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       15     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       14     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1       14     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        5     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       28     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        4     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     1       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     1       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     1       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    0       12     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    1       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    1       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        8     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       14     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        5     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       21     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1       21     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       12     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                     0       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                     1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                     0       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                     1       12     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                     0        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                     1        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                     0       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                     1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                     0       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                     1        6     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                     0       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                     1        7     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                    0       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                    1        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                    0       15     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                    1       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                    0       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                    1        9     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       25     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       17     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       16     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       13     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        5     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        5     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        2     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       17     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        9     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        8     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        4     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        7     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       19     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       16     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1       15     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       25     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1       20     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       10     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       10     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       23     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        6     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0        6     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1       16     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1       18     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1       20     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       12     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       22     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       33     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       24     373
0-24 months   ki1000108-IRC              INDIA                          1                     0       20     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       18     410
0-24 months   ki1000108-IRC              INDIA                          2                     0       11     410
0-24 months   ki1000108-IRC              INDIA                          2                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          3                     0       13     410
0-24 months   ki1000108-IRC              INDIA                          3                     1       14     410
0-24 months   ki1000108-IRC              INDIA                          4                     0        7     410
0-24 months   ki1000108-IRC              INDIA                          4                     1       14     410
0-24 months   ki1000108-IRC              INDIA                          5                     0        8     410
0-24 months   ki1000108-IRC              INDIA                          5                     1       14     410
0-24 months   ki1000108-IRC              INDIA                          6                     0       25     410
0-24 months   ki1000108-IRC              INDIA                          6                     1       12     410
0-24 months   ki1000108-IRC              INDIA                          7                     0       21     410
0-24 months   ki1000108-IRC              INDIA                          7                     1       15     410
0-24 months   ki1000108-IRC              INDIA                          8                     0       27     410
0-24 months   ki1000108-IRC              INDIA                          8                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          9                     0       12     410
0-24 months   ki1000108-IRC              INDIA                          9                     1       15     410
0-24 months   ki1000108-IRC              INDIA                          10                    0       25     410
0-24 months   ki1000108-IRC              INDIA                          10                    1       13     410
0-24 months   ki1000108-IRC              INDIA                          11                    0       20     410
0-24 months   ki1000108-IRC              INDIA                          11                    1       20     410
0-24 months   ki1000108-IRC              INDIA                          12                    0       26     410
0-24 months   ki1000108-IRC              INDIA                          12                    1       26     410
0-24 months   ki1000109-EE               PAKISTAN                       1                     0        8     379
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       87     379
0-24 months   ki1000109-EE               PAKISTAN                       2                     0       10     379
0-24 months   ki1000109-EE               PAKISTAN                       2                     1       57     379
0-24 months   ki1000109-EE               PAKISTAN                       3                     0        6     379
0-24 months   ki1000109-EE               PAKISTAN                       3                     1       36     379
0-24 months   ki1000109-EE               PAKISTAN                       4                     0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       4                     1       15     379
0-24 months   ki1000109-EE               PAKISTAN                       10                    0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       10                    1        3     379
0-24 months   ki1000109-EE               PAKISTAN                       11                    0       10     379
0-24 months   ki1000109-EE               PAKISTAN                       11                    1       60     379
0-24 months   ki1000109-EE               PAKISTAN                       12                    0        9     379
0-24 months   ki1000109-EE               PAKISTAN                       12                    1       76     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     0        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     1       12     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     0       14     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     1       13     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       26     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     1       27     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       23     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     1       26     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     0       14     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     1       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       21     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     1       16     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       12     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        4     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       48    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       65    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       39    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       52    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       35    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1       47    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       27    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       48    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       42    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       59    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       48    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       61    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0       50    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1       86    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0       64    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1      118    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0       91    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1      101    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       55    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1      113    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       65    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       77    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       58    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       84    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        6     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1       15     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       45     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       57     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       39     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       25     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       30     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       37     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       36     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       28     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1       30     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       34     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1       28     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1       28     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1       29     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       16     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       20     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       21     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1       27     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       20     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1       29     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       25     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1       30     629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      123    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       48    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      145    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       33    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      123    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       41    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      130    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       60    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      150    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       35    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      133    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       33    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      163    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       55    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      187    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       45    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      163    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       53    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      197    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       53    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      175    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       46    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      166    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       39    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      190    2915
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1      105    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      161    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1       95    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                     0      196    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                     1      110    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                     0      125    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                     1       72    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                     0      125    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                     1       79    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                     0      103    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                     1       60    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                     0       77    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                     1       64    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                     0      151    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                     1       85    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                     0      161    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                     1       92    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                    0      219    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                    1      131    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                    0      156    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                    1       98    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                    0      165    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                    1       95    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0       10     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1       19     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       21     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       14     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       18     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1       10     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0        8     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1       11     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       17     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1       16     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      216    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      107    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      130    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       51    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      127    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       70    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      127    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       82    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      144    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       74    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      129    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       63    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      124    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1       72    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      205    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1       98    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      268    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1      143    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      256    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1      116    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      223    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1      119    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      211    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1      110    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       50     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       79     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0       95     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1      140     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1      128     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     1       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     0       10     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     0        9     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     1       11     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     0        6     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     0        4     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     1       16     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        1     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     1       14     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     0        4     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     0        5     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    1       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    1       26     277
0-24 months   ki1114097-CMIN             BRAZIL                         1                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                     1        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     0       12     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    1        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    1        5     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0      100    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       51    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0       67    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1       48    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0       82    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       37    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       59    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1       43    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0       67    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1       45    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       55    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1       30    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       69    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1       31    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0       78    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1       45    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0       98    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1       65    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0      100    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       56    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0       89    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1       48    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0       95    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       49    1507
0-24 months   ki1114097-CMIN             PERU                           1                     0       38     929
0-24 months   ki1114097-CMIN             PERU                           1                     1       12     929
0-24 months   ki1114097-CMIN             PERU                           2                     0       56     929
0-24 months   ki1114097-CMIN             PERU                           2                     1       25     929
0-24 months   ki1114097-CMIN             PERU                           3                     0       69     929
0-24 months   ki1114097-CMIN             PERU                           3                     1       29     929
0-24 months   ki1114097-CMIN             PERU                           4                     0       61     929
0-24 months   ki1114097-CMIN             PERU                           4                     1       31     929
0-24 months   ki1114097-CMIN             PERU                           5                     0       61     929
0-24 months   ki1114097-CMIN             PERU                           5                     1       32     929
0-24 months   ki1114097-CMIN             PERU                           6                     0       57     929
0-24 months   ki1114097-CMIN             PERU                           6                     1       26     929
0-24 months   ki1114097-CMIN             PERU                           7                     0       52     929
0-24 months   ki1114097-CMIN             PERU                           7                     1       23     929
0-24 months   ki1114097-CMIN             PERU                           8                     0       62     929
0-24 months   ki1114097-CMIN             PERU                           8                     1       25     929
0-24 months   ki1114097-CMIN             PERU                           9                     0       48     929
0-24 months   ki1114097-CMIN             PERU                           9                     1       24     929
0-24 months   ki1114097-CMIN             PERU                           10                    0       45     929
0-24 months   ki1114097-CMIN             PERU                           10                    1       21     929
0-24 months   ki1114097-CMIN             PERU                           11                    0       43     929
0-24 months   ki1114097-CMIN             PERU                           11                    1       17     929
0-24 months   ki1114097-CMIN             PERU                           12                    0       53     929
0-24 months   ki1114097-CMIN             PERU                           12                    1       19     929
0-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                     0       14     215
0-24 months   ki1114097-CONTENT          PERU                           2                     1        4     215
0-24 months   ki1114097-CONTENT          PERU                           3                     0       24     215
0-24 months   ki1114097-CONTENT          PERU                           3                     1        6     215
0-24 months   ki1114097-CONTENT          PERU                           4                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           4                     1        9     215
0-24 months   ki1114097-CONTENT          PERU                           5                     0       11     215
0-24 months   ki1114097-CONTENT          PERU                           5                     1        3     215
0-24 months   ki1114097-CONTENT          PERU                           6                     0        8     215
0-24 months   ki1114097-CONTENT          PERU                           6                     1        5     215
0-24 months   ki1114097-CONTENT          PERU                           7                     0       23     215
0-24 months   ki1114097-CONTENT          PERU                           7                     1        5     215
0-24 months   ki1114097-CONTENT          PERU                           8                     0       19     215
0-24 months   ki1114097-CONTENT          PERU                           8                     1        4     215
0-24 months   ki1114097-CONTENT          PERU                           9                     0       21     215
0-24 months   ki1114097-CONTENT          PERU                           9                     1        5     215
0-24 months   ki1114097-CONTENT          PERU                           10                    0       11     215
0-24 months   ki1114097-CONTENT          PERU                           10                    1        3     215
0-24 months   ki1114097-CONTENT          PERU                           11                    0        5     215
0-24 months   ki1114097-CONTENT          PERU                           11                    1        4     215
0-24 months   ki1114097-CONTENT          PERU                           12                    0       10     215
0-24 months   ki1114097-CONTENT          PERU                           12                    1        1     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0      885   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1      141   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                     0      847   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                     1      136   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                     0     1021   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                     1      124   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                     0     1053   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                     1      110   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                     0     1077   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                     1       97   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1098   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                     1      113   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1461   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                     1      129   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1447   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                     1      141   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1478   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                     1      149   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1622   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                    1      192   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1527   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                    1      175   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1681   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                    1      193   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      925   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      438   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      713   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      360   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      823   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      382   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      714   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      294   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      709   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      329   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      817   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      337   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      843   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      338   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      934   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      332   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      980   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      327   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      766   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      286   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      854   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      346   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      877   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      349   14073
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       43     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       26     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     1       20     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       12     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     1       14     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       17     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     1       22     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       24     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     1       20     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       13     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     1       21     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       28     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     1       34     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       47     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     1       46     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       40     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     1       53     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    0       47     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    1       88     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    0       40     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    1       65     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       40     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    1       55     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1352   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1187   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1155   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      914   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1473   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      960   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1066   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      710   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      723   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      603   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      777   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      626   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      879   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      697   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1200   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      954   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1656   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1     1143   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1628   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1     1340   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1545   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1     1505   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1696   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1     1447   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      445    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      471    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      494    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      530    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      338    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      435    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      298    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      343    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      201    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      259    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      220    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      317    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      260    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      295    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      216    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1      187    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       77    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       56    5442


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
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/05a46b95-ab78-4999-a74d-3fc5a9c9fa60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/05a46b95-ab78-4999-a74d-3fc5a9c9fa60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/05a46b95-ab78-4999-a74d-3fc5a9c9fa60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/05a46b95-ab78-4999-a74d-3fc5a9c9fa60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4285714    0.2165147   0.6406281
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                0.7200000    0.5436626   0.8963374
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                0.5600000    0.3650517   0.7549483
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                0.4090909    0.2032518   0.6149301
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                0.6363636    0.4349708   0.8377565
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                0.5454545    0.2506456   0.8402635
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                0.5500000    0.3315552   0.7684448
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                0.4615385    0.2695551   0.6535219
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                0.3913043    0.1914735   0.5911352
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                0.4000000    0.2076002   0.5923998
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                0.4705882    0.2328703   0.7083062
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                0.5000000    0.3144504   0.6855496
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5000000    0.3485353   0.6514647
0-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4347826    0.2318528   0.6377124
0-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.4782609    0.2737760   0.6827457
0-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.5238095    0.3098492   0.7377699
0-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.4285714    0.2449685   0.6121743
0-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.5294118    0.2917503   0.7670732
0-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.5416667    0.3419947   0.7413386
0-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.3157895    0.1064347   0.5251442
0-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.3043478    0.1159902   0.4927054
0-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.3333333    0.1552276   0.5114390
0-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.5454545    0.3752869   0.7156222
0-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.3913043    0.1915209   0.5910878
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4736842    0.3147365   0.6326319
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.6071429    0.4260246   0.7882611
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.5185185    0.3298200   0.7072170
0-24 months   ki1000108-IRC              INDIA                          4                    NA                0.6666667    0.4648010   0.8685323
0-24 months   ki1000108-IRC              INDIA                          5                    NA                0.6363636    0.4351055   0.8376217
0-24 months   ki1000108-IRC              INDIA                          6                    NA                0.3243243    0.1733036   0.4753450
0-24 months   ki1000108-IRC              INDIA                          7                    NA                0.4166667    0.2554240   0.5779093
0-24 months   ki1000108-IRC              INDIA                          8                    NA                0.3863636    0.2423161   0.5304111
0-24 months   ki1000108-IRC              INDIA                          9                    NA                0.5555556    0.3678967   0.7432144
0-24 months   ki1000108-IRC              INDIA                          10                   NA                0.3421053    0.1910817   0.4931288
0-24 months   ki1000108-IRC              INDIA                          11                   NA                0.5000000    0.3448619   0.6551381
0-24 months   ki1000108-IRC              INDIA                          12                   NA                0.5000000    0.3639349   0.6360651
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5752212    0.4947551   0.6556874
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5714286    0.4253899   0.7174672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.5731707    0.4524494   0.6938921
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.6400000    0.5314525   0.7485475
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.5841584    0.5049799   0.6633370
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.5596330    0.4978828   0.6213833
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.6323529    0.5486771   0.7160288
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.6483516    0.5566868   0.7400165
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.5260417    0.4420448   0.6100385
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.6726190    0.6029762   0.7422619
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.5422535    0.4644315   0.6200756
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.5915493    0.5182635   0.6648351
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4931507    0.3783720   0.6079294
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5172414    0.3885376   0.6459451
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4237288    0.2975388   0.5499188
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.5283019    0.3937999   0.6628039
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5714286    0.4327568   0.7101004
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5800000    0.4430862   0.7169138
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6097561    0.4603227   0.7591895
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5121951    0.3590714   0.6653188
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5625000    0.4220495   0.7029505
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5918367    0.4541115   0.7295620
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.6603774    0.5327775   0.7879772
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5454545    0.4137562   0.6771529
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2807018    0.2133393   0.3480642
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1853933    0.1282915   0.2424950
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2500000    0.1837147   0.3162853
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3157895    0.2496812   0.3818977
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1891892    0.1327396   0.2456388
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1987952    0.1380713   0.2595190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2522936    0.1946263   0.3099608
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1939655    0.1430754   0.2448557
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2453704    0.1879733   0.3027675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2120000    0.1613243   0.2626757
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2081448    0.1546085   0.2616811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1902439    0.1365043   0.2439835
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3559322    0.3012859   0.4105785
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3710938    0.3119052   0.4302823
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.3594771    0.3057041   0.4132502
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3654822    0.2982241   0.4327403
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.3872549    0.3203981   0.4541117
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.3680982    0.2940464   0.4421499
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4539007    0.3717088   0.5360927
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.3601695    0.2989129   0.4214260
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.3636364    0.3043508   0.4229219
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3742857    0.3235775   0.4249939
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.3858268    0.3259515   0.4457020
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.3653846    0.3068428   0.4239265
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.6551724    0.4819044   0.8284404
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.1923077    0.0405771   0.3440383
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.4814815    0.2927134   0.6702496
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.4193548    0.2453730   0.5933367
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                0.4285714    0.2643624   0.5927805
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                0.5200000    0.3238489   0.7161511
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                0.4545455    0.2461467   0.6629442
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                0.4666667    0.2137976   0.7195357
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                0.5625000    0.3190393   0.8059607
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                0.3750000    0.2069962   0.5430038
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                0.4583333    0.2586740   0.6579927
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                0.4848485    0.3140626   0.6556344
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3312693    0.2723335   0.3902052
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2817680    0.1970387   0.3664973
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3553299    0.2817470   0.4289129
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3923445    0.2783174   0.5063716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3394495    0.2717043   0.4071948
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3281250    0.2457329   0.4105171
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3673469    0.2583350   0.4763589
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3234323    0.2624207   0.3844440
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3479319    0.2772278   0.4186360
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3118280    0.2304148   0.3932411
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3479532    0.2568147   0.4390918
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3426791   -0.0488601   0.7342183
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3377483    0.2622892   0.4132075
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.4173913    0.3272335   0.5075491
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3109244    0.2277328   0.3941160
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4215686    0.3257054   0.5174319
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.4017857    0.3109600   0.4926114
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.3529412    0.2513149   0.4545674
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3100000    0.2193229   0.4006771
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3658537    0.2807030   0.4510043
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3987730    0.3235795   0.4739665
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.3589744    0.2836736   0.4342751
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.3503650    0.2704502   0.4302797
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.3402778    0.2628658   0.4176898
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.2400000    0.1215570   0.3584430
0-24 months   ki1114097-CMIN             PERU                           2                    NA                0.3086420    0.2079909   0.4092931
0-24 months   ki1114097-CMIN             PERU                           3                    NA                0.2959184    0.2054980   0.3863388
0-24 months   ki1114097-CMIN             PERU                           4                    NA                0.3369565    0.2403190   0.4335941
0-24 months   ki1114097-CMIN             PERU                           5                    NA                0.3440860    0.2474815   0.4406905
0-24 months   ki1114097-CMIN             PERU                           6                    NA                0.3132530    0.2134166   0.4130894
0-24 months   ki1114097-CMIN             PERU                           7                    NA                0.3066667    0.2022534   0.4110799
0-24 months   ki1114097-CMIN             PERU                           8                    NA                0.2873563    0.1922151   0.3824976
0-24 months   ki1114097-CMIN             PERU                           9                    NA                0.3333333    0.2243878   0.4422789
0-24 months   ki1114097-CMIN             PERU                           10                   NA                0.3181818    0.2057519   0.4306118
0-24 months   ki1114097-CMIN             PERU                           11                   NA                0.2833333    0.1692522   0.3974145
0-24 months   ki1114097-CMIN             PERU                           12                   NA                0.2638889    0.1620302   0.3657475
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1374269    0.1085004   0.1663534
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.1383520    0.1004693   0.1762347
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.1082969    0.0792680   0.1373259
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0945830    0.0706430   0.1185230
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0826235    0.0631528   0.1020943
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0933113    0.0679350   0.1186877
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0811321    0.0602006   0.1020636
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0887909    0.0703318   0.1072500
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0915796    0.0641007   0.1190585
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1058434    0.0831076   0.1285793
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1028202    0.0819442   0.1236962
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1029883    0.0733880   0.1325886
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3213500    0.2965570   0.3461429
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3355079    0.3072552   0.3637606
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.3170124    0.2907392   0.3432857
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2916667    0.2636062   0.3197272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3169557    0.2886490   0.3452623
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2920277    0.2657927   0.3182627
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2861981    0.2604194   0.3119768
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2622433    0.2380132   0.2864734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2501913    0.2267092   0.2736734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2718631    0.2449764   0.2987498
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2883333    0.2627027   0.3139639
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2846656    0.2594052   0.3099260
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6323529    0.5176835   0.7470224
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4347826    0.2914412   0.5781240
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.5384615    0.3467265   0.7301965
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5641026    0.4083821   0.7198230
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4545455    0.3073317   0.6017592
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.6176471    0.4542028   0.7810913
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.5483871    0.4244396   0.6723346
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4946237    0.3929496   0.5962977
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.5698925    0.4692108   0.6705741
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.6518519    0.5714444   0.7322593
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.6190476    0.5261062   0.7119891
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5789474    0.4796054   0.6782893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4675069    0.4478518   0.4871620
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4417593    0.4197435   0.4637751
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3945746    0.3735127   0.4156365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.3997748    0.3759270   0.4236225
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4547511    0.4260977   0.4834045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.4461867    0.4173746   0.4749989
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4422589    0.4158282   0.4686896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4428969    0.4209002   0.4648937
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4083601    0.3882225   0.4284978
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4514825    0.4317657   0.4711992
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4934426    0.4740911   0.5127941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4603882    0.4417642   0.4790121
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.5141921    0.4765527   0.5518316
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.5175781    0.4830357   0.5521205
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.5627426    0.5239928   0.6014924
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.5351014    0.4850217   0.5851811
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.5630435    0.5113559   0.6147310
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.5903166    0.5440290   0.6366041
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.5315315    0.4843227   0.5787404
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.4640199    0.4099372   0.5181026
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.4210526    0.3333209   0.5087844
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3185841    0.2415157   0.3956524
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3406593    0.2362889   0.4450298
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.2926829    0.2263078   0.3590581
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2400000    0.1192879   0.3607121
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.2673267    0.1794590   0.3551945
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2752294    0.2014295   0.3490292
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.3283582    0.2541344   0.4025820
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3461538    0.2878982   0.4044094
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.2083333    0.1576029   0.2590638
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.3035714    0.2253467   0.3817962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2464789    0.1939419   0.2990158
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2978723    0.1981981   0.3975465
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0935673    0.0499086   0.1372259
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0674157    0.0305729   0.1042586
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0487805    0.0158058   0.0817551
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0947368    0.0530874   0.1363862
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0756757    0.0375565   0.1137948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0542169    0.0197622   0.0886715
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0458716    0.0180945   0.0736486
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0517241    0.0232199   0.0802283
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0925926    0.0539291   0.1312561
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0520000    0.0244720   0.0795280
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0723982    0.0382249   0.1065715
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0634146    0.0300466   0.0967826
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1081081    0.0702838   0.1459325
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0925926    0.0539293   0.1312559
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0687023    0.0380675   0.0993371
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.0958084    0.0511596   0.1404572
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.0650888    0.0278898   0.1022877
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.0567376    0.0185451   0.0949301
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.0761905    0.0254350   0.1269460
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.0858586    0.0468283   0.1248889
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1028037    0.0621053   0.1435022
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1275862    0.0891801   0.1659923
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.0963303    0.0571566   0.1355039
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.1106195    0.0697177   0.1515212
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0117073    0.0041650   0.0192496
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0081384    0.0025504   0.0137263
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0122271    0.0053885   0.0190656
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0077519   -0.0011733   0.0166771
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0059625    0.0015832   0.0103419
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0074319    0.0028264   0.0120374
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0075472    0.0038820   0.0112123
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0088217    0.0025212   0.0151221
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0116779    0.0046721   0.0186838
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0099228    0.0039742   0.0158714
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0099882    0.0041343   0.0158422
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0074707    0.0007227   0.0142186
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1295070    0.1116551   0.1473588
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1532710    0.1316849   0.1748571
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1192661    0.1009203   0.1376118
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1123260    0.0928127   0.1318394
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1264479    0.1062091   0.1466866
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1178510    0.0992473   0.1364546
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1033898    0.0860173   0.1207624
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0758893    0.0612955   0.0904832
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0642693    0.0509739   0.0775648
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0800000    0.0635900   0.0964100
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0950792    0.0784756   0.1116828
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0946166    0.0782327   0.1110006
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3592578    0.3397226   0.3787930
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3121975    0.2906956   0.3336993
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2858320    0.2665426   0.3051214
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2799097    0.2584637   0.3013558
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2856061    0.2589345   0.3122776
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2788530    0.2534407   0.3042654
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2808132    0.2573082   0.3043183
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3113383    0.2902107   0.3324658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2993197    0.2819337   0.3167058
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3403177    0.3215451   0.3590902
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3770977    0.3582155   0.3959799
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3609430    0.3425547   0.3793313
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3231939    0.2856934   0.3606944
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3197861    0.2869767   0.3525955
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.3054795    0.2695000   0.3414589
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.2785016    0.2372260   0.3197772
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.2885463    0.2340555   0.3430370
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.2808989    0.2350693   0.3267285
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.2200000    0.1821239   0.2578761
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2366412    0.1884427   0.2848397
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2137405    0.1473815   0.2800994
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2000000    0.1107179   0.2892821
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2068966    0.0996107   0.3141824
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.3214286    0.1661149   0.4767422
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2857143    0.1607393   0.4106893
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.3076923    0.2238622   0.3915224
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.3611111    0.2532873   0.4689350
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.3589744    0.2497420   0.4682068
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.3584906    0.2637752   0.4532059
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.3082707    0.2313147   0.3852267
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.4285714    0.3722253   0.4849175
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.2758621    0.1570831   0.3946410
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.3195876    0.2201244   0.4190509
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4500000    0.2956441   0.6043559
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.4615385    0.3048941   0.6181828
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3250000    0.1796787   0.4703213
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.4411765    0.2740790   0.6082739
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5277778    0.3645052   0.6910504
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5151515    0.3444335   0.6858695
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4827586    0.3006719   0.6648454
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4285714    0.2450532   0.6120897
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4137931    0.2343264   0.5932598
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5000000    0.3265554   0.6734446
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4166667    0.2554287   0.5779046
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4545455    0.3072439   0.6018470
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2016129    0.1309778   0.2722480
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1048951    0.0546594   0.1551308
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1746032    0.1082995   0.2409069
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2595420    0.1844516   0.3346323
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0827068    0.0358832   0.1295303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0800000    0.0324282   0.1275718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1325967    0.0831766   0.1820167
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0824176    0.0424542   0.1223810
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1329480    0.0823415   0.1835545
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1250000    0.0782077   0.1717923
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1235955    0.0752329   0.1719581
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1383648    0.0846812   0.1920484
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2367347    0.1834963   0.2899731
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2314815    0.1752217   0.2877412
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2280000    0.1759830   0.2800170
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.2349398    0.1704321   0.2994474
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.2469136    0.1804969   0.3133302
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.2366412    0.1638442   0.3094382
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.2831858    0.2000977   0.3662740
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.2487562    0.1889813   0.3085311
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.2326733    0.1743922   0.2909543
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.2122302    0.1641551   0.2603053
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.2524272    0.1930936   0.3117608
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.2077295    0.1524530   0.2630059
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1547170    0.0991270   0.2103070
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1161290    0.0571308   0.1751272
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1575758    0.0945653   0.2205863
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.1707317    0.1009138   0.2405496
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1318681    0.0841157   0.1796205
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1602564    0.0824551   0.2380577
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1503268    0.0750267   0.2256269
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1204819    0.0806267   0.1603372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1849711    0.1411091   0.2288331
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1553398    0.0742108   0.2364688
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1444444    0.0940084   0.1948805
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1634981    0.0565549   0.2704413
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    NA                0.4951456    0.3984890   0.5918023
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    NA                0.4486486    0.3769052   0.5203921
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    NA                0.4218750    0.3519467   0.4918033
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1746032    0.1082910   0.2409153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2291667    0.1450579   0.3132754
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1111111    0.0491804   0.1730418
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.2000000    0.1123129   0.2876871
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1818182    0.1012018   0.2624345
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2133333    0.1205831   0.3060836
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1785714    0.0966359   0.2605069
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1923077    0.1165328   0.2680826
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.2137405    0.1435122   0.2839687
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2318841    0.1614423   0.3023258
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1826087    0.1119692   0.2532482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1652893    0.0990800   0.2314985
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.1162791    0.0204028   0.2121553
6-24 months   ki1114097-CMIN             PERU                           2                    NA                0.2031250    0.1044916   0.3017584
6-24 months   ki1114097-CMIN             PERU                           3                    NA                0.1341463    0.0603318   0.2079609
6-24 months   ki1114097-CMIN             PERU                           4                    NA                0.1527778    0.0696206   0.2359349
6-24 months   ki1114097-CMIN             PERU                           5                    NA                0.1756757    0.0889144   0.2624370
6-24 months   ki1114097-CMIN             PERU                           6                    NA                0.1830986    0.0930794   0.2731178
6-24 months   ki1114097-CMIN             PERU                           7                    NA                0.2238806    0.1240021   0.3237591
6-24 months   ki1114097-CMIN             PERU                           8                    NA                0.2307692    0.1372056   0.3243329
6-24 months   ki1114097-CMIN             PERU                           9                    NA                0.1509434    0.0544996   0.2473872
6-24 months   ki1114097-CMIN             PERU                           10                   NA                0.1739130    0.0643063   0.2835197
6-24 months   ki1114097-CMIN             PERU                           11                   NA                0.1333333    0.0339471   0.2327196
6-24 months   ki1114097-CMIN             PERU                           12                   NA                0.1929825    0.0904645   0.2955004
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0470348    0.0292568   0.0648127
6-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0665259    0.0361904   0.0968613
6-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0511670    0.0282178   0.0741162
6-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0358102    0.0205397   0.0510807
6-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0403863    0.0236169   0.0571557
6-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0281810    0.0173960   0.0389661
6-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0249017    0.0132691   0.0365343
6-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0317769    0.0196741   0.0438798
6-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0294683    0.0186154   0.0403211
6-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0381115    0.0279267   0.0482962
6-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0292862    0.0186583   0.0399140
6-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0480398    0.0257990   0.0702805
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1537611    0.1302454   0.1772767
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1338912    0.1089640   0.1588184
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1317440    0.1082622   0.1552259
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1218045    0.0969453   0.1466638
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1454545    0.1185559   0.1723532
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1366623    0.1122564   0.1610681
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1246684    0.1010881   0.1482488
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1390244    0.1153431   0.1627057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1187215    0.0973004   0.1401425
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1309524    0.1054450   0.1564597
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1412911    0.1174635   0.1651187
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1494253    0.1257345   0.1731161
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2459174    0.2200843   0.2717505
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2601537    0.2299519   0.2903555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1796875    0.1563113   0.2030637
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1622761    0.1392582   0.1852940
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1730981    0.1452413   0.2009550
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1718908    0.1453419   0.1984397
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1686275    0.1448562   0.1923987
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1502463    0.1298434   0.1706492
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1837672    0.1606444   0.2068901
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1902552    0.1682569   0.2122535
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2418856    0.2168296   0.2669417
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2344771    0.2095906   0.2593637
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2626539    0.2256604   0.2996474
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.2744361    0.2400787   0.3087935
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.3156146    0.2721660   0.3590633
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3083004    0.2621358   0.3544650
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3260870    0.2688985   0.3832754
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.3454988    0.2885289   0.4024687
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3194748    0.2689960   0.3699536
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.2446483    0.1979683   0.2913284
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2410714    0.1479582   0.3341847


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5056604   0.4453505   0.5659702
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4488449   0.3927492   0.5049406
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5942596   0.5539147   0.6346046
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5453100   0.5063654   0.5842547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2257930   0.2090482   0.2425378
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3725557   0.3550013   0.3901102
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4539683   0.3988995   0.5090370
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3384380   0.2882099   0.3886661
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3636364   0.3393411   0.3879316
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3057051   0.2760637   0.3353464
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2926171   0.2851000   0.3001341
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5726190   0.5391450   0.6060930
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4437509   0.4362402   0.4512616
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5316060   0.5154292   0.5477829
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2882353   0.2618269   0.3146436
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0671953   0.0571686   0.0772221
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0937120   0.0822051   0.1052189
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1052594   0.1001850   0.1103339
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3218623   0.3151120   0.3286127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2867446   0.2729319   0.3005573
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3184647   0.2882909   0.3486385
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4500000   0.4023647   0.4976353
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1337304   0.1182039   0.1492569
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2347497   0.2177073   0.2517920
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1527830   0.1267871   0.1787788
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1901352   0.1684337   0.2118368
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.1755319   0.1483241   0.2027397
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1359880   0.1290274   0.1429485
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1970836   0.1890247   0.2051424
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2949907   0.2786334   0.3113480


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 1.6800000   0.9672476   2.9179705
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 1.3066667   0.7135432   2.3928162
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 0.9545455   0.4713238   1.9331871
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 1.4848485   0.8252746   2.6715652
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 1.2727273   0.6116437   2.6483304
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 1.2833333   0.6804339   2.4204328
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 1.0769231   0.5642224   2.0555075
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 0.9130435   0.4484130   1.8591086
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 0.9333333   0.4681083   1.8609179
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 1.0980392   0.5414076   2.2269547
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 1.1666667   0.6285448   2.1654959
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.8695652   0.4984814   1.5168944
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.9565217   0.5664033   1.6153400
0-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 1.0476190   0.6300093   1.7420469
0-24 months   ki0047075b-MAL-ED          PERU                           5                    1                 0.8571429   0.5072052   1.4485141
0-24 months   ki0047075b-MAL-ED          PERU                           6                    1                 1.0588235   0.6160631   1.8197929
0-24 months   ki0047075b-MAL-ED          PERU                           7                    1                 1.0833333   0.6722770   1.7457255
0-24 months   ki0047075b-MAL-ED          PERU                           8                    1                 0.6315789   0.3047022   1.3091207
0-24 months   ki0047075b-MAL-ED          PERU                           9                    1                 0.6086957   0.3055973   1.2124139
0-24 months   ki0047075b-MAL-ED          PERU                           10                   1                 0.6666667   0.3607101   1.2321376
0-24 months   ki0047075b-MAL-ED          PERU                           11                   1                 1.0909091   0.7062133   1.6851603
0-24 months   ki0047075b-MAL-ED          PERU                           12                   1                 0.7826087   0.4322354   1.4169974
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.2817460   0.8181067   2.0081402
0-24 months   ki1000108-IRC              INDIA                          3                    1                 1.0946502   0.6672604   1.7957893
0-24 months   ki1000108-IRC              INDIA                          4                    1                 1.4074074   0.8956285   2.2116264
0-24 months   ki1000108-IRC              INDIA                          5                    1                 1.3434343   0.8471494   2.1304575
0-24 months   ki1000108-IRC              INDIA                          6                    1                 0.6846847   0.3856779   1.2155041
0-24 months   ki1000108-IRC              INDIA                          7                    1                 0.8796296   0.5270506   1.4680721
0-24 months   ki1000108-IRC              INDIA                          8                    1                 0.8156566   0.4939314   1.3469393
0-24 months   ki1000108-IRC              INDIA                          9                    1                 1.1728395   0.7285495   1.8880699
0-24 months   ki1000108-IRC              INDIA                          10                   1                 0.7222222   0.4148118   1.2574497
0-24 months   ki1000108-IRC              INDIA                          11                   1                 1.0555556   0.6683422   1.6671063
0-24 months   ki1000108-IRC              INDIA                          12                   1                 1.0555556   0.6852537   1.6259635
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9934066   0.7873219   1.2534349
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9964353   0.7373397   1.3465750
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.1126154   0.8991593   1.3767449
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.0155369   0.8432966   1.2229568
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9729005   0.8430960   1.1226900
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0993213   0.9059953   1.3339001
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1271344   0.9703288   1.3092798
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.9145032   0.8221900   1.0171810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.1693223   0.9843869   1.3890014
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9426869   0.7490778   1.1863368
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.0283857   0.8946461   1.1821179
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0488506   0.7460083   1.4746317
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8592279   0.5887875   1.2538863
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0712788   0.7587419   1.5125543
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.1587302   0.8278508   1.6218569
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.1761111   0.8442645   1.6383934
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.2364499   0.8818481   1.7336413
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.0386179   0.7110712   1.5170451
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.1406250   0.8107728   1.6046732
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.2001134   0.8635447   1.6678604
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.3390985   0.9895528   1.8121165
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.1060606   0.7909215   1.5467655
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6604635   0.4469674   0.9759369
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8906250   0.6228507   1.2735202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1250000   0.8181800   1.5468783
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6739865   0.4595751   0.9884298
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7082078   0.4802397   1.0443918
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8987959   0.6452530   1.2519648
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.6910022   0.4842389   0.9860505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8741319   0.6252220   1.2221365
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7552500   0.5382555   1.0597245
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7415158   0.5216111   1.0541298
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6777439   0.4678357   0.9818336
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0425967   0.8355461   1.3009550
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.0099595   0.8151004   1.2514020
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0268310   0.8080085   1.3049144
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.0880019   0.8635599   1.3707770
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.0341805   0.8029549   1.3319919
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.2752448   1.0057496   1.6169526
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0119048   0.8046971   1.2724679
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.0216450   0.8166601   1.2780820
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.0515646   0.8568606   1.2905111
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 1.0839895   0.8714029   1.3484385
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0265568   0.8222631   1.2816078
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.2935223   0.1277164   0.6745832
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.7348928   0.4579728   1.1792566
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.6400679   0.3913386   1.0468862
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1                 0.6541353   0.4106548   1.0419774
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1                 0.7936842   0.5006970   1.2581153
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1                 0.6937799   0.4086549   1.1778413
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1                 0.7122807   0.3897545   1.3017008
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1                 0.8585526   0.5169922   1.4257712
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 0.5723684   0.3402020   0.9629738
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1                 0.6995614   0.4202462   1.1645224
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 0.7400319   0.4763817   1.1495975
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.8505706   0.6159203   1.1746167
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0726315   0.8174102   1.4075411
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1843670   0.8398857   1.6701383
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.0246935   0.7875925   1.3331726
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.9905082   0.7478967   1.3118209
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.1089071   0.7599672   1.6180632
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.9763425   0.8112116   1.1750875
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0502990   0.8396915   1.3137302
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9413124   0.6785290   1.3058677
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0503634   0.8038757   1.3724304
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0344426   0.3274672   3.2677214
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.2358056   0.9057074   1.6862130
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9205800   0.6496462   1.3045063
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.2481738   0.9074606   1.7168104
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.1896008   0.8657030   1.6346831
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.0449827   0.7258207   1.5044885
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.9178431   0.6352102   1.3262319
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.0832138   0.7845136   1.4956427
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1806809   0.8813824   1.5816147
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0628457   0.7823055   1.4439895
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0373551   0.7538157   1.4275447
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.0074891   0.7324232   1.3858576
0-24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           2                    1                 1.2860082   0.7117831   2.3234848
0-24 months   ki1114097-CMIN             PERU                           3                    1                 1.2329932   0.6900412   2.2031614
0-24 months   ki1114097-CMIN             PERU                           4                    1                 1.4039855   0.7933591   2.4845941
0-24 months   ki1114097-CMIN             PERU                           5                    1                 1.4336918   0.8125876   2.5295389
0-24 months   ki1114097-CMIN             PERU                           6                    1                 1.3052209   0.7253470   2.3486711
0-24 months   ki1114097-CMIN             PERU                           7                    1                 1.2777778   0.7015635   2.3272535
0-24 months   ki1114097-CMIN             PERU                           8                    1                 1.1973180   0.6608673   2.1692259
0-24 months   ki1114097-CMIN             PERU                           9                    1                 1.3888889   0.7684174   2.5103705
0-24 months   ki1114097-CMIN             PERU                           10                   1                 1.3257576   0.7225381   2.4325821
0-24 months   ki1114097-CMIN             PERU                           11                   1                 1.1805556   0.6244154   2.2320261
0-24 months   ki1114097-CMIN             PERU                           12                   1                 1.0995370   0.5876383   2.0573568
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.0067315   0.7362030   1.3766696
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.7880331   0.6041376   1.0279051
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.6882421   0.5013915   0.9447251
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.6012179   0.4622192   0.7820162
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.6789887   0.5178407   0.8902846
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.5903653   0.4398797   0.7923330
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6460957   0.4937239   0.8454921
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.6663877   0.5020371   0.8845412
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.7701799   0.6156656   0.9634728
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.7481811   0.6032720   0.9278982
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.7494039   0.5563824   1.0093890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0440578   0.9313745   1.1703741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9865022   0.8808917   1.1047744
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9076294   0.8023251   1.0267547
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9863256   0.8765273   1.1098777
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9087530   0.8072663   1.0229982
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8906120   0.7910098   1.0027559
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8160676   0.7235178   0.9204560
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7785633   0.6894906   0.8791429
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8460033   0.7462725   0.9590619
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8972565   0.7976240   1.0093341
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8858429   0.7875701   0.9963782
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6875632   0.4719572   1.0016653
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.8515206   0.5710228   1.2698045
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.8920692   0.6411482   1.2411911
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.7188161   0.4959249   1.0418846
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 0.9767442   0.7086984   1.3461709
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.8672168   0.6490531   1.1587110
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.7821955   0.5946615   1.0288708
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.9012253   0.6996538   1.1608699
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.0308355   0.8278316   1.2836208
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.9789590   0.7736088   1.2388184
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 0.9155447   0.7132743   1.1751750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9449258   0.8837905   1.0102900
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8439974   0.7899153   0.9017822
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8551206   0.7964656   0.9180952
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9727154   0.9014302   1.0496378
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9543961   0.8844322   1.0298945
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9459944   0.8799420   1.0170048
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9473592   0.8882461   1.0104063
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8734847   0.8212558   0.9290352
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9657237   0.9115308   1.0231385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0554767   0.9983240   1.1159013
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9847730   0.9311561   1.0414772
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    2                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 1.0065851   0.9114098   1.1116991
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 1.0944208   0.9925176   1.2067864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    2                 1.0406643   0.9244028   1.1715479
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 1.0950060   0.9751292   1.2296197
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 1.1480467   1.0319649   1.2771860
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 1.0337216   0.9214939   1.1596175
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 0.9024250   0.7880346   1.0334203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 0.8188624   0.6556327   1.0227307
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0692918   0.7869908   1.4528570
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.9186992   0.6412197   1.3162543
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 0.7533333   0.4148616   1.3679530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.8391089   0.5353408   1.3152440
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.8639144   0.5695018   1.3105279
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0306799   0.8711228   1.2194619
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.0865385   0.8803779   1.3409762
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.6539352   0.4519598   0.9461709
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9528770   0.6982671   1.3003256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.7736698   0.5134661   1.1657342
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9349882   0.5802426   1.5066161
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7205056   0.3511999   1.4781561
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5213415   0.2292984   1.1853417
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0125000   0.5333029   1.9222778
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8087838   0.4070396   1.6070456
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.5794428   0.2633984   1.2747000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.4902523   0.2282549   1.0529778
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.5528017   0.2685169   1.1380653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9895833   0.5290708   1.8509342
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.5557500   0.2744179   1.1255028
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7737557   0.3984332   1.5026304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6777439   0.3354584   1.3692810
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8564815   0.4967391   1.4767521
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.6354962   0.3605464   1.1201205
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.8862275   0.4948382   1.5871839
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.6020710   0.3080531   1.1767110
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.5248227   0.2457760   1.1206906
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.7047619   0.3320894   1.4956495
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 0.7941919   0.4475036   1.4094652
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 0.9509346   0.5606578   1.6128850
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.1801724   0.7438714   1.8723761
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.8910550   0.5211043   1.5236472
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.0232301   0.6150309   1.7023531
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.6951509   0.2653915   1.8208377
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 1.0443959   0.5089682   2.1430863
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.6621447   0.1685682   2.6009386
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.5092988   0.2106635   1.2312774
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.6348060   0.2871669   1.4032908
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.6446541   0.3479251   1.1944494
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.7535182   0.3271818   1.7353950
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.9974903   0.4851631   2.0508296
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.8475744   0.3698758   1.9422259
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.8531629   0.3643357   1.9978469
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.6381181   0.2268419   1.7950599
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1834962   0.9718095   1.4412939
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9209237   0.7490672   1.1322088
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8673358   0.6948254   1.0826767
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9763788   0.7904625   1.2060224
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9099968   0.7379454   1.1221619
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7983340   0.6423869   0.9921391
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5859863   0.4625205   0.7424104
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4962614   0.3870343   0.6363140
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6177273   0.4824653   0.7909108
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.7341629   0.5877214   0.9170930
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7305910   0.5855350   0.9115820
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8690068   0.7932676   0.9519775
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7956180   0.7309327   0.8660276
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7791333   0.7098323   0.8552001
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7949892   0.7132920   0.8860435
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7761921   0.7003410   0.8602582
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7816482   0.7084477   0.8624122
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8666153   0.7959940   0.9435021
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8331614   0.7718797   0.8993084
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9472799   0.8795910   1.0201777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0496577   0.9755853   1.1293542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0046907   0.9349417   1.0796432
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    2                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 0.9894558   0.8468984   1.1560097
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 0.9451894   0.8040013   1.1111710
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    2                 0.8617168   0.7118183   1.0431818
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 0.8927961   0.7155301   1.1139780
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 0.8691342   0.7051393   1.0712695
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 0.6807059   0.5544163   0.8357627
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 0.7321958   0.5817063   0.9216174
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 0.6613381   0.4715512   0.9275093
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0344828   0.5876068   1.8212086
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 1.6071429   0.6961165   3.7104541
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.4285714   0.7570548   2.6957313
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.5384615   0.8498828   2.7849299
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.8055556   1.0402569   3.1338708
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.7948718   0.9798301   3.2878809
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.7924528   1.2449893   2.5806543
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 1.5413534   1.0751372   2.2097368
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 2.1428571   1.3184758   3.4826858
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 1.3793103   0.6585241   2.8890319
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.5979381   1.0523124   2.4264718
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0256410   0.6330378   1.6617326
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7222222   0.4110758   1.2688777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.9803922   0.5881375   1.6342587
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.1728395   0.7389817   1.8614163
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.1447811   0.7105365   1.8444146
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.0727969   0.6443219   1.7862085
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9523810   0.5502161   1.6484968
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9195402   0.5289612   1.5985185
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.1111111   0.6821663   1.8097756
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9259259   0.5520742   1.5529414
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.0101010   0.6301267   1.6192046
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5202797   0.2874312   0.9417592
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8660317   0.5165913   1.4518459
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2873282   0.8172589   2.0277713
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.4102256   0.2108043   0.7982999
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.3968000   0.1989892   0.7912502
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6576796   0.3943319   1.0968994
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.4087912   0.2247499   0.7435388
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6594220   0.3930849   1.1062174
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6200000   0.3712987   1.0352852
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.6130337   0.3625627   1.0365389
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6862893   0.4068884   1.1575485
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9778097   0.7021806   1.3616324
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9631034   0.6991121   1.3267805
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.9924179   0.6959176   1.4152442
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.0429970   0.7345386   1.4809879
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9996052   0.6828664   1.4632592
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.1962161   0.8265351   1.7312427
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0507806   0.7561012   1.4603070
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9828440   0.7019242   1.3761917
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.8964897   0.6515080   1.2335900
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 1.0662872   0.7701866   1.4762247
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.8774779   0.6193387   1.2432090
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.7505901   0.4229755   1.3319576
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0184775   0.5991807   1.7311911
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.1035098   0.6452348   1.8872726
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.8523184   0.5140758   1.4131120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0358036   0.6168014   1.7394401
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9716244   0.5563549   1.6968559
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.7787247   0.5359893   1.1313883
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1955449   0.8007688   1.7849442
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 1.0040256   0.5280873   1.9089027
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.9336043   0.5855725   1.4884869
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0567560   0.5039263   2.2160646
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    6                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    6                 0.9060943   0.7040146   1.1661789
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    6                 0.8520221   0.6595275   1.1006995
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.3125000   0.7739745   2.2257274
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.6363636   0.3241811   1.2491742
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.1454545   0.6413024   2.0459398
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.0413223   0.5808179   1.8669400
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.2218182   0.6859521   2.1763030
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.0227273   0.5637444   1.8553997
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.1013986   0.6371926   1.9037869
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.2241499   0.7408597   2.0227082
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.3280632   0.8165945   2.1598872
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0458498   0.6081841   1.7984715
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9466566   0.5450882   1.6440621
6-24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           2                    1                 1.7468750   0.6709464   4.5481612
6-24 months   ki1114097-CMIN             PERU                           3                    1                 1.1536585   0.4281237   3.1087464
6-24 months   ki1114097-CMIN             PERU                           4                    1                 1.3138889   0.4891930   3.5288815
6-24 months   ki1114097-CMIN             PERU                           5                    1                 1.5108108   0.5778259   3.9502370
6-24 months   ki1114097-CMIN             PERU                           6                    1                 1.5746479   0.6029300   4.1124440
6-24 months   ki1114097-CMIN             PERU                           7                    1                 1.9253731   0.7539950   4.9165602
6-24 months   ki1114097-CMIN             PERU                           8                    1                 1.9846154   0.7918353   4.9741383
6-24 months   ki1114097-CMIN             PERU                           9                    1                 1.2981132   0.4573938   3.6841296
6-24 months   ki1114097-CMIN             PERU                           10                   1                 1.4956522   0.5298016   4.2222891
6-24 months   ki1114097-CMIN             PERU                           11                   1                 1.1466667   0.3773205   3.4846889
6-24 months   ki1114097-CMIN             PERU                           12                   1                 1.6596491   0.6223563   4.4258175
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.4143979   0.9651443   2.0727692
6-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 1.0878542   0.6998103   1.6910679
6-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7613561   0.4640372   1.2491738
6-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.8586479   0.5346095   1.3790931
6-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.5991535   0.3455177   1.0389768
6-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.5294319   0.2914228   0.9618263
6-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.6756048   0.4150731   1.0996661
6-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.6265215   0.3927815   0.9993574
6-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.8102834   0.5348604   1.2275338
6-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.6226490   0.3880014   0.9992020
6-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 1.0213670   0.6954789   1.4999601
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8707745   0.6843338   1.1080093
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.8568102   0.6774652   1.0836329
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.7921675   0.6138423   1.0222973
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9459778   0.7441511   1.2025433
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8887965   0.7025712   1.1243830
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8107933   0.6357302   1.0340641
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9041586   0.7191598   1.1367471
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7721166   0.6094816   0.9781492
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8516615   0.6648358   1.0909872
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9189004   0.7318069   1.1538263
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9718019   0.7796654   1.2112874
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0578905   0.9029285   1.2394475
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7306824   0.6184030   0.8633476
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.6598805   0.5522673   0.7884629
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7038873   0.5803668   0.8536970
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.6989778   0.5783977   0.8446956
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.6857077   0.5779908   0.8134992
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.6109625   0.5167952   0.7222885
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.7472722   0.6399485   0.8725948
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.7736550   0.6653304   0.8996164
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9836052   0.8503125   1.1377925
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9534792   0.8228037   1.1049083
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    2                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 1.0448582   0.8684947   1.2570356
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 1.2016369   0.9860003   1.4644329
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    2                 1.1737895   0.9536999   1.4446703
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 1.2415082   0.9876639   1.5605942
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 1.3154146   1.0683647   1.6195927
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 1.2163339   0.9864313   1.4998188
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 0.9314475   0.7320006   1.1852374
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 0.9178292   0.6072638   1.3872234


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0770889   -0.1265733    0.2807512
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0511551   -0.1916124    0.0893021
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0019255   -0.1494802    0.1533313
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0190384   -0.0454976    0.0835743
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0521593   -0.0556967    0.1600154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0549088   -0.1194873    0.0096697
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0166235   -0.0352413    0.0684884
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2012042   -0.3671154   -0.0352929
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0071686   -0.0578659    0.0722032
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0258880   -0.0458285    0.0976045
0-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0657051   -0.0500415    0.1814516
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0368173   -0.0603750   -0.0132596
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0287329   -0.0522303   -0.0052355
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0597339   -0.1699187    0.0504509
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0237560   -0.0421076   -0.0054043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.0174139   -0.0165115    0.0513393
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0303488   -0.1042775    0.0435799
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0263719   -0.0680198    0.0152759
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0143961   -0.0499270    0.0211348
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0026503   -0.0094368    0.0041362
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0242476   -0.0410640   -0.0074312
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0373954   -0.0556113   -0.0191796
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0364493   -0.0709468   -0.0019518
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1184647    0.0353078    0.2016217
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0000000   -0.1468218    0.1468218
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0678825   -0.1354138   -0.0003513
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0019850   -0.0523883    0.0484183
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0019340   -0.0524803    0.0486123
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    NA                -0.0472290   -0.1327638    0.0383058
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0155321   -0.0476082    0.0786724
6-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0592528   -0.0349877    0.1534934
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0090050   -0.0230762    0.0050663
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0177731   -0.0400020    0.0044559
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0488338   -0.0733091   -0.0243586
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.0323368   -0.0015199    0.0661936


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.1524520   -0.3636424    0.4732214
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1139706   -0.4756257    0.1590480
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0040486   -0.3710513    0.2765266
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0320371   -0.0832309    0.1350394
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0956508   -0.1256052    0.2734153
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2431819   -0.5645673    0.0121862
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0446203   -0.1052498    0.1741682
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.4432120   -0.8662126   -0.1160898
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0211815   -0.1892444    0.1943745
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0711921   -0.1485355    0.2488833
0-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.2149296   -0.2713379    0.5152071
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3659426   -0.6264054   -0.1471918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0981928   -0.1814984   -0.0207610
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1043170   -0.3147468    0.0724328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0535345   -0.0957464   -0.0129487
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.0327571   -0.0332243    0.0945250
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1052917   -0.3949041    0.1241909
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3924667   -1.1697179    0.1063523
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1536212   -0.6020062    0.1692656
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.2926255   -1.3164250    0.2786813
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2303602   -0.4006457   -0.0807774
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1161846   -0.1742501   -0.0609904
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.1271141   -0.2540686   -0.0130117
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3719870    0.0430718    0.5878475
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0000000   -0.3857903    0.2783901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5076074   -1.1048776   -0.0798158
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0084559   -0.2477358    0.1849371
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0126586   -0.4041066    0.2696584
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    NA                -0.1054414   -0.3141603    0.0701282
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0816896   -0.3182709    0.3603029
6-24 months   ki1114097-CMIN             PERU                           1                    NA                 0.3375617   -0.4856807    0.7046306
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.2367867   -0.6657356    0.0817022
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1306960   -0.3064629    0.0214239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2477822   -0.3787202   -0.1292795
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.1096198   -0.0127781    0.2172255
