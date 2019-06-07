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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        month    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                   0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                   0       23     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     2                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                   0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     3                   1        4     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                   0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                   0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     5                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                   0        9     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                   0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     7                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                   0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                   0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     9                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                  0       21     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     10                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                  0       17     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                  0       26     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     12                  1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                   0       13     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                   0       26     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                   0       21     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                   0       11     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                   0       21     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                   0       10     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         6                   1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                   0       18     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         7                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                   0       19     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                   0       30     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                  0       21     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         10                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                  0       20     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         11                  1        1     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                  0       16     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         12                  1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                   0       18     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                   1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                   0       23     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          2                   1        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                   0       21     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          3                   1        2     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                   0       16     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          4                   1        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                   0        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          5                   1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                   0       16     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          6                   1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                   0       23     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          7                   1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                   0       20     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          8                   1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                   0       21     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          9                   1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                  0       25     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          10                  1        0     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                  0       23     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          11                  1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                  0       19     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          12                  1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                   0       25     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                   0       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          2                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                   0       19     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          3                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                   0       19     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          4                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                   0       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          5                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                   0       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          6                   1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                   0       21     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          7                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                   0       19     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          8                   1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                   0       17     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          9                   1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                  0       22     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          10                  1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                  0       22     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          11                  1        1     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                  0       16     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          12                  1        0     238
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                   0       41     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                   1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                   0       25     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           2                   1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                   0       22     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           3                   1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                   0       20     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           4                   1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                   0       24     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           5                   1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                   0       20     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           6                   1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                   0       23     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           7                   1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                   0       19     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           8                   1        1     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                   0       22     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           9                   1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                  0       26     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           10                  1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                  0       33     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           11                  1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                  0       21     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           12                  1        0     299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       36     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       29     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       20     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       15     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       18     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       26     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       12     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       25     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       25     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        4     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       25     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        4     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       40     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        2     294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       26     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       23     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       11     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       16     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        1     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       19     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       25     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       22     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       20     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       28     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       31     261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        1     261
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       24     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       21     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       25     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       38     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        7     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       31     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        3     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       29     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       33     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       19     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        6     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       15     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        4     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       34     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        6     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       24     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        4     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   0       28     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   1        8     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                   0       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          2                   1        6     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                   0       26     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          3                   1        3     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                   0       22     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          4                   1        0     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                   0       18     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          5                   1        3     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                   0       29     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          6                   1        7     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                   0       27     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          7                   1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                   0       37     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          8                   1        8     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                   0       21     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          9                   1        6     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                  0       30     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          10                  1        7     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                  0       32     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          11                  1        9     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                  0       41     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          12                  1       11     409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       73     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       18     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                   0       70     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       2                   1       11     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                   0       34     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       3                   1        8     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                   0       25     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       4                   1        3     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                   0        2     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       5                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       6                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       7                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       8                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                   0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       9                   1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                  0        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       10                  1        0     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                  0       43     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       11                  1        6     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                  0       79     377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       12                  1        5     377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                   0        6     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       1                   1        2     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                   0       10     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       2                   1        2     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                   0       13     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       3                   1        1     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                   0       19     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       4                   1       15     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                   0       30     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       5                   1        5     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                   0       43     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       6                   1        8     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                   0       35     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       7                   1        4     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                   0       32     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       8                   1        9     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                   0       21     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       9                   1        2     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                  0        4     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       10                  1        3     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                  0        5     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       11                  1        1     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                  0        3     273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       12                  1        0     273
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   0       41     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   1       12     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                   0       37     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          2                   1        3     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                   0       40     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          3                   1        3     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                   0       28     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          4                   1        3     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                   0       34     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          5                   1        3     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                   0       44     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          6                   1        9     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                   0        5     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          7                   1        1     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                   0        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          8                   1        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                   0        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          9                   1        0     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                  0       59     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          10                  1        9     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                  0       38     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          11                  1        9     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                  0       73     458
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          12                  1        7     458
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       15     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        2     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        8     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        8     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        7     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        7     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        6     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        1     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        4     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        5     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        0     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0        9     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        3     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       13     100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        3     100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                   0       53     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                   1        9     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                   0       54     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     2                   1        3     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                   0       48     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     3                   1        8     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                   0       45     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     4                   1        4     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                   0       42     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     5                   1        5     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                   0       40     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     6                   1        4     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                   0       44     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     7                   1        3     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                   0       36     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     8                   1        5     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                   0       31     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     9                   1        2     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                  0       53     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     10                  1        5     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                  0       48     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     11                  1        3     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                  0       50     598
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     12                  1        3     598
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      219    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       12    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      147    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       10    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      175    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        8    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      154    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        7    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      188    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       10    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      165    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        9    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      160    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       12    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      182    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       13    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      217    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       11    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      220    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        8    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      217    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1        9    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      219    2384
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       12    2384
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       19     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                   0       20     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                   0       21     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      3                   1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       28     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      4                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       32     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      5                   1        1     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       39     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      6                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       25     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       19     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       35     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       33     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       30     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        0     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                  0       10     313
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     313
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0       54     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1        1     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0       41     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0       54     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0       34     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0       68     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0       84     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1        2     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0       85     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0       70     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0       73     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1        2     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0       70     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1        1     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0       51     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1        0     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0       35     725
0-24 months (no birth wast)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1        0     725
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0        2     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          4                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                   0        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          6                   1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                   0       92     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          7                   1       37     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                   0      193     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          8                   1       40     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                   0      169     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          9                   1       39     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                  0       13     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          10                  1        0     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                  0        3     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          11                  1        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                  0        1     590
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     590
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                   0       21     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     1                   1        7     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                   0       26     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     2                   1        6     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                   0       19     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     3                   1        1     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                   0       18     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     4                   1        2     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                   0       20     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     5                   1        0     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                   0       22     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     6                   1        3     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                   0       12     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     7                   1        2     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                   0       14     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     8                   1        0     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                   0       16     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     9                   1        3     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                  0       20     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     10                  1        2     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                  0        2     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     11                  1        0     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                  0       36     263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     12                  1       11     263
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                   0       13     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         1                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                   0        7     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         2                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                   0       14     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         3                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                   0       10     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         4                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                   0        5     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         5                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                   0        6     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         6                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                   0        4     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         7                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                   0       13     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         8                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                   0        9     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         9                   1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                  0       16     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         10                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                  0       12     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         11                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                  0       10     119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         12                  1        0     119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       41    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  1                   1        3    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                   0      158    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  2                   1        8    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                   0      153    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  3                   1        9    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      255    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  4                   1       11    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      181    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  5                   1        4    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       91    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  6                   1        6    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       95    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  7                   1        1    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       84    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  8                   1        2    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                   0      154    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  9                   1        6    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       61    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  10                  1        4    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       58    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  11                  1        5    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                  0      107    1500
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  12                  1        3    1500
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                   0       57     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           1                   1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                   0      168     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           2                   1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                   0      133     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           3                   1        1     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                   0       76     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           4                   1        2     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                   0       86     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           5                   1        2     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                   0       52     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           6                   1        1     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                   0       56     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           7                   1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                   0       79     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           8                   1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                   0       50     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           9                   1        1     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                  0       41     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           10                  1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                  0       74     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           11                  1        0     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                  0       48     927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           12                  1        0     927
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                   0        9     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                   0       13     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           2                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                   0       27     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           3                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                   0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           4                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                   0       25     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           5                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                   0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           6                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                   0       16     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           7                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                   0       26     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           8                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                   0       19     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           9                   1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                  0       23     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           10                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                  0       18     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           11                  1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                  0        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           12                  1        0     215
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                   0      582    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                   1        1    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                   0      492    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        2                   1        5    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                   0      592    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        3                   1        5    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                   0      542    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        4                   1        5    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                   0      560    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        5                   1        3    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                   0      631    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        6                   1        8    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                   0      700    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        7                   1       10    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                   0      806    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        8                   1       12    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                   0      745    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        9                   1       11    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                  0      813    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        10                  1        8    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                  0      719    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        11                  1        7    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                  0      849    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        12                  1        7    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1178   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       47   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      875   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       40   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      977   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       47   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      916   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       29   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      888   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       41   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      996   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1       40   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0     1006   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       36   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1040   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       46   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1115   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       36   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      898   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       26   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      978   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       34   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1100   12435
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       46   12435
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                   0       55     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         1                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                   0      111     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         2                   1        3     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                   0       97     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         3                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                   0      109     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         4                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                   0      111     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         5                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                   0       89     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         6                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                   0       71     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         7                   1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                   0       40     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         8                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                   0       28     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         9                   1        1     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                  0       35     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         10                  1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                  0       49     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         11                  1        0     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                  0       34     837
0-24 months (no birth wast)   ki1148112-LCNI-5           MALAWI                         12                  1        0     837
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1184   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       35   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      954   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                   1       33   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1150   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                   1       34   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                   0      822   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                   1       43   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                   0      670   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                   1       26   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                   0      639   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                   1       34   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                   0      712   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                   1       31   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                   0      964   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                   1       43   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1253   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                   1       49   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1356   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                  1       62   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1407   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                  1       46   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1405   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                  1       58   13010
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       19    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        1    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                   0       98    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     2                   1        1    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      114    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     3                   1        4    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      238    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     4                   1       15    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      164    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     5                   1       11    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      118    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     6                   1        7    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      219    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     7                   1        9    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      130    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     8                   1        4    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      111    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     9                   1        5    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                  0       82    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     10                  1        2    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                  0       45    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     11                  1        1    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       23    1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    1421
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                   0       21     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                   0       24     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     2                   1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                   0       23     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     3                   1        3     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                   0       20     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                   0       21     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     5                   1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                   0        9     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                   0       21     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     7                   1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                   0       25     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                   0       23     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     9                   1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                  0       22     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     10                  1        1     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                  0       17     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                  0       27     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     12                  1        0     260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                   0       13     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                   0       26     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         2                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                   0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         3                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                   0       11     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         4                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                   0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         5                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                   0       10     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         6                   1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                   0       18     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         7                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                   0       19     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         8                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                   0       30     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         9                   1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                  0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         10                  1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                  0       21     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         11                  1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                  0       16     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         12                  1        0     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                   0       18     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                   1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                   0       22     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          2                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                   0       22     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          3                   1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                   0       16     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          4                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                   0        8     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          5                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                   0       16     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          6                   1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                   0       23     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          7                   1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                   0       20     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          8                   1        1     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                   0       22     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          9                   1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                  0       25     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          10                  1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                  0       24     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          11                  1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                  0       20     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          12                  1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                   0       24     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                   0       17     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          2                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                   0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          3                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                   0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          4                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                   0       21     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          5                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                   0       18     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          6                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                   0       21     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          7                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                   0       19     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          8                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                   0       17     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          9                   1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                  0       22     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          10                  1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                  0       22     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          11                  1        1     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                  0       16     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          12                  1        0     236
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                   0       41     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                   0       25     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           2                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                   0       22     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           3                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                   0       21     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           4                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                   0       24     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           5                   1        1     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                   0       20     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           6                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                   0       23     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           7                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                   0       20     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           8                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                   0       22     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           9                   1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                  0       26     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           10                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                  0       33     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           11                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                  0       21     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           12                  1        0     299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       36     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       29     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       20     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       15     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       18     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       26     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0       12     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       25     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       28     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        1     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       27     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        2     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       42     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        0     293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       22     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       27     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       23     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       11     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       17     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       19     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       25     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       22     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       20     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       30     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        0     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       31     261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        1     261
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       27     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       19     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       22     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        1     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       25     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       37     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        6     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       28     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       30     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        4     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       18     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       17     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        2     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       35     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        4     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       27     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        1     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0       30     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                   0       23     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          2                   1        4     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                   0       25     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          3                   1        3     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                   0       21     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          4                   1        0     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                   0       18     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          5                   1        3     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                   0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          6                   1        5     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                   0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          7                   1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                   0       35     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          8                   1        7     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                   0       22     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          9                   1        4     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                  0       28     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          10                  1        6     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                  0       34     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          11                  1        7     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                  0       41     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          12                  1        6     390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0       81     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1        8     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                   0       78     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       2                   1        3     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                   0       41     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       3                   1        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                   0       26     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       4                   1        1     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                   0        2     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       5                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       6                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       7                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       8                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                   0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       9                   1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                  0        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       10                  1        0     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                  0       47     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       11                  1        2     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                  0       82     373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       12                  1        1     373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                   0        6     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       1                   1        2     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                   0       11     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       2                   1        1     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                   0       13     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       3                   1        1     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                   0       29     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       4                   1        5     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                   0       33     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       5                   1        2     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                   0       47     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       6                   1        3     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                   0       37     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       7                   1        2     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                   0       35     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       8                   1        5     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                   0       22     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       9                   1        1     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                  0        7     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       10                  1        0     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                  0        6     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       11                  1        0     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                  0        3     271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       12                  1        0     271
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0       49     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1        4     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                   0       36     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          2                   1        2     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                   0       42     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          3                   1        1     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                   0       30     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          4                   1        1     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                   0       36     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          5                   1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                   0       49     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          6                   1        4     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                   0        4     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          7                   1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                   0        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          8                   1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                   0        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          9                   1        0     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                  0       65     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          10                  1        1     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                  0       44     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          11                  1        2     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                  0       79     450
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          12                  1        1     450
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       15      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        9      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        9      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        8      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        6      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        6      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        4      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        4      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        3      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       11      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        0      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       14      89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        0      89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                   0       57     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                   1        4     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                   0       57     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     2                   1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                   0       51     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     3                   1        3     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                   0       48     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     4                   1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                   0       44     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     5                   1        1     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                   0       44     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     6                   1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                   0       43     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     7                   1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                   0       40     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     8                   1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                   0       32     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     9                   1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                  0       56     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     10                  1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                  0       48     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     11                  1        0     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                  0       51     580
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     12                  1        1     580
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      225    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      151    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        5    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      181    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      160    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        1    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      195    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      169    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        4    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      170    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1        2    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      188    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        6    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      223    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        5    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      228    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        0    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      221    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1        5    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      223    2376
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        6    2376
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       18     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                   0       19     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      2                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                   0       21     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      3                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                   0       23     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      4                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                   0       27     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      5                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                   0       36     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      6                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                   0       25     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      7                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                   0       18     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      8                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                   0       31     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      9                   1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                  0       32     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      10                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                  0       30     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      11                  1        0     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                  0       10     290
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     290
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0        2     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          2                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          3                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          4                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          5                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                   0        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          6                   1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                   0      119     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          7                   1        4     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                   0      217     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          8                   1       10     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                   0      196     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          9                   1        2     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                  0       12     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          10                  1        0     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                  0        3     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          11                  1        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                  0        1     567
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          12                  1        0     567
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                   0       25     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     1                   1        3     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                   0       31     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     2                   1        1     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                   0       20     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     3                   1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                   0       20     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     4                   1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                   0       20     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     5                   1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                   0       22     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     6                   1        2     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                   0       12     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     7                   1        2     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                   0       14     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     8                   1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                   0       19     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     9                   1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                  0       22     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     10                  1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                  0        2     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     11                  1        0     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                  0       46     262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     12                  1        1     262
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                   0        8     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         1                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                   0        6     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         2                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                   0       11     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         3                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                   0        9     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         4                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                   0        5     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         5                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                   0        5     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         6                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                   0        4     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         7                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                   0       10     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         8                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                   0        8     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         9                   1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                  0       16     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         10                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                  0       12     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         11                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                  0        7     101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         12                  1        0     101
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                   0       25     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  1                   1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                   0      105     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  2                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                   0      110     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  3                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                   0      121     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  4                   1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                   0      116     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  5                   1        1     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                   0       60     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  6                   1        2     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                   0       47     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  7                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                   0       51     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  8                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                   0      119     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  9                   1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                  0       46     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  10                  1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                  0       54     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  11                  1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                  0       97     956
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  12                  1        0     956
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                   0       54     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           1                   1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                   0       57     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           2                   1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                   0       75     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           3                   1        1     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                   0       71     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           4                   1        1     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                   0       77     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           5                   1        1     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                   0       50     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           6                   1        1     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                   0       48     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           7                   1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                   0       56     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           8                   1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                   0       45     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           9                   1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                  0       38     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           10                  1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                  0       71     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           11                  1        0     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                  0       48     694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           12                  1        0     694
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                   0        9     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                   0       13     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           2                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                   0       27     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           3                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                   0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           4                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                   0       25     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           5                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                   0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           6                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                   0       16     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           7                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                   0       26     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           8                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                   0       19     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           9                   1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                  0       23     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           10                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                  0       18     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           11                  1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                  0        7     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           12                  1        0     215
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                   0      569    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                   1        1    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                   0      480    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        2                   1        5    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                   0      584    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        3                   1        4    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                   0      534    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        4                   1        5    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                   0      550    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        5                   1        2    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                   0      622    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        6                   1        7    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                   0      691    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        7                   1        7    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                   0      795    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        8                   1       12    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                   0      737    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        9                   1       11    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                  0      797    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        10                  1        8    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                  0      703    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        11                  1        7    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                  0      842    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        12                  1        6    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1108   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       14   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      777   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       11   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      918   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       14   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      863   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   1        9   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      877   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   1        5   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      968   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   1        9   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      969   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       12   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   0     1011   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       19   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1030   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       15   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      811   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  1        4   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      912   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  1        7   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  0     1048   11423
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       12   11423
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                   0        7     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         1                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                   0       47     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         2                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                   0       56     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         3                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                   0       48     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         4                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                   0       26     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         5                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                   0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         6                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                   0       28     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         7                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                   0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         8                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                   0        4     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         9                   1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                  0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         10                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                  0       10     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         11                  1        0     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                  0        5     268
0-6 months (no birth wast)    ki1148112-LCNI-5           MALAWI                         12                  1        0     268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1181   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       24   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      951   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                   1       18   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1155   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                   1       14   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                   0      834   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                   1       14   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                   0      670   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                   1        6   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                   0      652   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                   1        9   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                   0      721   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                   1       12   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                   0      980   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                   1       18   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1266   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                   1       25   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1377   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                  1       32   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1408   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                  1       26   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1406   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                  1       37   12836
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       18    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                   0       93    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     2                   1        1    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      109    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     3                   1        1    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                   0      247    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     4                   1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                   0      156    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     5                   1        2    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                   0      115    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     6                   1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                   0      216    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     7                   1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                   0      131    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     8                   1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                   0       66    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     9                   1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                  0       66    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     10                  1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                  0       33    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     11                  1        0    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                  0       22    1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    1276
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                   0       18     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                   0       19     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     2                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                   0       24     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     3                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                   0       22     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     4                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                   0       21     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     5                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                   0        8     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     6                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                   0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     7                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                   0       22     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     8                   1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                   0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     9                   1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                  0       20     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     10                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                  0       15     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     11                  1        0     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                  0       26     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     12                  1        1     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                   0       13     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                   0       23     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         2                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                   0       18     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         3                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                   0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         4                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                   0       19     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         5                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                   0       10     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         6                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                   0       17     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         7                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                   0       16     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         8                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                   0       28     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         9                   1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                  0       20     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         10                  1        0     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                  0       18     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         11                  1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                  0       13     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         12                  1        1     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                   0       18     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          2                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                   0       21     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          3                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                   0       14     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          4                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                   0        7     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          5                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                   0       18     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          6                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                   0       23     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          7                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          8                   1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                   0       20     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          9                   1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                  0       26     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          10                  1        0     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                  0       24     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          11                  1        1     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                  0       19     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          12                  1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                   0       25     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                   0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          2                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          3                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                   0       19     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          4                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                   0       20     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          5                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                   0       17     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          6                   1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                   0       21     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          7                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                   0       18     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          8                   1        1     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                   0       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          9                   1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                  0       22     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          10                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                  0       23     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          11                  1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                  0       16     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          12                  1        0     235
6-24 months                   ki0047075b-MAL-ED          PERU                           1                   0       37     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           2                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                   0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           3                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                   0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           4                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           5                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                   0       19     270
6-24 months                   ki0047075b-MAL-ED          PERU                           6                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                   0       21     270
6-24 months                   ki0047075b-MAL-ED          PERU                           7                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                   0       16     270
6-24 months                   ki0047075b-MAL-ED          PERU                           8                   1        1     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                   0       22     270
6-24 months                   ki0047075b-MAL-ED          PERU                           9                   1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           10                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                  0       33     270
6-24 months                   ki0047075b-MAL-ED          PERU                           11                  1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                  0       18     270
6-24 months                   ki0047075b-MAL-ED          PERU                           12                  1        0     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       32     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       27     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       18     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       12     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       12     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       17     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       23     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        9     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       21     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        0     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       22     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        3     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       24     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        2     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       33     259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        2     259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0       22     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0       10     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       15     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        1     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       19     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       25     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0       12     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       21     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0       18     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        0     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       27     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        2     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       26     245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        0     245
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       24     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0       21     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       23     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       26     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       43     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1        0     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       31     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       36     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1        5     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       22     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0       17     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       38     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       26     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1        3     373
6-24 months                   ki1000108-IRC              INDIA                          1                   0       34     410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          2                   0       25     410
6-24 months                   ki1000108-IRC              INDIA                          2                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          3                   0       28     410
6-24 months                   ki1000108-IRC              INDIA                          3                   1        1     410
6-24 months                   ki1000108-IRC              INDIA                          4                   0       22     410
6-24 months                   ki1000108-IRC              INDIA                          4                   1        0     410
6-24 months                   ki1000108-IRC              INDIA                          5                   0       20     410
6-24 months                   ki1000108-IRC              INDIA                          5                   1        1     410
6-24 months                   ki1000108-IRC              INDIA                          6                   0       33     410
6-24 months                   ki1000108-IRC              INDIA                          6                   1        4     410
6-24 months                   ki1000108-IRC              INDIA                          7                   0       33     410
6-24 months                   ki1000108-IRC              INDIA                          7                   1        3     410
6-24 months                   ki1000108-IRC              INDIA                          8                   0       43     410
6-24 months                   ki1000108-IRC              INDIA                          8                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          9                   0       25     410
6-24 months                   ki1000108-IRC              INDIA                          9                   1        2     410
6-24 months                   ki1000108-IRC              INDIA                          10                  0       35     410
6-24 months                   ki1000108-IRC              INDIA                          10                  1        2     410
6-24 months                   ki1000108-IRC              INDIA                          11                  0       39     410
6-24 months                   ki1000108-IRC              INDIA                          11                  1        2     410
6-24 months                   ki1000108-IRC              INDIA                          12                  0       47     410
6-24 months                   ki1000108-IRC              INDIA                          12                  1        5     410
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       79     375
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       11     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                   0       72     375
6-24 months                   ki1000109-EE               PAKISTAN                       2                   1        8     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                   0       34     375
6-24 months                   ki1000109-EE               PAKISTAN                       3                   1        7     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                   0       25     375
6-24 months                   ki1000109-EE               PAKISTAN                       4                   1        4     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                   0        2     375
6-24 months                   ki1000109-EE               PAKISTAN                       5                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       6                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       7                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       8                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                   0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       9                   1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                  0        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       10                  1        0     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                  0       45     375
6-24 months                   ki1000109-EE               PAKISTAN                       11                  1        4     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                  0       79     375
6-24 months                   ki1000109-EE               PAKISTAN                       12                  1        5     375
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                   0        7     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       1                   1        0     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                   0       10     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       2                   1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                   0       14     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       3                   1        0     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                   0       14     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       4                   1       10     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                   0       27     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       5                   1        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                   0       37     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       6                   1        7     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                   0       29     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       7                   1        2     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                   0       30     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       8                   1        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                   0       20     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       9                   1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                  0        4     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       10                  1        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                  0        3     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       11                  1        1     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                  0        2     230
6-24 months                   ki1000109-ResPak           PAKISTAN                       12                  1        0     230
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   0       41     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   1       10     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                   0       34     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          2                   1        1     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                   0       39     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          3                   1        2     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                   0       29     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          4                   1        2     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                   0       32     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          5                   1        3     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                   0       45     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          6                   1        6     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                   0        5     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          7                   1        1     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                   0        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          8                   1        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                   0        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          9                   1        0     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                  0       55     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          10                  1        8     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                  0       36     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          11                  1        7     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                  0       69     432
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          12                  1        7     432
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       13     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        3     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        8     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        1     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        7     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        2     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        7     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        1     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        7     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        1     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        7     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        2     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        4     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        0     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        5     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        2     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0        8     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        3     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       14     103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        3     103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                   0       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                   1        5     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                   0       46     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     2                   1        3     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                   0       46     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     3                   1        5     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                   0       41     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     4                   1        4     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                   0       38     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     5                   1        4     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                   0       36     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     6                   1        4     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                   0       42     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     7                   1        3     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                   0       32     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     8                   1        5     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                   0       27     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     9                   1        2     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                  0       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     10                  1        6     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                  0       45     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     11                  1        3     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                  0       47     541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     12                  1        3     541
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      190    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        9    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      127    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      143    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1        7    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      132    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      150    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1        8    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      135    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1        5    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      132    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       10    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      169    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1        7    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      193    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1        6    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      188    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1        8    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      187    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1        4    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      189    2018
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1        7    2018
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       15     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                   0       18     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                   0       18     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      3                   1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       23     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      4                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       30     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      5                   1        1     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       37     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      6                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       24     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       19     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       32     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       24     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       26     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        0     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                  0        9     277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        0     277
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0       54     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1        5     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0       43     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1        4     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0       56     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1        1     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0       35     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1        0     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0       75     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1        3     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0       88     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1        5     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0       88     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1        4     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0       75     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1        3     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0       80     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1        7     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0       69     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1        5     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0       52     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1        3     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0       39     797
6-24 months                   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1        3     797
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0        2     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          4                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                   0        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          6                   1        0     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                   0       90     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          7                   1       36     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                   0      198     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          8                   1       33     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                   0      170     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          9                   1       42     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                  0       13     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          10                  1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                  0        3     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          11                  1        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                  0        1     590
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     590
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                   0       23     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     1                   1        4     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                   0       26     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     2                   1        5     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                   0       19     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     3                   1        1     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                   0       16     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     4                   1        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                   0       20     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     5                   1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                   0       21     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     6                   1        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                   0       13     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     7                   1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                   0       14     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     8                   1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                   0       16     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     9                   1        3     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                  0       17     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     10                  1        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                  0        2     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     11                  1        0     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                  0       36     252
6-24 months                   ki1114097-CMIN             BANGLADESH                     12                  1       10     252
6-24 months                   ki1114097-CMIN             BRAZIL                         1                   0       13     119
6-24 months                   ki1114097-CMIN             BRAZIL                         1                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                   0        7     119
6-24 months                   ki1114097-CMIN             BRAZIL                         2                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                   0       14     119
6-24 months                   ki1114097-CMIN             BRAZIL                         3                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                   0       10     119
6-24 months                   ki1114097-CMIN             BRAZIL                         4                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                   0        5     119
6-24 months                   ki1114097-CMIN             BRAZIL                         5                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                   0        6     119
6-24 months                   ki1114097-CMIN             BRAZIL                         6                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                   0        4     119
6-24 months                   ki1114097-CMIN             BRAZIL                         7                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                   0       13     119
6-24 months                   ki1114097-CMIN             BRAZIL                         8                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                   0        9     119
6-24 months                   ki1114097-CMIN             BRAZIL                         9                   1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                  0       16     119
6-24 months                   ki1114097-CMIN             BRAZIL                         10                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                  0       12     119
6-24 months                   ki1114097-CMIN             BRAZIL                         11                  1        0     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                  0       10     119
6-24 months                   ki1114097-CMIN             BRAZIL                         12                  1        0     119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       41    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  1                   1        3    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                   0      156    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  2                   1        8    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                   0      151    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  3                   1        9    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      254    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  4                   1       11    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      179    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  5                   1        4    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       91    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  6                   1        4    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       94    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  7                   1        2    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       80    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  8                   1        5    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                   0      148    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  9                   1        7    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       59    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  10                  1        5    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       55    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  11                  1        6    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                  0      107    1482
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  12                  1        3    1482
6-24 months                   ki1114097-CMIN             PERU                           1                   0       47     878
6-24 months                   ki1114097-CMIN             PERU                           1                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           2                   0      165     878
6-24 months                   ki1114097-CMIN             PERU                           2                   1        1     878
6-24 months                   ki1114097-CMIN             PERU                           3                   0      129     878
6-24 months                   ki1114097-CMIN             PERU                           3                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           4                   0       74     878
6-24 months                   ki1114097-CMIN             PERU                           4                   1        2     878
6-24 months                   ki1114097-CMIN             PERU                           5                   0       85     878
6-24 months                   ki1114097-CMIN             PERU                           5                   1        1     878
6-24 months                   ki1114097-CMIN             PERU                           6                   0       51     878
6-24 months                   ki1114097-CMIN             PERU                           6                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           7                   0       55     878
6-24 months                   ki1114097-CMIN             PERU                           7                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           8                   0       75     878
6-24 months                   ki1114097-CMIN             PERU                           8                   1        0     878
6-24 months                   ki1114097-CMIN             PERU                           9                   0       48     878
6-24 months                   ki1114097-CMIN             PERU                           9                   1        1     878
6-24 months                   ki1114097-CMIN             PERU                           10                  0       35     878
6-24 months                   ki1114097-CMIN             PERU                           10                  1        0     878
6-24 months                   ki1114097-CMIN             PERU                           11                  0       67     878
6-24 months                   ki1114097-CMIN             PERU                           11                  1        0     878
6-24 months                   ki1114097-CMIN             PERU                           12                  0       42     878
6-24 months                   ki1114097-CMIN             PERU                           12                  1        0     878
6-24 months                   ki1114097-CONTENT          PERU                           1                   0        9     215
6-24 months                   ki1114097-CONTENT          PERU                           1                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           2                   0       13     215
6-24 months                   ki1114097-CONTENT          PERU                           2                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           3                   0       27     215
6-24 months                   ki1114097-CONTENT          PERU                           3                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           4                   0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           4                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           5                   0       25     215
6-24 months                   ki1114097-CONTENT          PERU                           5                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           6                   0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           6                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           7                   0       16     215
6-24 months                   ki1114097-CONTENT          PERU                           7                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           8                   0       26     215
6-24 months                   ki1114097-CONTENT          PERU                           8                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           9                   0       19     215
6-24 months                   ki1114097-CONTENT          PERU                           9                   1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           10                  0       23     215
6-24 months                   ki1114097-CONTENT          PERU                           10                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           11                  0       18     215
6-24 months                   ki1114097-CONTENT          PERU                           11                  1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           12                  0        7     215
6-24 months                   ki1114097-CONTENT          PERU                           12                  1        0     215
6-24 months                   ki1119695-PROBIT           BELARUS                        1                   0      559    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                   1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        2                   0      494    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        2                   1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        3                   0      587    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        3                   1        2    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        4                   0      541    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        4                   1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        5                   0      558    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        5                   1        1    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        6                   0      620    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        6                   1        1    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        7                   0      697    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        7                   1        3    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        8                   0      801    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        8                   1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        9                   0      743    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        9                   1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        10                  0      810    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        10                  1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        11                  0      717    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        11                  1        0    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        12                  0      840    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        12                  1        1    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1024   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       34   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      773   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       32   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      836   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1       34   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      788   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1       21   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      728   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1       36   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      840   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1       32   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      863   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1       25   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      888   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1       27   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      986   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1       21   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      765   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1       24   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      863   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1       27   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      971   10672
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1       34   10672
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                   0       55     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         1                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                   0      111     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         2                   1        3     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                   0       93     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         3                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                   0      106     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         4                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                   0      109     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         5                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                   0       89     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         6                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                   0       71     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         7                   1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                   0       40     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         8                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                   0       28     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         9                   1        1     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                  0       35     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         10                  1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                  0       47     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         11                  1        0     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                  0       33     826
6-24 months                   ki1148112-LCNI-5           MALAWI                         12                  1        1     826
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      682    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       13    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      574    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                   1       16    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                   0      721    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                   1       22    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                   0      586    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                   1       33    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                   0      593    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                   1       21    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                   0      579    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                   1       28    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                   0      603    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                   1       22    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                   0      732    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                   1       27    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                   0      768    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                   1       25    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                  0      791    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                  1       31    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                  0      833    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                  1       20    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                  0      812    8555
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                  1       23    8555
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       19    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   1        2    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      100    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     2                   1        1    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      115    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     3                   1        3    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      240    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     4                   1       15    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      166    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     5                   1       10    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      119    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     6                   1        8    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      220    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     7                   1       10    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      130    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     8                   1        5    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      111    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     9                   1        6    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                  0       82    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     10                  1        3    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                  0       44    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     11                  1        1    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       22    1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    1432


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
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1148112-LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/cacb479e-8bf1-41c0-9dab-7b0a6b2e7cfa/7a2fca99-86fb-423f-84de-4c0b3541bc3f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cacb479e-8bf1-41c0-9dab-7b0a6b2e7cfa/7a2fca99-86fb-423f-84de-4c0b3541bc3f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cacb479e-8bf1-41c0-9dab-7b0a6b2e7cfa/7a2fca99-86fb-423f-84de-4c0b3541bc3f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cacb479e-8bf1-41c0-9dab-7b0a6b2e7cfa/7a2fca99-86fb-423f-84de-4c0b3541bc3f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0519481   0.0233238   0.0805723
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0636943   0.0254868   0.1019017
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0437158   0.0140862   0.0733455
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0434783   0.0119711   0.0749855
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0505051   0.0199966   0.0810135
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0517241   0.0188103   0.0846380
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0697674   0.0316874   0.1078475
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0666667   0.0316484   0.1016849
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0482456   0.0204252   0.0760660
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0350877   0.0111990   0.0589765
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0398230   0.0143237   0.0653223
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0519481   0.0233238   0.0805723
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0383673   0.0276105   0.0491241
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0437158   0.0304673   0.0569644
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0458984   0.0330807   0.0587162
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0306878   0.0196911   0.0416846
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0441335   0.0309254   0.0573416
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0386100   0.0268777   0.0503424
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0345489   0.0234594   0.0456385
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0423573   0.0303784   0.0543362
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0312772   0.0212208   0.0413335
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0281385   0.0174755   0.0388016
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0335968   0.0224948   0.0446989
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0401396   0.0287748   0.0515045
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0287121   0.0185065   0.0389177
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0334347   0.0210419   0.0458274
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0287162   0.0183791   0.0390534
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0497110   0.0331021   0.0663198
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0373563   0.0199132   0.0547994
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0505201   0.0310529   0.0699872
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0417227   0.0269652   0.0564803
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0427011   0.0292832   0.0561189
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0376344   0.0266239   0.0486450
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0437236   0.0316429   0.0558042
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0316586   0.0215756   0.0417417
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0396446   0.0297811   0.0495080
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0199170   0.0112004   0.0286336
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0185759   0.0092953   0.0278564
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0119760   0.0050253   0.0189268
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0165094   0.0074575   0.0255613
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0088757   0.0012268   0.0165247
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0136157   0.0051984   0.0220331
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0163711   0.0075434   0.0251988
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0180361   0.0082462   0.0278260
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0193648   0.0110214   0.0277083
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0227111   0.0139627   0.0314596
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0181311   0.0111365   0.0251257
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0256410   0.0174090   0.0338731
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0321361   0.0215086   0.0427636
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0397516   0.0262545   0.0532486
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.0390805   0.0262029   0.0519580
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0259580   0.0150003   0.0369156
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.0471204   0.0320944   0.0621465
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0366972   0.0242174   0.0491771
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0281532   0.0172733   0.0390330
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0295082   0.0185428   0.0404736
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0208540   0.0120279   0.0296802
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0304183   0.0184346   0.0424019
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0303371   0.0190685   0.0416057
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0338308   0.0226527   0.0450090
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0187050   0.0086373   0.0287728
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0271186   0.0134904   0.0407468
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.0296097   0.0163621   0.0428572
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.0533118   0.0332351   0.0733885
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.0342020   0.0149699   0.0534340
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0461285   0.0239042   0.0683528
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0352000   0.0202680   0.0501320
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.0355731   0.0222603   0.0488859
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.0315259   0.0188593   0.0441924
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.0377129   0.0228551   0.0525707
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.0234467   0.0118793   0.0350140
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.0275449   0.0171134   0.0379764


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0376357   0.0342906   0.0409808
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0379708   0.0341625   0.0417790
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0183079   0.0155421   0.0210736
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325150   0.0291498   0.0358802
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0328463   0.0285768   0.0371158


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2261146   0.5429854   2.768688
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8415301   0.3513284   2.015700
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8369565   0.3367733   2.080023
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9722222   0.4292140   2.202202
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9956897   0.4290988   2.310419
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.3430233   0.6183742   2.916861
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2833333   0.5994102   2.747608
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9287281   0.4183156   2.061926
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6754386   0.2813200   1.621703
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7665929   0.3293741   1.784186
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0000000   0.4587476   2.179848
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1394024   0.7540090   1.721780
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1962891   0.8053388   1.777025
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.7998424   0.5074651   1.260674
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1502874   0.7633235   1.733421
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0063255   0.6655492   1.521587
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9004778   0.5880088   1.378993
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1039928   0.7413436   1.644042
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8152023   0.5321063   1.248914
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.7333978   0.4577398   1.175061
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8756623   0.5677158   1.350648
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0461921   0.7023665   1.558329
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1644811   0.6987056   1.940755
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.0001448   0.6061181   1.650321
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.7313625   1.0612510   2.824606
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.3010673   0.7512424   2.253302
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.7595415   1.0347250   2.992086
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.4531436   0.8769230   2.407995
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.4872180   0.9445229   2.341730
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.3107527   0.8259904   2.080015
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.5228289   0.9628137   2.408574
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1026251   0.6918926   1.757183
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.3807636   0.8938448   2.132930
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9326625   0.4872917   1.785090
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.6012974   0.2854208   1.266756
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8289112   0.4038205   1.701483
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.4456361   0.1731245   1.147102
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.6836233   0.3312872   1.410682
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8219645   0.4128383   1.636538
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9055611   0.4687927   1.749262
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9722760   0.5402256   1.749863
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1402886   0.6363430   2.043329
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9103324   0.5186905   1.597687
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.2873932   0.7434241   2.229388
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2369748   0.7700486   1.987026
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2160920   0.7624636   1.939607
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8077510   0.4724865   1.380911
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.4662766   0.9261882   2.321307
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1419320   0.7106072   1.835063
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8760599   0.5267885   1.456905
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9182257   0.5583552   1.510039
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6489281   0.3792544   1.110357
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9465444   0.5659208   1.583166
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9440185   0.5741074   1.552272
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0527363   0.6596242   1.680129
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.4498044   0.6847532   3.069621
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 1.5829796   0.7927657   3.160864
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 2.8501304   1.4763266   5.502335
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.8284891   0.9336884   3.580822
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 2.4661006   1.1864523   5.125914
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.8818461   0.9519298   3.720174
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.9017938   0.9877496   3.661677
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.6854205   0.8447324   3.362772
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 2.0161894   1.0306663   3.944069
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2534944   0.6297840   2.494900
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.4725932   0.7598613   2.853851


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0011930   -0.0283634   0.0259774
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0007316   -0.0109346   0.0094714
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0092587   -0.0005200   0.0190374
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0016091   -0.0097137   0.0064954
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0003789   -0.0097144   0.0104721
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0141413    0.0043226   0.0239599


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0235054   -0.7267651   0.3933377
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0194401   -0.3299983   0.2186020
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2438383   -0.0618564   0.4615274
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0878926   -0.6333287   0.2753997
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0116527   -0.3530409   0.2780481
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.4305282    0.0435504   0.6609354
