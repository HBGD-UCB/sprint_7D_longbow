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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        brthmon    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       14     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        7     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       16     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        9     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0        9     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1       15     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    0       15     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1        7     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    0       15     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1        7     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    0        9     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1        2     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    0       12     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1        8     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    0       22     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1        4     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    0       10     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1       13     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   0       18     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1        6     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   0       14     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1        3     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   0       22     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1        6     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       13     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       22     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    0       11     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    0       23     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1        0     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    0        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    0       17     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    0       19     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    0       30     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   0       17     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1        4     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   0       20     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1        2     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   0       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1        0     233
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        6     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          3                    1       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                    0       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          4                    1        6     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                    0        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          5                    1        4     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                    0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          6                    1       11     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                    0        8     251
0-24 months   ki0047075b-MAL-ED          INDIA                          7                    1       17     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                    0       15     251
0-24 months   ki0047075b-MAL-ED          INDIA                          8                    1        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                    0       13     251
0-24 months   ki0047075b-MAL-ED          INDIA                          9                    1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                   0       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          10                   1       10     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                   0        9     251
0-24 months   ki0047075b-MAL-ED          INDIA                          11                   1       16     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                   0       14     251
0-24 months   ki0047075b-MAL-ED          INDIA                          12                   1        5     251
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       14     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                    0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1       10     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                    0        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1       13     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                    0       11     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1        7     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                    0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                    0       19     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1        5     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                    0       12     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1        4     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                   0       20     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1        1     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                   0       18     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                   0       15     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1        2     240
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       35     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        6     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                    0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           2                    1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                    0       19     302
0-24 months   ki0047075b-MAL-ED          PERU                           3                    1        4     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                    0       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           4                    1        0     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                    0       25     302
0-24 months   ki0047075b-MAL-ED          PERU                           5                    1        3     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                    0       16     302
0-24 months   ki0047075b-MAL-ED          PERU                           6                    1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                    0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           7                    1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                    0       17     302
0-24 months   ki0047075b-MAL-ED          PERU                           8                    1        2     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                    0       22     302
0-24 months   ki0047075b-MAL-ED          PERU                           9                    1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           10                   0       26     302
0-24 months   ki0047075b-MAL-ED          PERU                           10                   1        1     302
0-24 months   ki0047075b-MAL-ED          PERU                           11                   0       27     302
0-24 months   ki0047075b-MAL-ED          PERU                           11                   1        6     302
0-24 months   ki0047075b-MAL-ED          PERU                           12                   0       23     302
0-24 months   ki0047075b-MAL-ED          PERU                           12                   1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       31     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       11     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       25     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        5     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        2     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0       11     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        4     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0       13     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        3     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0       18     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        5     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0       23     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        3     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0       12     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0       22     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        3     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0       23     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        8     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0       23     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        8     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0       35     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        9     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        6     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       24     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        6     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       18     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        9     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0       19     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0       14     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        5     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0       11     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        1     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0       23     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        4     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0       28     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        6     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1       22     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    0       12     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        7     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   0        9     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   0       13     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       30     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1       19     373
0-24 months   ki1000108-IRC              INDIA                          1                    0       16     410
0-24 months   ki1000108-IRC              INDIA                          1                    1       22     410
0-24 months   ki1000108-IRC              INDIA                          2                    0       11     410
0-24 months   ki1000108-IRC              INDIA                          2                    1       17     410
0-24 months   ki1000108-IRC              INDIA                          3                    0       10     410
0-24 months   ki1000108-IRC              INDIA                          3                    1       17     410
0-24 months   ki1000108-IRC              INDIA                          4                    0        6     410
0-24 months   ki1000108-IRC              INDIA                          4                    1       15     410
0-24 months   ki1000108-IRC              INDIA                          5                    0        5     410
0-24 months   ki1000108-IRC              INDIA                          5                    1       17     410
0-24 months   ki1000108-IRC              INDIA                          6                    0       13     410
0-24 months   ki1000108-IRC              INDIA                          6                    1       24     410
0-24 months   ki1000108-IRC              INDIA                          7                    0        9     410
0-24 months   ki1000108-IRC              INDIA                          7                    1       27     410
0-24 months   ki1000108-IRC              INDIA                          8                    0       16     410
0-24 months   ki1000108-IRC              INDIA                          8                    1       28     410
0-24 months   ki1000108-IRC              INDIA                          9                    0        9     410
0-24 months   ki1000108-IRC              INDIA                          9                    1       18     410
0-24 months   ki1000108-IRC              INDIA                          10                   0       12     410
0-24 months   ki1000108-IRC              INDIA                          10                   1       26     410
0-24 months   ki1000108-IRC              INDIA                          11                   0       17     410
0-24 months   ki1000108-IRC              INDIA                          11                   1       23     410
0-24 months   ki1000108-IRC              INDIA                          12                   0       17     410
0-24 months   ki1000108-IRC              INDIA                          12                   1       35     410
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       44     380
0-24 months   ki1000109-EE               PAKISTAN                       1                    1       51     380
0-24 months   ki1000109-EE               PAKISTAN                       2                    0       38     380
0-24 months   ki1000109-EE               PAKISTAN                       2                    1       29     380
0-24 months   ki1000109-EE               PAKISTAN                       3                    0       19     380
0-24 months   ki1000109-EE               PAKISTAN                       3                    1       24     380
0-24 months   ki1000109-EE               PAKISTAN                       4                    0        5     380
0-24 months   ki1000109-EE               PAKISTAN                       4                    1       11     380
0-24 months   ki1000109-EE               PAKISTAN                       5                    0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       5                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       6                    0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       6                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       7                    0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       7                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       8                    0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       8                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       9                    0        0     380
0-24 months   ki1000109-EE               PAKISTAN                       9                    1        0     380
0-24 months   ki1000109-EE               PAKISTAN                       10                   0        3     380
0-24 months   ki1000109-EE               PAKISTAN                       10                   1        1     380
0-24 months   ki1000109-EE               PAKISTAN                       11                   0       36     380
0-24 months   ki1000109-EE               PAKISTAN                       11                   1       34     380
0-24 months   ki1000109-EE               PAKISTAN                       12                   0       49     380
0-24 months   ki1000109-EE               PAKISTAN                       12                   1       36     380
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0        6     278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        5     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                    0        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       2                    1        8     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                    0        4     278
0-24 months   ki1000109-ResPak           PAKISTAN                       3                    1       17     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                    0        9     278
0-24 months   ki1000109-ResPak           PAKISTAN                       4                    1       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                    0       23     278
0-24 months   ki1000109-ResPak           PAKISTAN                       5                    1       30     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                    0       28     278
0-24 months   ki1000109-ResPak           PAKISTAN                       6                    1       21     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                    0       16     278
0-24 months   ki1000109-ResPak           PAKISTAN                       7                    1       18     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                    0       21     278
0-24 months   ki1000109-ResPak           PAKISTAN                       8                    1       16     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                    0        7     278
0-24 months   ki1000109-ResPak           PAKISTAN                       9                    1       13     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                   0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       10                   1        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                   0        3     278
0-24 months   ki1000109-ResPak           PAKISTAN                       11                   1        0     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                   0        1     278
0-24 months   ki1000109-ResPak           PAKISTAN                       12                   1        4     278
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       32     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       23     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0       30     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       11     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    0       25     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1       11     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    0       15     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1       11     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    0       24     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1       19     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    0       27     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1       25     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    0        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    0        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    0        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1        0     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   0       50     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1       31     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   0       32     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1       23     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   0       51     463
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1       23     463
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0        6     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    0        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    1        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    0        1     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    1        0     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    0        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    1        1     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    0        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    1        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    0        3     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    1        7     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    0        9     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    1        8     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    0        9     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    1        9     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   0        7     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   1        6     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   0        2     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   1        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   0        6     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   1        4     106
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       35     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       38     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    0       28     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1       29     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    0       27     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1       32     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    0       30     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1       22     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    0       27     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1       22     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    0       23     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1       27     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    0       18     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1       23     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    0       19     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1       20     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    0       28     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1       19     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   0       30     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1       19     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   0       28     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1       25     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   0       33     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1       22     624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      121    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       50    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      131    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       47    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0      130    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       34    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0      160    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       30    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0      151    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       34    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0      129    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       37    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0      164    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       54    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0      171    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       61    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0      169    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       47    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0      183    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       67    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0      167    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       54    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0      154    2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       51    2396
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      180    2919
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1      116    2919
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      154    2919
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1      104    2919
0-24 months   ki1101329-Keneba           GAMBIA                         3                    0      204    2919
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1      102    2919
0-24 months   ki1101329-Keneba           GAMBIA                         4                    0      133    2919
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1       63    2919
0-24 months   ki1101329-Keneba           GAMBIA                         5                    0      134    2919
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1       69    2919
0-24 months   ki1101329-Keneba           GAMBIA                         6                    0      103    2919
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1       61    2919
0-24 months   ki1101329-Keneba           GAMBIA                         7                    0       88    2919
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1       53    2919
0-24 months   ki1101329-Keneba           GAMBIA                         8                    0      139    2919
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1       97    2919
0-24 months   ki1101329-Keneba           GAMBIA                         9                    0      152    2919
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1      101    2919
0-24 months   ki1101329-Keneba           GAMBIA                         10                   0      226    2919
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1      126    2919
0-24 months   ki1101329-Keneba           GAMBIA                         11                   0      166    2919
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1       89    2919
0-24 months   ki1101329-Keneba           GAMBIA                         12                   0      148    2919
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1      111    2919
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       24     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    0       25     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1        5     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    0       29     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    0       33     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1        3     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    0       21     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    0       15     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1        0     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    0       12     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1        4     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   0       31     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1        1     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   0       22     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1        2     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   0       28     315
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1        5     315
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0       51     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       21     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    0       36     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1       12     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    0       36     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1       13     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    0       23     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1       15     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    0       50     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1        8     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    0       36     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1       10     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    0       42     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1       14     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    0       65     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1       17     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    0       70     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1       22     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   0       78     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1       13     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   0       55     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1       19     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   0       71     797
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1       20     797
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    0       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    1       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    1      132     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    0       96     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    1      141     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   1        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   1        0     602
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       18     272
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1       10     272
0-24 months   ki1114097-CMIN             BANGLADESH                     2                    0       15     272
0-24 months   ki1114097-CMIN             BANGLADESH                     2                    1       12     272
0-24 months   ki1114097-CMIN             BANGLADESH                     3                    0        9     272
0-24 months   ki1114097-CMIN             BANGLADESH                     3                    1       11     272
0-24 months   ki1114097-CMIN             BANGLADESH                     4                    0       11     272
0-24 months   ki1114097-CMIN             BANGLADESH                     4                    1       11     272
0-24 months   ki1114097-CMIN             BANGLADESH                     5                    0       15     272
0-24 months   ki1114097-CMIN             BANGLADESH                     5                    1        5     272
0-24 months   ki1114097-CMIN             BANGLADESH                     6                    0        5     272
0-24 months   ki1114097-CMIN             BANGLADESH                     6                    1        5     272
0-24 months   ki1114097-CMIN             BANGLADESH                     7                    0       12     272
0-24 months   ki1114097-CMIN             BANGLADESH                     7                    1        5     272
0-24 months   ki1114097-CMIN             BANGLADESH                     8                    0       13     272
0-24 months   ki1114097-CMIN             BANGLADESH                     8                    1        9     272
0-24 months   ki1114097-CMIN             BANGLADESH                     9                    0       15     272
0-24 months   ki1114097-CMIN             BANGLADESH                     9                    1        7     272
0-24 months   ki1114097-CMIN             BANGLADESH                     10                   0       11     272
0-24 months   ki1114097-CMIN             BANGLADESH                     10                   1       16     272
0-24 months   ki1114097-CMIN             BANGLADESH                     11                   0       11     272
0-24 months   ki1114097-CMIN             BANGLADESH                     11                   1       18     272
0-24 months   ki1114097-CMIN             BANGLADESH                     12                   0       13     272
0-24 months   ki1114097-CMIN             BANGLADESH                     12                   1       15     272
0-24 months   ki1114097-CMIN             BRAZIL                         1                    0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                    1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                    0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                    1        1     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                    0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                    0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                    1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                    0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                    0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                    0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                    0       12     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                    1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                    0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                    1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                   0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                   1        3     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                   0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                   1        2     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                   0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                   1        1     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      116    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       35    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    0      100    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1       15    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    0       92    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1       27    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    0       85    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1       17    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    0       94    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1       18    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    0       71    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1       14    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    0       83    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1       17    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    0      106    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1       17    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    0      131    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1       32    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   0      120    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1       36    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   0      110    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1       27    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   0      115    1507
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1       29    1507
0-24 months   ki1114097-CMIN             PERU                           1                    0       50     929
0-24 months   ki1114097-CMIN             PERU                           1                    1        0     929
0-24 months   ki1114097-CMIN             PERU                           2                    0       74     929
0-24 months   ki1114097-CMIN             PERU                           2                    1        7     929
0-24 months   ki1114097-CMIN             PERU                           3                    0       91     929
0-24 months   ki1114097-CMIN             PERU                           3                    1        7     929
0-24 months   ki1114097-CMIN             PERU                           4                    0       84     929
0-24 months   ki1114097-CMIN             PERU                           4                    1        8     929
0-24 months   ki1114097-CMIN             PERU                           5                    0       79     929
0-24 months   ki1114097-CMIN             PERU                           5                    1       14     929
0-24 months   ki1114097-CMIN             PERU                           6                    0       71     929
0-24 months   ki1114097-CMIN             PERU                           6                    1       12     929
0-24 months   ki1114097-CMIN             PERU                           7                    0       74     929
0-24 months   ki1114097-CMIN             PERU                           7                    1        1     929
0-24 months   ki1114097-CMIN             PERU                           8                    0       82     929
0-24 months   ki1114097-CMIN             PERU                           8                    1        5     929
0-24 months   ki1114097-CMIN             PERU                           9                    0       70     929
0-24 months   ki1114097-CMIN             PERU                           9                    1        2     929
0-24 months   ki1114097-CMIN             PERU                           10                   0       60     929
0-24 months   ki1114097-CMIN             PERU                           10                   1        6     929
0-24 months   ki1114097-CMIN             PERU                           11                   0       53     929
0-24 months   ki1114097-CMIN             PERU                           11                   1        7     929
0-24 months   ki1114097-CMIN             PERU                           12                   0       68     929
0-24 months   ki1114097-CMIN             PERU                           12                   1        4     929
0-24 months   ki1114097-CONTENT          PERU                           1                    0        9     215
0-24 months   ki1114097-CONTENT          PERU                           1                    1        1     215
0-24 months   ki1114097-CONTENT          PERU                           2                    0       18     215
0-24 months   ki1114097-CONTENT          PERU                           2                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                    0       28     215
0-24 months   ki1114097-CONTENT          PERU                           3                    1        2     215
0-24 months   ki1114097-CONTENT          PERU                           4                    0       19     215
0-24 months   ki1114097-CONTENT          PERU                           4                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                    0       12     215
0-24 months   ki1114097-CONTENT          PERU                           5                    1        2     215
0-24 months   ki1114097-CONTENT          PERU                           6                    0       13     215
0-24 months   ki1114097-CONTENT          PERU                           6                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                    0       28     215
0-24 months   ki1114097-CONTENT          PERU                           7                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                    0       22     215
0-24 months   ki1114097-CONTENT          PERU                           8                    1        1     215
0-24 months   ki1114097-CONTENT          PERU                           9                    0       26     215
0-24 months   ki1114097-CONTENT          PERU                           9                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10                   0       13     215
0-24 months   ki1114097-CONTENT          PERU                           10                   1        1     215
0-24 months   ki1114097-CONTENT          PERU                           11                   0        9     215
0-24 months   ki1114097-CONTENT          PERU                           11                   1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12                   0       10     215
0-24 months   ki1114097-CONTENT          PERU                           12                   1        1     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      348    8127
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1      154    8127
0-24 months   ki1119695-PROBIT           BELARUS                        2                    0      367    8127
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1      134    8127
0-24 months   ki1119695-PROBIT           BELARUS                        3                    0      427    8127
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1      153    8127
0-24 months   ki1119695-PROBIT           BELARUS                        4                    0      401    8127
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1      147    8127
0-24 months   ki1119695-PROBIT           BELARUS                        5                    0      447    8127
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1      163    8127
0-24 months   ki1119695-PROBIT           BELARUS                        6                    0      451    8127
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1      173    8127
0-24 months   ki1119695-PROBIT           BELARUS                        7                    0      549    8127
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1      218    8127
0-24 months   ki1119695-PROBIT           BELARUS                        8                    0      582    8127
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1      220    8127
0-24 months   ki1119695-PROBIT           BELARUS                        9                    0      541    8127
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1      196    8127
0-24 months   ki1119695-PROBIT           BELARUS                        10                   0      595    8127
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1      225    8127
0-24 months   ki1119695-PROBIT           BELARUS                        11                   0      589    8127
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1      172    8127
0-24 months   ki1119695-PROBIT           BELARUS                        12                   0      672    8127
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1      203    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1040   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      305   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0      838   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      226   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    0      918   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      273   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    0      789   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1      206   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    0      799   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1      229   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    0      854   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1      289   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    0      852   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1      312   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    0      937   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1      318   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    0     1026   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1      269   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   0      794   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1      253   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   0      895   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1      296   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   0      925   13939
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1      296   13939
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       63     840
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        5     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    0       43     840
0-24 months   ki1148112-LCNI-5           MALAWI                         2                    1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    0       23     840
0-24 months   ki1148112-LCNI-5           MALAWI                         3                    1        3     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    0       39     840
0-24 months   ki1148112-LCNI-5           MALAWI                         4                    1        0     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    0       38     840
0-24 months   ki1148112-LCNI-5           MALAWI                         5                    1        6     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    0       32     840
0-24 months   ki1148112-LCNI-5           MALAWI                         6                    1        2     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    0       57     840
0-24 months   ki1148112-LCNI-5           MALAWI                         7                    1        5     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    0       84     840
0-24 months   ki1148112-LCNI-5           MALAWI                         8                    1        9     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    0       83     840
0-24 months   ki1148112-LCNI-5           MALAWI                         9                    1       10     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   0      126     840
0-24 months   ki1148112-LCNI-5           MALAWI                         10                   1        9     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   0      100     840
0-24 months   ki1148112-LCNI-5           MALAWI                         11                   1        5     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   0       85     840
0-24 months   ki1148112-LCNI-5           MALAWI                         12                   1       10     840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      904   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      310   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0      736   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      259   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      905   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1      274   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    0      603   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1      256   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    0      458   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1      216   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    0      492   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1      201   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    0      548   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1      213   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    0      764   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1      318   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    0     1038   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1      380   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   0     1081   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1      374   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   0     1132   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1      370   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   0     1145   13329
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1      352   13329
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      163    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       71    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      192    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1       79    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    0      136    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1       68    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    0      125    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1       66    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    0       78    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1       45    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    0      100    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1       48    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    0       96    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1       39    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    0       67    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1       24    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   0       21    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1       17    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   0        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   0        0    1435
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1        0    1435
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       18     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    0       18     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1        7     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    0       17     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1        7     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    0       16     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1        6     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    0       16     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1        6     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    0       10     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1        1     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    0       14     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1        6     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1        3     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    0       15     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1        8     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   0       19     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1        5     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   0       15     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1        2     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   0       23     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1        5     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       13     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                    1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                    0       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                    0       23     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                    1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                    0        8     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                    0       17     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                    0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                    0       31     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                    1        1     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                   0       18     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                   1        3     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                   0       20     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                   1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                   0       15     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                   1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       12     251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    0       15     251
0-6 months    ki0047075b-MAL-ED          INDIA                          2                    1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    0       12     251
0-6 months    ki0047075b-MAL-ED          INDIA                          3                    1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                    0       12     251
0-6 months    ki0047075b-MAL-ED          INDIA                          4                    1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                    0        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          5                    1        3     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                    0       12     251
0-6 months    ki0047075b-MAL-ED          INDIA                          6                    1        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                    0       14     251
0-6 months    ki0047075b-MAL-ED          INDIA                          7                    1       11     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                    0       18     251
0-6 months    ki0047075b-MAL-ED          INDIA                          8                    1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                    0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          9                    1        6     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                   0       21     251
0-6 months    ki0047075b-MAL-ED          INDIA                          10                   1        5     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                   0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          11                   1        8     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                   0       17     251
0-6 months    ki0047075b-MAL-ED          INDIA                          12                   1        2     251
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        5     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    0       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                    1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                    0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                    1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                    0       14     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                    1        8     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                    0       15     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                    0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                    1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                    0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                    1        4     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                    0       13     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                    1        3     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                   0       20     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                   1        1     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                   0       22     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                   1        2     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                   0       16     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                   1        1     240
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       40     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                    0       22     302
0-6 months    ki0047075b-MAL-ED          PERU                           2                    1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                    0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           3                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                    0       21     302
0-6 months    ki0047075b-MAL-ED          PERU                           4                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                    0       26     302
0-6 months    ki0047075b-MAL-ED          PERU                           5                    1        2     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                    0       17     302
0-6 months    ki0047075b-MAL-ED          PERU                           6                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                    0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           7                    1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                    0       18     302
0-6 months    ki0047075b-MAL-ED          PERU                           8                    1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                    0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           9                    1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           10                   0       26     302
0-6 months    ki0047075b-MAL-ED          PERU                           10                   1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           11                   0       29     302
0-6 months    ki0047075b-MAL-ED          PERU                           11                   1        4     302
0-6 months    ki0047075b-MAL-ED          PERU                           12                   0       23     302
0-6 months    ki0047075b-MAL-ED          PERU                           12                   1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       39     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       27     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       16     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0       13     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0       15     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0       20     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0       24     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0       12     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        0     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        6     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0       25     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        6     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0       39     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        5     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       18     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       30     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       19     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0       20     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0       17     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0       12     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0       23     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0       24     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        0     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0       25     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0       29     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        5     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    0        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        8     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       15     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    0       25     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       19     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1       20     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    0       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       22     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    0       26     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1       13     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    0        7     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    0        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   0       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1       17     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   0       16     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       25     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   0       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1       14     368
0-6 months    ki1000108-IRC              INDIA                          1                    0       22     410
0-6 months    ki1000108-IRC              INDIA                          1                    1       16     410
0-6 months    ki1000108-IRC              INDIA                          2                    0       16     410
0-6 months    ki1000108-IRC              INDIA                          2                    1       12     410
0-6 months    ki1000108-IRC              INDIA                          3                    0       11     410
0-6 months    ki1000108-IRC              INDIA                          3                    1       16     410
0-6 months    ki1000108-IRC              INDIA                          4                    0       11     410
0-6 months    ki1000108-IRC              INDIA                          4                    1       10     410
0-6 months    ki1000108-IRC              INDIA                          5                    0       10     410
0-6 months    ki1000108-IRC              INDIA                          5                    1       12     410
0-6 months    ki1000108-IRC              INDIA                          6                    0       16     410
0-6 months    ki1000108-IRC              INDIA                          6                    1       21     410
0-6 months    ki1000108-IRC              INDIA                          7                    0       12     410
0-6 months    ki1000108-IRC              INDIA                          7                    1       24     410
0-6 months    ki1000108-IRC              INDIA                          8                    0       20     410
0-6 months    ki1000108-IRC              INDIA                          8                    1       24     410
0-6 months    ki1000108-IRC              INDIA                          9                    0       14     410
0-6 months    ki1000108-IRC              INDIA                          9                    1       13     410
0-6 months    ki1000108-IRC              INDIA                          10                   0       15     410
0-6 months    ki1000108-IRC              INDIA                          10                   1       23     410
0-6 months    ki1000108-IRC              INDIA                          11                   0       20     410
0-6 months    ki1000108-IRC              INDIA                          11                   1       20     410
0-6 months    ki1000108-IRC              INDIA                          12                   0       20     410
0-6 months    ki1000108-IRC              INDIA                          12                   1       32     410
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       66     380
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       29     380
0-6 months    ki1000109-EE               PAKISTAN                       2                    0       52     380
0-6 months    ki1000109-EE               PAKISTAN                       2                    1       15     380
0-6 months    ki1000109-EE               PAKISTAN                       3                    0       27     380
0-6 months    ki1000109-EE               PAKISTAN                       3                    1       16     380
0-6 months    ki1000109-EE               PAKISTAN                       4                    0       11     380
0-6 months    ki1000109-EE               PAKISTAN                       4                    1        5     380
0-6 months    ki1000109-EE               PAKISTAN                       5                    0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       5                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       6                    0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       6                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       7                    0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       7                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       8                    0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       8                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       9                    0        0     380
0-6 months    ki1000109-EE               PAKISTAN                       9                    1        0     380
0-6 months    ki1000109-EE               PAKISTAN                       10                   0        3     380
0-6 months    ki1000109-EE               PAKISTAN                       10                   1        1     380
0-6 months    ki1000109-EE               PAKISTAN                       11                   0       53     380
0-6 months    ki1000109-EE               PAKISTAN                       11                   1       17     380
0-6 months    ki1000109-EE               PAKISTAN                       12                   0       65     380
0-6 months    ki1000109-EE               PAKISTAN                       12                   1       20     380
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0        6     278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                    0        7     278
0-6 months    ki1000109-ResPak           PAKISTAN                       2                    1        5     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                    0        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       3                    1       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                    0       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       4                    1       14     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                    0       34     278
0-6 months    ki1000109-ResPak           PAKISTAN                       5                    1       19     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                    0       36     278
0-6 months    ki1000109-ResPak           PAKISTAN                       6                    1       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                    0       21     278
0-6 months    ki1000109-ResPak           PAKISTAN                       7                    1       13     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                    0       25     278
0-6 months    ki1000109-ResPak           PAKISTAN                       8                    1       12     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                    0       12     278
0-6 months    ki1000109-ResPak           PAKISTAN                       9                    1        8     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                   0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       10                   1        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                   0        3     278
0-6 months    ki1000109-ResPak           PAKISTAN                       11                   1        0     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                   0        2     278
0-6 months    ki1000109-ResPak           PAKISTAN                       12                   1        3     278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0       39     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       16     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0       34     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1        7     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    0       33     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1        3     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    0       18     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1        8     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    0       27     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1       16     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    0       36     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1       16     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    0        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    0        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    0        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1        0     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   0       67     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1       13     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   0       43     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1       12     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   0       63     462
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1       11     462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        5     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0        8     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    0        3     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    1        3     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    0        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    0        3     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    0        4     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    0        8     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                    0       14     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8                    1        3     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    0       16     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   0       11     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   0        5     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   0       10     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   1        0     106
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       44     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1       28     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    0       35     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1       22     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    0       35     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1       24     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    0       30     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1       21     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    0       29     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1       20     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    0       30     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1       20     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    0       23     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1       18     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    0       24     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1       15     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    0       31     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1       16     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   0       36     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   0       38     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1       15     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   0       45     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1       10     622
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      143    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       28    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      148    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       30    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0      144    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       20    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0      176    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       14    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0      169    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       16    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0      145    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       21    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0      183    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       35    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0      194    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       38    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0      194    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       22    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0      206    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       44    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0      188    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       33    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0      173    2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       32    2396
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      211    2437
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       41    2437
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      176    2437
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       38    2437
0-6 months    ki1101329-Keneba           GAMBIA                         3                    0      214    2437
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1       44    2437
0-6 months    ki1101329-Keneba           GAMBIA                         4                    0      139    2437
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1       26    2437
0-6 months    ki1101329-Keneba           GAMBIA                         5                    0      143    2437
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1       24    2437
0-6 months    ki1101329-Keneba           GAMBIA                         6                    0      117    2437
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1       24    2437
0-6 months    ki1101329-Keneba           GAMBIA                         7                    0       82    2437
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1       23    2437
0-6 months    ki1101329-Keneba           GAMBIA                         8                    0      157    2437
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1       38    2437
0-6 months    ki1101329-Keneba           GAMBIA                         9                    0      173    2437
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1       40    2437
0-6 months    ki1101329-Keneba           GAMBIA                         10                   0      258    2437
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1       33    2437
0-6 months    ki1101329-Keneba           GAMBIA                         11                   0      181    2437
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1       31    2437
0-6 months    ki1101329-Keneba           GAMBIA                         12                   0      198    2437
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1       26    2437
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       27     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    0       23     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1        2     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    0       35     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    0       24     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    0       21     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    0       15     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    0       14     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   0       25     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1        1     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   0       20     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1        0     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   0       29     295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1        2     295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                    1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                    0       85     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                    1       44     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                    0      163     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                    1       72     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                    0      176     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                    1       61     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                    1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                   0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                   1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                   0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                   1        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                   0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                   1        0     602
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    1        7     272
0-6 months    ki1114097-CMIN             BANGLADESH                     2                    0       22     272
0-6 months    ki1114097-CMIN             BANGLADESH                     2                    1        5     272
0-6 months    ki1114097-CMIN             BANGLADESH                     3                    0       14     272
0-6 months    ki1114097-CMIN             BANGLADESH                     3                    1        6     272
0-6 months    ki1114097-CMIN             BANGLADESH                     4                    0       16     272
0-6 months    ki1114097-CMIN             BANGLADESH                     4                    1        6     272
0-6 months    ki1114097-CMIN             BANGLADESH                     5                    0       18     272
0-6 months    ki1114097-CMIN             BANGLADESH                     5                    1        2     272
0-6 months    ki1114097-CMIN             BANGLADESH                     6                    0        9     272
0-6 months    ki1114097-CMIN             BANGLADESH                     6                    1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     7                    0       17     272
0-6 months    ki1114097-CMIN             BANGLADESH                     7                    1        0     272
0-6 months    ki1114097-CMIN             BANGLADESH                     8                    0       18     272
0-6 months    ki1114097-CMIN             BANGLADESH                     8                    1        4     272
0-6 months    ki1114097-CMIN             BANGLADESH                     9                    0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     9                    1        1     272
0-6 months    ki1114097-CMIN             BANGLADESH                     10                   0       24     272
0-6 months    ki1114097-CMIN             BANGLADESH                     10                   1        3     272
0-6 months    ki1114097-CMIN             BANGLADESH                     11                   0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     11                   1        8     272
0-6 months    ki1114097-CMIN             BANGLADESH                     12                   0       21     272
0-6 months    ki1114097-CMIN             BANGLADESH                     12                   1        7     272
0-6 months    ki1114097-CMIN             BRAZIL                         1                    0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         1                    1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                    0        6     119
0-6 months    ki1114097-CMIN             BRAZIL                         2                    1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                    0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         3                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                    0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         4                    1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                    0        5     119
0-6 months    ki1114097-CMIN             BRAZIL                         5                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                    0        7     119
0-6 months    ki1114097-CMIN             BRAZIL                         6                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                    0        4     119
0-6 months    ki1114097-CMIN             BRAZIL                         7                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                    0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         8                    1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                    0        8     119
0-6 months    ki1114097-CMIN             BRAZIL                         9                    1        0     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                   0       13     119
0-6 months    ki1114097-CMIN             BRAZIL                         10                   1        3     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                   0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         11                   1        1     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                   0       10     119
0-6 months    ki1114097-CMIN             BRAZIL                         12                   1        1     119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0      108     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1        7     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    0       73     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1        6     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    0       65     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1        8     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    0       51     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1        5     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    0       64     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1        1     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    0       52     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1        5     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    0       62     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1        2     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    0       60     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1        2     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    0       99     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1        3     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   0       91     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1        5     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   0       86     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1        0     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   0      107     966
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1        4     966
0-6 months    ki1114097-CMIN             PERU                           1                    0       43     699
0-6 months    ki1114097-CMIN             PERU                           1                    1        0     699
0-6 months    ki1114097-CMIN             PERU                           2                    0       60     699
0-6 months    ki1114097-CMIN             PERU                           2                    1        7     699
0-6 months    ki1114097-CMIN             PERU                           3                    0       67     699
0-6 months    ki1114097-CMIN             PERU                           3                    1        5     699
0-6 months    ki1114097-CMIN             PERU                           4                    0       55     699
0-6 months    ki1114097-CMIN             PERU                           4                    1        7     699
0-6 months    ki1114097-CMIN             PERU                           5                    0       58     699
0-6 months    ki1114097-CMIN             PERU                           5                    1        7     699
0-6 months    ki1114097-CMIN             PERU                           6                    0       53     699
0-6 months    ki1114097-CMIN             PERU                           6                    1        5     699
0-6 months    ki1114097-CMIN             PERU                           7                    0       57     699
0-6 months    ki1114097-CMIN             PERU                           7                    1        0     699
0-6 months    ki1114097-CMIN             PERU                           8                    0       70     699
0-6 months    ki1114097-CMIN             PERU                           8                    1        3     699
0-6 months    ki1114097-CMIN             PERU                           9                    0       56     699
0-6 months    ki1114097-CMIN             PERU                           9                    1        0     699
0-6 months    ki1114097-CMIN             PERU                           10                   0       47     699
0-6 months    ki1114097-CMIN             PERU                           10                   1        6     699
0-6 months    ki1114097-CMIN             PERU                           11                   0       38     699
0-6 months    ki1114097-CMIN             PERU                           11                   1        4     699
0-6 months    ki1114097-CMIN             PERU                           12                   0       47     699
0-6 months    ki1114097-CMIN             PERU                           12                   1        4     699
0-6 months    ki1114097-CONTENT          PERU                           1                    0        9     215
0-6 months    ki1114097-CONTENT          PERU                           1                    1        1     215
0-6 months    ki1114097-CONTENT          PERU                           2                    0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                    0       28     215
0-6 months    ki1114097-CONTENT          PERU                           3                    1        2     215
0-6 months    ki1114097-CONTENT          PERU                           4                    0       19     215
0-6 months    ki1114097-CONTENT          PERU                           4                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                    0       14     215
0-6 months    ki1114097-CONTENT          PERU                           5                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                    0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                    0       28     215
0-6 months    ki1114097-CONTENT          PERU                           7                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                    0       23     215
0-6 months    ki1114097-CONTENT          PERU                           8                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                    0       26     215
0-6 months    ki1114097-CONTENT          PERU                           9                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10                   0       14     215
0-6 months    ki1114097-CONTENT          PERU                           10                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11                   0        9     215
0-6 months    ki1114097-CONTENT          PERU                           11                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12                   0       10     215
0-6 months    ki1114097-CONTENT          PERU                           12                   1        1     215
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      348    8126
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1      153    8126
0-6 months    ki1119695-PROBIT           BELARUS                        2                    0      371    8126
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1      130    8126
0-6 months    ki1119695-PROBIT           BELARUS                        3                    0      430    8126
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1      150    8126
0-6 months    ki1119695-PROBIT           BELARUS                        4                    0      402    8126
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1      146    8126
0-6 months    ki1119695-PROBIT           BELARUS                        5                    0      451    8126
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1      159    8126
0-6 months    ki1119695-PROBIT           BELARUS                        6                    0      458    8126
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1      166    8126
0-6 months    ki1119695-PROBIT           BELARUS                        7                    0      553    8126
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1      214    8126
0-6 months    ki1119695-PROBIT           BELARUS                        8                    0      585    8126
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1      217    8126
0-6 months    ki1119695-PROBIT           BELARUS                        9                    0      545    8126
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1      192    8126
0-6 months    ki1119695-PROBIT           BELARUS                        10                   0      602    8126
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1      218    8126
0-6 months    ki1119695-PROBIT           BELARUS                        11                   0      592    8126
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1      169    8126
0-6 months    ki1119695-PROBIT           BELARUS                        12                   0      677    8126
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1      198    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1102   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      226   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0      877   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      171   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    0      983   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      195   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    0      846   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1      144   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    0      859   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1      161   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    0      914   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1      226   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    0      901   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1      261   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    0      998   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1      253   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    0     1066   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1      225   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   0      849   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1      190   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   0      949   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1      232   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   0      996   13847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1      223   13847
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         2                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                    0        4     272
0-6 months    ki1148112-LCNI-5           MALAWI                         3                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                    0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         4                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                    0       10     272
0-6 months    ki1148112-LCNI-5           MALAWI                         5                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                    0        5     272
0-6 months    ki1148112-LCNI-5           MALAWI                         6                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                    0        3     272
0-6 months    ki1148112-LCNI-5           MALAWI                         7                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                    0       32     272
0-6 months    ki1148112-LCNI-5           MALAWI                         8                    1        0     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                    0       52     272
0-6 months    ki1148112-LCNI-5           MALAWI                         9                    1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                   0       68     272
0-6 months    ki1148112-LCNI-5           MALAWI                         10                   1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                   0       29     272
0-6 months    ki1148112-LCNI-5           MALAWI                         11                   1        1     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                   0       28     272
0-6 months    ki1148112-LCNI-5           MALAWI                         12                   1        0     272
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      992   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      217   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0      798   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      191   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    0      976   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1      200   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    0      680   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1      175   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    0      550   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1      121   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    0      564   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1      126   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    0      648   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1      113   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    0      875   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1      204   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    0     1138   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1      275   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   0     1183   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1      269   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   0     1227   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1      266   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   0     1228   13280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1      264   13280
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    0      178    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1       14    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    0      214    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1       26    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    0      174    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1       22    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    0      160    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1       18    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    0      106    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1       15    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    0      128    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1       19    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    0      117    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1       16    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    0       78    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1        8    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   0       29    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1        9    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   0        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   0        0    1331
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1        0    1331
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       14     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    0       15     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    0       14     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1        9     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    0       19     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1        3     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    0       17     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1        4     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    0        9     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    0       15     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1        3     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    0       11     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1        9     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   0       21     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1        1     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   0       13     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   0       26     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1        2     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    0       21     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    0       11     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    0       21     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    0        8     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    0       16     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1        0     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    0       15     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   0       18     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   0       20     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   0       12     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          2                    1        1     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    0       17     235
6-24 months   ki0047075b-MAL-ED          INDIA                          3                    1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                    0       10     235
6-24 months   ki0047075b-MAL-ED          INDIA                          4                    1        4     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                    0        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          5                    1        3     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                    0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          6                    1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                    0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          7                    1        9     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                    0       15     235
6-24 months   ki0047075b-MAL-ED          INDIA                          8                    1        7     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                    0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          9                    1        6     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10                   0       21     235
6-24 months   ki0047075b-MAL-ED          INDIA                          10                   1        5     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11                   0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          11                   1       11     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12                   0       16     235
6-24 months   ki0047075b-MAL-ED          INDIA                          12                   1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    0       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                    0       17     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                    0       13     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1        7     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                    0       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                    0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1        3     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                    0       22     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                    0       14     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                   0       21     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                   0       20     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1        4     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                   0       15     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1        2     235
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        6     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           2                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    0       18     270
6-24 months   ki0047075b-MAL-ED          PERU                           3                    1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                    0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           4                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                    0       24     270
6-24 months   ki0047075b-MAL-ED          PERU                           5                    1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                    0       14     270
6-24 months   ki0047075b-MAL-ED          PERU                           6                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                    0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           7                    1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                    0       15     270
6-24 months   ki0047075b-MAL-ED          PERU                           8                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                    0       22     270
6-24 months   ki0047075b-MAL-ED          PERU                           9                    1        1     270
6-24 months   ki0047075b-MAL-ED          PERU                           10                   0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           10                   1        0     270
6-24 months   ki0047075b-MAL-ED          PERU                           11                   0       30     270
6-24 months   ki0047075b-MAL-ED          PERU                           11                   1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           12                   0       19     270
6-24 months   ki0047075b-MAL-ED          PERU                           12                   1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       27     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       10     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    0       22     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    0       14     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    0       11     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    0       11     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    0       16     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1        2     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    0       22     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1        1     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    0        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1        0     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    0       16     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1        3     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   0       23     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   0       22     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   0       30     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1        5     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        6     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    0       24     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1        6     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    0       17     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    0        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    0       18     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    0       16     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    0       23     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    0       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1        0     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   0       21     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   0       24     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   0       25     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1        3     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1       12     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    0       27     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1       10     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    0       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1       10     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    0       10     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    0       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1        6     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   0       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   0       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   0       16     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1        9     373
6-24 months   ki1000108-IRC              INDIA                          1                    0       25     410
6-24 months   ki1000108-IRC              INDIA                          1                    1       13     410
6-24 months   ki1000108-IRC              INDIA                          2                    0       19     410
6-24 months   ki1000108-IRC              INDIA                          2                    1        9     410
6-24 months   ki1000108-IRC              INDIA                          3                    0       22     410
6-24 months   ki1000108-IRC              INDIA                          3                    1        5     410
6-24 months   ki1000108-IRC              INDIA                          4                    0       13     410
6-24 months   ki1000108-IRC              INDIA                          4                    1        8     410
6-24 months   ki1000108-IRC              INDIA                          5                    0       13     410
6-24 months   ki1000108-IRC              INDIA                          5                    1        9     410
6-24 months   ki1000108-IRC              INDIA                          6                    0       25     410
6-24 months   ki1000108-IRC              INDIA                          6                    1       12     410
6-24 months   ki1000108-IRC              INDIA                          7                    0       23     410
6-24 months   ki1000108-IRC              INDIA                          7                    1       13     410
6-24 months   ki1000108-IRC              INDIA                          8                    0       31     410
6-24 months   ki1000108-IRC              INDIA                          8                    1       13     410
6-24 months   ki1000108-IRC              INDIA                          9                    0       17     410
6-24 months   ki1000108-IRC              INDIA                          9                    1       10     410
6-24 months   ki1000108-IRC              INDIA                          10                   0       22     410
6-24 months   ki1000108-IRC              INDIA                          10                   1       16     410
6-24 months   ki1000108-IRC              INDIA                          11                   0       32     410
6-24 months   ki1000108-IRC              INDIA                          11                   1        8     410
6-24 months   ki1000108-IRC              INDIA                          12                   0       41     410
6-24 months   ki1000108-IRC              INDIA                          12                   1       11     410
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       60     375
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       32     375
6-24 months   ki1000109-EE               PAKISTAN                       2                    0       46     375
6-24 months   ki1000109-EE               PAKISTAN                       2                    1       20     375
6-24 months   ki1000109-EE               PAKISTAN                       3                    0       23     375
6-24 months   ki1000109-EE               PAKISTAN                       3                    1       19     375
6-24 months   ki1000109-EE               PAKISTAN                       4                    0        7     375
6-24 months   ki1000109-EE               PAKISTAN                       4                    1        9     375
6-24 months   ki1000109-EE               PAKISTAN                       5                    0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       5                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       6                    0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       6                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       7                    0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       7                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       8                    0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       8                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       9                    0        0     375
6-24 months   ki1000109-EE               PAKISTAN                       9                    1        0     375
6-24 months   ki1000109-EE               PAKISTAN                       10                   0        3     375
6-24 months   ki1000109-EE               PAKISTAN                       10                   1        1     375
6-24 months   ki1000109-EE               PAKISTAN                       11                   0       48     375
6-24 months   ki1000109-EE               PAKISTAN                       11                   1       22     375
6-24 months   ki1000109-EE               PAKISTAN                       12                   0       64     375
6-24 months   ki1000109-EE               PAKISTAN                       12                   1       21     375
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0       10     230
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                    0        5     230
6-24 months   ki1000109-ResPak           PAKISTAN                       2                    1        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                    0       14     230
6-24 months   ki1000109-ResPak           PAKISTAN                       3                    1        6     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                    0        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       4                    1        7     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                    0       27     230
6-24 months   ki1000109-ResPak           PAKISTAN                       5                    1       19     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                    0       26     230
6-24 months   ki1000109-ResPak           PAKISTAN                       6                    1       14     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                    0       17     230
6-24 months   ki1000109-ResPak           PAKISTAN                       7                    1        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                    0       20     230
6-24 months   ki1000109-ResPak           PAKISTAN                       8                    1       10     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                    0       11     230
6-24 months   ki1000109-ResPak           PAKISTAN                       9                    1        9     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10                   0        4     230
6-24 months   ki1000109-ResPak           PAKISTAN                       10                   1        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11                   0        1     230
6-24 months   ki1000109-ResPak           PAKISTAN                       11                   1        0     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12                   0        2     230
6-24 months   ki1000109-ResPak           PAKISTAN                       12                   1        3     230
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0       35     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       15     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0       31     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1        7     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    0       24     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                    1       10     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    0       20     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                    1        6     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    0       30     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                    1       11     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    0       31     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                    1       18     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    0        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                    1        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    0        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                    1        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    0        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                    1        0     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   0       57     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                   1       19     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   0       32     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                   1       14     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   0       55     432
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                   1       17     432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        3     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0        7     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        2     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    0        5     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                    1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    0        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                    1        0     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    0        2     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                    1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    0        5     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                    1        1     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    0        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                    1        6     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    0        9     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                    1        7     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    0        9     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                    1        8     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   0        8     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                   1        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   0        3     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                   1        3     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   0        6     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                   1        4     103
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0       32     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       22     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    0       32     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1       16     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    0       35     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1       16     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    0       33     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1       10     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    0       33     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1       11     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    0       32     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1       12     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    0       28     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1       11     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    0       23     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1       11     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    0       33     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1        8     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   0       30     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1       13     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   0       36     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1       13     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   0       35     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1       16     541
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      107    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       32    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      133    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       19    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    0      121    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1       19    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    0      128    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1       19    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    0      126    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1       23    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    0      115    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1       25    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    0      168    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1       28    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    0      166    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1       36    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    0      153    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1       31    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   0      176    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1       32    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   0      160    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1       32    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   0      141    2018
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1       28    2018
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      183    2738
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       91    2738
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0      160    2738
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       86    2738
6-24 months   ki1101329-Keneba           GAMBIA                         3                    0      206    2738
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1       77    2738
6-24 months   ki1101329-Keneba           GAMBIA                         4                    0      140    2738
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1       47    2738
6-24 months   ki1101329-Keneba           GAMBIA                         5                    0      142    2738
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1       50    2738
6-24 months   ki1101329-Keneba           GAMBIA                         6                    0      105    2738
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1       49    2738
6-24 months   ki1101329-Keneba           GAMBIA                         7                    0       90    2738
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1       45    2738
6-24 months   ki1101329-Keneba           GAMBIA                         8                    0      149    2738
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1       75    2738
6-24 months   ki1101329-Keneba           GAMBIA                         9                    0      158    2738
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1       77    2738
6-24 months   ki1101329-Keneba           GAMBIA                         10                   0      221    2738
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1      107    2738
6-24 months   ki1101329-Keneba           GAMBIA                         11                   0      168    2738
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1       69    2738
6-24 months   ki1101329-Keneba           GAMBIA                         12                   0      148    2738
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1       95    2738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       25     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        3     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    0       22     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    0       24     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1        3     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    0       28     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    0       25     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    0       17     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    0       19     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1        1     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    0       12     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    0       11     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1        3     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   0       27     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1        0     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   0       20     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1        2     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   0       24     277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1        4     277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0       51     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1       21     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    0       36     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1       12     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    0       36     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1       13     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    0       23     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1       15     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    0       50     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1        8     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    0       36     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1       10     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    0       42     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1       14     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    0       65     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1       17     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    0       70     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1       22     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   0       78     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1       13     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   0       55     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1       19     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   0       71     797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1       20     797
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                    1        1     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    0       63     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    1       63     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    0      132     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    1       99     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    0      116     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    1      116     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                    1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                   1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                   1        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   0        0     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                   1        0     590
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0       20     252
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    1        7     252
6-24 months   ki1114097-CMIN             BANGLADESH                     2                    0       15     252
6-24 months   ki1114097-CMIN             BANGLADESH                     2                    1       10     252
6-24 months   ki1114097-CMIN             BANGLADESH                     3                    0       12     252
6-24 months   ki1114097-CMIN             BANGLADESH                     3                    1        6     252
6-24 months   ki1114097-CMIN             BANGLADESH                     4                    0       13     252
6-24 months   ki1114097-CMIN             BANGLADESH                     4                    1        9     252
6-24 months   ki1114097-CMIN             BANGLADESH                     5                    0       14     252
6-24 months   ki1114097-CMIN             BANGLADESH                     5                    1        3     252
6-24 months   ki1114097-CMIN             BANGLADESH                     6                    0        5     252
6-24 months   ki1114097-CMIN             BANGLADESH                     6                    1        4     252
6-24 months   ki1114097-CMIN             BANGLADESH                     7                    0       11     252
6-24 months   ki1114097-CMIN             BANGLADESH                     7                    1        5     252
6-24 months   ki1114097-CMIN             BANGLADESH                     8                    0       13     252
6-24 months   ki1114097-CMIN             BANGLADESH                     8                    1        6     252
6-24 months   ki1114097-CMIN             BANGLADESH                     9                    0       13     252
6-24 months   ki1114097-CMIN             BANGLADESH                     9                    1        7     252
6-24 months   ki1114097-CMIN             BANGLADESH                     10                   0       10     252
6-24 months   ki1114097-CMIN             BANGLADESH                     10                   1       16     252
6-24 months   ki1114097-CMIN             BANGLADESH                     11                   0       12     252
6-24 months   ki1114097-CMIN             BANGLADESH                     11                   1       14     252
6-24 months   ki1114097-CMIN             BANGLADESH                     12                   0       17     252
6-24 months   ki1114097-CMIN             BANGLADESH                     12                   1       10     252
6-24 months   ki1114097-CMIN             BRAZIL                         1                    0       14     119
6-24 months   ki1114097-CMIN             BRAZIL                         1                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                    0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         2                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                    0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         3                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                    0        8     119
6-24 months   ki1114097-CMIN             BRAZIL                         4                    1        1     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                    0        5     119
6-24 months   ki1114097-CMIN             BRAZIL                         5                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                    0        7     119
6-24 months   ki1114097-CMIN             BRAZIL                         6                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                    0        4     119
6-24 months   ki1114097-CMIN             BRAZIL                         7                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                    0       13     119
6-24 months   ki1114097-CMIN             BRAZIL                         8                    1        1     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                    0        8     119
6-24 months   ki1114097-CMIN             BRAZIL                         9                    1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         10                   0       16     119
6-24 months   ki1114097-CMIN             BRAZIL                         10                   1        0     119
6-24 months   ki1114097-CMIN             BRAZIL                         11                   0       10     119
6-24 months   ki1114097-CMIN             BRAZIL                         11                   1        1     119
6-24 months   ki1114097-CMIN             BRAZIL                         12                   0       10     119
6-24 months   ki1114097-CMIN             BRAZIL                         12                   1        1     119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0      121    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1       28    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    0      103    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1       10    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    0       97    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1       20    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    0       88    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1       13    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    0       93    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1       17    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    0       71    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1       12    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    0       81    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1       15    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    0      106    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1       15    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    0      130    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1       30    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   0      120    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1       34    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   0      108    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1       27    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   0      117    1482
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1       26    1482
6-24 months   ki1114097-CMIN             PERU                           1                    0       48     878
6-24 months   ki1114097-CMIN             PERU                           1                    1        0     878
6-24 months   ki1114097-CMIN             PERU                           2                    0       74     878
6-24 months   ki1114097-CMIN             PERU                           2                    1        1     878
6-24 months   ki1114097-CMIN             PERU                           3                    0       93     878
6-24 months   ki1114097-CMIN             PERU                           3                    1        4     878
6-24 months   ki1114097-CMIN             PERU                           4                    0       87     878
6-24 months   ki1114097-CMIN             PERU                           4                    1        4     878
6-24 months   ki1114097-CMIN             PERU                           5                    0       82     878
6-24 months   ki1114097-CMIN             PERU                           5                    1        8     878
6-24 months   ki1114097-CMIN             PERU                           6                    0       71     878
6-24 months   ki1114097-CMIN             PERU                           6                    1        9     878
6-24 months   ki1114097-CMIN             PERU                           7                    0       73     878
6-24 months   ki1114097-CMIN             PERU                           7                    1        1     878
6-24 months   ki1114097-CMIN             PERU                           8                    0       82     878
6-24 months   ki1114097-CMIN             PERU                           8                    1        2     878
6-24 months   ki1114097-CMIN             PERU                           9                    0       63     878
6-24 months   ki1114097-CMIN             PERU                           9                    1        2     878
6-24 months   ki1114097-CMIN             PERU                           10                   0       57     878
6-24 months   ki1114097-CMIN             PERU                           10                   1        0     878
6-24 months   ki1114097-CMIN             PERU                           11                   0       51     878
6-24 months   ki1114097-CMIN             PERU                           11                   1        3     878
6-24 months   ki1114097-CMIN             PERU                           12                   0       62     878
6-24 months   ki1114097-CMIN             PERU                           12                   1        1     878
6-24 months   ki1114097-CONTENT          PERU                           1                    0       10     215
6-24 months   ki1114097-CONTENT          PERU                           1                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                    0       18     215
6-24 months   ki1114097-CONTENT          PERU                           2                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                    0       30     215
6-24 months   ki1114097-CONTENT          PERU                           3                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                    0       19     215
6-24 months   ki1114097-CONTENT          PERU                           4                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                    0       12     215
6-24 months   ki1114097-CONTENT          PERU                           5                    1        2     215
6-24 months   ki1114097-CONTENT          PERU                           6                    0       13     215
6-24 months   ki1114097-CONTENT          PERU                           6                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                    0       28     215
6-24 months   ki1114097-CONTENT          PERU                           7                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                    0       22     215
6-24 months   ki1114097-CONTENT          PERU                           8                    1        1     215
6-24 months   ki1114097-CONTENT          PERU                           9                    0       26     215
6-24 months   ki1114097-CONTENT          PERU                           9                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10                   0       13     215
6-24 months   ki1114097-CONTENT          PERU                           10                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           11                   0        9     215
6-24 months   ki1114097-CONTENT          PERU                           11                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12                   0       11     215
6-24 months   ki1114097-CONTENT          PERU                           12                   1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      496    7975
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        3    7975
6-24 months   ki1119695-PROBIT           BELARUS                        2                    0      487    7975
6-24 months   ki1119695-PROBIT           BELARUS                        2                    1        7    7975
6-24 months   ki1119695-PROBIT           BELARUS                        3                    0      568    7975
6-24 months   ki1119695-PROBIT           BELARUS                        3                    1        4    7975
6-24 months   ki1119695-PROBIT           BELARUS                        4                    0      540    7975
6-24 months   ki1119695-PROBIT           BELARUS                        4                    1        1    7975
6-24 months   ki1119695-PROBIT           BELARUS                        5                    0      586    7975
6-24 months   ki1119695-PROBIT           BELARUS                        5                    1        5    7975
6-24 months   ki1119695-PROBIT           BELARUS                        6                    0      607    7975
6-24 months   ki1119695-PROBIT           BELARUS                        6                    1        7    7975
6-24 months   ki1119695-PROBIT           BELARUS                        7                    0      742    7975
6-24 months   ki1119695-PROBIT           BELARUS                        7                    1        6    7975
6-24 months   ki1119695-PROBIT           BELARUS                        8                    0      784    7975
6-24 months   ki1119695-PROBIT           BELARUS                        8                    1        6    7975
6-24 months   ki1119695-PROBIT           BELARUS                        9                    0      718    7975
6-24 months   ki1119695-PROBIT           BELARUS                        9                    1        5    7975
6-24 months   ki1119695-PROBIT           BELARUS                        10                   0      801    7975
6-24 months   ki1119695-PROBIT           BELARUS                        10                   1        9    7975
6-24 months   ki1119695-PROBIT           BELARUS                        11                   0      735    7975
6-24 months   ki1119695-PROBIT           BELARUS                        11                   1        6    7975
6-24 months   ki1119695-PROBIT           BELARUS                        12                   0      845    7975
6-24 months   ki1119695-PROBIT           BELARUS                        12                   1        7    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      947   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      104   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0      748   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1       76   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    0      805   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1      102   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    0      709   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1       72   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    0      694   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1       80   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    0      787   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1       81   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    0      805   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1       73   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    0      849   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1       85   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    0      935   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1       61   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   0      699   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1       82   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   0      838   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1       91   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   0      873   10694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1       98   10694
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       63     826
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    0       43     826
6-24 months   ki1148112-LCNI-5           MALAWI                         2                    1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                    0       23     826
6-24 months   ki1148112-LCNI-5           MALAWI                         3                    1        3     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                    0       39     826
6-24 months   ki1148112-LCNI-5           MALAWI                         4                    1        0     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                    0       36     826
6-24 months   ki1148112-LCNI-5           MALAWI                         5                    1        6     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                    0       32     826
6-24 months   ki1148112-LCNI-5           MALAWI                         6                    1        2     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                    0       57     826
6-24 months   ki1148112-LCNI-5           MALAWI                         7                    1        5     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                    0       83     826
6-24 months   ki1148112-LCNI-5           MALAWI                         8                    1        9     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                    0       82     826
6-24 months   ki1148112-LCNI-5           MALAWI                         9                    1        9     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10                   0      121     826
6-24 months   ki1148112-LCNI-5           MALAWI                         10                   1        9     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11                   0       99     826
6-24 months   ki1148112-LCNI-5           MALAWI                         11                   1        4     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12                   0       84     826
6-24 months   ki1148112-LCNI-5           MALAWI                         12                   1       10     826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      575    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      113    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0      487    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1       89    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    0      636    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1       99    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    0      502    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1      102    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    0      477    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1      127    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    0      506    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1      109    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    0      510    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1      121    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    0      636    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1      135    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    0      684    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1      139    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   0      687    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1      138    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   0      752    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1      131    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   0      690    8555
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1      110    8555
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    0      172    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1       62    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    0      206    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1       64    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    0      152    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1       52    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    0      134    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1       57    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    0       85    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1       38    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    0      113    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1       35    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    0      106    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1       29    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    0       69    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1       20    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   0       26    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1       12    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   0        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   0        0    1432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1        0    1432


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b40fd52b-99e0-4a7b-bd09-4c6313f2c337/bd7b7e61-6307-47d1-9e60-aa584d287d6c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b40fd52b-99e0-4a7b-bd09-4c6313f2c337/bd7b7e61-6307-47d1-9e60-aa584d287d6c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.9137166   0.8331959   0.9942372
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5957214   0.4585805   0.7328624
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1583486   0.1061205   0.2105767
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3720594   0.3060841   0.4380347
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2105093   0.1245956   0.2964230
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                0.4161381   0.1590400   0.6732362
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1843653   0.1132222   0.2555084
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2380815   0.1385931   0.3375700
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2468380   0.2214523   0.2722238
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2508636   0.2269574   0.2747698
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3293997   0.1801541   0.4786454
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5465616   0.3057906   0.7873327
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1851098   0.0796137   0.2906060
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0729196   0.0354482   0.1103910
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1407152   0.0986021   0.1828283
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2458953   0.1422774   0.3495132
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1455268   0.1235270   0.1675266
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1483294   0.1216718   0.1749869
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3752924   0.2133643   0.5372206
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3883438   0.2222902   0.5543974
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2149809   0.1457012   0.2842606
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3555676   0.2871511   0.4239840
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2105093   0.1245956   0.2964230
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.0867484   0.0343099   0.1391869
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0612662   0.0463472   0.0761853
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1585703   0.1308271   0.1863135


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2362270   0.2192156   0.2532385
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3741007   0.3565437   0.3916578
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2308657   0.1897291   0.2720024
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             NA                0.4558824   0.3965849   0.5151798
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1884539   0.1687026   0.2082051
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2347371   0.2277008   0.2417734
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2643109   0.2552337   0.2733881
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1389816   0.1251275   0.1528358
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.1592121   0.1446830   0.1737413
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1810500   0.1746363   0.1874638
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1823042   0.1743031   0.1903054
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1605550   0.1445335   0.1765765
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3170197   0.2995873   0.3344522
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2308657   0.1897291   0.2720024
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.1666667   0.1476863   0.1856470
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0939779   0.0884472   0.0995086
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1651666   0.1559963   0.1743368


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.7180537   0.6478392   0.7958782
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.8016567   0.6419088   1.0011601
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4918165   1.0831127   2.0547415
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0054865   0.8473870   1.1930832
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0967008   0.8096715   1.4854823
0-24 months   ki1114097-CMIN             BANGLADESH                     observed             optimal           1.0955073   0.6034743   1.9887115
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.0221766   0.7055548   1.4808843
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1153096   0.9650274   1.2889951
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9509761   0.8617454   1.0494463
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0536041   0.9627518   1.1530298
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.5756594   1.0217431   2.4298695
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.9951347   0.6535089   1.5153475
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.9281158   1.1077289   3.3560834
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.9059564   1.1534404   3.1494215
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1314495   0.8512147   1.5039424
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0569803   0.9225458   1.2110049
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.2441009   1.0744746   1.4405060
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.2290501   1.0330488   1.4622391
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.8253726   0.5477216   1.2437705
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.7568041   0.5057659   1.1324457
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7468338   0.5500634   1.0139936
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           0.8915878   0.7414572   1.0721170
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0967008   0.8096715   1.4854823
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.9212655   1.0638410   3.4697488
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.5339276   1.2117800   1.9417170
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0415982   0.8793729   1.2337506


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.2576190   -0.3433146   -0.1719234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.1181573   -0.2500679    0.0137532
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0778785    0.0270064    0.1287505
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0020413   -0.0616069    0.0656895
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0203564   -0.0421741    0.0828870
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0397442   -0.2081318    0.2876203
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0040886   -0.0642552    0.0724324
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0274531   -0.0055234    0.0604296
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0121010   -0.0364226    0.0122206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0134473   -0.0091965    0.0360911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1896220    0.0474578    0.3317863
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0026592   -0.2325300    0.2272116
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1718034    0.0686125    0.2749942
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0660620    0.0289743    0.1031497
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0184969   -0.0215768    0.0585706
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0140112   -0.0184277    0.0464501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0355232    0.0141682    0.0568782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0339749    0.0081816    0.0597681
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0655363   -0.2194907    0.0884180
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0944436   -0.2518306    0.0629434
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0544259   -0.1204262    0.0115744
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0385478   -0.1041441    0.0270484
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0203564   -0.0421741    0.0828870
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0799183    0.0280429    0.1317937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0327117    0.0181590    0.0472645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0065962   -0.0202747    0.0334672


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.3926535   -0.5435929   -0.2564737
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.2474167   -0.5578537    0.0011588
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3296763    0.0767350    0.5133208
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0054566   -0.1800984    0.1618355
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0881743   -0.2350688    0.3268180
0-24 months   ki1114097-CMIN             BANGLADESH                     optimal              NA                 0.0871809   -0.6570715    0.4971618
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0216955   -0.4173244    0.3247278
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1033880   -0.0362400    0.2242019
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0515511   -0.1604355    0.0471166
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0508769   -0.0386893    0.1327197
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.3653451    0.0212804    0.5884553
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0048891   -0.5302010    0.3400854
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.4813589    0.0972520    0.7020336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.4753290    0.1330284    0.6824814
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1161779   -0.1747918    0.3350809
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0539086   -0.0839570    0.1742395
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1962067    0.0693126    0.3057995
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1863635    0.0319915    0.3161173
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.2115740   -0.8257451    0.1959931
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.3213459   -0.9771992    0.1169555
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.3389860   -0.8179723    0.0138005
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.1215945   -0.3486955    0.0672660
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0881743   -0.2350688    0.3268180
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.4795097    0.0600099    0.7117947
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.3480788    0.1747677    0.4849919
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0399369   -0.1371740    0.1894634
