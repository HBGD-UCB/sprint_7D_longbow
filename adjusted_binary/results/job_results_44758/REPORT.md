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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b0504ddd-352a-4933-9b5d-233939dda81c/62cf13d3-a3b8-49a5-a03e-bef5735ee76d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0504ddd-352a-4933-9b5d-233939dda81c/62cf13d3-a3b8-49a5-a03e-bef5735ee76d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0504ddd-352a-4933-9b5d-233939dda81c/62cf13d3-a3b8-49a5-a03e-bef5735ee76d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0504ddd-352a-4933-9b5d-233939dda81c/62cf13d3-a3b8-49a5-a03e-bef5735ee76d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5555556   0.3678706   0.7432406
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.4347826   0.2319121   0.6376531
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4583333   0.2587197   0.6579469
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.2758621   0.1129712   0.4387529
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3777778   0.2359296   0.5196259
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.3823529   0.2187836   0.5459223
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.3939394   0.2270016   0.5608772
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.4634146   0.3105696   0.6162597
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.5600000   0.3651550   0.7548450
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.4210526   0.1987473   0.6433580
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.5250000   0.3700344   0.6799656
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.6071429   0.4259994   0.7882863
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.4722222   0.3089444   0.6355000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                    NA                0.5555556   0.3678962   0.7432149
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                    NA                0.4482759   0.2670524   0.6294993
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                    NA                0.4090909   0.2033889   0.6147929
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                    NA                0.5714286   0.3595131   0.7833440
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                    NA                0.5833333   0.4220902   0.7445765
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                    NA                0.5555556   0.3930378   0.7180733
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                    NA                0.5111111   0.3648812   0.6573410
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                    NA                0.5925926   0.4070300   0.7781552
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                   NA                0.5675676   0.4077418   0.7273933
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                   NA                0.4634146   0.3105905   0.6162388
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                   NA                0.5192308   0.3832660   0.6551956
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4032258   0.2810192   0.5254325
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2982456   0.1793807   0.4171105
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3392857   0.2151756   0.4633958
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2857143   0.1591196   0.4123090
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2340426   0.1128956   0.3551895
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2727273   0.1410235   0.4044310
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3404255   0.2048424   0.4760086
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3170732   0.1745169   0.4596295
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2424242   0.0960868   0.3887617
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2068966   0.1025594   0.3112337
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2941176   0.1689612   0.4192741
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3018868   0.1781900   0.4255836
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2294372   0.1752035   0.2836709
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2038217   0.1407957   0.2668477
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2568306   0.1935193   0.3201419
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1739130   0.1153525   0.2324736
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1363636   0.0885533   0.1841739
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1436782   0.0915493   0.1958070
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1802326   0.1227764   0.2376888
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2051282   0.1484413   0.2618152
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2149123   0.1615835   0.2682410
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1710526   0.1221649   0.2199404
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2256637   0.1711532   0.2801743
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2251082   0.1712379   0.2789785
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1818182   0.0678168   0.2958196
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1867470   0.1274437   0.2460502
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1790123   0.1199589   0.2380658
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1654135   0.1207479   0.2100791
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1351351   0.0858557   0.1844145
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1649485   0.0910666   0.2388303
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1354167   0.0669472   0.2038861
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1162791   0.0485068   0.1840513
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1437500   0.0893703   0.1981297
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1076923   0.0323071   0.1830775
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1746032   0.0808297   0.2683767
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1727273   0.1020628   0.2433918
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0583190   0.0360486   0.0805895
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                    NA                0.0704225   0.0412292   0.0996159
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                    NA                0.0485762   0.0302109   0.0669415
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                    NA                0.0438757   0.0237981   0.0639533
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                    NA                0.0479574   0.0312606   0.0646541
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                    NA                0.0657277   0.0447626   0.0866928
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                    NA                0.0661972   0.0366095   0.0957849
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                    NA                0.0867971   0.0565373   0.1170568
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                    NA                0.0687831   0.0493066   0.0882596
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                   NA                0.0535932   0.0261398   0.0810466
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                   NA                0.0550964   0.0248194   0.0853734
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                   NA                0.0607477   0.0382340   0.0832614
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1142857   0.0964685   0.1321029
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1103825   0.0900773   0.1306877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1269531   0.1065613   0.1473449
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0931217   0.0745928   0.1116506
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1054898   0.0857358   0.1252438
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0994209   0.0811993   0.1176424
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1074856   0.0886788   0.1262924
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1141805   0.0952649   0.1330960
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0886186   0.0721998   0.1050374
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1103896   0.0901830   0.1305962
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1175889   0.0977420   0.1374359
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1204188   0.1015755   0.1392622
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1739130   0.1515765   0.1962496
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1499493   0.1259796   0.1739191
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1452703   0.1250249   0.1655156
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1907514   0.1641142   0.2173887
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2241379   0.1883416   0.2599342
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2124814   0.1803898   0.2445731
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2166891   0.1841758   0.2492024
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1916584   0.1652281   0.2180887
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1705069   0.1484915   0.1925223
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1678420   0.1463902   0.1892938
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1582932   0.1369536   0.1796327
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1544771   0.1354345   0.1735197
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3703704   0.1879606   0.5527802
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.2857143   0.0922229   0.4792057
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.3913043   0.1915653   0.5910434
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.2222222   0.0651827   0.3792618
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3023256   0.1648584   0.4397928
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.2903226   0.1303080   0.4503371
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.3125000   0.1516742   0.4733258
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.2564103   0.1191732   0.3936473
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.2380952   0.0556698   0.4205207
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.3684211   0.1512116   0.5856305
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.3333333   0.1851734   0.4814933
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.3571429   0.1794096   0.5348761
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1266376   0.0835551   0.1697200
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0705128   0.0303307   0.1106949
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1475410   0.0961476   0.1989343
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0496894   0.0161163   0.0832625
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0558376   0.0237680   0.0879071
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0404624   0.0110945   0.0698304
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0523256   0.0190396   0.0856116
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0979381   0.0561038   0.1397725
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0921053   0.0545620   0.1296485
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0614035   0.0302356   0.0925715
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0929204   0.0550619   0.1307789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1179039   0.0761263   0.1596816
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0526316   0.0334422   0.0718209
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                    NA                0.0639175   0.0326207   0.0952143
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                    NA                0.0425170   0.0261742   0.0588598
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                    NA                0.0408163   0.0185553   0.0630774
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                    NA                0.0416667   0.0264272   0.0569061
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                    NA                0.0604134   0.0408188   0.0800079
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                    NA                0.0558739   0.0251118   0.0866361
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                    NA                0.0830235   0.0514665   0.1145806
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                    NA                0.0614973   0.0454892   0.0775054
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                   NA                0.0447205   0.0202168   0.0692242
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                   NA                0.0535211   0.0217384   0.0853039
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                   NA                0.0518868   0.0281016   0.0756719
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0374332   0.0263257   0.0485406
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0469543   0.0321837   0.0617249
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0461373   0.0326686   0.0596061
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0298165   0.0185273   0.0411057
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0204082   0.0110765   0.0297398
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0286592   0.0181966   0.0391217
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0417941   0.0292708   0.0543174
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0427184   0.0303682   0.0550687
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0430622   0.0307539   0.0553705
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0319018   0.0198360   0.0439676
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0402612   0.0275516   0.0529707
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0377358   0.0262639   0.0492078
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0838174   0.0686747   0.0989601
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0753354   0.0574110   0.0932598
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0718563   0.0559755   0.0877371
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0731132   0.0542159   0.0920105
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0680473   0.0473521   0.0887426
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0786687   0.0544416   0.1028958
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0627558   0.0450045   0.0805071
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0731463   0.0550472   0.0912454
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0689388   0.0532552   0.0846225
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0809084   0.0648926   0.0969243
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0767085   0.0617728   0.0916443
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0810811   0.0656808   0.0964814
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3333333   0.1791559   0.4875108
6-24 months                   ki1000108-IRC              INDIA                          2                    NA                0.3703704   0.1879988   0.5527420
6-24 months                   ki1000108-IRC              INDIA                          3                    NA                0.1724138   0.0347651   0.3100625
6-24 months                   ki1000108-IRC              INDIA                          4                    NA                0.3636364   0.1623783   0.5648945
6-24 months                   ki1000108-IRC              INDIA                          5                    NA                0.4285714   0.2166566   0.6404862
6-24 months                   ki1000108-IRC              INDIA                          6                    NA                0.3243243   0.1733036   0.4753450
6-24 months                   ki1000108-IRC              INDIA                          7                    NA                0.3333333   0.1791559   0.4875108
6-24 months                   ki1000108-IRC              INDIA                          8                    NA                0.3111111   0.1756844   0.4465379
6-24 months                   ki1000108-IRC              INDIA                          9                    NA                0.3703704   0.1879988   0.5527420
6-24 months                   ki1000108-IRC              INDIA                          10                   NA                0.4324324   0.2726072   0.5922577
6-24 months                   ki1000108-IRC              INDIA                          11                   NA                0.1951220   0.0736700   0.3165739
6-24 months                   ki1000108-IRC              INDIA                          12                   NA                0.2115385   0.1004007   0.3226762
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4230769   0.2886715   0.5574823
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3469388   0.2135390   0.4803386
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3137255   0.1862612   0.4411898
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2444444   0.1187642   0.3701246
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2380952   0.1091662   0.3670243
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2500000   0.1156862   0.3843138
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3111111   0.1757244   0.4464978
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3243243   0.1733483   0.4753003
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2413793   0.0854911   0.3972675
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2264151   0.1136386   0.3391916
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2708333   0.1450006   0.3966661
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3000000   0.1728623   0.4271377
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1608040   0.1097524   0.2118556
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1879699   0.1215558   0.2543840
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1733333   0.1127412   0.2339255
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1594203   0.0983293   0.2205113
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1075949   0.0592663   0.1559235
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1357143   0.0789686   0.1924600
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1760563   0.1133970   0.2387157
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1590909   0.1050408   0.2131410
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1758794   0.1229701   0.2287887
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1479592   0.0982394   0.1976789
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1727749   0.1191469   0.2264028
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1683673   0.1159684   0.2207663
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1363636   0.0349297   0.2377975
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1951220   0.1344496   0.2557943
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1750000   0.1161047   0.2338953
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1622642   0.1178587   0.2066696
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1366120   0.0868364   0.1863876
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1473684   0.0760641   0.2186727
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1979167   0.1181888   0.2776445
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1882353   0.1051066   0.2713640
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1548387   0.0978697   0.2118077
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1406250   0.0554274   0.2258226
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1967213   0.0969310   0.2965117
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1727273   0.1020625   0.2433921
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1001890   0.0820960   0.1182821
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0906832   0.0708455   0.1105209
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1149425   0.0937475   0.1361376
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0815822   0.0627191   0.1004453
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1099476   0.0877645   0.1321308
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0894495   0.0705064   0.1083927
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0855856   0.0671849   0.1039863
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0918033   0.0730931   0.1105134
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0635551   0.0484866   0.0786236
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1001267   0.0791810   0.1210725
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0988764   0.0792649   0.1184880
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1044776   0.0855657   0.1233895
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1669065   0.1374969   0.1963161
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1406780   0.1124134   0.1689425
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1305518   0.1064176   0.1546860
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1809370   0.1498649   0.2120091
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2035831   0.1659684   0.2411978
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1713344   0.1379055   0.2047634
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1904000   0.1578888   0.2229112
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1778656   0.1467984   0.2089328
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1765448   0.1492155   0.2038741
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1642336   0.1371095   0.1913576
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1524033   0.1254747   0.1793319
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1401198   0.1165262   0.1637133


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2976589   0.2609818   0.3343359
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1573333   0.1389008   0.1757659
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1091275   0.1036470   0.1146079
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1741737   0.1663519   0.1819955
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0373807   0.0339019   0.0408595
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0753350   0.0700333   0.0806367
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939843   0.0884477   0.0995208
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1651666   0.1559963   0.1743368


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.7826087   0.4399098   1.3922772
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.8250000   0.4754180   1.4316349
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.4965517   0.2514882   0.9804184
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.6800000   0.4103465   1.1268524
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.6882353   0.3990250   1.1870629
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 0.7090909   0.4124171   1.2191780
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.8341463   0.5202297   1.3374863
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 1.0080000   0.6206441   1.6371122
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.7578947   0.4049388   1.4184969
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.9450000   0.6033920   1.4800081
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 1.0928571   0.6963367   1.7151713
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                    1                 1.1764706   0.7255263   1.9076953
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                    1                 0.9492901   0.5576606   1.6159500
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                    1                 0.8663102   0.4705991   1.5947614
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                    1                 1.2100840   0.7288078   2.0091763
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                    1                 1.2352941   0.7934506   1.9231842
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                    1                 1.1764706   0.7479703   1.8504518
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                    1                 1.0823529   0.6909780   1.6954054
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                    1                 1.2549020   0.7870786   2.0007900
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                   1                 1.2019078   0.7694983   1.8773041
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                   1                 0.9813486   0.6085706   1.5824708
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                   1                 1.0995475   0.7126016   1.6966067
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7396491   0.4483094   1.2203197
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8414286   0.5232519   1.3530807
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7085714   0.4142346   1.2120511
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5804255   0.3185997   1.0574204
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.6763636   0.3824476   1.1961579
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8442553   0.5118231   1.3926044
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7863415   0.4572267   1.3523552
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6012121   0.3059724   1.1813355
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.5131034   0.2848940   0.9241161
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7294118   0.4325990   1.2298724
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7486792   0.4497353   1.2463344
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8883548   0.6019363   1.3110594
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1193938   0.7955350   1.5750940
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.7579984   0.5023380   1.1437748
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.5943396   0.3893983   0.9071421
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6262199   0.4061315   0.9655774
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7855419   0.5282186   1.1682210
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8940493   0.6214832   1.2861558
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9366931   0.6649076   1.3195729
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7455313   0.5145063   1.0802916
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9835532   0.7014866   1.3790383
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9811321   0.7008825   1.3734401
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.0271084   0.5086010   2.0742225
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9845679   0.4847871   1.9995871
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.9097744   0.4596738   1.8006020
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.7432432   0.3598479   1.5351223
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.9072165   0.4198184   1.9604707
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.7447917   0.3328291   1.6666651
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.6395349   0.2716946   1.5053844
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.7906250   0.3801388   1.6443676
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.5923077   0.2314278   1.5159303
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.9603175   0.4206016   2.1925966
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9500000   0.4493445   2.0084811
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                    1                 1.2075394   0.8117369   1.7963348
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                    1                 0.8329392   0.5475256   1.2671329
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                    1                 0.7523390   0.4371524   1.2947749
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                    1                 0.8223279   0.5053293   1.3381831
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                    1                 1.1270367   0.7877201   1.6125167
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                    1                 1.1350870   0.5936571   2.1703144
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                    1                 1.4883144   1.0839232   2.0435763
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                    1                 1.1794273   0.7806540   1.7819018
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                   1                 0.9189654   0.5629990   1.4999980
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                   1                 0.9447415   0.6134155   1.4550276
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                   1                 1.0416438   0.7632738   1.4215368
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9658470   0.7589041   1.2292205
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1108398   0.8880511   1.3895205
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8148149   0.6328188   1.0491523
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9230355   0.7234311   1.1777136
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8699324   0.6838925   1.1065811
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9404990   0.7440150   1.1888718
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9990792   0.7958007   1.2542828
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7754128   0.6086575   0.9878544
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9659091   0.7594763   1.2284523
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0289032   0.8176891   1.2946751
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0536649   0.8448351   1.3141141
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8622087   0.7050310   1.0544272
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8353041   0.6885963   1.0132684
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0968208   0.9085797   1.3240621
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.2887931   1.0605670   1.5661317
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.2217682   1.0132172   1.4732454
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.2459623   1.0190499   1.5234015
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.1020357   0.9270707   1.3100217
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9804147   0.8215966   1.1699331
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9650917   0.8026774   1.1603690
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9101858   0.7636950   1.0847763
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.8882433   0.7396940   1.0666251
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.7714286   0.3339107   1.7822194
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 1.0565217   0.5197931   2.1474665
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6000000   0.2535499   1.4198387
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.8162791   0.4175680   1.5956958
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.7838710   0.3743141   1.6415456
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 0.8437500   0.4138577   1.7201903
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.6923077   0.3345169   1.4327825
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 0.6428571   0.2585518   1.5983852
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9947368   0.4613992   2.1445666
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.9000000   0.4635784   1.7472772
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 0.9642857   0.4787745   1.9421397
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5568081   0.2867294   1.0812817
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1650650   0.7159642   1.8958721
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.3923752   0.1841490   0.8360532
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.4409242   0.2261820   0.8595475
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.3195137   0.1433398   0.7122169
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.4131917   0.2008427   0.8500550
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7733736   0.4479536   1.3351981
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7273140   0.4277030   1.2368060
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.4848760   0.2631801   0.8933226
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7337504   0.4315486   1.2475759
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9310345   0.5696838   1.5215901
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                    1                 1.2144330   0.7900459   1.8667871
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                    1                 0.8078232   0.5663866   1.1521782
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                    1                 0.7755103   0.4230572   1.4215955
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                    1                 0.7916667   0.4798378   1.3061419
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                    1                 1.1478537   0.8123214   1.6219789
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                    1                 1.0616046   0.5220705   2.1587204
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                    1                 1.5774473   1.0734351   2.3181095
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                    1                 1.1684492   0.7399315   1.8451351
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                   1                 0.8496895   0.4795128   1.5056370
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                   1                 1.0169014   0.6106512   1.6934192
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                   1                 0.9858491   0.6682574   1.4543772
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2543510   0.8139784   1.9329708
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2325261   0.8128648   1.8688476
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.7965269   0.4923635   1.2885907
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.5451895   0.3160948   0.9403243
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.7656090   0.4782927   1.2255197
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1164992   0.7323440   1.7021651
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1411928   0.7541156   1.7269513
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.1503759   0.7619218   1.7368775
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8522349   0.5269676   1.3782713
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0755480   0.6973887   1.6587642
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0080863   0.6591783   1.5416739
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8988035   0.6631444   1.2182079
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8572953   0.6438375   1.1415230
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8722912   0.6301662   1.2074466
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8118519   0.5733848   1.1494960
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9385719   0.6542511   1.3464514
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7487202   0.5358929   1.0460707
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8726860   0.6531650   1.1659853
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8224877   0.6199366   1.0912182
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9652938   0.7377708   1.2629832
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9151857   0.7005696   1.1955483
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9673535   0.7495626   1.2484251
6-24 months                   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          2                    1                 1.1111111   0.5654060   2.1835069
6-24 months                   ki1000108-IRC              INDIA                          3                    1                 0.5172414   0.2055811   1.3013778
6-24 months                   ki1000108-IRC              INDIA                          4                    1                 1.0909091   0.5303199   2.2440845
6-24 months                   ki1000108-IRC              INDIA                          5                    1                 1.2857143   0.6532708   2.5304381
6-24 months                   ki1000108-IRC              INDIA                          6                    1                 0.9729730   0.5047335   1.8755964
6-24 months                   ki1000108-IRC              INDIA                          7                    1                 1.0000000   0.5198996   1.9234482
6-24 months                   ki1000108-IRC              INDIA                          8                    1                 0.9333333   0.4945296   1.7614945
6-24 months                   ki1000108-IRC              INDIA                          9                    1                 1.1111111   0.5654060   2.1835069
6-24 months                   ki1000108-IRC              INDIA                          10                   1                 1.2972973   0.7176460   2.3451398
6-24 months                   ki1000108-IRC              INDIA                          11                   1                 0.5853659   0.2695508   1.2712007
6-24 months                   ki1000108-IRC              INDIA                          12                   1                 0.6346154   0.3151500   1.2779208
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8200371   0.4979913   1.3503465
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7415330   0.4427344   1.2419888
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5777778   0.3157066   1.0573970
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5627706   0.3003833   1.0543552
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.5909091   0.3165588   1.1030289
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7353535   0.4290434   1.2603500
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7665848   0.4363151   1.3468527
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5705329   0.2777833   1.1718050
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.5351630   0.2964234   0.9661835
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.6401515   0.3646231   1.1238836
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7090909   0.4175225   1.2042702
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1689380   0.7269422   1.8796763
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0779167   0.6722069   1.7284920
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9913949   0.6027358   1.6306712
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6691060   0.3860242   1.1597794
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.8439732   0.4992586   1.4266971
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0948504   0.6795596   1.7639325
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.9893466   0.6214484   1.5750410
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0937500   0.7062730   1.6938056
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9201212   0.5795285   1.4608823
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0744437   0.6892193   1.6749811
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0470344   0.6712493   1.6331952
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.4308943   0.6389527   3.2043976
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.2833333   0.5672369   2.9034509
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.1899371   0.5386490   2.6287067
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.0018215   0.4375905   2.2935743
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.0807018   0.4449660   2.6247317
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.4513889   0.6228791   3.3819237
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.3803922   0.5811777   3.2786572
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1354839   0.4951928   2.6036800
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0312500   0.3951126   2.6915785
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.4426230   0.5863212   3.5495239
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.2666667   0.5419715   2.9603853
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9051213   0.6815713   1.2019939
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1472566   0.8862779   1.4850845
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8142827   0.6072410   1.0919162
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0974020   0.8370842   1.4386738
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8928077   0.6759057   1.1793147
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8542410   0.6451194   1.1311514
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9163006   0.6978752   1.2030903
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6343520   0.4708632   0.8546058
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9993782   0.7580697   1.3175001
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9868985   0.7547051   1.2905287
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0428048   0.8075277   1.3466312
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8428551   0.6523878   1.0889300
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.7821855   0.6002299   1.0192996
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0840622   0.8424563   1.3949575
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.2197433   0.9572812   1.5541659
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.0265296   0.8028550   1.3125197
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1407586   0.8865093   1.4679262
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0656604   0.8525114   1.3321019
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0577467   0.8339277   1.3416366
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9839857   0.7752134   1.2489822
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9131059   0.7147130   1.1665694
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.8395106   0.6596897   1.0683479


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1044686   -0.2851574    0.0762202
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                 0.0485602   -0.1073766    0.2044969
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1055669   -0.2203837    0.0092498
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0306117   -0.0818765    0.0206531
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0244848   -0.1366170    0.0876473
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0029407   -0.0120781    0.0179594
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0051582   -0.0220385    0.0117220
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0002607   -0.0204294    0.0209508
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0617989   -0.2364075    0.1128096
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0407790   -0.0810935   -0.0004644
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0023878   -0.0126884    0.0174641
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0000524   -0.0105995    0.0104946
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0084824   -0.0229336    0.0059687
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                -0.0235772   -0.1705618    0.1234073
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1291767   -0.2559378   -0.0024156
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002490   -0.0487148    0.0482168
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0303030   -0.0698875    0.1304936
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0062048   -0.0233251    0.0109155
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0017399   -0.0290886    0.0256088


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2315930   -0.7061795    0.1109837
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                 0.0932447   -0.2617139    0.3483426
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3546575   -0.8014016   -0.0187051
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1539628   -0.4427175    0.0769987
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.1556240   -1.1409566    0.3762289
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                 0.0480033   -0.2346179    0.2659286
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0472681   -0.2139437    0.0965228
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0014966   -0.1246506    0.1134944
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.2002743   -0.9233053    0.2509465
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4749550   -1.0237239   -0.0749947
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0434001   -0.2724679    0.2808593
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0014026   -0.3273165    0.2444852
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1125962   -0.3226135    0.0640726
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                -0.0761155   -0.6724799    0.3076003
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.4395259   -0.9434367   -0.0662734
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015510   -0.3538419    0.2590683
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1818182   -0.7053437    0.6074566
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0660193   -0.2646318    0.1014007
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0105342   -0.1904108    0.1421621
