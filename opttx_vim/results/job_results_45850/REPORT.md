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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1       18     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0        5     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1       17     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0        5     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        6     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0        7     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1       16     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0       10     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       13     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1       12     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0        8     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        9     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       11     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1       17     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       12     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       16     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       17     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        6     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        6     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0       10     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       16     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        5     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        9     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       18     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       21     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        4     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                     1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     0        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                     1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        3     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        5     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                     1       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     0        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                     1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                     1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                    1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                    1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    0        7     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                    1       12     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        8     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       16     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        2     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       14     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       17     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        3     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        7     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0       18     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1       24     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                     0        7     303
0-24 months   ki0047075b-MAL-ED          PERU                           2                     1       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                     0       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           3                     1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                     0        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           4                     1       13     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                     0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           5                     1       19     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                     0        6     303
0-24 months   ki0047075b-MAL-ED          PERU                           6                     1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                     0        5     303
0-24 months   ki0047075b-MAL-ED          PERU                           7                     1       19     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                     0       10     303
0-24 months   ki0047075b-MAL-ED          PERU                           8                     1        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                     0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           9                     1       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                    0       16     303
0-24 months   ki0047075b-MAL-ED          PERU                           10                    1       11     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                    0        9     303
0-24 months   ki0047075b-MAL-ED          PERU                           11                    1       24     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                    0        8     303
0-24 months   ki0047075b-MAL-ED          PERU                           12                    1       15     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       17     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       25     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0        8     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        7     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        4     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1       15     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        6     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       14     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1       11     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       10     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1       21     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       12     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1       19     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       18     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1       27     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        7     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1       13     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       26     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       15     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        8     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1       17     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0        1     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1       18     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1       18     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1       10     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0        4     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1       19     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        1     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1       23     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0        2     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1       25     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0        5     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       29     262
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1       15     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       35     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       39     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       25     373
0-24 months   ki1000108-IRC              INDIA                          1                     0       11     410
0-24 months   ki1000108-IRC              INDIA                          1                     1       27     410
0-24 months   ki1000108-IRC              INDIA                          2                     0        8     410
0-24 months   ki1000108-IRC              INDIA                          2                     1       20     410
0-24 months   ki1000108-IRC              INDIA                          3                     0        9     410
0-24 months   ki1000108-IRC              INDIA                          3                     1       18     410
0-24 months   ki1000108-IRC              INDIA                          4                     0        4     410
0-24 months   ki1000108-IRC              INDIA                          4                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          5                     0        5     410
0-24 months   ki1000108-IRC              INDIA                          5                     1       17     410
0-24 months   ki1000108-IRC              INDIA                          6                     0       16     410
0-24 months   ki1000108-IRC              INDIA                          6                     1       21     410
0-24 months   ki1000108-IRC              INDIA                          7                     0       14     410
0-24 months   ki1000108-IRC              INDIA                          7                     1       22     410
0-24 months   ki1000108-IRC              INDIA                          8                     0       21     410
0-24 months   ki1000108-IRC              INDIA                          8                     1       23     410
0-24 months   ki1000108-IRC              INDIA                          9                     0        9     410
0-24 months   ki1000108-IRC              INDIA                          9                     1       18     410
0-24 months   ki1000108-IRC              INDIA                          10                    0       20     410
0-24 months   ki1000108-IRC              INDIA                          10                    1       18     410
0-24 months   ki1000108-IRC              INDIA                          11                    0       16     410
0-24 months   ki1000108-IRC              INDIA                          11                    1       24     410
0-24 months   ki1000108-IRC              INDIA                          12                    0       14     410
0-24 months   ki1000108-IRC              INDIA                          12                    1       38     410
0-24 months   ki1000109-EE               PAKISTAN                       1                     0        7     379
0-24 months   ki1000109-EE               PAKISTAN                       1                     1       88     379
0-24 months   ki1000109-EE               PAKISTAN                       2                     0        8     379
0-24 months   ki1000109-EE               PAKISTAN                       2                     1       59     379
0-24 months   ki1000109-EE               PAKISTAN                       3                     0        5     379
0-24 months   ki1000109-EE               PAKISTAN                       3                     1       37     379
0-24 months   ki1000109-EE               PAKISTAN                       4                     0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       4                     1       15     379
0-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     379
0-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     379
0-24 months   ki1000109-EE               PAKISTAN                       10                    0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       10                    1        3     379
0-24 months   ki1000109-EE               PAKISTAN                       11                    0        6     379
0-24 months   ki1000109-EE               PAKISTAN                       11                    1       64     379
0-24 months   ki1000109-EE               PAKISTAN                       12                    0        5     379
0-24 months   ki1000109-EE               PAKISTAN                       12                    1       80     379
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        2     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                     1       14     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                     1       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                     1       33     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                     1       31     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     0        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                     1       26     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       17     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                     1       20     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       11     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        4     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       35    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       78    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       33    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       58    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       28    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1       54    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       18    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       57    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       30    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       71    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       39    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       70    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0       33    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1      103    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0       42    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1      140    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0       71    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1      121    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       48    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1      120    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       50    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       92    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       46    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       96    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        4     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       10     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        2     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        3     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        1     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       29     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       54     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       58     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       43     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        5     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       33     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       23     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       50     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       19     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       26     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       18     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       16     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       15     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1       35     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       27     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1       27     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       15     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1       33     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       17     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1       32     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       14     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1       39     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       20     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1       35     629
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      108    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       63    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      125    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       53    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      106    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       58    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      114    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       76    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      124    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       61    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      110    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       56    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      138    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       80    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      158    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       74    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      137    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       79    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      165    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       85    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      142    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       79    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      140    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       65    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      158    2915
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1      137    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                     0      127    2915
0-24 months   ki1101329-Keneba           GAMBIA                         2                     1      129    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                     0      149    2915
0-24 months   ki1101329-Keneba           GAMBIA                         3                     1      157    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                     0       98    2915
0-24 months   ki1101329-Keneba           GAMBIA                         4                     1       99    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                     0       92    2915
0-24 months   ki1101329-Keneba           GAMBIA                         5                     1      112    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                     0       74    2915
0-24 months   ki1101329-Keneba           GAMBIA                         6                     1       89    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                     0       62    2915
0-24 months   ki1101329-Keneba           GAMBIA                         7                     1       79    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                     0      116    2915
0-24 months   ki1101329-Keneba           GAMBIA                         8                     1      120    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                     0      114    2915
0-24 months   ki1101329-Keneba           GAMBIA                         9                     1      139    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                    0      166    2915
0-24 months   ki1101329-Keneba           GAMBIA                         10                    1      184    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                    0      134    2915
0-24 months   ki1101329-Keneba           GAMBIA                         11                    1      120    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                    0      131    2915
0-24 months   ki1101329-Keneba           GAMBIA                         12                    1      129    2915
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0        9     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1       20     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       19     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       17     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1       18     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1       10     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0        7     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        8     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0        4     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1       16     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0       11     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1       13     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       14     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1       19     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       39     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0       71     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1      164     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0       86     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1      151     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        4     277
0-24 months   ki1114097-CMIN             BANGLADESH                     1                     1       26     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     2                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     3                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     4                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     0        3     277
0-24 months   ki1114097-CMIN             BANGLADESH                     5                     1       17     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        1     277
0-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        8     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     7                     1       15     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     8                     1       22     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     0        2     277
0-24 months   ki1114097-CMIN             BANGLADESH                     9                     1       20     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    0        6     277
0-24 months   ki1114097-CMIN             BANGLADESH                     10                    1       21     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    0        7     277
0-24 months   ki1114097-CMIN             BANGLADESH                     11                    1       23     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    0        1     277
0-24 months   ki1114097-CMIN             BANGLADESH                     12                    1       27     277
0-24 months   ki1114097-CMIN             BRAZIL                         1                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                     1        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                     1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                     1        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     0        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                     1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                     1        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                     1        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                    1        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                    1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                    1        5     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0       86    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       65    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0       62    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1       53    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0       75    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       44    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       55    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1       47    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0       58    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1       54    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       50    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1       35    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       59    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1       41    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0       75    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1       48    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0       89    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1       74    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0       90    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       66    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0       78    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1       59    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0       84    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       60    1507
0-24 months   ki1114097-CMIN             PERU                           1                     0       35     929
0-24 months   ki1114097-CMIN             PERU                           1                     1       15     929
0-24 months   ki1114097-CMIN             PERU                           2                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           2                     1       31     929
0-24 months   ki1114097-CMIN             PERU                           3                     0       62     929
0-24 months   ki1114097-CMIN             PERU                           3                     1       36     929
0-24 months   ki1114097-CMIN             PERU                           4                     0       52     929
0-24 months   ki1114097-CMIN             PERU                           4                     1       40     929
0-24 months   ki1114097-CMIN             PERU                           5                     0       50     929
0-24 months   ki1114097-CMIN             PERU                           5                     1       43     929
0-24 months   ki1114097-CMIN             PERU                           6                     0       51     929
0-24 months   ki1114097-CMIN             PERU                           6                     1       32     929
0-24 months   ki1114097-CMIN             PERU                           7                     0       41     929
0-24 months   ki1114097-CMIN             PERU                           7                     1       34     929
0-24 months   ki1114097-CMIN             PERU                           8                     0       57     929
0-24 months   ki1114097-CMIN             PERU                           8                     1       30     929
0-24 months   ki1114097-CMIN             PERU                           9                     0       39     929
0-24 months   ki1114097-CMIN             PERU                           9                     1       33     929
0-24 months   ki1114097-CMIN             PERU                           10                    0       40     929
0-24 months   ki1114097-CMIN             PERU                           10                    1       26     929
0-24 months   ki1114097-CMIN             PERU                           11                    0       38     929
0-24 months   ki1114097-CMIN             PERU                           11                    1       22     929
0-24 months   ki1114097-CMIN             PERU                           12                    0       49     929
0-24 months   ki1114097-CMIN             PERU                           12                    1       23     929
0-24 months   ki1114097-CONTENT          PERU                           1                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                     1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                     0       14     215
0-24 months   ki1114097-CONTENT          PERU                           2                     1        4     215
0-24 months   ki1114097-CONTENT          PERU                           3                     0       23     215
0-24 months   ki1114097-CONTENT          PERU                           3                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           4                     0       10     215
0-24 months   ki1114097-CONTENT          PERU                           4                     1        9     215
0-24 months   ki1114097-CONTENT          PERU                           5                     0       11     215
0-24 months   ki1114097-CONTENT          PERU                           5                     1        3     215
0-24 months   ki1114097-CONTENT          PERU                           6                     0        6     215
0-24 months   ki1114097-CONTENT          PERU                           6                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           7                     0       21     215
0-24 months   ki1114097-CONTENT          PERU                           7                     1        7     215
0-24 months   ki1114097-CONTENT          PERU                           8                     0       15     215
0-24 months   ki1114097-CONTENT          PERU                           8                     1        8     215
0-24 months   ki1114097-CONTENT          PERU                           9                     0       18     215
0-24 months   ki1114097-CONTENT          PERU                           9                     1        8     215
0-24 months   ki1114097-CONTENT          PERU                           10                    0       10     215
0-24 months   ki1114097-CONTENT          PERU                           10                    1        4     215
0-24 months   ki1114097-CONTENT          PERU                           11                    0        4     215
0-24 months   ki1114097-CONTENT          PERU                           11                    1        5     215
0-24 months   ki1114097-CONTENT          PERU                           12                    0       10     215
0-24 months   ki1114097-CONTENT          PERU                           12                    1        1     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0      808   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1      218   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                     0      778   16897
0-24 months   ki1119695-PROBIT           BELARUS                        2                     1      205   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                     0      933   16897
0-24 months   ki1119695-PROBIT           BELARUS                        3                     1      212   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                     0      986   16897
0-24 months   ki1119695-PROBIT           BELARUS                        4                     1      177   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                     0     1009   16897
0-24 months   ki1119695-PROBIT           BELARUS                        5                     1      165   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1030   16897
0-24 months   ki1119695-PROBIT           BELARUS                        6                     1      181   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1354   16897
0-24 months   ki1119695-PROBIT           BELARUS                        7                     1      236   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1358   16897
0-24 months   ki1119695-PROBIT           BELARUS                        8                     1      230   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1374   16897
0-24 months   ki1119695-PROBIT           BELARUS                        9                     1      253   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1500   16897
0-24 months   ki1119695-PROBIT           BELARUS                        10                    1      314   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1397   16897
0-24 months   ki1119695-PROBIT           BELARUS                        11                    1      305   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1540   16897
0-24 months   ki1119695-PROBIT           BELARUS                        12                    1      334   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      807   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      556   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      624   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      449   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      701   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      504   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      599   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      409   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      580   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      458   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      656   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      498   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      706   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      475   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      765   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      501   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      863   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      444   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      662   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      390   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      763   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      437   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      765   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      461   14073
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       44     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       18     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                     1       28     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       10     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                     1       16     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       17     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                     1       22     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       21     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                     1       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       11     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                     1       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       24     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                     1       38     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       38     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                     1       55     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       35     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                     1       58     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                    1       96     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    0       37     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                    1       68     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       31     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                    1       64     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1224   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1315   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1057   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1012   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1365   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1     1068   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1002   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      774   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      684   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      642   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      744   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      659   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      840   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      736   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1110   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1     1044   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1474   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1     1325   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1444   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1     1524   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1360   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1     1690   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1483   27236
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1     1660   27236
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      398    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      518    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      431    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      593    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      303    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      470    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      272    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      369    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      184    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      276    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      195    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      342    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      230    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      325    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      195    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1      208    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       71    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       62    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       15     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        6     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     0       13     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                     1       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                     1       13     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     0       21     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                     1        1     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                     1       10     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     0        6     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                     1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                     1        8     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     0       16     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                     1       10     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     0       16     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                     1        7     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    0       16     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                    1        9     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    0       12     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                    1        5     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    0       20     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                    1        8     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     0       16     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                     1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                     1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     0        6     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                     1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     0       16     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                     1        5     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     0       24     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                     1        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    0       19     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    0       21     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                    1        4     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        9     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     0       20     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                     1        1     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                     1        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     0       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                     1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     0        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                     1        2     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                     1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                     1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                     1        9     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     0       16     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                     1        7     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                    1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                    1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    0       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                    1        8     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        6     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                     1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     0       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                     1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                     1        5     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                     1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                     1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                     1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                     1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    0       18     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                    1        6     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    0       13     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                    1        4     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0       23     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                     0       11     303
0-6 months    ki0047075b-MAL-ED          PERU                           2                     1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           3                     1        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           4                     1        7     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                     0       16     303
0-6 months    ki0047075b-MAL-ED          PERU                           5                     1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                     0        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           6                     1        8     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                     0       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           7                     1       12     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                     0       15     303
0-6 months    ki0047075b-MAL-ED          PERU                           8                     1        4     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                     0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           9                     1        9     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                    0       19     303
0-6 months    ki0047075b-MAL-ED          PERU                           10                    1        8     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                    0       13     303
0-6 months    ki0047075b-MAL-ED          PERU                           11                    1       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                    0       14     303
0-6 months    ki0047075b-MAL-ED          PERU                           12                    1        9     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       28     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       14     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0       21     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        9     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0       14     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0       11     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        4     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        3     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        8     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1       13     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        7     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        5     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0       19     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        6     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0       19     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1       12     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0       15     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1       16     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       26     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1       19     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       13     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0       17     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1       11     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        5     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1        6     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0       12     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0       13     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1       10     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        4     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0       14     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1        9     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        8     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1       16     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0       20     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0       22     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       12     262
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       20     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     0       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    0       13     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    0       20     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       21     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                    1       17     368
0-6 months    ki1000108-IRC              INDIA                          1                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          1                     1       15     410
0-6 months    ki1000108-IRC              INDIA                          2                     0       13     410
0-6 months    ki1000108-IRC              INDIA                          2                     1       15     410
0-6 months    ki1000108-IRC              INDIA                          3                     0       16     410
0-6 months    ki1000108-IRC              INDIA                          3                     1       11     410
0-6 months    ki1000108-IRC              INDIA                          4                     0       11     410
0-6 months    ki1000108-IRC              INDIA                          4                     1       10     410
0-6 months    ki1000108-IRC              INDIA                          5                     0       11     410
0-6 months    ki1000108-IRC              INDIA                          5                     1       11     410
0-6 months    ki1000108-IRC              INDIA                          6                     0       23     410
0-6 months    ki1000108-IRC              INDIA                          6                     1       14     410
0-6 months    ki1000108-IRC              INDIA                          7                     0       20     410
0-6 months    ki1000108-IRC              INDIA                          7                     1       16     410
0-6 months    ki1000108-IRC              INDIA                          8                     0       31     410
0-6 months    ki1000108-IRC              INDIA                          8                     1       13     410
0-6 months    ki1000108-IRC              INDIA                          9                     0       15     410
0-6 months    ki1000108-IRC              INDIA                          9                     1       12     410
0-6 months    ki1000108-IRC              INDIA                          10                    0       25     410
0-6 months    ki1000108-IRC              INDIA                          10                    1       13     410
0-6 months    ki1000108-IRC              INDIA                          11                    0       25     410
0-6 months    ki1000108-IRC              INDIA                          11                    1       15     410
0-6 months    ki1000108-IRC              INDIA                          12                    0       23     410
0-6 months    ki1000108-IRC              INDIA                          12                    1       29     410
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       19     379
0-6 months    ki1000109-EE               PAKISTAN                       1                     1       76     379
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       19     379
0-6 months    ki1000109-EE               PAKISTAN                       2                     1       48     379
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       18     379
0-6 months    ki1000109-EE               PAKISTAN                       3                     1       24     379
0-6 months    ki1000109-EE               PAKISTAN                       4                     0        2     379
0-6 months    ki1000109-EE               PAKISTAN                       4                     1       14     379
0-6 months    ki1000109-EE               PAKISTAN                       5                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       5                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       6                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       7                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       8                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                     0        0     379
0-6 months    ki1000109-EE               PAKISTAN                       9                     1        0     379
0-6 months    ki1000109-EE               PAKISTAN                       10                    0        2     379
0-6 months    ki1000109-EE               PAKISTAN                       10                    1        2     379
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       18     379
0-6 months    ki1000109-EE               PAKISTAN                       11                    1       52     379
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       21     379
0-6 months    ki1000109-EE               PAKISTAN                       12                    1       64     379
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                     1        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                     1        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     0        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                     1       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     0        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                     1       20     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     0       23     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                     1       30     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     0       18     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                     1       31     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     0       10     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                     1       24     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     0       21     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                     1       16     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     0       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                     1        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                    1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    0        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                    1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                    1        3     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     0       65    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                     1       48    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     0       53    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                     1       38    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     0       48    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                     1       34    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     0       42    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                     1       33    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     0       59    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                     1       42    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     0       60    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                     1       49    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     0       67    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                     1       67    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     0       94    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                     1       88    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     0      129    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                     1       63    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    0       98    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                    1       70    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    0       87    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                    1       55    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    0       77    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                    1       64    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     0       16     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                     1        9     416
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
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    0       23     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       15     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       38     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1       35     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     0       39     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                     1       19     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     0       46     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                     1       13     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     0       36     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                     1       17     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     0       35     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                     1       14     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     0       29     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                     1       21     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     0       25     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                     1       16     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     0       27     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                     1       14     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     0       28     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                     1       20     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    0       34     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                    1       15     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    0       29     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                    1       24     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    0       43     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                    1       12     629
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      144    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       27    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      146    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       32    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0      138    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       26    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0      150    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       40    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0      147    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       38    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0      135    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       31    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      169    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       49    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      186    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       46    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      167    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       49    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      201    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       49    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      176    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       45    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      170    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       35    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      186    2465
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       73    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                     0      158    2465
0-6 months    ki1101329-Keneba           GAMBIA                         2                     1       58    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                     0      190    2465
0-6 months    ki1101329-Keneba           GAMBIA                         3                     1       72    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                     0      118    2465
0-6 months    ki1101329-Keneba           GAMBIA                         4                     1       49    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                     0      114    2465
0-6 months    ki1101329-Keneba           GAMBIA                         5                     1       55    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                     0       97    2465
0-6 months    ki1101329-Keneba           GAMBIA                         6                     1       44    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                     0       64    2465
0-6 months    ki1101329-Keneba           GAMBIA                         7                     1       41    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                     0      133    2465
0-6 months    ki1101329-Keneba           GAMBIA                         8                     1       65    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                     0      143    2465
0-6 months    ki1101329-Keneba           GAMBIA                         9                     1       71    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                    0      183    2465
0-6 months    ki1101329-Keneba           GAMBIA                         10                    1      107    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                    0      153    2465
0-6 months    ki1101329-Keneba           GAMBIA                         11                    1       65    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                    0      156    2465
0-6 months    ki1101329-Keneba           GAMBIA                         12                    1       70    2465
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                     1       13     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                     1        3     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                     1        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     0       19     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                     1       11     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                     1       12     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     0       16     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                     1        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                     1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     0       10     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                     1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     0        9     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                     1        6     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                    1        5     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    0       13     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                    1        7     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    0       24     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                    1        7     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0       96     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       33     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      167     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1       68     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      172     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1       65     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     0       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     1                     1       19     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     0       17     277
0-6 months    ki1114097-CMIN             BANGLADESH                     2                     1       10     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     0       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     3                     1        9     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     0       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     4                     1       11     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     0        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     5                     1       12     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     0        2     277
0-6 months    ki1114097-CMIN             BANGLADESH                     6                     1        7     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     0        9     277
0-6 months    ki1114097-CMIN             BANGLADESH                     7                     1        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     0        5     277
0-6 months    ki1114097-CMIN             BANGLADESH                     8                     1       19     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     0        9     277
0-6 months    ki1114097-CMIN             BANGLADESH                     9                     1       13     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    0       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     10                    1       13     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    0       14     277
0-6 months    ki1114097-CMIN             BANGLADESH                     11                    1       16     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    0        8     277
0-6 months    ki1114097-CMIN             BANGLADESH                     12                    1       20     277
0-6 months    ki1114097-CMIN             BRAZIL                         1                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                     1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                     1        2     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     0        3     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                     1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    0       12     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                    1        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                    1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    0        9     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                    1        2     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     0       98     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                     1       17     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     0       63     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                     1       17     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     0       62     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                     1       11     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     0       50     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                     1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     0       54     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                     1       11     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     0       53     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                     1        4     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     0       57     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                     1        6     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     0       51     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                     1       10     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     0       79     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                     1       23     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    0       80     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                    1       16     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    0       77     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                    1        9     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    0       95     965
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                    1       16     965
0-6 months    ki1114097-CMIN             PERU                           1                     0       42     699
0-6 months    ki1114097-CMIN             PERU                           1                     1        1     699
0-6 months    ki1114097-CMIN             PERU                           2                     0       57     699
0-6 months    ki1114097-CMIN             PERU                           2                     1       10     699
0-6 months    ki1114097-CMIN             PERU                           3                     0       63     699
0-6 months    ki1114097-CMIN             PERU                           3                     1        9     699
0-6 months    ki1114097-CMIN             PERU                           4                     0       50     699
0-6 months    ki1114097-CMIN             PERU                           4                     1       12     699
0-6 months    ki1114097-CMIN             PERU                           5                     0       56     699
0-6 months    ki1114097-CMIN             PERU                           5                     1        9     699
0-6 months    ki1114097-CMIN             PERU                           6                     0       50     699
0-6 months    ki1114097-CMIN             PERU                           6                     1        8     699
0-6 months    ki1114097-CMIN             PERU                           7                     0       49     699
0-6 months    ki1114097-CMIN             PERU                           7                     1        8     699
0-6 months    ki1114097-CMIN             PERU                           8                     0       66     699
0-6 months    ki1114097-CMIN             PERU                           8                     1        7     699
0-6 months    ki1114097-CMIN             PERU                           9                     0       46     699
0-6 months    ki1114097-CMIN             PERU                           9                     1       10     699
0-6 months    ki1114097-CMIN             PERU                           10                    0       44     699
0-6 months    ki1114097-CMIN             PERU                           10                    1        9     699
0-6 months    ki1114097-CMIN             PERU                           11                    0       39     699
0-6 months    ki1114097-CMIN             PERU                           11                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           12                    0       47     699
0-6 months    ki1114097-CMIN             PERU                           12                    1        4     699
0-6 months    ki1114097-CONTENT          PERU                           1                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                     1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                     0       15     215
0-6 months    ki1114097-CONTENT          PERU                           2                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           3                     0       26     215
0-6 months    ki1114097-CONTENT          PERU                           3                     1        4     215
0-6 months    ki1114097-CONTENT          PERU                           4                     0       10     215
0-6 months    ki1114097-CONTENT          PERU                           4                     1        9     215
0-6 months    ki1114097-CONTENT          PERU                           5                     0       11     215
0-6 months    ki1114097-CONTENT          PERU                           5                     1        3     215
0-6 months    ki1114097-CONTENT          PERU                           6                     0        8     215
0-6 months    ki1114097-CONTENT          PERU                           6                     1        5     215
0-6 months    ki1114097-CONTENT          PERU                           7                     0       23     215
0-6 months    ki1114097-CONTENT          PERU                           7                     1        5     215
0-6 months    ki1114097-CONTENT          PERU                           8                     0       16     215
0-6 months    ki1114097-CONTENT          PERU                           8                     1        7     215
0-6 months    ki1114097-CONTENT          PERU                           9                     0       22     215
0-6 months    ki1114097-CONTENT          PERU                           9                     1        4     215
0-6 months    ki1114097-CONTENT          PERU                           10                    0       10     215
0-6 months    ki1114097-CONTENT          PERU                           10                    1        4     215
0-6 months    ki1114097-CONTENT          PERU                           11                    0        5     215
0-6 months    ki1114097-CONTENT          PERU                           11                    1        4     215
0-6 months    ki1114097-CONTENT          PERU                           12                    0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                    1        0     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0      896   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1      129   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                     0      884   16893
0-6 months    ki1119695-PROBIT           BELARUS                        2                     1       99   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                     0     1025   16893
0-6 months    ki1119695-PROBIT           BELARUS                        3                     1      120   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                     0     1057   16893
0-6 months    ki1119695-PROBIT           BELARUS                        4                     1      104   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                     0     1078   16893
0-6 months    ki1119695-PROBIT           BELARUS                        5                     1       96   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                     0     1111   16893
0-6 months    ki1119695-PROBIT           BELARUS                        6                     1      100   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                     0     1440   16893
0-6 months    ki1119695-PROBIT           BELARUS                        7                     1      150   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                     0     1450   16893
0-6 months    ki1119695-PROBIT           BELARUS                        8                     1      137   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                     0     1462   16893
0-6 months    ki1119695-PROBIT           BELARUS                        9                     1      165   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                    0     1618   16893
0-6 months    ki1119695-PROBIT           BELARUS                        10                    1      196   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                    0     1501   16893
0-6 months    ki1119695-PROBIT           BELARUS                        11                    1      201   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                    0     1690   16893
0-6 months    ki1119695-PROBIT           BELARUS                        12                    1      184   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     1005   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      354   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      780   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      290   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      887   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      312   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      736   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      270   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      715   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      321   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      784   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      370   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      842   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      338   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      923   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      342   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     0     1044   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      263   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      819   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      231   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      931   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      268   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      960   14051
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      266   14051
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1423   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1110   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1257   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1      809   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1548   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1      880   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1153   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1      619   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0      842   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1      478   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0      923   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1      472   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1030   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1      544   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1302   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1      850   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1661   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1     1132   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1635   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1     1324   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1557   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1     1482   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1678   27170
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1     1461   27170
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0      499    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1      290    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0      600    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1      335    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     0      464    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     1      266    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     0      405    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     1      209    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     0      301    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     1      153    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     0      343    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     1      191    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     0      374    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     1      176    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     0      266    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     1      127    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    0       94    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    1       37    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    5130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    5130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     0        4     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                     1        6     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                     1        4     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     0       12     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                     1        9     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     0        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                     1        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     0        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                     1        1     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     0        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                     1        5     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     0       10     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                     1        6     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     0        8     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                     1        6     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                    1        3     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    0        7     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                    1        4     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    0       11     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                    1        9     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       12     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     0       15     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                     1        2     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     0       13     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     0       10     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     0       16     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                     1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     0        6     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     0        9     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                     1        3     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     0       11     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                     1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     0       22     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                     1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    0       17     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                    1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    0       20     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                    1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    0        8     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                    1        0     168
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        4     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        7     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     0       11     155
6-24 months   ki0047075b-MAL-ED          INDIA                          2                     1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     0       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          3                     1        5     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     0        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          4                     1        4     155
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     0        3     155
6-24 months   ki0047075b-MAL-ED          INDIA                          5                     1        3     155
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     0       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          6                     1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     0       10     155
6-24 months   ki0047075b-MAL-ED          INDIA                          7                     1        3     155
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     0        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          8                     1        8     155
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     0        7     155
6-24 months   ki0047075b-MAL-ED          INDIA                          9                     1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    0        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          10                    1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    0        8     155
6-24 months   ki0047075b-MAL-ED          INDIA                          11                    1        6     155
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    0        7     155
6-24 months   ki0047075b-MAL-ED          INDIA                          12                    1        4     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                     1        5     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     0        7     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                     1        7     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     0       17     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     0       11     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                     1        5     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     0       16     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     0       13     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                     1        2     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     0       17     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                     1        3     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                     1        1     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    0       15     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                    1        3     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    0       12     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                    1        6     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    0       10     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                    1        3     195
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0       15     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                     0        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           2                     1        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                     0        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           3                     1        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           4                     0        6     149
6-24 months   ki0047075b-MAL-ED          PERU                           4                     1        6     149
6-24 months   ki0047075b-MAL-ED          PERU                           5                     0        8     149
6-24 months   ki0047075b-MAL-ED          PERU                           5                     1        7     149
6-24 months   ki0047075b-MAL-ED          PERU                           6                     0        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           6                     1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           7                     0        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           7                     1        7     149
6-24 months   ki0047075b-MAL-ED          PERU                           8                     0        7     149
6-24 months   ki0047075b-MAL-ED          PERU                           8                     1        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           9                     0        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           9                     1        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           10                    0        9     149
6-24 months   ki0047075b-MAL-ED          PERU                           10                    1        3     149
6-24 months   ki0047075b-MAL-ED          PERU                           11                    0        8     149
6-24 months   ki0047075b-MAL-ED          PERU                           11                    1        4     149
6-24 months   ki0047075b-MAL-ED          PERU                           12                    0        5     149
6-24 months   ki0047075b-MAL-ED          PERU                           12                    1        6     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       13     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       11     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     0        6     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                     1        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                     1        2     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     0        7     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                     1        3     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                     1        1     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     0        8     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                     1        4     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                     1        2     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     0        4     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                     1        1     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     0        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                     1        5     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    0        8     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                    1        9     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    0        7     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                    1        3     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    0       12     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                    1        8     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     0        5     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                     1       12     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     0        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                     1        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                     1        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                     1       11     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                     1       11     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     0        5     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                     1        8     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                     1        6     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     0        3     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                     1       10     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                    1        7     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    0        2     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                    1       18     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                    1       17     145
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     0        1     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                     1        9     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     0        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                     1       19     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                     1       20     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     0        1     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                     1       18     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                     1       14     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     0        4     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                     1       12     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     0        2     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                     1        7     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     0        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                     1       11     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    0        3     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                    1       10     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    0        4     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                    1       18     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    0        0     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                    1        8     185
6-24 months   ki1000108-IRC              INDIA                          1                     0       11     236
6-24 months   ki1000108-IRC              INDIA                          1                     1       12     236
6-24 months   ki1000108-IRC              INDIA                          2                     0        8     236
6-24 months   ki1000108-IRC              INDIA                          2                     1        5     236
6-24 months   ki1000108-IRC              INDIA                          3                     0        9     236
6-24 months   ki1000108-IRC              INDIA                          3                     1        7     236
6-24 months   ki1000108-IRC              INDIA                          4                     0        4     236
6-24 months   ki1000108-IRC              INDIA                          4                     1        7     236
6-24 months   ki1000108-IRC              INDIA                          5                     0        5     236
6-24 months   ki1000108-IRC              INDIA                          5                     1        6     236
6-24 months   ki1000108-IRC              INDIA                          6                     0       16     236
6-24 months   ki1000108-IRC              INDIA                          6                     1        7     236
6-24 months   ki1000108-IRC              INDIA                          7                     0       14     236
6-24 months   ki1000108-IRC              INDIA                          7                     1        6     236
6-24 months   ki1000108-IRC              INDIA                          8                     0       21     236
6-24 months   ki1000108-IRC              INDIA                          8                     1       10     236
6-24 months   ki1000108-IRC              INDIA                          9                     0        9     236
6-24 months   ki1000108-IRC              INDIA                          9                     1        6     236
6-24 months   ki1000108-IRC              INDIA                          10                    0       20     236
6-24 months   ki1000108-IRC              INDIA                          10                    1        5     236
6-24 months   ki1000108-IRC              INDIA                          11                    0       16     236
6-24 months   ki1000108-IRC              INDIA                          11                    1        9     236
6-24 months   ki1000108-IRC              INDIA                          12                    0       14     236
6-24 months   ki1000108-IRC              INDIA                          12                    1        9     236
6-24 months   ki1000109-EE               PAKISTAN                       1                     0        6      97
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       12      97
6-24 months   ki1000109-EE               PAKISTAN                       2                     0        8      97
6-24 months   ki1000109-EE               PAKISTAN                       2                     1       11      97
6-24 months   ki1000109-EE               PAKISTAN                       3                     0        4      97
6-24 months   ki1000109-EE               PAKISTAN                       3                     1       13      97
6-24 months   ki1000109-EE               PAKISTAN                       4                     0        1      97
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        1      97
6-24 months   ki1000109-EE               PAKISTAN                       5                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       5                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       6                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       6                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       7                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       7                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       8                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       8                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       9                     0        0      97
6-24 months   ki1000109-EE               PAKISTAN                       9                     1        0      97
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        1      97
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        1      97
6-24 months   ki1000109-EE               PAKISTAN                       11                    0        6      97
6-24 months   ki1000109-EE               PAKISTAN                       11                    1       12      97
6-24 months   ki1000109-EE               PAKISTAN                       12                    0        5      97
6-24 months   ki1000109-EE               PAKISTAN                       12                    1       16      97
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     0        2      95
6-24 months   ki1000109-ResPak           PAKISTAN                       1                     1        1      95
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     0        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       2                     1        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     0        6      95
6-24 months   ki1000109-ResPak           PAKISTAN                       3                     1        1      95
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     0        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       4                     1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     0       18      95
6-24 months   ki1000109-ResPak           PAKISTAN                       5                     1        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     0       13      95
6-24 months   ki1000109-ResPak           PAKISTAN                       6                     1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     0        4      95
6-24 months   ki1000109-ResPak           PAKISTAN                       7                     1        2      95
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     0       14      95
6-24 months   ki1000109-ResPak           PAKISTAN                       8                     1        4      95
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     0       11      95
6-24 months   ki1000109-ResPak           PAKISTAN                       9                     1        2      95
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    0        3      95
6-24 months   ki1000109-ResPak           PAKISTAN                       10                    1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    0        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       11                    1        0      95
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    0        1      95
6-24 months   ki1000109-ResPak           PAKISTAN                       12                    1        1      95
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     0       25     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                     1       30     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     0       28     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                     1       20     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     0       26     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                     1       20     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     0       17     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                     1       24     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     0       29     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                     1       29     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     0       33     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                     1       21     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     0       28     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                     1       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     0       38     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                     1       52     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     0       63     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                     1       58     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    0       36     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                    1       50     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    0       40     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                    1       37     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    0       41     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                    1       32     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        4     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     0        9     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                     1       17     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     0        3     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                     1        9     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     0        2     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                     1        1     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     0        1     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                     1        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     0        1     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                     1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                     1       18     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     0       11     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                     1       31     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     0        6     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                     1       27     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    0        5     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                    1       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    0        5     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                    1       12     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    0        4     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                    1       18     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       15     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                     1       20     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     0       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                     1       20     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     0       11     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                     1       18     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                     1       19     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     0       10     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                     1       14     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                     1       11     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     0        9     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                     1       13     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     0       10     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                     1       13     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    0       13     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                    1       17     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    0       12     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                    1       15     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    0       16     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                    1       23     345
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       81    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     0      101    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                     1       21    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     0       85    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                     1       32    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     0       77    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                     1       36    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     0       89    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                     1       23    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     0       88    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                     1       25    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     0      120    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                     1       31    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     0      134    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                     1       28    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     0      112    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                     1       30    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    0      129    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                    1       36    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    0      115    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                    1       34    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    0      109    1602
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                    1       30    1602
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      143    2017
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       64    2017
6-24 months   ki1101329-Keneba           GAMBIA                         2                     0      119    2017
6-24 months   ki1101329-Keneba           GAMBIA                         2                     1       71    2017
6-24 months   ki1101329-Keneba           GAMBIA                         3                     0      134    2017
6-24 months   ki1101329-Keneba           GAMBIA                         3                     1       85    2017
6-24 months   ki1101329-Keneba           GAMBIA                         4                     0       90    2017
6-24 months   ki1101329-Keneba           GAMBIA                         4                     1       50    2017
6-24 months   ki1101329-Keneba           GAMBIA                         5                     0       83    2017
6-24 months   ki1101329-Keneba           GAMBIA                         5                     1       57    2017
6-24 months   ki1101329-Keneba           GAMBIA                         6                     0       65    2017
6-24 months   ki1101329-Keneba           GAMBIA                         6                     1       45    2017
6-24 months   ki1101329-Keneba           GAMBIA                         7                     0       60    2017
6-24 months   ki1101329-Keneba           GAMBIA                         7                     1       38    2017
6-24 months   ki1101329-Keneba           GAMBIA                         8                     0      110    2017
6-24 months   ki1101329-Keneba           GAMBIA                         8                     1       55    2017
6-24 months   ki1101329-Keneba           GAMBIA                         9                     0      102    2017
6-24 months   ki1101329-Keneba           GAMBIA                         9                     1       68    2017
6-24 months   ki1101329-Keneba           GAMBIA                         10                    0      150    2017
6-24 months   ki1101329-Keneba           GAMBIA                         10                    1       77    2017
6-24 months   ki1101329-Keneba           GAMBIA                         11                    0      118    2017
6-24 months   ki1101329-Keneba           GAMBIA                         11                    1       55    2017
6-24 months   ki1101329-Keneba           GAMBIA                         12                    0      119    2017
6-24 months   ki1101329-Keneba           GAMBIA                         12                    1       59    2017
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     0        8     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                     1        7     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     0       16     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                     1        4     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     0       12     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                     1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     0       15     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                     1        5     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     0       13     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                     1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     0        8     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                     1        4     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     0       11     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                     1        4     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     0        5     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                     1        3     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     0        2     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                     1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    0       12     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                    1       11     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    0        9     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                    1        6     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    0       10     195
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                    1       12     195
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      212    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      111    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     0      124    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                     1       57    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     0      123    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                     1       74    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     0      123    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                     1       86    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     0      139    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                     1       79    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     0      127    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                     1       65    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     0      120    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                     1       76    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     0      197    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                     1      106    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     0      251    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                     1      160    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    0      250    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                    1      122    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    0      211    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                    1      131    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    0      205    3265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                    1      116    3265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       36     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1       57     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0       69     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1       96     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0       82     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1       86     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     426
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     0        3     111
6-24 months   ki1114097-CMIN             BANGLADESH                     1                     1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     0        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     2                     1       10     111
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     3                     1        8     111
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     0        3     111
6-24 months   ki1114097-CMIN             BANGLADESH                     4                     1        9     111
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     5                     1        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     0        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     6                     1        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     7                     1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     0        2     111
6-24 months   ki1114097-CMIN             BANGLADESH                     8                     1        3     111
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     0        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     9                     1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    0        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     10                    1        8     111
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    0        5     111
6-24 months   ki1114097-CMIN             BANGLADESH                     11                    1        7     111
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    0        1     111
6-24 months   ki1114097-CMIN             BANGLADESH                     12                    1        7     111
6-24 months   ki1114097-CMIN             BRAZIL                         1                     0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         1                     1        4     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         2                     1        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                     0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         3                     1        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                     0        8     104
6-24 months   ki1114097-CMIN             BRAZIL                         4                     1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         5                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         6                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                     0        3     104
6-24 months   ki1114097-CMIN             BRAZIL                         7                     1        0     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                     0       11     104
6-24 months   ki1114097-CMIN             BRAZIL                         8                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                     0        5     104
6-24 months   ki1114097-CMIN             BRAZIL                         9                     1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                    0       10     104
6-24 months   ki1114097-CMIN             BRAZIL                         10                    1        2     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                    0        9     104
6-24 months   ki1114097-CMIN             BRAZIL                         11                    1        1     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                    0        6     104
6-24 months   ki1114097-CMIN             BRAZIL                         12                    1        3     104
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     0       85    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                     1       48    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     0       61    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                     1       36    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     0       73    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                     1       33    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     0       54    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                     1       41    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     0       57    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                     1       43    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     0       49    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                     1       31    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     0       57    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                     1       35    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     0       73    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                     1       38    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     0       87    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                     1       51    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    0       89    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                    1       50    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    0       78    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                    1       50    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    0       83    1346
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                    1       44    1346
6-24 months   ki1114097-CMIN             PERU                           1                     0       33     797
6-24 months   ki1114097-CMIN             PERU                           1                     1       14     797
6-24 months   ki1114097-CMIN             PERU                           2                     0       44     797
6-24 months   ki1114097-CMIN             PERU                           2                     1       21     797
6-24 months   ki1114097-CMIN             PERU                           3                     0       61     797
6-24 months   ki1114097-CMIN             PERU                           3                     1       27     797
6-24 months   ki1114097-CMIN             PERU                           4                     0       51     797
6-24 months   ki1114097-CMIN             PERU                           4                     1       28     797
6-24 months   ki1114097-CMIN             PERU                           5                     0       48     797
6-24 months   ki1114097-CMIN             PERU                           5                     1       34     797
6-24 months   ki1114097-CMIN             PERU                           6                     0       49     797
6-24 months   ki1114097-CMIN             PERU                           6                     1       24     797
6-24 months   ki1114097-CMIN             PERU                           7                     0       40     797
6-24 months   ki1114097-CMIN             PERU                           7                     1       26     797
6-24 months   ki1114097-CMIN             PERU                           8                     0       54     797
6-24 months   ki1114097-CMIN             PERU                           8                     1       23     797
6-24 months   ki1114097-CMIN             PERU                           9                     0       35     797
6-24 months   ki1114097-CMIN             PERU                           9                     1       23     797
6-24 months   ki1114097-CMIN             PERU                           10                    0       34     797
6-24 months   ki1114097-CMIN             PERU                           10                    1       17     797
6-24 months   ki1114097-CMIN             PERU                           11                    0       33     797
6-24 months   ki1114097-CMIN             PERU                           11                    1       19     797
6-24 months   ki1114097-CMIN             PERU                           12                    0       40     797
6-24 months   ki1114097-CMIN             PERU                           12                    1       19     797
6-24 months   ki1114097-CONTENT          PERU                           1                     0       10     167
6-24 months   ki1114097-CONTENT          PERU                           1                     1        0     167
6-24 months   ki1114097-CONTENT          PERU                           2                     0       14     167
6-24 months   ki1114097-CONTENT          PERU                           2                     1        1     167
6-24 months   ki1114097-CONTENT          PERU                           3                     0       23     167
6-24 months   ki1114097-CONTENT          PERU                           3                     1        3     167
6-24 months   ki1114097-CONTENT          PERU                           4                     0       10     167
6-24 months   ki1114097-CONTENT          PERU                           4                     1        0     167
6-24 months   ki1114097-CONTENT          PERU                           5                     0       11     167
6-24 months   ki1114097-CONTENT          PERU                           5                     1        0     167
6-24 months   ki1114097-CONTENT          PERU                           6                     0        6     167
6-24 months   ki1114097-CONTENT          PERU                           6                     1        2     167
6-24 months   ki1114097-CONTENT          PERU                           7                     0       21     167
6-24 months   ki1114097-CONTENT          PERU                           7                     1        2     167
6-24 months   ki1114097-CONTENT          PERU                           8                     0       15     167
6-24 months   ki1114097-CONTENT          PERU                           8                     1        1     167
6-24 months   ki1114097-CONTENT          PERU                           9                     0       18     167
6-24 months   ki1114097-CONTENT          PERU                           9                     1        4     167
6-24 months   ki1114097-CONTENT          PERU                           10                    0       10     167
6-24 months   ki1114097-CONTENT          PERU                           10                    1        0     167
6-24 months   ki1114097-CONTENT          PERU                           11                    0        4     167
6-24 months   ki1114097-CONTENT          PERU                           11                    1        1     167
6-24 months   ki1114097-CONTENT          PERU                           12                    0       10     167
6-24 months   ki1114097-CONTENT          PERU                           12                    1        1     167
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0      799   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1       89   14951
6-24 months   ki1119695-PROBIT           BELARUS                        2                     0      767   14951
6-24 months   ki1119695-PROBIT           BELARUS                        2                     1      106   14951
6-24 months   ki1119695-PROBIT           BELARUS                        3                     0      920   14951
6-24 months   ki1119695-PROBIT           BELARUS                        3                     1       92   14951
6-24 months   ki1119695-PROBIT           BELARUS                        4                     0      967   14951
6-24 months   ki1119695-PROBIT           BELARUS                        4                     1       73   14951
6-24 months   ki1119695-PROBIT           BELARUS                        5                     0      983   14951
6-24 months   ki1119695-PROBIT           BELARUS                        5                     1       69   14951
6-24 months   ki1119695-PROBIT           BELARUS                        6                     0     1013   14951
6-24 months   ki1119695-PROBIT           BELARUS                        6                     1       81   14951
6-24 months   ki1119695-PROBIT           BELARUS                        7                     0     1321   14951
6-24 months   ki1119695-PROBIT           BELARUS                        7                     1       86   14951
6-24 months   ki1119695-PROBIT           BELARUS                        8                     0     1337   14951
6-24 months   ki1119695-PROBIT           BELARUS                        8                     1       93   14951
6-24 months   ki1119695-PROBIT           BELARUS                        9                     0     1336   14951
6-24 months   ki1119695-PROBIT           BELARUS                        9                     1       88   14951
6-24 months   ki1119695-PROBIT           BELARUS                        10                    0     1478   14951
6-24 months   ki1119695-PROBIT           BELARUS                        10                    1      118   14951
6-24 months   ki1119695-PROBIT           BELARUS                        11                    0     1373   14951
6-24 months   ki1119695-PROBIT           BELARUS                        11                    1      104   14951
6-24 months   ki1119695-PROBIT           BELARUS                        12                    0     1508   14951
6-24 months   ki1119695-PROBIT           BELARUS                        12                    1      150   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0      583    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      202    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     0      451    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                     1      159    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     0      496    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                     1      192    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     0      438    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                     1      139    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     0      403    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                     1      137    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     0      459    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                     1      128    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     0      487    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                     1      137    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     0      510    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                     1      159    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     0      617    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                     1      181    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    0      442    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                    1      159    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    0      543    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                    1      169    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    0      571    7957
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                    1      195    7957
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       23     730
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       33     730
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     0       18     730
6-24 months   ki1148112-LCNI-5           MALAWI                         2                     1       28     730
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     0       10     730
6-24 months   ki1148112-LCNI-5           MALAWI                         3                     1       14     730
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     0       17     730
6-24 months   ki1148112-LCNI-5           MALAWI                         4                     1       19     730
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     0       19     730
6-24 months   ki1148112-LCNI-5           MALAWI                         5                     1       22     730
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     0       11     730
6-24 months   ki1148112-LCNI-5           MALAWI                         6                     1       20     730
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     0       24     730
6-24 months   ki1148112-LCNI-5           MALAWI                         7                     1       37     730
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     0       37     730
6-24 months   ki1148112-LCNI-5           MALAWI                         8                     1       48     730
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     0       34     730
6-24 months   ki1148112-LCNI-5           MALAWI                         9                     1       38     730
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    0       34     730
6-24 months   ki1148112-LCNI-5           MALAWI                         10                    1       67     730
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    0       35     730
6-24 months   ki1148112-LCNI-5           MALAWI                         11                    1       57     730
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    0       30     730
6-24 months   ki1148112-LCNI-5           MALAWI                         12                    1       55     730
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      616   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      205   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0      530   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      203   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0      751   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      188   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0      631   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      155   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0      591   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      164   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0      655   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      187   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0      694   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      192   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0      793   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      194   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0      806   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1      193   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0      771   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1      200   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0      718   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1      208   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0      682   10526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      199   10526
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      398    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      228    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      427    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      258    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      303    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      204    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      270    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      160    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      183    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      123    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      195    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      151    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      230    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      149    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      193    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1       81    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0       71    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       25    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    3649
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    3649


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7ad20ad2-e750-4e90-ae90-abd5b602b50b/a2528d0f-e7c4-4355-ba0b-9365ab6d9995/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ad20ad2-e750-4e90-ae90-abd5b602b50b/a2528d0f-e7c4-4355-ba0b-9365ab6d9995/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6124657   0.3856086   0.8393228
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4096144   0.2189107   0.6003180
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.7625794   0.6273548   0.8978040
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5615196   0.4338230   0.6892162
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3730424   0.3060131   0.4400717
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4726216   0.4140827   0.5311604
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3759234   0.2868336   0.4650133
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.4223616   0.3371416   0.5075816
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3604277   0.2380928   0.4827627
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1549353   0.1251020   0.1847687
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3397708   0.3140630   0.3654786
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6205977   0.4713219   0.7698734
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4567142   0.4332309   0.4801975
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5336419   0.3438541   0.7234297
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.2984709   0.1609781   0.4359638
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3277474   0.2872545   0.3682404
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2952416   0.1735183   0.4169648
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2489888   0.1796393   0.3183383
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.3396598   0.2764946   0.4028250
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0993811   0.0748771   0.1238851
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2015937   0.1798030   0.2233844
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3477512   0.3195510   0.3759513
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4953599   0.3944225   0.5962973
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.7217583   0.5498834   0.8936331
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2295787   0.1575100   0.3016475
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3768266   0.3105811   0.4430720
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3831609   0.3173245   0.4489973
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.4167238   0.3166109   0.5168366
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.5753400   0.4551568   0.6955233
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0709817   0.0490881   0.0928752
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2468041   0.2131878   0.2804204
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.7153376   0.5803853   0.8502898
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2296976   0.1992802   0.2601150


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6075472   0.5486452   0.6664491
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6204620   0.5657315   0.6751926
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3459933   0.3269422   0.3650444
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5125214   0.4943731   0.5306698
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3623277   0.3130786   0.4115769
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.4286662   0.4036720   0.4536605
0-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3928956   0.3614728   0.4243183
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3966461   0.3885633   0.4047288
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6369048   0.6043650   0.6694445
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4937950   0.4859633   0.5016266
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1949082   0.1790434   0.2107729
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3123732   0.2940736   0.3306728
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2579888   0.2507541   0.2652234
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4107840   0.4033446   0.4182233
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2259675   0.2054816   0.2464534
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3589489   0.3380095   0.3798884
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3623277   0.3130786   0.4115769
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3714710   0.3456477   0.3972943
6-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3450439   0.3120195   0.3780683
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2459470   0.2364841   0.2554098
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6000000   0.5644377   0.6355623
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2173665   0.2079947   0.2267384


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9919693   0.6948949   1.4160460
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.5147467   0.9686827   2.3686370
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9067314   0.7592063   1.0829228
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1834795   0.9535142   1.4689070
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9274906   0.7803562   1.1023668
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0844224   0.9642167   1.2196137
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.9638338   0.7824501   1.1872650
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0149271   0.8357282   1.2325503
0-24 months   ki1114097-CMIN             PERU                           observed             optimal           1.0900814   0.7826651   1.5182451
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0810017   0.9306323   1.2556674
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1673930   1.0859470   1.2549475
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0262764   0.8120910   1.2969523
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0811904   1.0309026   1.1339312
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9573266   0.6844746   1.3389456
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.4218813   0.9157872   2.2076598
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2982258   1.1808652   1.4272503
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1846622   0.7981235   1.7584052
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7827990   0.6005893   1.0202884
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           0.9196650   0.7712425   1.0966509
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0012836   0.8213147   1.2206879
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2797461   1.1535603   1.4197350
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1812583   1.0920240   1.2777844
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0155748   0.8088553   1.2751256
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.7951596   0.6285130   1.0059916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9842703   0.7293676   1.3282576
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9525574   0.8055984   1.1263249
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.9456280   0.7833896   1.1414657
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           0.8914083   0.7091099   1.1205721
6-24 months   ki1114097-CMIN             PERU                           observed             optimal           0.5997217   0.4890112   0.7354967
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0826889   0.8940749   1.3110928
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9965271   0.8740025   1.1362281
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.8387649   0.6979577   1.0079787
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9463159   0.8348790   1.0726270


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0049185   -0.2229226    0.2130856
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2108477    0.0289294    0.3927660
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0711247   -0.2058989    0.0636494
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1030273   -0.0179649    0.2240196
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0270491   -0.0914571    0.0373589
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0398999   -0.0155966    0.0953963
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0135957   -0.0918047    0.0646133
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0063046   -0.0757547    0.0883640
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0324678   -0.0870179    0.1519535
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0125500   -0.0106059    0.0357060
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0568753    0.0323066    0.0814439
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0163071   -0.1289490    0.1615632
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0370808    0.0153688    0.0587928
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0227723   -0.2019525    0.1564079
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.1259193   -0.0053172    0.2571558
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0977427    0.0670811    0.1284044
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0545200   -0.0620496    0.1710896
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0540806   -0.1202763    0.0121151
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0272866   -0.0871037    0.0325306
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0001276   -0.0195616    0.0198167
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0563950    0.0354411    0.0773490
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0630328    0.0357254    0.0903401
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0077151   -0.1053306    0.1207609
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1478452   -0.3159512    0.0202608
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0036112   -0.0724249    0.0652025
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0178776   -0.0809985    0.0452432
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0208332   -0.0916461    0.0499796
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.0452527   -0.1407006    0.0501952
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                -0.2302961   -0.3457159   -0.1148763
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0058694   -0.0073642    0.0191029
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0008571   -0.0332357    0.0315214
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1153376   -0.2464421    0.0157670
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0123311   -0.0411137    0.0164515


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0080957   -0.4390666    0.2938083
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.3398236   -0.0323298    0.5778163
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.1028625   -0.3171651    0.0765731
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1550339   -0.0487521    0.3192217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0781781   -0.2814661    0.0928609
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0778501   -0.0371112    0.1800683
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0375233   -0.2780368    0.1577281
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0147076   -0.1965613    0.1886741
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                 0.0826373   -0.2776857    0.3413448
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0749320   -0.0745382    0.2036107
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1433905    0.0791448    0.2031539
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0256036   -0.2313891    0.2289616
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0750935    0.0299763    0.1181123
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0445756   -0.4609746    0.2531437
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.2967064   -0.0919568    0.5470317
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2297180    0.1531633    0.2993520
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1558775   -0.2529389    0.4313029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2774671   -0.6650312    0.0198850
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0873524   -0.2966090    0.0881328
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0012820   -0.2175601    0.1807898
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.2185950    0.1331186    0.2956432
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1534451    0.0842692    0.2173953
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0153359   -0.2363151    0.2157635
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.2576091   -0.5910569    0.0059559
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0159811   -0.3710508    0.2471340
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0498055   -0.2413133    0.1121567
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.0574983   -0.2765041    0.1239334
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.1218203   -0.4102186    0.1075987
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                -0.6674400   -1.0449430   -0.3596253
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0763736   -0.1184745    0.2372775
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0034850   -0.1441614    0.1198951
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1922293   -0.4327516    0.0079155
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0567296   -0.1977783    0.0677095
