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

agecat                       studyid                    country                        month    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                   0        9     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                   1        9     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     2                   0        7     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     2                   1       11     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     3                   0        8     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     3                   1       12     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     4                   0       12     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     4                   1       10     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     5                   0        5     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     5                   1       12     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     6                   0        3     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     6                   1        2     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     7                   0        9     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     7                   1        8     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     8                   0       10     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     8                   1       10     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     9                   0        9     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     9                   1       11     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     10                  0       14     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     10                  1        6     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     11                  0        7     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     11                  1        8     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     12                  0       11     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     12                  1       14     217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                   0       11     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                   1        2     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         2                   0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         2                   1        5     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         3                   0       18     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         3                   1        2     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         4                   0        9     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         4                   1        1     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         5                   0       17     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         5                   1        2     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         6                   0        8     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         6                   1        1     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         7                   0       10     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         7                   1        5     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         8                   0       14     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         8                   1        3     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         9                   0       23     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         9                   1        4     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         10                  0       19     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         10                  1        3     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         11                  0       20     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         11                  1        0     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         12                  0       12     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         12                  1        1     208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                   0        5     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                   1       13     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          2                   0       14     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          2                   1        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          3                   0       10     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          3                   1       11     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          4                   0        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          4                   1        8     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          5                   0        2     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          5                   1        4     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          6                   0       11     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          6                   1        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          7                   0       12     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          7                   1        8     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          8                   0        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          8                   1        8     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          9                   0        9     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          9                   1       10     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          10                  0       10     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          10                  1       11     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          11                  0        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          11                  1       14     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          12                  0        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          12                  1        7     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                   0       15     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                   1        4     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          2                   0       10     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          2                   1        5     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          3                   0       10     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          3                   1        8     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          4                   0       13     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          4                   1        4     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          5                   0       14     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          5                   1        8     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          6                   0       14     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          6                   1        2     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          7                   0       17     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          7                   1        3     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          8                   0       13     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          8                   1        3     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          9                   0       14     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          9                   1        2     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          10                  0       17     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          10                  1        2     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          11                  0       11     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          11                  1        8     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          12                  0        9     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          12                  1        6     212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                   0       19     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                   1       18     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                   0        8     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                   1       14     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                   0       10     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                   1        9     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                   0        7     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                   1       11     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                   0        9     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                   1       14     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                   0        7     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                   1       10     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                   0        5     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                   1       16     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                   0       10     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                   1       10     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                   0        9     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                   1       13     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                  0       15     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                  1        8     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                  0       10     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                  1       16     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                  0        6     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                  1       12     266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       15     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       20     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       15     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1       17     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       12     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        7     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0        8     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        4     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0        9     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        5     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       12     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        7     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       13     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1       11     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        4     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        8     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       14     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        9     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       10     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1       16     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       12     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1       11     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       19     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1       22     280
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1       13     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        6     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       18     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        3     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       16     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        3     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        7     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0        3     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1       11     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        1     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1       16     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0        5     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1       17     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        2     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        9     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0        4     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1       12     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        1     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1       14     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0        1     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1       24     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0        6     219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1       21     219
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       16     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        1     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          2                   1       14     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        0     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       21     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   0        2     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          4                   1       22     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   0        5     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       37     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   0        3     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       28     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   0        5     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       25     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   0        2     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       30     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   0        2     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          9                   1       14     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        0     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          10                  1       13     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  0        5     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       28     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  0        2     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       20     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                   0       10     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                   1       19     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          2                   0        9     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          2                   1       16     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          3                   0        8     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          3                   1       17     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          4                   0        5     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          4                   1       15     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          5                   0        4     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          5                   1       16     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          6                   0       16     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          6                   1       15     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          7                   0       14     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          7                   1       17     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          8                   0       22     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          8                   1       19     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          9                   0        9     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          9                   1       16     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          10                  0       19     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          10                  1       14     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          11                  0       17     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          11                  1       18     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          12                  0       14     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          12                  1       31     360
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                   0        5     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                   1       47     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       2                   0        9     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       2                   1       48     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       3                   0        5     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       3                   1       25     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       4                   0        2     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       4                   1       14     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       5                   0        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       5                   1        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       6                   0        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       6                   1        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       7                   0        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       7                   1        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       8                   0        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       8                   1        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       9                   0        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       9                   1        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       10                  0        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       10                  1        0     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       11                  0        4     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       11                  1       33     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       12                  0        8     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       12                  1       49     249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                   0        0     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       1                   1        7     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       2                   0        4     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       2                   1        5     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       3                   0        3     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       3                   1        8     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       4                   0       10     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       4                   1       11     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       5                   0       15     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       5                   1       12     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       6                   0       17     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       6                   1       21     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       7                   0       12     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       7                   1       10     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       8                   0       17     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       8                   1       17     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       9                   0       11     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       9                   1        9     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       10                  0        5     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       10                  1        2     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       11                  0        2     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       11                  1        2     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       12                  0        1     202
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       12                  1        1     202
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                   0       32    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                   1       44    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                   0       34    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                   1       28    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                   0       32    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                   1       28    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                   0       22    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                   1       43    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                   0       27    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                   1       37    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                   0       40    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                   1       46    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                   0       32    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                   1       53    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                   0       36    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                   1       75    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                   0       68    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                   1       75    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                  0       49    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                  1       73    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                  0       51    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                  1       57    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                  0       50    1090
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                  1       58    1090
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        5     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       24     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        9     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       15     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        8     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       14     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        4     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       16     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        6     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          5                   1       14     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        9     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          6                   1       18     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        3     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        7     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        1     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        8     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        4     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       13     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       11     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       25     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       12     257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       31     257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                   0       21     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                   1       29     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                   0       22     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                   1       28     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                   0       27     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                   1       27     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                   0       16     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                   1       28     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                   0       17     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                   1       24     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                   0       15     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                   1       26     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                   0       15     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                   1       27     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                   0       13     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                   1       25     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                   0       14     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                   1       14     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                  0       19     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                  1       31     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                  0       13     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                  1       31     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                  0       19     530
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                  1       29     530
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      152    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       62    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      108    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       42    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      132    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       43    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      100    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       49    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      128    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       55    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      111    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       49    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      107    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       49    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      123    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       70    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      163    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       52    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      144    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       68    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      142    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       68    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      157    2235
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       61    2235
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        9     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        4     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      2                   0        9     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      2                   1        7     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      3                   0        6     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      3                   1       10     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      4                   0       14     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      4                   1       10     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      5                   0       17     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      5                   1       12     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      6                   0       17     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      6                   1       12     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      7                   0       12     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      7                   1        6     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      8                   0       10     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      8                   1        5     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      9                   0       18     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      9                   1        5     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      10                  0       15     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      10                  1        9     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      11                  0       16     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      11                  1        8     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      12                  0        5     239
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      12                  1        3     239
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      157    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       28    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      121    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       24    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      142    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1       32    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      114    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       29    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      156    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1       32    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      235    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1       53    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      267    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1       61    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      229    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1       52    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      179    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1       44    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      255    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1       45    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      123    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       27    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      104    2533
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       24    2533
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                   0        2     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                   1        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          2                   0        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          2                   1        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          3                   0        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          3                   1        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          4                   0        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          4                   1        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          5                   0        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          5                   1        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          6                   0        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          6                   1        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          7                   0       35     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          7                   1       80     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          8                   0       78     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          8                   1      132     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          9                   0       72     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          9                   1      120     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          10                  0        8     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          10                  1        3     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          11                  0        0     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          11                  1        4     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          12                  0        1     535
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          12                  1        0     535
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                   0        2     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     1                   1       13     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     2                   0        6     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     2                   1       15     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     3                   0        6     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     3                   1       10     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     4                   0        3     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     4                   1       13     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     5                   0        4     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     5                   1       11     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     6                   0        1     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     6                   1        9     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     7                   0        2     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     7                   1        5     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     8                   0        2     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     8                   1       10     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     9                   0        2     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     9                   1        9     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     10                  0        3     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     10                  1        9     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     11                  0        2     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     11                  1        1     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     12                  0        8     168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     12                  1       22     168
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         1                   0        8     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         1                   1        5     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         2                   0        3     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         2                   1        4     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         3                   0       10     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         3                   1        3     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         4                   0        9     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         4                   1        1     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         5                   0        3     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         5                   1        2     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         6                   0        2     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         6                   1        4     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         7                   0        3     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         7                   1        1     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         8                   0       10     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         8                   1        2     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         9                   0        6     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         9                   1        3     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         10                  0       10     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         10                  1        4     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         11                  0       10     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         11                  1        2     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         12                  0        5     114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         12                  1        4     114
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                   0       27    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                   1        9    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  2                   0       85    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  2                   1       50    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  3                   0       88    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  3                   1       50    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  4                   0      145    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  4                   1       72    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  5                   0      114    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  5                   1       44    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  6                   0       63    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  6                   1       21    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  7                   0       51    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  7                   1       23    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  8                   0       52    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  8                   1       18    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  9                   0       95    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  9                   1       39    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  10                  0       40    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  10                  1       13    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  11                  0       40    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  11                  1       14    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  12                  0       61    1245
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  12                  1       31    1245
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                   0       44     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                   1       10     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           2                   0       88     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           2                   1       39     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           3                   0       83     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           3                   1       26     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           4                   0       44     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           4                   1       27     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           5                   0       51     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           5                   1       27     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           6                   0       38     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           6                   1       13     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           7                   0       35     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           7                   1       16     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           8                   0       51     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           8                   1       20     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           9                   0       32     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           9                   1       10     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           10                  0       22     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           10                  1       13     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           11                  0       43     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           11                  1       26     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           12                  0       33     803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           12                  1       12     803
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                   0        8     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                   1        0     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           2                   0       11     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           2                   1        2     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           3                   0       24     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           3                   1        3     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           4                   0        9     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           4                   1        9     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           5                   0       17     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           5                   1        4     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           6                   0        9     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           6                   1        4     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           7                   0       10     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           7                   1        6     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           8                   0       19     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           8                   1        4     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           9                   0       12     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           9                   1        2     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           10                  0       15     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           10                  1        7     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           11                  0       12     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           11                  1        3     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           12                  0        6     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           12                  1        1     197
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                   0      960   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                   1      211   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                   0      788   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                   1      204   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                   0      963   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                   1      211   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                   0      953   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                   1      167   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                   0      975   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                   1      167   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                   0     1050   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                   1      162   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                   0     1258   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                   1      206   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                   0     1382   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                   1      223   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                   0     1339   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                   1      235   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                  0     1498   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                  1      287   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                  0     1422   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                  1      272   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                  0     1479   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                  1      330   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      811   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      381   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      617   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      278   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      677   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      346   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      619   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      303   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      574   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      319   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      661   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      362   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      710   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      358   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      743   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      399   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      868   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      372   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      674   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      297   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      740   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      314   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      783   12564
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      358   12564
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                   0       22     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                   1       17     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                   0       46     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                   1       30     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                   0       33     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                   1       30     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                   0       32     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                   1       29     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                   0       40     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                   1       32     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                   0       30     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                   1       32     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                   0       25     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                   1       15     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                   0       16     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                   1       12     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                   0       11     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                   1        7     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                  0       16     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                  1        5     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                  0       23     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                  1        9     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                  0       11     531
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                  1        8     531
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1242   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      397   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1093   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      377   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1368   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      388   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1048   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                   1      297   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                   0      748   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                   1      248   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                   0      708   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                   1      278   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                   0      819   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                   1      289   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1054   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                   1      347   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1396   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                   1      486   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1446   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                  1      507   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1391   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                  1      536   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1474   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                  1      532   18469
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       26    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       14    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      150    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                   1       91    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      183    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      115    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      362    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                   1      294    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      243    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                   1      194    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      184    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                   1      134    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      365    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                   1      270    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      232    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                   1      177    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      247    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                   1      153    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      162    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                  1       93    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                  0       86    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                  1       52    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       39    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                  1       20    3886
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                   0       16     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     2                   0       13     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     2                   1        5     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     3                   0       13     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     3                   1        7     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     4                   0       21     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     4                   1        1     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     5                   0       12     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     5                   1        5     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     6                   0        4     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     6                   1        1     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     7                   0       14     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     7                   1        3     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     8                   0       15     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     8                   1        5     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     9                   0       16     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     9                   1        4     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     10                  0       17     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     10                  1        3     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     11                  0       11     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     11                  1        4     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     12                  0       19     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     12                  1        6     217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                   0       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         2                   0       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         2                   1        3     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         3                   0       18     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         3                   1        2     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         4                   0        9     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         4                   1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         5                   0       18     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         5                   1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         6                   0        8     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         6                   1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         7                   0       13     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         7                   1        2     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         8                   0       14     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         8                   1        3     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         9                   0       24     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         9                   1        3     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         10                  0       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         10                  1        2     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         11                  0       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         11                  1        0     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         12                  0       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         12                  1        1     208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                   0       12     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                   1        6     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          2                   0       19     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          2                   1        2     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          3                   0       15     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          3                   1        6     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          4                   0       12     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          4                   1        3     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          5                   0        5     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          5                   1        1     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          6                   0       16     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          6                   1        2     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          7                   0       15     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          7                   1        5     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          8                   0       13     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          8                   1        2     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          9                   0       17     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          9                   1        2     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          10                  0       14     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          10                  1        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          11                  0       16     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          11                  1        5     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          12                  0       11     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          12                  1        3     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                   0       17     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                   1        2     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          2                   0       15     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          2                   1        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          3                   0       17     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          3                   1        1     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          4                   0       15     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          4                   1        2     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          5                   0       19     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          5                   1        3     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          6                   0       16     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          6                   1        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          7                   0       19     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          7                   1        1     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          8                   0       16     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          8                   1        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          9                   0       15     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          9                   1        1     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          10                  0       19     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          10                  1        0     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          11                  0       16     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          11                  1        3     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          12                  0       14     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          12                  1        1     212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                   0       25     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                   1       12     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           2                   0       12     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           2                   1       10     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           3                   0       14     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           3                   1        5     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           4                   0       13     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           4                   1        5     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           5                   0       14     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           5                   1        9     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           6                   0       12     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           6                   1        5     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           7                   0       11     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           7                   1       10     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           8                   0       16     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           8                   1        4     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           9                   0       14     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           9                   1        8     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           10                  0       18     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           10                  1        5     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           11                  0       13     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           11                  1       13     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           12                  0       12     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           12                  1        6     266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       25     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       10     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0       25     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1        7     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0       14     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        5     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0       11     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        1     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0       10     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        4     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0       16     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        3     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       15     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        9     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        5     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        7     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       19     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        4     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0       18     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        8     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0       15     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        8     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       28     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1       13     280
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       15     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0       17     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1        7     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        8     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1       11     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        6     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        4     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0       11     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        3     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0       12     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1        5     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0       15     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1        7     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        8     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        3     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0       13     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        3     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        9     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        6     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0       18     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1        7     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0       22     219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1        5     219
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        8     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        9     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        6     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   0       15     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          3                   1        6     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   0       16     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          4                   1        8     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   0       28     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       13     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   0       19     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       10     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   0       18     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       12     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   0       14     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       17     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   0       12     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          9                   1        4     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        9     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        4     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  0       19     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       14     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  0       12     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       10     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                   0       21     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                   1        8     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                   0       14     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                   1       11     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                   0       16     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                   1        9     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                   0       12     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                   1        8     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                   0       10     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                   1       10     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                   0       23     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                   1        8     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                   0       20     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                   1       11     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                   0       32     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                   1        9     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                   0       15     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                   1       10     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                  0       24     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                  1        9     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                  0       26     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                  1        9     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                  0       23     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                  1       22     360
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                   0       18     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                   1       34     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       2                   0       22     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       2                   1       35     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       3                   0       15     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       3                   1       15     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       4                   0        7     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       4                   1        9     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       5                   0        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       5                   1        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       6                   0        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       6                   1        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       7                   0        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       7                   1        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       8                   0        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       8                   1        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       9                   0        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       9                   1        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       10                  0        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       10                  1        0     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       11                  0       11     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       11                  1       26     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       12                  0       26     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       12                  1       31     249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                   0        2     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       1                   1        5     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       2                   0        6     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       2                   1        3     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       3                   0        4     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       3                   1        7     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       4                   0       11     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       4                   1       10     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       5                   0       16     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       5                   1       11     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       6                   0       19     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       6                   1       19     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       7                   0       13     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       7                   1        9     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       8                   0       22     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       8                   1       12     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       9                   0       12     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       9                   1        8     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       10                  0        6     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       10                  1        1     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       11                  0        2     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       11                  1        2     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       12                  0        1     202
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       12                  1        1     202
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                   0       62    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                   1       14    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                   0       56    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                   1        6    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                   0       52    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                   1        8    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                   0       48    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                   1       17    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                   0       51    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                   1       13    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                   0       66    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                   1       19    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                   0       62    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                   1       23    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                   0       84    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                   1       27    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                   0      124    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                   1       19    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                  0      100    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                  1       22    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                  0       91    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                  1       17    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                  0       83    1089
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                  1       25    1089
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       29     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       24     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   0       21     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          3                   1        1     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   0       20     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          4                   1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   0       19     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          5                   1        1     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   0       26     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          6                   1        1     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   0       10     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        9     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  0       17     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          10                  1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  0       36     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          11                  1        0     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       43     257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          12                  1        0     257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                   0       35     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                   1       15     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                   0       40     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                   1       10     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                   0       48     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                   1        6     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                   0       36     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                   1        8     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                   0       35     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                   1        6     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                   0       28     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                   1       13     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                   0       26     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                   1       16     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                   0       29     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                   1        9     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                   0       23     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                   1        5     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                  0       38     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                  1       12     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                  0       29     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                  1       15     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                  0       42     530
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                  1        6     530
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      186    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       28    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      134    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       16    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      160    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       15    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0      133    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       16    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0      160    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       23    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0      136    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       24    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0      135    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       21    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      154    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       39    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      183    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       32    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      183    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       29    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      170    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       40    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      195    2235
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       23    2235
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       13     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      2                   0       15     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      2                   1        1     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      3                   0       13     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      3                   1        2     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      4                   0       18     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      4                   1        2     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      5                   0       21     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      5                   1        2     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      6                   0       26     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      6                   1        3     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      7                   0       17     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      7                   1        1     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      8                   0       12     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      8                   1        2     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      9                   0       19     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      9                   1        1     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      10                  0       20     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      10                  1        3     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      11                  0       22     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      11                  1        2     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      12                  0        6     223
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      12                  1        2     223
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                   0        2     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                   1        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          2                   0        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          2                   1        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          3                   0        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          3                   1        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          4                   0        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          4                   1        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          5                   0        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          5                   1        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          6                   0        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          6                   1        0     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          7                   0       95     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          7                   1       20     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          8                   0      173     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          8                   1       37     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          9                   0      154     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          9                   1       38     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          10                  0        9     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          10                  1        2     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          11                  0        1     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          11                  1        3     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          12                  0        1     535
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          12                  1        0     535
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                   0        9     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     1                   1        6     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     2                   0       16     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     2                   1        5     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     3                   0       12     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     3                   1        4     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     4                   0       10     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     4                   1        6     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     5                   0       13     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     5                   1        2     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     6                   0        8     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     6                   1        2     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     7                   0        6     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     7                   1        1     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     8                   0        9     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     8                   1        3     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     9                   0        7     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     9                   1        4     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     10                  0        7     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     10                  1        5     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     11                  0        2     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     11                  1        1     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     12                  0       21     168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     12                  1        9     168
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         1                   0       12     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         1                   1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         2                   0        6     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         2                   1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         3                   0       13     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         3                   1        0     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         4                   0       10     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         4                   1        0     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         5                   0        5     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         5                   1        0     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         6                   0        4     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         6                   1        2     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         7                   0        3     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         7                   1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         8                   0       12     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         8                   1        0     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         9                   0        8     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         9                   1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         10                  0       12     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         10                  1        2     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         11                  0       11     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         11                  1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         12                  0        8     114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         12                  1        1     114
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  1                   0       21     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  1                   1        0     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  2                   0       81     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  2                   1        5     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  3                   0       94     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  3                   1        1     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  4                   0      114     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  4                   1        0     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  5                   0      103     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  5                   1        1     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  6                   0       52     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  6                   1        3     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  7                   0       39     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  7                   1        2     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  8                   0       47     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  8                   1        1     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  9                   0      103     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  9                   1        3     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  10                  0       38     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  10                  1        2     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  11                  0       47     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  11                  1        0     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  12                  0       80     841
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  12                  1        4     841
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                   0       49     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           1                   1        3     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           2                   0       57     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           2                   1        2     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           3                   0       69     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           3                   1        6     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           4                   0       57     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           4                   1        9     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           5                   0       65     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           5                   1        7     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           6                   0       44     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           6                   1        5     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           7                   0       42     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           7                   1        4     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           8                   0       49     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           8                   1        3     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           9                   0       39     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           9                   1        1     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           10                  0       30     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           10                  1        5     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           11                  0       63     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           11                  1        4     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           12                  0       45     658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           12                  1        0     658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                   0        8     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                   1        0     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           2                   0       13     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           2                   1        0     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           3                   0       24     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           3                   1        3     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           4                   0       11     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           4                   1        7     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           5                   0       18     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           5                   1        3     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           6                   0       10     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           6                   1        3     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           7                   0       12     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           7                   1        4     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           8                   0       20     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           8                   1        3     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           9                   0       13     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           9                   1        1     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           10                  0       19     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           10                  1        3     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           11                  0       12     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           11                  1        3     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           12                  0        7     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           12                  1        0     197
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                   0     1053   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                   1      118   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                   0      888   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                   1      104   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                   0     1069   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                   1      105   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                   0     1024   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                   1       96   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                   0     1047   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                   1       95   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                   0     1126   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                   1       86   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                   0     1342   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                   1      122   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                   0     1476   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                   1      129   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                   0     1423   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                   1      150   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                  0     1612   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                  1      172   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                  0     1530   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                  1      164   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                  0     1622   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                  1      187   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     1011   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      177   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      768   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      125   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      859   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      163   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      761   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      160   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      708   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      185   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      788   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      235   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      852   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      216   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      896   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      246   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   0     1054   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      183   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      823   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      145   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      902   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      150   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      985   12548
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      156   12548
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                   0        5     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         1                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         2                   0       31     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         2                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         3                   0       37     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         3                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         4                   0       29     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         4                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         5                   0       17     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         5                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         6                   0       19     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         6                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         7                   0       18     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         7                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         8                   0        4     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         8                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         9                   0        2     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         9                   1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         10                  0        2     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         10                  1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         11                  0        9     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         11                  1        0     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         12                  0        2     175
0-6 months (no birth st.)    ki1148112-LCNI-5           MALAWI                         12                  1        0     175
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1429   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      205   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1304   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      165   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1559   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      192   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1202   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                   1      136   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                   0      891   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                   1      100   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                   0      894   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                   1       86   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1003   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                   1      103   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1237   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                   1      163   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1599   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                   1      280   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1628   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                  1      321   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1587   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                  1      337   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1676   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                  1      328   18425
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       35    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      212    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       25    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      270    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       21    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     4                   0      599    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     4                   1       54    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     5                   0      395    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     5                   1       41    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     6                   0      295    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     6                   1       23    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     7                   0      594    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     7                   1       41    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     8                   0      372    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     8                   1       36    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     9                   0      234    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     9                   1       38    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     10                  0      178    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     10                  1       25    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     11                  0      110    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     11                  1        9    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     12                  0       52    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    3659
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                   0        8     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                   1        7     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     2                   0        4     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     2                   1        6     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     3                   0        7     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     3                   1        5     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     4                   0       12     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     4                   1        9     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     5                   0        5     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     5                   1        7     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     6                   0        3     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     6                   1        1     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     7                   0        7     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     7                   1        5     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     8                   0       10     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     8                   1        5     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     9                   0        8     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     9                   1        7     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     10                  0       11     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     10                  1        3     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     11                  0        6     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     11                  1        4     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     12                  0       11     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     12                  1        8     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                   0       11     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                   1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         2                   0       15     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         2                   1        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         3                   0       16     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         3                   1        0     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         4                   0        8     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         4                   1        0     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         5                   0       15     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         5                   1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         6                   0        8     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         6                   1        0     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         7                   0        9     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         7                   1        3     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         8                   0       11     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         8                   1        0     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         9                   0       21     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         9                   1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         10                  0       18     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         10                  1        1     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         11                  0       18     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         11                  1        0     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         12                  0        9     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         12                  1        0     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                   0        5     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                   1        7     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          2                   0       11     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          2                   1        5     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          3                   0       10     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          3                   1        5     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          4                   0        6     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          4                   1        5     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          5                   0        2     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          5                   1        3     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          6                   0       10     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          6                   1        5     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          7                   0       11     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          7                   1        3     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          8                   0        6     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          8                   1        6     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          9                   0        6     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          9                   1        8     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          10                  0       10     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          10                  1        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          11                  0        7     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          11                  1        9     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          12                  0        7     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          12                  1        4     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                   0       15     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                   1        2     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          2                   0       10     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          2                   1        5     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          3                   0       10     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          3                   1        7     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          4                   0       13     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          4                   1        2     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          5                   0       13     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          5                   1        5     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          6                   0       14     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          6                   1        2     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          7                   0       16     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          7                   1        2     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          8                   0       13     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          8                   1        3     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          9                   0       13     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          9                   1        1     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          10                  0       17     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          10                  1        2     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          11                  0       11     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          11                  1        5     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          12                  0        9     195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          12                  1        5     195
6-24 months                  ki0047075b-MAL-ED          PERU                           1                   0       15     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                   1        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           2                   0        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           2                   1        4     149
6-24 months                  ki0047075b-MAL-ED          PERU                           3                   0        9     149
6-24 months                  ki0047075b-MAL-ED          PERU                           3                   1        4     149
6-24 months                  ki0047075b-MAL-ED          PERU                           4                   0        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           4                   1        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           5                   0        7     149
6-24 months                  ki0047075b-MAL-ED          PERU                           5                   1        5     149
6-24 months                  ki0047075b-MAL-ED          PERU                           6                   0        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           6                   1        5     149
6-24 months                  ki0047075b-MAL-ED          PERU                           7                   0        4     149
6-24 months                  ki0047075b-MAL-ED          PERU                           7                   1        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           8                   0        7     149
6-24 months                  ki0047075b-MAL-ED          PERU                           8                   1        6     149
6-24 months                  ki0047075b-MAL-ED          PERU                           9                   0        9     149
6-24 months                  ki0047075b-MAL-ED          PERU                           9                   1        5     149
6-24 months                  ki0047075b-MAL-ED          PERU                           10                  0        8     149
6-24 months                  ki0047075b-MAL-ED          PERU                           10                  1        3     149
6-24 months                  ki0047075b-MAL-ED          PERU                           11                  0        9     149
6-24 months                  ki0047075b-MAL-ED          PERU                           11                  1        3     149
6-24 months                  ki0047075b-MAL-ED          PERU                           12                  0        4     149
6-24 months                  ki0047075b-MAL-ED          PERU                           12                  1        6     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       12     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       10     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   2                   0        8     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   2                   1       10     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   3                   0        9     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   3                   1        2     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   4                   0        7     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   4                   1        3     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   5                   0        7     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   5                   1        1     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   6                   0        9     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   6                   1        4     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   7                   0       10     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   7                   1        2     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   8                   0        2     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   8                   1        1     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   9                   0       10     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   9                   1        5     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   10                  0        7     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   10                  1        8     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   11                  0        8     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   11                  1        3     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   12                  0       12     159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   12                  1        9     159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        9     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   0        6     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                   1       11     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   0        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                   1        5     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   0        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                   1        3     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   0        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                   1        8     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   0        1     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                   1       11     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   0        5     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                   1       10     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   0        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                   1        6     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   0        3     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                   1        9     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  0        1     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                  1        8     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  0        1     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                  1       17     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  0        2     145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                  1       16     145
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        8     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          2                   0        1     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          2                   1        8     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          3                   0        0     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          3                   1       15     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          4                   0        2     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          4                   1       14     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          5                   0        5     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          5                   1       24     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          6                   0        3     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          6                   1       18     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          7                   0        5     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          7                   1       13     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          8                   0        2     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          8                   1       13     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          9                   0        2     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          9                   1       11     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          10                  0        0     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          10                  1        9     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          11                  0        5     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          11                  1       14     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          12                  0        2     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          12                  1       10     185
6-24 months                  ki1000108-IRC              INDIA                          1                   0       10     236
6-24 months                  ki1000108-IRC              INDIA                          1                   1       11     236
6-24 months                  ki1000108-IRC              INDIA                          2                   0        9     236
6-24 months                  ki1000108-IRC              INDIA                          2                   1        5     236
6-24 months                  ki1000108-IRC              INDIA                          3                   0        8     236
6-24 months                  ki1000108-IRC              INDIA                          3                   1        8     236
6-24 months                  ki1000108-IRC              INDIA                          4                   0        5     236
6-24 months                  ki1000108-IRC              INDIA                          4                   1        7     236
6-24 months                  ki1000108-IRC              INDIA                          5                   0        4     236
6-24 months                  ki1000108-IRC              INDIA                          5                   1        6     236
6-24 months                  ki1000108-IRC              INDIA                          6                   0       16     236
6-24 months                  ki1000108-IRC              INDIA                          6                   1        7     236
6-24 months                  ki1000108-IRC              INDIA                          7                   0       14     236
6-24 months                  ki1000108-IRC              INDIA                          7                   1        6     236
6-24 months                  ki1000108-IRC              INDIA                          8                   0       22     236
6-24 months                  ki1000108-IRC              INDIA                          8                   1       10     236
6-24 months                  ki1000108-IRC              INDIA                          9                   0        9     236
6-24 months                  ki1000108-IRC              INDIA                          9                   1        6     236
6-24 months                  ki1000108-IRC              INDIA                          10                  0       19     236
6-24 months                  ki1000108-IRC              INDIA                          10                  1        5     236
6-24 months                  ki1000108-IRC              INDIA                          11                  0       17     236
6-24 months                  ki1000108-IRC              INDIA                          11                  1        9     236
6-24 months                  ki1000108-IRC              INDIA                          12                  0       14     236
6-24 months                  ki1000108-IRC              INDIA                          12                  1        9     236
6-24 months                  ki1000109-EE               PAKISTAN                       1                   0        4      97
6-24 months                  ki1000109-EE               PAKISTAN                       1                   1       13      97
6-24 months                  ki1000109-EE               PAKISTAN                       2                   0        9      97
6-24 months                  ki1000109-EE               PAKISTAN                       2                   1       13      97
6-24 months                  ki1000109-EE               PAKISTAN                       3                   0        4      97
6-24 months                  ki1000109-EE               PAKISTAN                       3                   1       10      97
6-24 months                  ki1000109-EE               PAKISTAN                       4                   0        2      97
6-24 months                  ki1000109-EE               PAKISTAN                       4                   1        5      97
6-24 months                  ki1000109-EE               PAKISTAN                       5                   0        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       5                   1        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       6                   0        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       6                   1        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       7                   0        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       7                   1        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       8                   0        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       8                   1        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       9                   0        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       9                   1        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       10                  0        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       10                  1        0      97
6-24 months                  ki1000109-EE               PAKISTAN                       11                  0        4      97
6-24 months                  ki1000109-EE               PAKISTAN                       11                  1        7      97
6-24 months                  ki1000109-EE               PAKISTAN                       12                  0        8      97
6-24 months                  ki1000109-EE               PAKISTAN                       12                  1       18      97
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                   0        0      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       1                   1        2      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       2                   0        4      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       2                   1        2      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       3                   0        3      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       3                   1        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       4                   0        6      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       4                   1        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       5                   0       14      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       5                   1        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       6                   0       12      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       6                   1        2      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       7                   0        9      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       7                   1        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       8                   0       11      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       8                   1        5      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       9                   0       11      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       9                   1        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       10                  0        5      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       10                  1        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       11                  0        2      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       11                  1        0      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       12                  0        1      95
6-24 months                  ki1000109-ResPak           PAKISTAN                       12                  1        0      95
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                   0       23     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                   1       31     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                   0       28     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                   1       22     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                   0       29     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                   1       20     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                   0       20     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                   1       27     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                   0       26     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                   1       24     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                   0       35     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                   1       27     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                   0       28     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                   1       30     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                   0       30     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                   1       48     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                   0       61     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                   1       56     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                  0       38     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                  1       51     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                  0       42     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                  1       40     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                  0       44     813
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                  1       33     813
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        4     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       25     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          2                   0        7     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       16     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          3                   0        5     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          3                   1       13     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          4                   0        3     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          4                   1       16     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          5                   0        6     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          5                   1       13     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          6                   0        8     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          6                   1       17     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          7                   0        3     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          7                   1        7     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          8                   0        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          8                   1        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          9                   0        0     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          9                   1        8     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          10                  0        3     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          10                  1       13     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          11                  0        9     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          11                  1       25     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          12                  0       11     243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          12                  1       31     243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                   0       13     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                   1       14     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                   0       13     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                   1       18     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                   0       17     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                   1       21     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                   0       11     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                   1       20     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                   0       13     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                   1       18     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                   0        9     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                   1       13     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                   0       12     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                   1       11     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                   0        9     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                   1       16     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                   0       10     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                   1        9     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                  0       14     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                  1       19     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                  0       11     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                  1       16     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                  0       15     345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                  1       23     345
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      121    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       34    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       86    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       26    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   0      101    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                   1       28    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   0       80    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                   1       33    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   0       94    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                   1       32    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   0       78    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                   1       25    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   0       80    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                   1       28    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   0      106    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                   1       31    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   0      137    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                   1       20    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  0      121    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                  1       39    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  0      112    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                  1       28    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  0      124    1602
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                  1       38    1602
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      1                   1        5     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      2                   0        8     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      2                   1        6     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      3                   0        3     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      3                   1        8     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      4                   0        9     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      4                   1        8     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      5                   0       15     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      5                   1       10     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      6                   0       15     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      6                   1       11     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      7                   0       11     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      7                   1        5     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      8                   0       10     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      8                   1        3     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      9                   0       17     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      9                   1        5     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      10                  0       10     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      10                  1        6     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      11                  0       13     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      11                  1        6     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      12                  0        4     195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      12                  1        1     195
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      157    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       82    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   0      121    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                   1       87    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   0      142    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                   1       72    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   0      114    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                   1       69    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   0      156    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                   1      101    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   0      235    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                   1      131    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   0      267    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                   1      144    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   0      229    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                   1      132    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   0      179    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                   1      116    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  0      255    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                  1      117    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  0      123    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                  1       74    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  0      104    3265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                  1       58    3265
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                   0        2     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                   1        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          2                   0        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          2                   1        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          3                   0        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          3                   1        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          4                   0        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          4                   1        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          5                   0        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          5                   1        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          6                   0        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          6                   1        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          7                   0       32     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          7                   1       60     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          8                   0       76     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          8                   1       95     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          9                   0       68     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          9                   1       82     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          10                  0        8     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          10                  1        1     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          11                  0        0     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          11                  1        1     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          12                  0        1     426
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          12                  1        0     426
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                   0        2     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     1                   1        7     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     2                   0        3     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     2                   1       10     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     3                   0        6     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     3                   1        6     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     4                   0        2     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     4                   1        7     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     5                   0        3     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     5                   1        9     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     6                   0        1     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     6                   1        7     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     7                   0        2     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     7                   1        4     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     8                   0        2     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     8                   1        7     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     9                   0        1     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     9                   1        5     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     10                  0        2     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     10                  1        4     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     11                  0        0     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     11                  1        0     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     12                  0        8     111
6-24 months                  ki1114097-CMIN             BANGLADESH                     12                  1       13     111
6-24 months                  ki1114097-CMIN             BRAZIL                         1                   0        8     104
6-24 months                  ki1114097-CMIN             BRAZIL                         1                   1        4     104
6-24 months                  ki1114097-CMIN             BRAZIL                         2                   0        3     104
6-24 months                  ki1114097-CMIN             BRAZIL                         2                   1        3     104
6-24 months                  ki1114097-CMIN             BRAZIL                         3                   0       10     104
6-24 months                  ki1114097-CMIN             BRAZIL                         3                   1        3     104
6-24 months                  ki1114097-CMIN             BRAZIL                         4                   0        9     104
6-24 months                  ki1114097-CMIN             BRAZIL                         4                   1        1     104
6-24 months                  ki1114097-CMIN             BRAZIL                         5                   0        3     104
6-24 months                  ki1114097-CMIN             BRAZIL                         5                   1        2     104
6-24 months                  ki1114097-CMIN             BRAZIL                         6                   0        2     104
6-24 months                  ki1114097-CMIN             BRAZIL                         6                   1        2     104
6-24 months                  ki1114097-CMIN             BRAZIL                         7                   0        3     104
6-24 months                  ki1114097-CMIN             BRAZIL                         7                   1        0     104
6-24 months                  ki1114097-CMIN             BRAZIL                         8                   0       10     104
6-24 months                  ki1114097-CMIN             BRAZIL                         8                   1        2     104
6-24 months                  ki1114097-CMIN             BRAZIL                         9                   0        6     104
6-24 months                  ki1114097-CMIN             BRAZIL                         9                   1        2     104
6-24 months                  ki1114097-CMIN             BRAZIL                         10                  0       10     104
6-24 months                  ki1114097-CMIN             BRAZIL                         10                  1        2     104
6-24 months                  ki1114097-CMIN             BRAZIL                         11                  0       10     104
6-24 months                  ki1114097-CMIN             BRAZIL                         11                  1        1     104
6-24 months                  ki1114097-CMIN             BRAZIL                         12                  0        5     104
6-24 months                  ki1114097-CMIN             BRAZIL                         12                  1        3     104
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                   0       27    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                   1       13    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  2                   0       85    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  2                   1       56    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  3                   0       86    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  3                   1       57    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  4                   0      143    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  4                   1      111    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  5                   0      112    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  5                   1       56    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  6                   0       63    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  6                   1       23    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  7                   0       50    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  7                   1       40    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  8                   0       51    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  8                   1       28    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  9                   0       90    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  9                   1       50    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  10                  0       39    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  10                  1       18    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  11                  0       39    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  11                  1       16    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  12                  0       61    1346
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  12                  1       32    1346
6-24 months                  ki1114097-CMIN             PERU                           1                   0       34     797
6-24 months                  ki1114097-CMIN             PERU                           1                   1        8     797
6-24 months                  ki1114097-CMIN             PERU                           2                   0       84     797
6-24 months                  ki1114097-CMIN             PERU                           2                   1       78     797
6-24 months                  ki1114097-CMIN             PERU                           3                   0       78     797
6-24 months                  ki1114097-CMIN             PERU                           3                   1       43     797
6-24 months                  ki1114097-CMIN             PERU                           4                   0       42     797
6-24 months                  ki1114097-CMIN             PERU                           4                   1       19     797
6-24 months                  ki1114097-CMIN             PERU                           5                   0       50     797
6-24 months                  ki1114097-CMIN             PERU                           5                   1       24     797
6-24 months                  ki1114097-CMIN             PERU                           6                   0       37     797
6-24 months                  ki1114097-CMIN             PERU                           6                   1        8     797
6-24 months                  ki1114097-CMIN             PERU                           7                   0       34     797
6-24 months                  ki1114097-CMIN             PERU                           7                   1       15     797
6-24 months                  ki1114097-CMIN             PERU                           8                   0       47     797
6-24 months                  ki1114097-CMIN             PERU                           8                   1       21     797
6-24 months                  ki1114097-CMIN             PERU                           9                   0       30     797
6-24 months                  ki1114097-CMIN             PERU                           9                   1       13     797
6-24 months                  ki1114097-CMIN             PERU                           10                  0       18     797
6-24 months                  ki1114097-CMIN             PERU                           10                  1       11     797
6-24 months                  ki1114097-CMIN             PERU                           11                  0       39     797
6-24 months                  ki1114097-CMIN             PERU                           11                  1       23     797
6-24 months                  ki1114097-CMIN             PERU                           12                  0       29     797
6-24 months                  ki1114097-CMIN             PERU                           12                  1       12     797
6-24 months                  ki1114097-CONTENT          PERU                           1                   0        8     167
6-24 months                  ki1114097-CONTENT          PERU                           1                   1        0     167
6-24 months                  ki1114097-CONTENT          PERU                           2                   0       11     167
6-24 months                  ki1114097-CONTENT          PERU                           2                   1        2     167
6-24 months                  ki1114097-CONTENT          PERU                           3                   0       24     167
6-24 months                  ki1114097-CONTENT          PERU                           3                   1        0     167
6-24 months                  ki1114097-CONTENT          PERU                           4                   0        9     167
6-24 months                  ki1114097-CONTENT          PERU                           4                   1        2     167
6-24 months                  ki1114097-CONTENT          PERU                           5                   0       17     167
6-24 months                  ki1114097-CONTENT          PERU                           5                   1        1     167
6-24 months                  ki1114097-CONTENT          PERU                           6                   0        9     167
6-24 months                  ki1114097-CONTENT          PERU                           6                   1        1     167
6-24 months                  ki1114097-CONTENT          PERU                           7                   0       10     167
6-24 months                  ki1114097-CONTENT          PERU                           7                   1        2     167
6-24 months                  ki1114097-CONTENT          PERU                           8                   0       19     167
6-24 months                  ki1114097-CONTENT          PERU                           8                   1        1     167
6-24 months                  ki1114097-CONTENT          PERU                           9                   0       12     167
6-24 months                  ki1114097-CONTENT          PERU                           9                   1        1     167
6-24 months                  ki1114097-CONTENT          PERU                           10                  0       15     167
6-24 months                  ki1114097-CONTENT          PERU                           10                  1        4     167
6-24 months                  ki1114097-CONTENT          PERU                           11                  0       12     167
6-24 months                  ki1114097-CONTENT          PERU                           11                  1        0     167
6-24 months                  ki1114097-CONTENT          PERU                           12                  0        6     167
6-24 months                  ki1114097-CONTENT          PERU                           12                  1        1     167
6-24 months                  ki1119695-PROBIT           BELARUS                        1                   0      929   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                   1       93   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        2                   0      775   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        2                   1      100   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        3                   0      950   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        3                   1      107   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        4                   0      944   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        4                   1       71   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        5                   0      957   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        5                   1       72   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        6                   0     1022   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        6                   1       76   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        7                   0     1242   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        7                   1       84   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        8                   0     1353   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        8                   1       94   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        9                   0     1312   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        9                   1       85   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        10                  0     1466   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        10                  1      116   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        11                  0     1394   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        11                  1      108   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        12                  0     1458   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        12                  1      143   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      584    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      206    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      446    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      153    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                   0      476    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                   1      183    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                   0      456    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                   1      143    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                   0      396    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                   1      135    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                   0      465    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                   1      127    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                   0      490    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                   1      142    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                   0      494    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                   1      153    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                   0      616    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                   1      189    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                  0      457    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                  1      153    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                  0      524    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                  1      165    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                  0      584    7940
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                  1      203    7940
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                   0       22     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                   1       31     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                   0       45     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                   1       53     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                   0       30     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                   1       45     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                   0       29     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                   1       58     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                   0       38     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                   1       61     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                   0       29     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                   1       52     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                   0       24     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                   1       36     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                   0       16     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                   1       25     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                   0       11     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                   1       16     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                  0       16     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                  1       16     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                  0       21     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                  1       25     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                  0       11     730
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                  1       20     730
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                   0      624   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                   1      195   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                   0      550   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                   1      213   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                   0      741   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                   1      197   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                   0      639   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                   1      162   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                   0      631   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                   1      153   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                   0      604   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                   1      193   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                   0      675   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                   1      187   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                   0      771   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                   1      187   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                   0      775   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                   1      206   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                  0      785   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                  1      188   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                  0      727   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                  1      201   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                  0      716   10526
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                  1      206   10526
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                   0       26    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                   1       15    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                   0      150    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                   1       67    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                   0      183    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                   1       97    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                   0      360    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                   1      244    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                   0      240    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                   1      154    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                   0      184    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                   1      111    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                   0      363    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                   1      231    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                   0      232    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                   1      145    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                   0      247    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                   1      154    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                  0      162    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                  1       83    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                  0       85    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                  1       52    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                  0       38    3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                  1       26    3649


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/c1b18176-1119-4c9c-a640-803712ab3ac3/7709462c-063d-4205-840f-6d8782558aa5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1b18176-1119-4c9c-a640-803712ab3ac3/7709462c-063d-4205-840f-6d8782558aa5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1b18176-1119-4c9c-a640-803712ab3ac3/7709462c-063d-4205-840f-6d8782558aa5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1b18176-1119-4c9c-a640-803712ab3ac3/7709462c-063d-4205-840f-6d8782558aa5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    NA                0.4864865    0.3251337   0.6478393
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                    NA                0.6363636    0.4349722   0.8377551
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                    NA                0.4736842    0.2487493   0.6986191
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                    NA                0.6111111    0.3854781   0.8367441
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                    NA                0.6086957    0.4088662   0.8085251
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                    NA                0.5882353    0.3538439   0.8226267
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                    NA                0.7619048    0.5793967   0.9444128
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                    NA                0.5000000    0.2804563   0.7195437
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                    NA                0.5909091    0.3850714   0.7967468
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                   NA                0.3478261    0.1528125   0.5428397
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                   NA                0.6153846    0.4280293   0.8027399
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                   NA                0.6666667    0.4484824   0.8848509
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5789474    0.4847801   0.6731147
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4516129    0.2748262   0.6283996
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4666667    0.2726021   0.6607312
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.6615385    0.5221742   0.8009027
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.5781250    0.4622900   0.6939600
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.5348837    0.4514631   0.6183044
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.6235294    0.4938888   0.7531700
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.6756757    0.5966129   0.7547384
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.5244755    0.4183826   0.6305685
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5983607    0.5279506   0.6687708
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.5277778    0.3855395   0.6700161
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.5370370    0.4292288   0.6448453
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5800000    0.4430658   0.7169342
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5600000    0.4222811   0.6977189
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5000000    0.3665154   0.6334846
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6363636    0.4940920   0.7786352
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5853659    0.4344230   0.7363087
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6341463    0.4865707   0.7817220
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6428571    0.4978091   0.7879051
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.6578947    0.5069130   0.8088765
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5000000    0.3146258   0.6853742
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6200000    0.4853331   0.7546669
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7045455    0.5696083   0.8394827
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6041667    0.4656914   0.7426419
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2897196    0.2289282   0.3505110
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2800000    0.2081305   0.3518695
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2457143    0.1819159   0.3095126
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3288591    0.2534083   0.4043099
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3005464    0.2341026   0.3669903
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.3062500    0.2348127   0.3776873
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.3141026    0.2412494   0.3869557
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3626943    0.2948504   0.4305382
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2418605    0.1846095   0.2991115
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.3207547    0.2579088   0.3836007
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3238095    0.2605079   0.3871112
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2798165    0.2202125   0.3394205
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1513514    0.0707045   0.2319982
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1655172    0.1135598   0.2174746
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.1839080    0.1111824   0.2566337
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2027972    0.1115087   0.2940857
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1702128    0.1028189   0.2376066
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1840278    0.1291873   0.2388682
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.1859756    0.1246588   0.2472924
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.1850534    0.1253319   0.2447749
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.1973094    0.1206905   0.2739283
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1500000    0.0971895   0.2028105
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.1800000    0.1183049   0.2416951
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.1875000    0.1269371   0.2480629
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2500000    0.1084949   0.3915051
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3703704    0.2888781   0.4518626
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3623188    0.2820900   0.4425476
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.3317972    0.2691238   0.3944706
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.2784810    0.2085587   0.3484033
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2500000    0.1573632   0.3426368
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3108108    0.2053177   0.4163039
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.2571429    0.1547161   0.3595696
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.2910448    0.2141035   0.3679861
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2452830    0.1294025   0.3611635
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2592593    0.1423293   0.3761893
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.3369565    0.2403322   0.4335809
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                0.1851852    0.0815149   0.2888555
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           2                    NA                0.3070866    0.2268104   0.3873628
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           3                    NA                0.2385321    0.1584741   0.3185901
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           4                    NA                0.3802817    0.2672919   0.4932715
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           5                    NA                0.3461538    0.2405101   0.4517976
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           6                    NA                0.2549020    0.1352205   0.3745834
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           7                    NA                0.3137255    0.1862997   0.4411513
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           8                    NA                0.2816901    0.1769939   0.3863864
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           9                    NA                0.2380952    0.1092051   0.3669854
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           10                   NA                0.3714286    0.2112518   0.5316054
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           11                   NA                0.3768116    0.2624011   0.4912221
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           12                   NA                0.2666667    0.1373819   0.3959515
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1801879    0.1466897   0.2136860
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                    NA                0.2056452    0.1699496   0.2413407
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                    NA                0.1797274    0.1494659   0.2099889
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                    NA                0.1491071    0.1214232   0.1767910
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                    NA                0.1462347    0.1128888   0.1795806
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                    NA                0.1336634    0.1043297   0.1629971
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                    NA                0.1407104    0.1123163   0.1691045
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                    NA                0.1389408    0.1170520   0.1608297
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                    NA                0.1493011    0.1212709   0.1773314
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                   NA                0.1607843    0.1360612   0.1855074
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                   NA                0.1605667    0.1341323   0.1870011
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                   NA                0.1824212    0.1487559   0.2160866
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3196309    0.2931566   0.3461051
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3106145    0.2802969   0.3409322
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.3382209    0.3092285   0.3672133
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.3286334    0.2983130   0.3589539
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3572228    0.3257932   0.3886525
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3538612    0.3245585   0.3831638
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.3352060    0.3068934   0.3635186
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.3493870    0.3217337   0.3770403
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.3000000    0.2744927   0.3255073
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.3058702    0.2768871   0.3348533
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2979127    0.2703015   0.3255239
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.3137599    0.2868346   0.3406851
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4358974    0.2801230   0.5916719
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3947368    0.2847409   0.5047328
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4761905    0.3527481   0.5996328
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                    NA                0.4754098    0.3499697   0.6008500
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4444444    0.3295594   0.5593295
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5161290    0.3916187   0.6406394
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                    NA                0.3750000    0.2248300   0.5251700
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4285714    0.2450989   0.6120439
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                    NA                0.3888889    0.1634681   0.6143097
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                   NA                0.2380952    0.0557588   0.4204317
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                   NA                0.2812500    0.1253243   0.4371757
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                   NA                0.4210526    0.1988402   0.6432651
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2422209    0.2207802   0.2636616
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2564626    0.2332293   0.2796959
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2209567    0.1990515   0.2428619
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2208178    0.1991276   0.2425081
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2489960    0.2205090   0.2774830
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2819473    0.2508246   0.3130699
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2608303    0.2338127   0.2878480
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2476802    0.2249269   0.2704336
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2582359    0.2363656   0.2801062
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2596006    0.2384933   0.2807079
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2781526    0.2565664   0.2997387
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2652044    0.2457035   0.2847053
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3500000    0.1314025   0.5685975
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3775934    0.3090238   0.4461629
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3859060    0.3294595   0.4423525
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4481707    0.4065333   0.4898082
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.4439359    0.3870578   0.5008140
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.4213836    0.3592866   0.4834807
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.4251969    0.3799958   0.4703979
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.4327628    0.3715388   0.4939869
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.3825000    0.3295618   0.4354382
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.3647059    0.3019479   0.4274639
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.3768116    0.2936746   0.4599486
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.3389831    0.2113115   0.4666546
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.2758621    0.1129663   0.4387578
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                    NA                0.4400000    0.2451491   0.6348509
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                    NA                0.3600000    0.1715816   0.5484184
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                    NA                0.4000000    0.1849979   0.6150021
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                    NA                0.5000000    0.2805644   0.7194356
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                    NA                0.2580645    0.1038169   0.4123121
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                    NA                0.3548387    0.1861753   0.5235021
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                    NA                0.2195122    0.0926382   0.3463862
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                    NA                0.4000000    0.2076963   0.5923037
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                   NA                0.2727273    0.1205646   0.4248899
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                   NA                0.2571429    0.1121462   0.4021395
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                   NA                0.4888889    0.3426346   0.6351432
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1842105    0.1449283   0.2234927
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0967742    0.0142154   0.1793330
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.1333333    0.0123058   0.2543608
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.2615385    0.1672358   0.3558412
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.2031250    0.0616028   0.3446472
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.2235294    0.1369995   0.3100593
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.2705882    0.1796156   0.3615609
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.2432432    0.1197908   0.3666957
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.1328671    0.0973393   0.1683950
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.1803279    0.1052111   0.2554447
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.1574074    0.1067622   0.2080526
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.2314815    0.1557452   0.3072178
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3000000    0.1728598   0.4271402
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2000000    0.0890229   0.3109771
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1111111    0.0272108   0.1950115
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1818182    0.0677471   0.2958892
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1463415    0.0380505   0.2546324
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3170732    0.1745015   0.4596448
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3809524    0.2339478   0.5279570
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2368421    0.1015405   0.3721437
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.1785714    0.0365774   0.3205655
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2400000    0.1215089   0.3584911
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3409091    0.2007169   0.4811013
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1250000    0.0313524   0.2186476
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1308411    0.0856493   0.1760330
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1066667    0.0572560   0.1560773
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0857143    0.0442290   0.1271996
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1073826    0.0576602   0.1571049
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1256831    0.0776442   0.1737219
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1500000    0.0946598   0.2053402
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1346154    0.0810437   0.1881870
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2020725    0.1454092   0.2587359
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1488372    0.1012502   0.1964242
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1367925    0.0905260   0.1830589
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1904762    0.1373546   0.2435977
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1055046    0.0647157   0.1462935
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.1007686    0.0783536   0.1231836
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                    NA                0.1048387    0.0770231   0.1326543
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                    NA                0.0894378    0.0709347   0.1079410
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                    NA                0.0857143    0.0622379   0.1091906
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                    NA                0.0831874    0.0562826   0.1100922
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                    NA                0.0709571    0.0506837   0.0912305
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                    NA                0.0833333    0.0622516   0.1044151
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                    NA                0.0803738    0.0651893   0.0955584
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                    NA                0.0953592    0.0740073   0.1167110
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                   NA                0.0964126    0.0802544   0.1125708
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                   NA                0.0968123    0.0749662   0.1186584
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                   NA                0.1033720    0.0824398   0.1243043
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1489899    0.1287409   0.1692389
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1399776    0.1172201   0.1627351
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1594912    0.1370431   0.1819393
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1737242    0.1492545   0.1981939
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2071669    0.1805847   0.2337490
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2297165    0.2039385   0.2554945
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2022472    0.1781562   0.2263382
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2154116    0.1915671   0.2392560
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1479386    0.1281526   0.1677245
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1497934    0.1273113   0.1722755
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1425856    0.1214560   0.1637151
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1367222    0.1167871   0.1566572
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1254590    0.1083320   0.1425860
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1123213    0.0950910   0.1295516
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1096516    0.0940034   0.1252999
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1016442    0.0856227   0.1176658
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1009082    0.0817296   0.1200867
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.0877551    0.0661154   0.1093949
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.0931284    0.0750465   0.1112103
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1164286    0.0984944   0.1343628
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1490154    0.1313812   0.1666497
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1646998    0.1467481   0.1826516
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1751559    0.1559511   0.1943608
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1636727    0.1475224   0.1798229
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5740741    0.4211639   0.7269843
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4400000    0.2551727   0.6248273
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                    NA                0.4081633    0.2574655   0.5588610
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                    NA                0.5744681    0.4678155   0.6811207
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                    NA                0.4800000    0.3256000   0.6344000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                    NA                0.4354839    0.3022176   0.5687501
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                    NA                0.5172414    0.3772212   0.6572615
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                    NA                0.6153846    0.5309626   0.6998066
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                    NA                0.4786325    0.3532520   0.6040130
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                   NA                0.5730337    0.4824840   0.6635835
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                   NA                0.4878049    0.3448685   0.6307413
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                   NA                0.4285714    0.3274070   0.5297358
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5185185    0.3297766   0.7072605
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5806452    0.4066874   0.7546029
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5526316    0.3943111   0.7109521
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6451613    0.4764877   0.8138349
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5806452    0.4066874   0.7546029
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5909091    0.3851603   0.7966579
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4782609    0.2738172   0.6827045
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.6400000    0.4515702   0.8284298
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4736842    0.2488464   0.6985220
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5757576    0.4068892   0.7446260
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5925926    0.4069878   0.7781974
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6052632    0.4496263   0.7609001
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2193548    0.1541893   0.2845204
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2321429    0.1539274   0.3103583
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2170543    0.1458938   0.2882147
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2920354    0.2081729   0.3758979
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2539683    0.1779414   0.3299951
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2427184    0.1598966   0.3255403
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2592593    0.1765847   0.3419339
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2262774    0.1561905   0.2963642
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1273885    0.0752199   0.1795572
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2437500    0.1772030   0.3102970
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2000000    0.1337204   0.2662796
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2345679    0.1692979   0.2998379
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3430962    0.2320838   0.4541087
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.4182692    0.3505524   0.4859861
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3364486    0.2657634   0.4071338
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3770492    0.2659299   0.4881684
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.3929961    0.3197182   0.4662740
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3579235    0.2674723   0.4483747
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.3503650    0.2788362   0.4218937
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3656510    0.2843337   0.4469683
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.3932203    0.3096227   0.4768180
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3145161   -0.0387881   0.6678204
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3756345    0.2869643   0.4643048
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3580247    0.2966039   0.4194455
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3250000    0.1797978   0.4702022
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3971631    0.3163682   0.4779581
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3986014    0.3183242   0.4788786
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4370079    0.3759856   0.4980302
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.3333333    0.2620236   0.4046430
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2674419    0.1738591   0.3610247
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.4444444    0.3417467   0.5471421
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3544304    0.2489108   0.4599499
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3571429    0.2777423   0.4365434
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.3157895    0.1950732   0.4365057
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2909091    0.1708327   0.4109855
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.3440860    0.2474976   0.4406744
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                0.1904762    0.0716448   0.3093076
6-24 months                  ki1114097-CMIN             PERU                           2                    NA                0.4814815    0.4044913   0.5584716
6-24 months                  ki1114097-CMIN             PERU                           3                    NA                0.3553719    0.2700375   0.4407063
6-24 months                  ki1114097-CMIN             PERU                           4                    NA                0.3114754    0.1951894   0.4277614
6-24 months                  ki1114097-CMIN             PERU                           5                    NA                0.3243243    0.2175999   0.4310487
6-24 months                  ki1114097-CMIN             PERU                           6                    NA                0.1777778    0.0660020   0.2895536
6-24 months                  ki1114097-CMIN             PERU                           7                    NA                0.3061224    0.1769970   0.4352479
6-24 months                  ki1114097-CMIN             PERU                           8                    NA                0.3088235    0.1989442   0.4187028
6-24 months                  ki1114097-CMIN             PERU                           9                    NA                0.3023256    0.1649687   0.4396824
6-24 months                  ki1114097-CMIN             PERU                           10                   NA                0.3793103    0.2026023   0.5560184
6-24 months                  ki1114097-CMIN             PERU                           11                   NA                0.3709677    0.2506501   0.4912854
6-24 months                  ki1114097-CMIN             PERU                           12                   NA                0.2926829    0.1533241   0.4320418
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0909980    0.0634625   0.1185335
6-24 months                  ki1119695-PROBIT           BELARUS                        2                    NA                0.1142857    0.0884084   0.1401631
6-24 months                  ki1119695-PROBIT           BELARUS                        3                    NA                0.1012299    0.0730804   0.1293794
6-24 months                  ki1119695-PROBIT           BELARUS                        4                    NA                0.0699507    0.0511429   0.0887586
6-24 months                  ki1119695-PROBIT           BELARUS                        5                    NA                0.0699708    0.0455718   0.0943699
6-24 months                  ki1119695-PROBIT           BELARUS                        6                    NA                0.0692168    0.0483692   0.0900643
6-24 months                  ki1119695-PROBIT           BELARUS                        7                    NA                0.0633484    0.0381507   0.0885462
6-24 months                  ki1119695-PROBIT           BELARUS                        8                    NA                0.0649620    0.0482972   0.0816268
6-24 months                  ki1119695-PROBIT           BELARUS                        9                    NA                0.0608447    0.0418263   0.0798630
6-24 months                  ki1119695-PROBIT           BELARUS                        10                   NA                0.0733249    0.0533114   0.0933384
6-24 months                  ki1119695-PROBIT           BELARUS                        11                   NA                0.0719041    0.0567608   0.0870475
6-24 months                  ki1119695-PROBIT           BELARUS                        12                   NA                0.0893192    0.0580899   0.1205485
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2607595    0.2301416   0.2913774
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2554257    0.2204997   0.2903517
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2776935    0.2434974   0.3118896
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2387312    0.2045895   0.2728730
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2542373    0.2171992   0.2912753
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2145270    0.1814580   0.2475960
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2246835    0.1921417   0.2572254
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2364760    0.2037323   0.2692198
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2347826    0.2055005   0.2640648
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2508197    0.2164176   0.2852217
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2394775    0.2076095   0.2713455
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2579416    0.2273735   0.2885096
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    NA                0.5849057    0.4521588   0.7176525
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                    NA                0.5408163    0.4420859   0.6395467
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                    NA                0.6000000    0.4890517   0.7109483
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                    NA                0.6666667    0.5675424   0.7657909
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                    NA                0.6161616    0.5202989   0.7120243
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                    NA                0.6419753    0.5374987   0.7464519
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                    NA                0.6000000    0.4759560   0.7240440
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                    NA                0.6097561    0.4603391   0.7591731
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                    NA                0.5925926    0.4071299   0.7780552
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                   NA                0.5000000    0.3266432   0.6733568
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                   NA                0.5434783    0.3994364   0.6875201
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                   NA                0.6451613    0.4766168   0.8137058
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2380952    0.2080071   0.2681834
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2791612    0.2438883   0.3144341
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2100213    0.1816840   0.2383587
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2022472    0.1735596   0.2309348
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1951531    0.1648417   0.2254644
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2421581    0.2107456   0.2735706
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2169374    0.1874521   0.2464227
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1951983    0.1696512   0.2207455
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2099898    0.1810897   0.2388899
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1932169    0.1660041   0.2204296
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2165948    0.1875414   0.2456483
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2234273    0.1962663   0.2505883
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3658537    0.1425330   0.5891743
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.3087558    0.2431847   0.3743268
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3464286    0.2814732   0.4113840
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4039735    0.3625131   0.4454339
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3908629    0.3287991   0.4529267
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3762712    0.3109203   0.4416221
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.3888889    0.3445538   0.4332240
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3846154    0.3190395   0.4501912
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.3840399    0.3312909   0.4367889
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.3387755    0.2691930   0.4083580
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.3795620    0.2865699   0.4725542
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.4062500    0.2752055   0.5372945


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3084337   0.2827691   0.3340984
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.2976339   0.2659904   0.3292773
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3252945   0.3171024   0.3334866
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4256121   0.3835181   0.4677060
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2535059   0.2457125   0.2612993
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1706248   0.1640425   0.1772071
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1311262   0.1254945   0.1367579
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3714710   0.3456477   0.3972943
6-24 months                  ki1114097-CMIN             PERU                           NA                   NA                0.3450439   0.3120195   0.3780683
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458438   0.2363722   0.2553155
6-24 months                  ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5644377   0.6355623
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2173665   0.2079947   0.2267384
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           2                    1                 1.3080808   0.8270663   2.0688491
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           3                    1                 0.9736842   0.5455880   1.7376865
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           4                    1                 1.2561728   0.7647219   2.0634564
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           5                    1                 1.2512077   0.7846170   1.9952676
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           6                    1                 1.2091503   0.7199875   2.0306526
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           7                    1                 1.5661376   1.0402752   2.3578249
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           8                    1                 1.0277778   0.5928132   1.7818887
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           9                    1                 1.2146465   0.7508636   1.9648923
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           10                   1                 0.7149758   0.3727202   1.3715125
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           11                   1                 1.2649573   0.8063968   1.9842797
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           12                   1                 1.3703704   0.8599556   2.1837348
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7800587   0.4843982   1.2561804
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.8060606   0.5324446   1.2202842
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.1426573   0.9415774   1.3866792
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.9985795   0.8137707   1.2253588
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.9238901   0.7393301   1.1545220
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.0770053   0.8079642   1.4356336
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.1670762   0.9343920   1.4577038
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.9059123   0.7131571   1.1507661
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          10                   1                 1.0335320   0.8531019   1.2521229
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.9116162   0.6737889   1.2333892
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.9276094   0.6829505   1.2599145
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9655172   0.6866011   1.3577368
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8620690   0.6036212   1.2311743
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0971787   0.7926215   1.5187589
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0092515   0.7114798   1.4316479
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0933558   0.7848561   1.5231159
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.1083744   0.7995731   1.5364371
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.1343013   0.8160864   1.5765970
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8620690   0.5554599   1.3379236
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.0689655   0.7756011   1.4732925
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.2147335   0.8962963   1.6463055
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.0416667   0.7495918   1.4475471
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9664516   0.6937439   1.3463595
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8481106   0.6073954   1.1842230
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1350942   0.8317714   1.5490299
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.0373700   0.7648227   1.4070405
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0570565   0.7723914   1.4466349
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0841605   0.7929754   1.4822703
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2518803   0.9451098   1.6582246
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8348087   0.6084289   1.1454183
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.1071211   0.8308378   1.4752786
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.1176651   0.8390029   1.4888809
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9658183   0.7162109   1.3024166
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0935961   0.6053648   1.9755895
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.2151067   0.6120015   2.4125503
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.3399101   0.7310123   2.4559903
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1246201   0.5918309   2.1370467
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.2158978   0.7395621   1.9990308
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.2287674   0.7118924   2.1209237
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.2226741   0.6426225   2.3262989
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.3036515   0.7205591   2.3585953
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9910714   0.5605672   1.7521942
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.1892857   0.6947181   2.0359343
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.2388393   0.6939323   2.2116318
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.4814815   0.8071549   2.7191649
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.4492754   0.7892059   2.6614083
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.3271889   0.7307796   2.4103442
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.1139241   0.5997022   2.0690717
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.0000000   0.5083813   1.9670276
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.2432432   0.6425818   2.4053806
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.0285714   0.5148095   2.0550497
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1641791   0.6233190   2.1743489
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9811321   0.4693890   2.0507938
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0370370   0.5028977   2.1384983
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.3478261   0.7146081   2.5421418
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           2                    1                 1.6582677   0.8939789   3.0759693
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           3                    1                 1.2880734   0.6706064   2.4740787
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           4                    1                 2.0535211   1.0895604   3.8703215
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           5                    1                 1.8692308   0.9879941   3.5364823
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           6                    1                 1.3764706   0.6629038   2.8581393
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           7                    1                 1.6941176   0.8483327   3.3831473
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           8                    1                 1.5211268   0.7768450   2.9784919
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           9                    1                 1.2857143   0.5901186   2.8012355
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           10                   1                 2.0057143   0.9893954   4.0660084
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           11                   1                 2.0347826   1.0763020   3.8468201
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           12                   1                 1.4400000   0.6866513   3.0198734
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        2                    1                 1.1412819   0.9179096   1.4190116
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        3                    1                 0.9974446   0.8046790   1.2363883
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        4                    1                 0.8275093   0.6461537   1.0597658
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        5                    1                 0.8115678   0.6247104   1.0543161
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        6                    1                 0.7418000   0.5754340   0.9562648
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        7                    1                 0.7809093   0.6118576   0.9966686
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        8                    1                 0.7710886   0.6189630   0.9606027
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        9                    1                 0.8285860   0.6626634   1.0360535
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        10                   1                 0.8923148   0.7340679   1.0846759
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        11                   1                 0.8911072   0.7580404   1.0475325
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        12                   1                 1.0123946   0.8235179   1.2445908
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9717914   0.8550231   1.1045064
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0581610   0.9392567   1.1921179
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0281654   0.9082726   1.1638842
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1176106   0.9904028   1.2611570
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1070933   0.9847334   1.2446573
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0487285   0.9317230   1.1804274
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0930954   0.9747735   1.2257797
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9385827   0.8335316   1.0568735
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9569484   0.8437833   1.0852906
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9320524   0.8231096   1.0554143
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9816319   0.8712679   1.1059757
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9055728   0.5755937   1.4247238
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         3                    1                 1.0924370   0.7025249   1.6987563
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         4                    1                 1.0906461   0.6994588   1.7006132
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         5                    1                 1.0196078   0.6559736   1.5848201
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         6                    1                 1.1840607   0.7693431   1.8223336
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         7                    1                 0.8602941   0.5029800   1.4714421
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9831933   0.5629262   1.7172215
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         9                    1                 0.8921569   0.4515477   1.7627018
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         10                   1                 0.5462185   0.2346107   1.2717007
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         11                   1                 0.6452206   0.3336166   1.2478682
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         12                   1                 0.9659443   0.5106788   1.8270748
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0587964   0.9333862   1.2010568
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9122117   0.8033831   1.0357826
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9116384   0.8007909   1.0378297
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.0279708   0.8908897   1.1861447
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.1640090   1.0131017   1.3373947
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.0768285   0.9401623   1.2333611
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0225388   0.9057473   1.1543900
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0661176   0.9460303   1.2014485
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0717517   0.9541862   1.2038024
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1483427   1.0228546   1.2892262
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0948866   0.9759121   1.2283654
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.0788382   0.5668325   2.0533258
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.1025887   0.5824299   2.0872928
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.2804878   0.6810121   2.4076651
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.2683884   0.6747465   2.3843161
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.2039533   0.6365483   2.2771304
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.2148481   0.6398307   2.3066353
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.2364652   0.6516482   2.3461222
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0928571   0.5777506   2.0672186
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.0420168   0.5459505   1.9888231
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.0766046   0.5566798   2.0821258
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.9685230   0.4691601   1.9993958
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          2                    1                 1.5950000   0.7624413   3.3366831
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          3                    1                 1.3050000   0.5928235   2.8727352
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          4                    1                 1.4500000   0.6525064   3.2221904
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          5                    1                 1.8125000   0.8684717   3.7826866
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          6                    1                 0.9354839   0.4037757   2.1673670
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          7                    1                 1.2862903   0.6027369   2.7450499
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          8                    1                 0.7957317   0.3482691   1.8181024
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          9                    1                 1.4500000   0.6771292   3.1050205
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          10                   1                 0.9886364   0.4387544   2.2276744
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          11                   1                 0.9321429   0.4119921   2.1089977
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          12                   1                 1.7722222   0.9141885   3.4355843
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.5253456   0.1972894   1.3988993
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.7238095   0.3006376   1.7426304
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.4197802   1.0185089   1.9791440
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          5                    1                 1.1026786   0.4644653   2.6178493
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          6                    1                 1.2134454   0.7608632   1.9352358
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          7                    1                 1.4689076   1.0345903   2.0855497
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.3204633   0.7642096   2.2816037
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.7212787   0.5459467   0.9529190
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9789227   0.5713465   1.6772480
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8544974   0.5894915   1.2386365
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          12                   1                 1.2566138   0.8752637   1.8041170
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.6666667   0.3316482   1.3401080
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.3703704   0.1558043   0.8804264
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6060606   0.2842525   1.2921942
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.4878049   0.2079217   1.1444384
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0569106   0.5697587   1.9605844
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.2698413   0.7158597   2.2525319
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7894737   0.3876324   1.6078859
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5952381   0.2417510   1.4655921
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8000000   0.4173608   1.5334454
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1363636   0.6295880   2.0510592
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4166667   0.1761866   0.9853823
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8152381   0.4574470   1.4528747
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6551022   0.3614747   1.1872448
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8207095   0.4605856   1.4624079
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.9605777   0.5738531   1.6079194
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1464286   0.6916123   1.9003398
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0288462   0.6074373   1.7426070
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.5444115   0.9898045   2.4097758
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.1375415   0.7104963   1.8212631
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0454852   0.6447216   1.6953664
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.4557823   0.9338969   2.2693106
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8063565   0.4801518   1.3541775
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        2                    1                 1.0403909   0.7794345   1.3887162
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        3                    1                 0.8875567   0.6820595   1.1549680
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        4                    1                 0.8506053   0.6399151   1.1306648
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        5                    1                 0.8255291   0.5737846   1.1877251
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        6                    1                 0.7041590   0.5096162   0.9729673
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        7                    1                 0.8269774   0.5956499   1.1481436
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        8                    1                 0.7976081   0.5984638   1.0630196
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        9                    1                 0.9463187   0.7097510   1.2617370
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        10                   1                 0.9567721   0.7479527   1.2238912
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        11                   1                 0.9607388   0.7730075   1.1940623
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        12                   1                 1.0258360   0.7783902   1.3519433
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9395107   0.7601043   1.1612621
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0704833   0.8802534   1.3018233
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.1660134   0.9587347   1.4181058
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.3904758   1.1534255   1.6762445
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.5418261   1.2926815   1.8389896
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3574557   1.1330258   1.6263408
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.4458132   1.2133552   1.7228060
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9929436   0.8205661   1.2015326
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0053929   0.8211091   1.2310361
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9570149   0.7826960   1.1701573
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9176607   0.7518238   1.1200778
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8952830   0.7339387   1.0920962
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8740037   0.7227334   1.0569353
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8101790   0.6633539   0.9895021
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8043120   0.6378997   1.0141371
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.6994725   0.5274764   0.9275520
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7423015   0.5850320   0.9418484
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9280209   0.7577972   1.1364819
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.1877620   0.9917656   1.4224921
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.3127783   1.1059291   1.5583158
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.3961209   1.1725337   1.6623432
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.3045908   1.1003351   1.5467627
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7664516   0.4212282   1.3946078
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          3                    1                 0.7109941   0.4341658   1.1643307
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          4                    1                 1.0006863   0.7003590   1.4297998
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          5                    1                 0.8361290   0.5503445   1.2703167
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          6                    1                 0.7585848   0.5010131   1.1485745
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          7                    1                 0.9010011   0.5764543   1.4082694
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          8                    1                 1.0719603   0.7731171   1.4863194
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          9                    1                 0.8337469   0.5515249   1.2603854
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          10                   1                 0.9981877   0.7646611   1.3030332
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          11                   1                 0.8497246   0.5204925   1.3872092
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          12                   1                 0.7465438   0.4896487   1.1382194
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.1198157   0.6988813   1.7942777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     3                    1                 1.0657895   0.6706536   1.6937316
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.2442396   0.7948204   1.9477763
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.1198157   0.6988813   1.7942777
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.1396104   0.6886419   1.8859031
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9223602   0.5260949   1.6171008
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.2342857   0.7728455   1.9712365
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9135338   0.5022805   1.6615101
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.1103896   0.6957592   1.7721146
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1428571   0.7070360   1.8473211
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     12                   1                 1.1672932   0.7475317   1.8227634
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0582983   0.6753443   1.6584065
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9895121   0.6357390   1.5401511
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3313378   0.8807354   2.0124778
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1577965   0.7593997   1.7652003
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1065106   0.7038315   1.7395722
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1819172   0.7643811   1.8275287
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0315586   0.6715902   1.5844680
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.5807419   0.3501551   0.9631763
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.1112132   0.7422847   1.6635057
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9117647   0.5842448   1.4228879
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0693537   0.7117800   1.6065600
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.2191018   0.8463538   1.7560140
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9806246   0.6772252   1.4199480
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.0989604   0.7076688   1.7066092
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 1.1454399   0.8070908   1.6256318
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 1.0432160   0.7513606   1.4484387
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.0211857   0.6612213   1.5771122
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0657388   0.7267638   1.5628175
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.1460934   0.8594427   1.5283510
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.9166994   0.2914643   2.8831585
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 1.0948372   0.8056243   1.4878752
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 1.0435110   0.7333739   1.4848023
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.2220404   0.7479733   1.9965721
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.2264658   0.7513121   2.0021220
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.3446396   0.8420106   2.1473075
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.0256410   0.6249805   1.6831559
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.8228980   0.4665366   1.4514641
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.3675214   0.8269649   2.2614198
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.0905550   0.6375030   1.8655759
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.0989011   0.6671610   1.8100334
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9716599   0.5396989   1.7493515
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.8951049   0.4872024   1.6445172
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.0587262   0.6246423   1.7944690
6-24 months                  ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           2                    1                 2.5277778   1.3275157   4.8132465
6-24 months                  ki1114097-CMIN             PERU                           3                    1                 1.8657025   0.9561461   3.6404955
6-24 months                  ki1114097-CMIN             PERU                           4                    1                 1.6352459   0.7903744   3.3832435
6-24 months                  ki1114097-CMIN             PERU                           5                    1                 1.7027027   0.8410412   3.4471515
6-24 months                  ki1114097-CMIN             PERU                           6                    1                 0.9333333   0.3849183   2.2631066
6-24 months                  ki1114097-CMIN             PERU                           7                    1                 1.6071429   0.7568253   3.4128197
6-24 months                  ki1114097-CMIN             PERU                           8                    1                 1.6213235   0.7906104   3.3248865
6-24 months                  ki1114097-CMIN             PERU                           9                    1                 1.5872093   0.7336000   3.4340696
6-24 months                  ki1114097-CMIN             PERU                           10                   1                 1.9913793   0.9141267   4.3381202
6-24 months                  ki1114097-CMIN             PERU                           11                   1                 1.9475806   0.9641117   3.9342645
6-24 months                  ki1114097-CMIN             PERU                           12                   1                 1.5365854   0.7010034   3.3681644
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1119695-PROBIT           BELARUS                        2                    1                 1.2559140   0.9015005   1.7496606
6-24 months                  ki1119695-PROBIT           BELARUS                        3                    1                 1.1124404   0.8021141   1.5428273
6-24 months                  ki1119695-PROBIT           BELARUS                        4                    1                 0.7687060   0.5142709   1.1490225
6-24 months                  ki1119695-PROBIT           BELARUS                        5                    1                 0.7689269   0.5100055   1.1592985
6-24 months                  ki1119695-PROBIT           BELARUS                        6                    1                 0.7606401   0.5222473   1.1078532
6-24 months                  ki1119695-PROBIT           BELARUS                        7                    1                 0.6961514   0.4400854   1.1012107
6-24 months                  ki1119695-PROBIT           BELARUS                        8                    1                 0.7138834   0.4870542   1.0463506
6-24 months                  ki1119695-PROBIT           BELARUS                        9                    1                 0.6686371   0.4621389   0.9674053
6-24 months                  ki1119695-PROBIT           BELARUS                        10                   1                 0.8057855   0.5655226   1.1481244
6-24 months                  ki1119695-PROBIT           BELARUS                        11                   1                 0.7901722   0.6009677   1.0389446
6-24 months                  ki1119695-PROBIT           BELARUS                        12                   1                 0.9815505   0.6563212   1.4679420
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9795452   0.8179946   1.1730013
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0649410   0.8983179   1.2624699
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9155226   0.7608644   1.1016178
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9749877   0.8086076   1.1756022
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8227007   0.6777765   0.9986132
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8616505   0.7150832   1.0382590
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9068741   0.7563134   1.0874074
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9003799   0.7586354   1.0686081
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9618813   0.8029864   1.1522182
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9183846   0.7690430   1.0967271
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9891933   0.8372003   1.1687805
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1148112-LCNI-5           MALAWI                         2                    1                 0.9246215   0.6909855   1.2372545
6-24 months                  ki1148112-LCNI-5           MALAWI                         3                    1                 1.0258065   0.7654672   1.3746883
6-24 months                  ki1148112-LCNI-5           MALAWI                         4                    1                 1.1397849   0.8689386   1.4950536
6-24 months                  ki1148112-LCNI-5           MALAWI                         5                    1                 1.0534376   0.8000331   1.3871061
6-24 months                  ki1148112-LCNI-5           MALAWI                         6                    1                 1.0975707   0.8301295   1.4511728
6-24 months                  ki1148112-LCNI-5           MALAWI                         7                    1                 1.0258065   0.7546343   1.3944222
6-24 months                  ki1148112-LCNI-5           MALAWI                         8                    1                 1.0424862   0.7464776   1.4558742
6-24 months                  ki1148112-LCNI-5           MALAWI                         9                    1                 1.0131422   0.6882931   1.4913081
6-24 months                  ki1148112-LCNI-5           MALAWI                         10                   1                 0.8548387   0.5648293   1.2937524
6-24 months                  ki1148112-LCNI-5           MALAWI                         11                   1                 0.9291725   0.6554771   1.3171498
6-24 months                  ki1148112-LCNI-5           MALAWI                         12                   1                 1.1030177   0.7803530   1.5590996
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1724771   0.9736966   1.4118387
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8820896   0.7332500   1.0611415
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8494382   0.7016863   1.0283018
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8196429   0.6745499   0.9959447
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.0170640   0.8516507   1.2146050
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.9111369   0.7565762   1.0972727
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8198330   0.6852761   0.9808106
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8819572   0.7342937   1.0593152
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8115108   0.6750103   0.9756144
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9096983   0.7547094   1.0965160
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9383948   0.7907278   1.1136383
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 0.8439324   0.4457138   1.5979357
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 0.9469048   0.5015189   1.7878263
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.1041943   0.5943780   2.0512956
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.0683587   0.5720359   1.9953123
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.0284746   0.5470069   1.9337233
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.0629630   0.5648313   2.0004030
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.0512821   0.5566257   1.9855244
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.0497091   0.5621909   1.9599910
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 0.9259864   0.4871095   1.7602834
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 1.0374696   0.5389323   1.9971768
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.1104167   0.5582083   2.2088980


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0811827   -0.0683152   0.2306806
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0128923   -0.1175040   0.0917193
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0218868   -0.1083173   0.1520909
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0091618   -0.0487021   0.0670257
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0266984   -0.0408889   0.0942857
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0584337   -0.0812959   0.1981633
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                 0.1124487    0.0109433   0.2139541
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0204101   -0.0487989   0.0079787
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0056636   -0.0195357   0.0308629
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0102854   -0.1601958   0.1396251
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0112850   -0.0087667   0.0313367
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0635358   -0.1530779   0.2801495
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                 0.0685824   -0.0885040   0.2256687
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0086269   -0.0375267   0.0547806
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0716981   -0.1916734   0.0482772
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0060716   -0.0369911   0.0491344
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0094902   -0.0297109   0.0107305
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0216349    0.0022517   0.0410181
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0056672   -0.0104422   0.0217766
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0709990   -0.2508039   0.1088058
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0553945   -0.1256536   0.2364426
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0066127   -0.0553912   0.0686166
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0192315   -0.0821913   0.1206543
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0464710   -0.0966981   0.1896401
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                 0.1545677    0.0374215   0.2717139
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                -0.0141470   -0.0382455   0.0099515
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0149157   -0.0439091   0.0140778
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0150943   -0.1126853   0.1428739
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0207287   -0.0495800   0.0081225
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0120581   -0.2095812   0.2336974


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                    NA                 0.1430106   -0.1660202   0.3701388
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0227757   -0.2265857   0.1471691
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0363636   -0.2062033   0.2301505
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0306536   -0.1836331   0.2061456
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1499491   -0.3416600   0.4614235
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1894531   -0.4173353   0.5364638
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           1                    NA                 0.3778088   -0.0744633   0.6397067
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1277403   -0.3216421   0.0377136
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0174107   -0.0631909   0.0919019
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0241661   -0.4445459   0.2738782
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0445158   -0.0379460   0.1204262
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1536403   -0.5725147   0.5444719
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                 0.1991101   -0.4151438   0.5467425
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0447368   -0.2236159   0.2542368
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3140496   -0.9594055   0.1187499
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0443467   -0.3280842   0.3123379
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                -0.1039698   -0.3525936   0.0989537
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1267981    0.0055529   0.2332608
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0432194   -0.0879112   0.1585442
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1411301   -0.5726776   0.1719994
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                    NA                 0.0965208   -0.2812758   0.3629204
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0292639   -0.2878297   0.2682818
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0530776   -0.2723609   0.2952770
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.1251000   -0.3591758   0.4368278
6-24 months                  ki1114097-CMIN             PERU                           1                    NA                 0.4479654   -0.0189963   0.7009388
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                -0.1840833   -0.5465528   0.0934333
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0606713   -0.1854041   0.0509366
6-24 months                  ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0251572   -0.2128745   0.2164742
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0953630   -0.2366705   0.0297981
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0319072   -0.7744104   0.4718225
