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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                   0       10     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       1                   1       94     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       2                   0       18     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       2                   1       96     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       3                   0       10     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       3                   1       50     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       4                   0        4     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       4                   1       28     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       5                   0        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       5                   1        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       6                   0        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       6                   1        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       7                   0        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       7                   1        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       8                   0        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       8                   1        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       9                   0        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       9                   1        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       10                  0        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       10                  1        0     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       11                  0        8     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       11                  1       66     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       12                  0       16     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       12                  1       98     498
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
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                   0        4    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                   1        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          2                   0        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          2                   1        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          3                   0        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          3                   1        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          4                   0        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          4                   1        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          5                   0        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          5                   1        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          6                   0        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          6                   1        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          7                   0       70    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          7                   1      160    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          8                   0      156    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          8                   1      264    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          9                   0      144    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          9                   1      240    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          10                  0       16    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          10                  1        6    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          11                  0        0    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          11                  1        8    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          12                  0        2    1070
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          12                  1        0    1070
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2479   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      794   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2186   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      753   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                   0     2732   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     3                   1      775   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                   0     2089   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     4                   1      594   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1491   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     5                   1      496   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1412   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     6                   1      554   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1636   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     7                   1      578   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                   0     2107   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     8                   1      694   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                   0     2789   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     9                   1      972   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                  0     2888   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     10                  1     1014   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                  0     2779   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     11                  1     1072   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                  0     2946   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     12                  1     1064   36894
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0       49    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       26    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                   0      298    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     2                   1      180    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                   0      361    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     3                   1      228    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                   0      722    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     4                   1      587    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                   0      486    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     5                   1      387    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                   0      368    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     6                   1      268    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                   0      730    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     7                   1      540    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                   0      464    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     8                   1      353    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                   0      408    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     9                   1      264    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                  0      285    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     10                  1      173    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                  0      157    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     11                  1      100    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                  0       72    7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     12                  1       39    7545
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                   0       36     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       1                   1       68     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       2                   0       44     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       2                   1       70     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       3                   0       30     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       3                   1       30     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       4                   0       14     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       4                   1       18     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       5                   0        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       5                   1        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       6                   0        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       6                   1        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       7                   0        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       7                   1        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       8                   0        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       8                   1        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       9                   0        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       9                   1        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       10                  0        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       10                  1        0     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       11                  0       22     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       11                  1       52     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       12                  0       52     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       12                  1       62     498
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
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                   0        4    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                   1        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          2                   0        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          2                   1        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          3                   0        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          3                   1        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          4                   0        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          4                   1        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          5                   0        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          5                   1        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          6                   0        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          6                   1        0    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          7                   0      190    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          7                   1       40    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          8                   0      346    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          8                   1       74    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          9                   0      308    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          9                   1       76    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          10                  0       18    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          10                  1        4    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          11                  0        2    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          11                  1        6    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          12                  0        2    1070
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          12                  1        0    1070
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2858   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      410   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     2608   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      330   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                   0     3118   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     3                   1      384   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                   0     2404   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     4                   1      272   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1782   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     5                   1      200   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1788   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     6                   1      172   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                   0     2006   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     7                   1      206   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                   0     2474   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     8                   1      326   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                   0     3198   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     9                   1      560   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                  0     3256   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     10                  1      642   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                  0     3174   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     11                  1      674   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                  0     3352   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     12                  1      656   36850
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0       70    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1        0    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     2                   0      424    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     2                   1       50    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     3                   0      540    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     3                   1       42    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     4                   0     1198    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     4                   1      108    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     5                   0      790    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     5                   1       82    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     6                   0      590    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     6                   1       46    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     7                   0     1188    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     7                   1       82    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     8                   0      744    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     8                   1       72    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     9                   0      468    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     9                   1       76    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     10                  0      356    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     10                  1       50    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     11                  0      220    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     11                  1       18    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     12                  0      104    7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     12                  1        0    7318
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
6-24 months                  ki1000109-EE               PAKISTAN                       1                   0        8     194
6-24 months                  ki1000109-EE               PAKISTAN                       1                   1       26     194
6-24 months                  ki1000109-EE               PAKISTAN                       2                   0       18     194
6-24 months                  ki1000109-EE               PAKISTAN                       2                   1       26     194
6-24 months                  ki1000109-EE               PAKISTAN                       3                   0        8     194
6-24 months                  ki1000109-EE               PAKISTAN                       3                   1       20     194
6-24 months                  ki1000109-EE               PAKISTAN                       4                   0        4     194
6-24 months                  ki1000109-EE               PAKISTAN                       4                   1       10     194
6-24 months                  ki1000109-EE               PAKISTAN                       5                   0        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       5                   1        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       6                   0        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       6                   1        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       7                   0        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       7                   1        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       8                   0        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       8                   1        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       9                   0        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       9                   1        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       10                  0        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       10                  1        0     194
6-24 months                  ki1000109-EE               PAKISTAN                       11                  0        8     194
6-24 months                  ki1000109-EE               PAKISTAN                       11                  1       14     194
6-24 months                  ki1000109-EE               PAKISTAN                       12                  0       16     194
6-24 months                  ki1000109-EE               PAKISTAN                       12                  1       36     194
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
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                   0        4     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                   1        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          2                   0        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          2                   1        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          3                   0        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          3                   1        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          4                   0        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          4                   1        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          5                   0        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          5                   1        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          6                   0        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          6                   1        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          7                   0       64     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          7                   1      120     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          8                   0      152     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          8                   1      190     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          9                   0      136     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          9                   1      164     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          10                  0       16     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          10                  1        2     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          11                  0        0     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          11                  1        2     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          12                  0        2     852
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          12                  1        0     852
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1243   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                   1      387   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1100   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     2                   1      425   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                   0     1478   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     3                   1      393   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                   0     1271   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     4                   1      323   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                   0     1257   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     5                   1      303   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                   0     1204   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     6                   1      383   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                   0     1348   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     7                   1      373   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                   0     1541   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     8                   1      372   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                   0     1547   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     9                   1      412   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                  0     1566   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     10                  1      376   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                  0     1451   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     11                  1      400   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                  0     1430   20993
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     12                  1      410   20993
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                   0       49    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                   1       27    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                   0      298    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     2                   1      131    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                   0      361    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     3                   1      189    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                   0      718    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     4                   1      485    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                   0      480    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     5                   1      307    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                   0      368    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     6                   1      222    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                   0      726    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     7                   1      462    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                   0      464    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     8                   1      285    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                   0      408    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     9                   1      227    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                  0      285    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     10                  1      138    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                  0      155    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     11                  1       91    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                  0       70    6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     12                  1       45    6991


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
![](/tmp/d70dfcc6-37af-4510-bee6-21d663fb24fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d70dfcc6-37af-4510-bee6-21d663fb24fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5678782    0.3507830   0.7849733
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4341587    0.2619872   0.6063302
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6015841    0.4363141   0.7668540
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2422217    0.1849707   0.2994727
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1519176    0.0989626   0.2048726
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.2476718    0.1317896   0.3635541
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.1890217    0.0853467   0.2926967
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1350855    0.1057241   0.1644469
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2975896    0.2699784   0.3252008
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4260403    0.2925577   0.5595230
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2210859    0.1993050   0.2428667
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3507604    0.1409280   0.5605929
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2278557    0.1009589   0.3547525
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.0927068    0.0108396   0.1745741
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1101455    0.0262448   0.1940462
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0854148    0.0439296   0.1269001
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0715802    0.0513165   0.0918439
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1367167    0.1167816   0.1566517
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0877313    0.0660914   0.1093711
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4036858    0.2532895   0.5540821
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5737777    0.3791971   0.7683583
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1236785    0.0715069   0.1758500
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3158648   -0.0368501   0.6685796
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.2666249    0.1730419   0.3602078
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.1818569    0.0700751   0.2936387
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0605264    0.0415189   0.0795338
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2141631    0.1810941   0.2472321
6-24 months                  ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5992303    0.4574871   0.7409735
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1935429    0.1662476   0.2208381
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3039847    0.2394935   0.3684760


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             NA                0.5677219   0.5080760   0.6273678
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5662598   0.5088468   0.6236727
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6014692   0.5597553   0.6431831
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2989562   0.2799737   0.3179386
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.1794619   0.1532733   0.2056505
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3083968   0.2827321   0.3340615
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.2979175   0.2662740   0.3295609
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1598746   0.1409182   0.1788309
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3253079   0.3171158   0.3335000
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         observed             NA                0.4243764   0.3822825   0.4664704
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2537157   0.2459136   0.2615178
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4168290   0.3985250   0.4351330
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3450902   0.2959354   0.3942449
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.1926875   0.1690227   0.2163523
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2292140   0.1934456   0.2649823
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1368909   0.1226363   0.1511455
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0910421   0.0779226   0.1041617
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1706204   0.1640381   0.1772026
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1311504   0.1255187   0.1367822
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5031058   0.4588799   0.5473318
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5731512   0.5208946   0.6254078
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2263158   0.2058299   0.2468017
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3625872   0.3133380   0.4118363
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3715220   0.3456986   0.3973453
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.3445174   0.3114930   0.3775418
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0765887   0.0626234   0.0905540
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2457857   0.2363140   0.2552573
6-24 months                  ki1148112-LCNI-5           MALAWI                         observed             NA                0.5959891   0.5604268   0.6315514
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2170853   0.2077270   0.2264437
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3730356   0.3543326   0.3917385


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              observed          1.0002753   0.6928331   1.4441437
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7667129   0.5346807   1.0994387
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.0001910   0.7698961   1.2993728
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8102249   0.6461719   1.0159285
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8465175   0.6286094   1.1399634
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.8030947   0.5073874   1.2711412
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              observed          0.6344767   0.3715425   1.0834849
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8449468   0.7031683   1.0153118
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9147935   0.8368921   0.9999463
0-24 months (no birth st.)   ki1148112-LCNI-5           MALAWI                         optimal              observed          1.0039209   0.7394276   1.3630235
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8713922   0.7957580   0.9542152
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8414973   0.4648313   1.5233864
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.6602788   0.3876815   1.1245520
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.4811254   0.1915650   1.2083717
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.4805358   0.2292352   1.0073266
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6239627   0.3888242   1.0012996
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              observed          0.7862315   0.6160823   1.0033724
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8012916   0.6964817   0.9218738
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.6689362   0.5254196   0.8516537
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8023874   0.5425291   1.1867115
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.0010931   0.7226925   1.3867411
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5464861   0.3631007   0.8224908
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8711416   0.3167167   2.3961086
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.7176558   0.5099577   1.0099462
6-24 months                  ki1114097-CMIN             PERU                           optimal              observed          0.5278598   0.2886426   0.9653321
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              observed          0.7902782   0.6303054   0.9908525
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8713410   0.7506477   1.0114400
6-24 months                  ki1148112-LCNI-5           MALAWI                         optimal              observed          1.0054384   0.7989319   1.2653222
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8915520   0.7809879   1.0177687
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8148947   0.6632888   1.0011528
