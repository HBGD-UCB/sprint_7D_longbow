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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country                        month    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                  0       18     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                  1        3     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                  0       17     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                  1        7     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                  0       14     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                  1       12     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                  0       18     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                  1        4     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                  0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                  1        6     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                  0        7     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                  0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                  1        6     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                  0       24     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                  0       13     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                  1       10     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                 1        3     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                 0       15     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                 1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                 0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                 1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                  0       13     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                  0       24     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                  1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                  0       20     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                  0       10     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                  0       21     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                  0       10     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                  0       17     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                  0       17     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                  1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                  0       29     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                 0       20     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                 1        2     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                 0       20     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                 1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                 0       16     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                  0       14     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                  1        5     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                  0       19     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                  1        4     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                  0       13     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                  1       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                  0       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                  1        4     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                  0        4     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                  1        4     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                  0       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                  1        6     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                  0       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                  1       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                  0       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                  1       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                  0       14     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                  1        8     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                 0       19     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                 1        6     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                 0       10     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                 1       14     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                 0       14     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                 1        6     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                  0       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                  1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                  0       14     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                  1        3     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                  0       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                  1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                  0       13     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                  1        6     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                  0       14     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                  1        7     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                  0        9     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                  1        9     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                  0       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                  1        4     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                  0       18     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                  1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                  0       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                  1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                 0       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                 1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                 0       18     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                 1        5     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                 0       14     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                 1        2     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                  0       36     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                  1        5     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                  0       24     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                  1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                  0       19     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                  1        3     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                  0       20     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                  1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                  0       23     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                  1        2     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                  0       19     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                  1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                  0       23     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                  1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                  0       19     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                  1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                  0       21     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                  1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                 0       25     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                 1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                 0       29     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                 1        4     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                 0       21     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                 1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       27     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       10     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       26     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        3     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       19     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        1     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       10     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        2     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       14     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        1     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       16     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        2     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       22     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        4     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       12     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       22     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        3     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       22     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        7     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       24     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        5     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       36     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        6     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        7     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0       10     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       14     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       11     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       20     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        5     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       29     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        3     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       15     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1       10     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       28     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1       13     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       22     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       19     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       14     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       19     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       11     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       17     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                  0       19     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                  1       17     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                  0       12     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                  1       15     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                  0       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                  1       13     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                  0       13     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                  1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                  0        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                  1       12     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                  0       15     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                  1       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                  0       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                  1       20     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                  0       22     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                  1       23     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                  0       11     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                  1       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                 0       16     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                 1       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                 0       22     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                 1       19     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                 0       25     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                 1       27     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                  0       49     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                  1       42     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                  0       47     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                  1       34     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                  0       22     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                  1       20     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                  0       13     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                  1       15     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                  1        2     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                 0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                 1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                 0       27     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                 1       22     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                 0       54     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                 1       30     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                  0        3     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                  1        5     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                  0        7     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                  1        5     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                  0        8     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                  1        6     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                  0       14     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                  1       20     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                  0       19     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                  1       16     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                  0       31     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                  1       20     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                  0       20     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                  1       19     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                  0       25     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                  1       16     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                  0       14     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                  1        9     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                 0        1     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                 1        6     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                 0        5     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                 1        1     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                 0        1     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                 1        2     273
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                  0       32     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                  1       21     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                  0       30     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                  1       10     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                  0       32     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                  1       11     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                  0       21     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                  1       10     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                  0       20     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                  1       17     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                  0       32     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                  1       21     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                  0        4     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                  1        2     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                  0        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                  1        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                  0        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                  1        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                 0       45     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                 1       23     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                 0       26     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                 1       21     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                 0       56     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                 1       24     458
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        9     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        8     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        4     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        4     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        3     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        3     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        2     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        4     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        3     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        3     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        2     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0        7     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0        9     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        7     100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                  0       37     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                  1       25     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                  0       40     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                  1       17     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                  0       37     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                  1       19     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                  0       35     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                  1       14     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                  0       36     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                  1       11     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                  0       32     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                  1       12     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                  0       31     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                  1       16     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                  0       28     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                  1       13     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                  0       25     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                  1        8     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                 0       46     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                 1       12     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                 0       36     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                 1       15     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                 0       37     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                 1       16     598
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      178    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       53    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      125    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       32    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      136    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       47    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      133    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       28    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      171    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       27    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      149    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       25    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      141    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       31    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      155    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       40    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      179    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       49    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      189    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       39    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      175    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       51    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      179    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       52    2384
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       17     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       19     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       20     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       24     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        4     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       31     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       36     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       22     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       16     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       32     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        3     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       32     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       28     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        2     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                 0       10     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0       50     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1        5     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0       38     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1        3     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0       50     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1        4     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0       34     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0       63     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1        5     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0       82     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1        4     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0       80     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1        5     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0       69     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1        1     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0       67     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1        8     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0       68     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1        3     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0       49     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1        2     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0       33     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1        2     725
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                  0        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                  1        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                  0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                  0       57     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                  1       72     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                  0      116     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                  1      117     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                  0       91     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                  1      117     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                 0       10     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                 1        3     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                 0        2     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                 1        2     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                 0        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                 1        0     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                  0       15     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                  1       13     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                  0       17     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                  1       15     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                  0       13     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                  1        7     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                  0       11     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                  1        9     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                  0       11     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                  1        9     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                  0       15     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                  1       10     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                  0        7     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                  1        7     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                  0       10     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                  1        4     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                  0       12     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                  1        7     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                 0       16     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                 1        6     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                 0        2     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                 1        0     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                 0       19     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                 1       28     263
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                  0       13     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                  0        7     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                  0       14     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                  0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                  1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                  0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                  0        6     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                  0        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                  0       12     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                  1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                  0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                 0       16     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                 1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                 0       11     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                 1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                 0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                 1        1     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                  0       36    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        8    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                  0      135    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                  1       31    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                  0      133    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                  1       29    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                  0      222    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                  1       44    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                  0      160    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                  1       25    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       81    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                  1       16    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       83    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                  1       13    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       76    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                  1       10    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      137    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                  1       23    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                 0       58    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        7    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                 0       52    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                 1       11    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       91    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                 1       19    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                  0       57     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                  1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                  0      165     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                  1        3     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                  0      127     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                  1        7     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                  0       72     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                  1        6     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                  0       80     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                  1        8     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                  0       45     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                  1        8     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                  0       54     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                  1        2     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                  0       76     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                  1        3     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                  0       49     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                  1        2     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                 0       38     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                 1        3     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                 0       71     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                 1        3     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                 0       45     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                 1        3     927
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                  0        8     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                  0       12     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                  0       26     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                  0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                  0       25     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                  0       12     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                  1        2     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                  0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                  0       26     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                  0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                  1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                 0       22     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                 1        1     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                 0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                 1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                 0        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                 1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                  0      549    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                  1       34    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                  0      462    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                  1       35    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                  0      568    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                  1       29    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                  0      523    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                  1       24    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                  0      536    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                  1       27    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                  0      597    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                  1       42    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                  0      663    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                  1       47    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                  0      747    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                  1       71    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                  0      704    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                  1       52    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                 0      777    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                 1       44    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                 0      686    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                 1       40    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                 0      804    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                 1       52    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     1085   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      140   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      814   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1      101   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      894   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1      130   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      857   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       88   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      831   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1       98   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      933   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1      103   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      930   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1      112   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      962   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1      124   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0     1049   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1      102   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      822   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1      102   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      893   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1      119   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0     1008   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1      138   12435
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                  0       49     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                  1        6     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                  0      108     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                  1        6     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                  0       88     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                  1       10     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                  0      104     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                  1        6     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                  0      106     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                  1        5     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                  0       82     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                  1        8     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                  0       67     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                  1        4     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                  0       38     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                  1        3     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                  0       26     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                  1        3     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                 0       35     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                 1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                 0       44     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                 1        5     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                 0       34     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                 1        0     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1007   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      212   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                  0      839   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                  1      148   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                  0     1012   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                  1      172   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                  0      700   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                  1      165   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      540   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                  1      156   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      530   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                  1      143   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                  0      582   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                  1      161   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                  0      814   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                  1      193   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                  0     1080   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                  1      222   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                 0     1180   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                 1      238   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                 0     1223   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                 1      230   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                 0     1237   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                 1      226   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       14    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        6    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                  0       71    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       28    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                  0       89    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                  1       29    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      177    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                  1       76    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      121    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                  1       54    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                  0       89    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                  1       36    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      174    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       54    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      104    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                  1       30    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                  0       87    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                  1       29    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                 0       58    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       26    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                 0       35    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                 1       11    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                 0       19    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        4    1421
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                  0       20     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                  0       23     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                  1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                  0       22     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                  1        4     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                  0       19     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                  1        2     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                  0       19     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                  1        3     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                  0        8     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                  1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                  0       19     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                  1        3     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                  0       25     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                  1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                  0       22     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                  1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                 0       21     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                 1        2     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                 0       17     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                 1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                 0       26     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                 1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                  0       13     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                  0       25     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                  1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                  0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                  1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                  0       10     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                  1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                  0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                  1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                  0       10     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                  1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                  0       17     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                  1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                  0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                  1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                  0       30     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                  1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                 0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                 1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                 0       20     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                 1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                 0       16     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                 1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                  0       16     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                  1        3     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                  0       21     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                  1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                  0       17     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                  1        6     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                  0       14     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                  1        2     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                  0        6     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                  1        2     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                  0       13     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                  1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                  0       19     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                  1        5     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                  0       17     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                  1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                  0       20     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                  1        2     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                 0       24     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                 1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                 0       19     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                 1        5     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                 0       17     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                 1        3     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                  0       22     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                  1        2     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                  0       17     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                  1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                  0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                  1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                  0       16     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                  1        3     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                  0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                  1        2     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                  0       14     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                  1        4     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                  0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                  1        2     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                  0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                  1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                  0       17     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                  1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                 0       22     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                 1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                 0       22     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                 1        1     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                 0       15     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                 1        1     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                  0       40     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                  1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                  0       25     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                  0       22     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                  0       21     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                  0       24     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                  1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                  0       20     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                  0       23     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                  0       20     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                  0       22     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                 0       25     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                 1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                 0       31     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                 1        2     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                 0       21     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                 1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       36     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       28     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        1     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       20     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       12     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       18     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       24     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        2     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       12     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       25     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       25     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        4     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       26     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        3     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       40     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        2     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       21     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       27     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       23     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0       11     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       17     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       17     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       25     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       22     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       20     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       28     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        2     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       30     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        2     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       17     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       10     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       15     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       14     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        9     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       21     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                  1       13     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        9     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                  1       10     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       29     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       10     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       16     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        5     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       12     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        7     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       26     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       13     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       18     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       10     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                  0       26     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                  1       10     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                  0       18     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                  1        9     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                  0       17     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                  1       11     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                  0       19     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                  1        2     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                  0       16     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                  1        5     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                  0       20     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                  1       13     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                  0       20     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                  1       14     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                  0       27     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                  1       15     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                  0       17     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                  1        9     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                 0       22     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                 1       12     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                 0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                 1       13     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                 0       27     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                 1       20     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                  0       69     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                  1       20     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                  0       67     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                  1       14     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                  0       31     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                  1       11     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                  0       22     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                  1        5     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                  0        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                  1        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                 0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                 1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                 0       41     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                 1        8     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                 0       70     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                 1       13     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                  0        3     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                  1        5     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                  0        9     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                  1        3     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                  0       13     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                  1        1     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                  0       26     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                  1        8     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                  0       26     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                  1        9     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                  0       43     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                  1        7     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                  0       28     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                  1       11     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                  0       29     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                  1       11     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                  0       19     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                  1        4     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                 0        4     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                 1        3     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                 0        6     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                 1        0     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                 0        3     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                 1        0     271
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                  0       41     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                  1       12     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                  0       34     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                  1        4     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                  0       39     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                  1        4     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                  0       26     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                  1        5     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                  0       24     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                  1       12     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                  0       47     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                  1        6     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                  0        4     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                  1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                  0        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                  1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                  0        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                  1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                 0       59     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                 1        7     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                 0       37     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                 1        9     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                 0       69     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                 1       11     450
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       15      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                  0        9      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                  0        9      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        8      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        6      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                  0        6      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        4      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        4      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        3      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       11      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       14      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0      89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                  0       50     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                  1       11     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                  0       56     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                  1        1     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                  0       46     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                  1        8     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                  0       41     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                  1        7     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                  0       44     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                  1        1     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                  0       42     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                  1        2     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                  0       39     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                  1        4     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                  0       38     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                  1        2     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                  0       29     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                  1        3     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                 0       54     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                 1        2     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                 0       45     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                 1        3     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                 0       50     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                 1        2     580
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      200    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       29    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      145    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       11    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      156    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       27    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      153    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        8    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      186    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       11    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      166    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        7    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      163    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        9    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      175    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       19    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      207    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       21    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      214    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       14    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      205    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       21    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      202    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       27    2376
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                  0       18     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                  0       19     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                  0       21     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                  0       22     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                  1        1     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                  0       27     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                  0       35     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                  1        1     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                  0       23     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                  1        2     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                  0       17     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                  1        1     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                  0       31     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                 0       32     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                 1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                 0       30     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                 0       10     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                  0        2     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                  0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                  0      105     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                  1       18     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                  0      186     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                  1       41     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                  0      177     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                  1       21     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                 0       12     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                 1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                 0        3     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                 1        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                 0        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                 1        0     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                  0       23     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                  1        5     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                  0       25     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                  1        7     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                  0       19     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                  1        1     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                  0       18     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                  1        2     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                  0       15     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                  1        5     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                  0       20     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                  1        4     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                  0       12     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                  1        2     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                  0       14     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                  1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                  0       18     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                  1        1     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                 0       22     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                 1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                 0        2     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                 1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                 0       43     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                 1        4     262
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                  0        8     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                  0        6     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                  0       11     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                  0        9     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                  0        5     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                  0        5     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                  0        4     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                  0       10     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                  0        8     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                 0       16     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                 1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                 0       12     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                 1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                 0        6     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                 1        1     101
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                  0       24     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                  0      104     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                  1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                  0      108     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                  0      116     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                  1        6     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                  0      114     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                  1        3     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                  0       60     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                  0       46     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                  1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                  0       50     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                  1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                  0      117     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                  1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                 0       45     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                 1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                 0       54     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                 1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                 0       96     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                 1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                  0       54     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                  1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                  0       56     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                  1        1     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                  0       74     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                  1        2     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                  0       70     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                  1        2     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                  0       75     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                  1        3     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                  0       50     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                  1        1     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                  0       48     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                  1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                  0       54     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                  1        2     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                  0       45     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                  1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                 0       36     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                 1        2     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                 0       68     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                 1        3     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                 0       46     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                 1        2     694
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                  0        8     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                  1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                  0       12     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                  1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                  0       26     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                  1        1     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                  0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                  0       25     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                  0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                  0       16     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                  0       26     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                  0       19     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                 0       23     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                 1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                 0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                 1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                 0        7     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                 1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                  0      540    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                  1       30    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                  0      454    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                  1       31    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                  0      563    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                  1       25    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                  0      517    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                  1       22    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                  0      529    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                  1       23    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                  0      591    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                  1       38    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                  0      659    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                  1       39    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                  0      740    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                  1       67    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                  0      702    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                  1       46    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                 0      769    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                 1       36    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                 0      672    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                 1       38    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                 0      804    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                 1       44    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     1080   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       42   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      751   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       37   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      889   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                  1       43   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      846   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       26   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      864   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                  1       18   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      949   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       28   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      940   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       41   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      986   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       44   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                  0     1000   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       45   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      789   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       26   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      882   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       37   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                 0     1020   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                 1       40   11423
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                  0        7     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                  0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                  0       56     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                  0       48     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                  0       26     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                  0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                  0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                  0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                  0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                 0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                 1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                 0       10     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                 1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                 0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                 1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1104   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      101   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                  0      896   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                  1       73   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                  0     1085   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                  1       84   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                  0      786   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                  1       62   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                  0      630   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                  1       46   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                  0      609   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                  1       52   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                  0      687   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                  1       46   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                  0      925   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                  1       73   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                  0     1202   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                  1       89   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                 0     1295   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                 1      114   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                 0     1324   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                 1      110   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                 0     1326   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                 1      117   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                  0       18    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                  0       90    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                  1        4    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                  0      108    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                  1        2    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                  0      240    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                  1        7    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                  0      153    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                  1        5    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                  0      113    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                  1        2    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                  0      212    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                  1        4    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                  0      130    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                  1        1    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                  0       64    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                  1        2    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                 0       62    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                 1        4    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                 0       33    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                 1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                 0       22    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                 1        0    1276
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                  0       16     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                  1        2     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                  0       13     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                  1        7     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                  0       16     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                  1        9     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                  0       19     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                  1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                  0       17     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                  1        4     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                  0        7     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                  0       17     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                  1        3     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                  0       21     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                  0       12     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                  1        9     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                 1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                 0       13     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                 1        2     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                 0       25     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                 1        2     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                  0       13     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                  0       22     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                  0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                  0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                  0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                  0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                  0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                  0       15     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                  0       27     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                 0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                 1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                 0       18     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                 1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                 0       14     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                  0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                  1        3     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                  0       17     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                  1        3     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                  0       17     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                  1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                  0       11     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                  1        3     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                  0        4     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                  1        4     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                  0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                  1        4     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                  0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                  1        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                  0       12     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                  1        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                  0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                  1        6     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                 0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                 1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                 0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                 1       11     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                 0       16     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                 1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                  0       22     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                  0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                  1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                  0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                  1        2     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                  0       15     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                  1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                  0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                  1        6     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                  0       12     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                  1        6     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                  0       18     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                  1        3     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                  0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                  1        2     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                  0       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                 0       21     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                 1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                 0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                 1        4     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                 0       14     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                 1        2     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                  0       32     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                  1        5     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                  0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                  1        3     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                  0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                  0       20     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                  1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                  0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                  0       16     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                  0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                  1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                 0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                 1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                 0       31     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                 1        2     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                 0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                 1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       24     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       10     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       25     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       17     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       10     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       11     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        1     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       15     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       18     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        4     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       22     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        4     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       30     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        5     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       14     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        7     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        5     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       20     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       15     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       16     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        3     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       11     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       18     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        4     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       24     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        2     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       18     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        9     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       16     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        8     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        4     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       23     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        6     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        9     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       29     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        7     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       25     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        8     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       29     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1       12     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       15     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1       10     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       15     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        4     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       29     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1       11     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       18     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1       11     373
6-24 months                   ki1000108-IRC              INDIA                          1                  0       24     410
6-24 months                   ki1000108-IRC              INDIA                          1                  1       12     410
6-24 months                   ki1000108-IRC              INDIA                          2                  0       17     410
6-24 months                   ki1000108-IRC              INDIA                          2                  1       10     410
6-24 months                   ki1000108-IRC              INDIA                          3                  0       24     410
6-24 months                   ki1000108-IRC              INDIA                          3                  1        5     410
6-24 months                   ki1000108-IRC              INDIA                          4                  0       14     410
6-24 months                   ki1000108-IRC              INDIA                          4                  1        8     410
6-24 months                   ki1000108-IRC              INDIA                          5                  0       12     410
6-24 months                   ki1000108-IRC              INDIA                          5                  1        9     410
6-24 months                   ki1000108-IRC              INDIA                          6                  0       25     410
6-24 months                   ki1000108-IRC              INDIA                          6                  1       12     410
6-24 months                   ki1000108-IRC              INDIA                          7                  0       24     410
6-24 months                   ki1000108-IRC              INDIA                          7                  1       12     410
6-24 months                   ki1000108-IRC              INDIA                          8                  0       31     410
6-24 months                   ki1000108-IRC              INDIA                          8                  1       14     410
6-24 months                   ki1000108-IRC              INDIA                          9                  0       17     410
6-24 months                   ki1000108-IRC              INDIA                          9                  1       10     410
6-24 months                   ki1000108-IRC              INDIA                          10                 0       21     410
6-24 months                   ki1000108-IRC              INDIA                          10                 1       16     410
6-24 months                   ki1000108-IRC              INDIA                          11                 0       33     410
6-24 months                   ki1000108-IRC              INDIA                          11                 1        8     410
6-24 months                   ki1000108-IRC              INDIA                          12                 0       41     410
6-24 months                   ki1000108-IRC              INDIA                          12                 1       11     410
6-24 months                   ki1000109-EE               PAKISTAN                       1                  0       62     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                  1       28     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                  0       55     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                  1       25     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                  0       22     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                  1       19     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                  0       16     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                  1       13     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                  0        1     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                  1        1     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                 0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                 1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                 0       33     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                 1       16     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                 0       62     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                 1       22     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                  0        6     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                  1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                  0        9     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                  1        2     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                  0        9     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                  1        5     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                  0       12     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                  1       12     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                  0       19     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                  1       12     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                  0       26     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                  1       18     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                  0       20     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                  1       11     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                  0       25     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                  1        9     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                  0       14     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                  1        7     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                 0        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                 1        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                 0        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                 1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                 0        0     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                 1        2     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                  0       35     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                  1       16     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                  0       27     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                  1        8     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                  0       31     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                  1       10     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                  0       25     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                  1        6     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                  0       24     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                  1       11     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                  0       34     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                  1       17     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                  0        4     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                  1        2     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                  0        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                  1        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                  0        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                  1        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                 0       47     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                 1       16     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                 0       30     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                 1       13     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                 0       58     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                 1       18     432
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        8     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        8     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        4     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        4     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        3     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        3     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0        7     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        2     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        4     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        1     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0        3     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        1     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        2     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0        6     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       10     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        7     103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                  0       30     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                  1       22     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                  0       32     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                  1       17     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                  0       35     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                  1       16     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                  0       34     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                  1       11     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                  0       32     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                  1       10     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                  0       30     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                  1       10     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                  0       31     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                  1       14     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                  0       25     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                  1       12     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                  0       22     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                  1        7     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                 0       41     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                 1       12     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                 0       35     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                 1       13     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                 0       35     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                 1       15     541
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      167    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       32    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      108    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1       25    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      124    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1       26    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      116    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1       22    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      141    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1       17    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      121    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1       19    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      117    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1       25    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      148    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1       28    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      164    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1       35    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      167    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       29    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      158    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       33    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      163    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1       33    2018
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       13     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       17     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       17     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       20     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        3     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       29     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       35     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       23     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       16     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        3     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       28     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        4     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       23     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       24     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        2     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                 0        9     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        0     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0       40     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       19     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0       34     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1       13     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0       47     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1       10     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0       33     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1        2     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0       57     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1       21     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0       72     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1       21     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0       75     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1       17     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0       67     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1       11     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0       57     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1       30     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0       61     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1       13     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0       40     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1       15     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0       30     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1       12     797
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                  0        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                  1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                  0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                  1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                  0       59     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                  1       67     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                  0      133     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                  1       98     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                  0      104     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                  1      108     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                 0       11     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                 1        3     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                 0        2     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                 1        2     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                 0        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                 1        0     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                  0       18     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                  1        9     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                  0       20     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                  1       11     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                  0       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                  1        6     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                  0       10     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                  1        8     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                  0       12     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                  1        8     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                  0       17     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                  1        6     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                  0        8     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                  1        5     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                  0       10     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                  1        4     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                  0       12     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                  1        7     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                 0       13     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                 1        6     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                 0        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                 1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                 0       19     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                 1       27     252
6-24 months                   ki1114097-CMIN             BRAZIL                         1                  0       13     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                  0        7     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                  0       14     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                  0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                  1        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                  0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                  0        6     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                  0        4     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                  0       12     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                  1        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                  0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                 0       16     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                 1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                 0       11     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                 1        1     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                 0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                 1        1     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                  0       38    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        6    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                  0      132    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                  1       32    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                  0      132    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                  1       28    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                  0      222    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                  1       43    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                  0      158    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                  1       25    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       81    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                  1       14    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       77    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                  1       19    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       69    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                  1       16    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      131    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                  1       24    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                 0       55    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        9    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                 0       49    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                 1       12    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       91    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                 1       19    1482
6-24 months                   ki1114097-CMIN             PERU                           1                  0       47     878
6-24 months                   ki1114097-CMIN             PERU                           1                  1        0     878
6-24 months                   ki1114097-CMIN             PERU                           2                  0      162     878
6-24 months                   ki1114097-CMIN             PERU                           2                  1        4     878
6-24 months                   ki1114097-CMIN             PERU                           3                  0      124     878
6-24 months                   ki1114097-CMIN             PERU                           3                  1        5     878
6-24 months                   ki1114097-CMIN             PERU                           4                  0       71     878
6-24 months                   ki1114097-CMIN             PERU                           4                  1        5     878
6-24 months                   ki1114097-CMIN             PERU                           5                  0       79     878
6-24 months                   ki1114097-CMIN             PERU                           5                  1        7     878
6-24 months                   ki1114097-CMIN             PERU                           6                  0       44     878
6-24 months                   ki1114097-CMIN             PERU                           6                  1        7     878
6-24 months                   ki1114097-CMIN             PERU                           7                  0       53     878
6-24 months                   ki1114097-CMIN             PERU                           7                  1        2     878
6-24 months                   ki1114097-CMIN             PERU                           8                  0       74     878
6-24 months                   ki1114097-CMIN             PERU                           8                  1        1     878
6-24 months                   ki1114097-CMIN             PERU                           9                  0       47     878
6-24 months                   ki1114097-CMIN             PERU                           9                  1        2     878
6-24 months                   ki1114097-CMIN             PERU                           10                 0       34     878
6-24 months                   ki1114097-CMIN             PERU                           10                 1        1     878
6-24 months                   ki1114097-CMIN             PERU                           11                 0       67     878
6-24 months                   ki1114097-CMIN             PERU                           11                 1        0     878
6-24 months                   ki1114097-CMIN             PERU                           12                 0       41     878
6-24 months                   ki1114097-CMIN             PERU                           12                 1        1     878
6-24 months                   ki1114097-CONTENT          PERU                           1                  0        9     215
6-24 months                   ki1114097-CONTENT          PERU                           1                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           2                  0       13     215
6-24 months                   ki1114097-CONTENT          PERU                           2                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           3                  0       27     215
6-24 months                   ki1114097-CONTENT          PERU                           3                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           4                  0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           4                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           5                  0       25     215
6-24 months                   ki1114097-CONTENT          PERU                           5                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           6                  0       12     215
6-24 months                   ki1114097-CONTENT          PERU                           6                  1        2     215
6-24 months                   ki1114097-CONTENT          PERU                           7                  0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           7                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           8                  0       26     215
6-24 months                   ki1114097-CONTENT          PERU                           8                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           9                  0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           9                  1        1     215
6-24 months                   ki1114097-CONTENT          PERU                           10                 0       22     215
6-24 months                   ki1114097-CONTENT          PERU                           10                 1        1     215
6-24 months                   ki1114097-CONTENT          PERU                           11                 0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           11                 1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           12                 0        7     215
6-24 months                   ki1114097-CONTENT          PERU                           12                 1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        1                  0      555    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                  1        4    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        2                  0      489    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        2                  1        5    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        3                  0      584    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        3                  1        5    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        4                  0      539    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        4                  1        2    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        5                  0      555    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        5                  1        4    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        6                  0      617    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        6                  1        4    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        7                  0      691    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        7                  1        9    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        8                  0      796    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        8                  1        5    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        9                  0      737    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        9                  1        6    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        10                 0      800    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        10                 1       10    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        11                 0      713    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        11                 1        4    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        12                 0      833    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        12                 1        8    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      952   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      106   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      732   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       73   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      770   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1      100   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      743   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       66   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      680   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1       84   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      794   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       78   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      812   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       76   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      831   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       84   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      943   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       64   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      710   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       79   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      802   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       88   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      900   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1      105   10672
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                  0       49     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                  1        6     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                  0      105     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                  1        9     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                  0       84     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                  1       10     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                  0      101     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                  1        6     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                  0      104     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                  1        5     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                  0       80     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                  1       10     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                  0       67     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                  1        4     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                  0       38     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                  1        3     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                  0       26     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                  1        3     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                 0       35     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                 1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                 0       41     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                 1        6     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                 0       32     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                 1        2     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      579    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      116    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                  0      507    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                  1       83    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                  0      646    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                  1       97    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                  0      507    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                  1      112    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      489    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                  1      125    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      503    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                  1      104    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                  0      506    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                  1      119    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                  0      624    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                  1      135    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                  0      653    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                  1      140    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                 0      687    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                 1      135    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                 0      723    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                 1      130    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                 0      718    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                 1      117    8555
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                  0       15    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        6    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                  0       76    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       25    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                  0       90    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                  1       28    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      182    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                  1       73    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      124    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                  1       52    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                  0       92    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                  1       35    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      180    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       50    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      104    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                  1       31    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                  0       87    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                  1       30    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                 0       61    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       24    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                 0       34    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                 1       11    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                 0       18    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        4    1432


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/33928d3a-e0ab-4783-8172-7c437e8e9126/638bf202-f4a1-4c55-9274-e59c7706bf63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33928d3a-e0ab-4783-8172-7c437e8e9126/638bf202-f4a1-4c55-9274-e59c7706bf63/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2764565   0.1109179   0.4419951
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.6221449   0.4156497   0.8286402
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3207022   0.1646728   0.4767315
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1943981   0.1392612   0.2495350
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.2108523   0.1165261   0.3051784
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0692869   0.0475207   0.0910532
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1049247   0.0866750   0.1231745
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1582935   0.1363654   0.1802217
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4504922   0.2494531   0.6515312
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0666438   0.0277349   0.1055526
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0739873   0.0443636   0.1036110
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0203791   0.0110451   0.0297131
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0804211   0.0612298   0.0996125
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.2966641   0.1315775   0.4617508
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4848852   0.3233664   0.6464041
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1102791   0.0607610   0.1597973
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.2642159   0.1586952   0.3697365
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0635862   0.0484775   0.0786948
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1553852   0.1280124   0.1827580


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2976589   0.2609818   0.3343359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1091275   0.1036470   0.1146079
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1741737   0.1663519   0.1819955
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0373807   0.0339019   0.0408595
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.0753350   0.0700333   0.0806367
6-24 months                   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0939843   0.0884477   0.0995208
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1651666   0.1559963   0.1743368


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.6316741   0.9128979   2.9163834
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           0.8370757   0.6066179   1.1550858
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9281474   0.5837116   1.4758274
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0227751   0.7781944   1.3442258
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           0.7461780   0.4840651   1.1502205
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             optimal           0.8841455   0.6843543   1.1422639
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0400548   0.8804313   1.2286182
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1003211   0.9646651   1.2550538
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.6849651   0.4472958   1.0489195
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2883213   0.7313857   2.2693523
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             optimal           0.7436332   0.5649076   0.9789040
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.8342700   1.1718150   2.8712268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9367565   0.7440079   1.1794400
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.0441306   0.6124105   1.7801926
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.6061232   0.4411211   0.8328445
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4558963   0.9410582   2.2523944
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           0.6307973   0.4287479   0.9280633
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.4780616   1.1747774   1.8596426
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0629490   0.8963534   1.2605079


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1746304    0.0141579    0.3351030
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                -0.1013625   -0.3015795    0.0988545
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0230433   -0.1719664    0.1258798
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0044274   -0.0487085    0.0575634
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.0535189   -0.1449259    0.0378880
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0080272   -0.0255886    0.0095342
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0042027   -0.0132811    0.0216866
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0158802   -0.0049681    0.0367285
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1419207   -0.3340064    0.0501649
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0192148   -0.0185473    0.0569770
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0189679   -0.0405793    0.0026435
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0170017    0.0077401    0.0262632
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0050861   -0.0236044    0.0134322
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0130920   -0.1451507    0.1713346
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1909851   -0.3449520   -0.0370181
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0502759    0.0019637    0.0985880
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.0975492   -0.1998487    0.0047503
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0303981    0.0157022    0.0450940
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0097813   -0.0167442    0.0363069


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.3871325   -0.0954127    0.6571096
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                -0.1946351   -0.6484841    0.1342635
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0774151   -0.7131749    0.3224140
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0222680   -0.2850259    0.2560773
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.3401628   -1.0658379    0.1306015
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.1310356   -0.4612314    0.1245455
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0385122   -0.1358069    0.1860775
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0911744   -0.0366292    0.2032214
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.4599283   -1.2356572    0.0466379
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2237961   -0.3672677    0.5593456
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.3447490   -0.7702010   -0.0215506
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.4548240    0.1466230    0.6517168
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0675133   -0.3440717    0.1521400
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0422654   -0.6328916    0.4382630
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.6498297   -1.2669512   -0.2007043
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3131379   -0.0626336    0.5560280
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                -0.5852953   -1.3323727   -0.0775127
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.3234382    0.1487749    0.4622623
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0592211   -0.1156314    0.2066690
