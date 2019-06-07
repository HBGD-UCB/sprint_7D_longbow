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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/149efede-ffa0-4709-8191-0110863f6f30/c4ab8085-9e8f-4101-a8de-673543fccfaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/149efede-ffa0-4709-8191-0110863f6f30/c4ab8085-9e8f-4101-a8de-673543fccfaf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/149efede-ffa0-4709-8191-0110863f6f30/c4ab8085-9e8f-4101-a8de-673543fccfaf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/149efede-ffa0-4709-8191-0110863f6f30/c4ab8085-9e8f-4101-a8de-673543fccfaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5789474   0.4217757   0.7361191
0-24 months   ki1000108-IRC              INDIA                          2                    NA                0.6071429   0.4260246   0.7882611
0-24 months   ki1000108-IRC              INDIA                          3                    NA                0.6296296   0.4472580   0.8120012
0-24 months   ki1000108-IRC              INDIA                          4                    NA                0.7142857   0.5208348   0.9077366
0-24 months   ki1000108-IRC              INDIA                          5                    NA                0.7727273   0.5973983   0.9480563
0-24 months   ki1000108-IRC              INDIA                          6                    NA                0.6486486   0.4946372   0.8026601
0-24 months   ki1000108-IRC              INDIA                          7                    NA                0.7500000   0.6083790   0.8916210
0-24 months   ki1000108-IRC              INDIA                          8                    NA                0.6363636   0.4940527   0.7786746
0-24 months   ki1000108-IRC              INDIA                          9                    NA                0.6666667   0.4886379   0.8446955
0-24 months   ki1000108-IRC              INDIA                          10                   NA                0.6842105   0.5362383   0.8321828
0-24 months   ki1000108-IRC              INDIA                          11                   NA                0.5750000   0.4216172   0.7283828
0-24 months   ki1000108-IRC              INDIA                          12                   NA                0.6730769   0.5454237   0.8007302
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5205479   0.4058547   0.6352412
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5087719   0.3788860   0.6386579
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5423729   0.4151471   0.6695987
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.4230769   0.2886880   0.5574658
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.4489796   0.3096012   0.5883580
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5400000   0.4017430   0.6782570
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5609756   0.4089486   0.7130026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5128205   0.3558236   0.6698175
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4042553   0.2638429   0.5446677
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3877551   0.2512215   0.5242887
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4716981   0.3371952   0.6062010
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4000000   0.2704252   0.5295748
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2923977   0.2242074   0.3605879
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2640449   0.1992720   0.3288178
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2073171   0.1452610   0.2693731
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1578947   0.1060352   0.2097543
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1837838   0.1279613   0.2396063
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2228916   0.1595670   0.2862161
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2477064   0.1903908   0.3050220
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2629310   0.2062719   0.3195901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2175926   0.1625561   0.2726290
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2680000   0.2130849   0.3229151
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2443439   0.1876801   0.3010077
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2487805   0.1895898   0.3079712
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3918919   0.3362694   0.4475143
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4031008   0.3432362   0.4629654
0-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.3333333   0.2805064   0.3861603
0-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3214286   0.2560351   0.3868221
0-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.3399015   0.2747303   0.4050726
0-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.3719512   0.2979668   0.4459356
0-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.3758865   0.2959265   0.4558466
0-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.4110169   0.3482331   0.4738008
0-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.3992095   0.3388530   0.4595660
0-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3579545   0.3078649   0.4080442
0-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.3490196   0.2905054   0.4075338
0-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4285714   0.3682925   0.4888503
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2916667   0.2300206   0.3533128
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2500000   0.1354080   0.3645920
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2653061   0.1427708   0.3878414
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3947368   0.2552665   0.5342072
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1379310   0.0374737   0.2383884
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.2173913   0.1321346   0.3026480
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2500000   0.1216506   0.3783494
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2073171   0.1174944   0.2971398
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2391304   0.1457230   0.3325378
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1428571   0.0461902   0.2395241
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2567568   0.1328418   0.3806717
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.2197802   0.0721544   0.3674060
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.3571429   0.1793366   0.5349491
0-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                0.4444444   0.2566691   0.6322198
0-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                0.5500000   0.3315659   0.7684341
0-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                0.5000000   0.2906820   0.7093180
0-24 months   ki1114097-CMIN             BANGLADESH                     5                    NA                0.2500000   0.0598775   0.4401225
0-24 months   ki1114097-CMIN             BANGLADESH                     6                    NA                0.5000000   0.1895312   0.8104688
0-24 months   ki1114097-CMIN             BANGLADESH                     7                    NA                0.2941176   0.0771224   0.5111129
0-24 months   ki1114097-CMIN             BANGLADESH                     8                    NA                0.4090909   0.2032618   0.6149200
0-24 months   ki1114097-CMIN             BANGLADESH                     9                    NA                0.3181818   0.1231935   0.5131701
0-24 months   ki1114097-CMIN             BANGLADESH                     10                   NA                0.5925926   0.4069154   0.7782698
0-24 months   ki1114097-CMIN             BANGLADESH                     11                   NA                0.6206897   0.4437670   0.7976123
0-24 months   ki1114097-CMIN             BANGLADESH                     12                   NA                0.5357143   0.3506476   0.7207809
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2317881   0.1644610   0.2991152
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.1304348   0.0688617   0.1920079
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.2268908   0.1516163   0.3021652
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1666667   0.0943188   0.2390146
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1607143   0.0926741   0.2287545
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1647059   0.0858277   0.2435841
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1700000   0.0963529   0.2436471
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1382114   0.0771998   0.1992229
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1963190   0.1353202   0.2573178
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2307692   0.1646318   0.2969066
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.1970803   0.1304473   0.2637133
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2013889   0.1358655   0.2669123
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.3067729   0.1619797   0.4515661
0-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.2674651   0.1392931   0.3956370
0-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.2637931   0.1398152   0.3877710
0-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.2682482   0.1420384   0.3944580
0-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.2672131   0.1414080   0.3930182
0-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.2772436   0.1963828   0.3581044
0-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.2842243   0.1956638   0.3727847
0-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.2743142   0.1826162   0.3660123
0-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.2659430   0.1786242   0.3532618
0-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.2743902   0.1827195   0.3660610
0-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.2260184   0.1495087   0.3025281
0-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.2320000   0.1305038   0.3334962
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2267658   0.2043865   0.2491451
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2124060   0.1878291   0.2369829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2292191   0.2053466   0.2530917
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2070352   0.1818583   0.2322120
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2227626   0.1973257   0.2481996
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2528434   0.2276450   0.2780417
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2680412   0.2425945   0.2934879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2533865   0.2293217   0.2774512
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2077220   0.1856263   0.2298178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2416428   0.2157121   0.2675735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2485306   0.2239862   0.2730751
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2424242   0.2183858   0.2664627
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2553542   0.2288503   0.2818581
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2603015   0.2299354   0.2906677
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2324003   0.2070088   0.2577919
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2980210   0.2669315   0.3291104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3204748   0.2822756   0.3586740
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2900433   0.2538547   0.3262319
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2798949   0.2460814   0.3137083
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2939002   0.2656711   0.3221293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2679831   0.2431836   0.2927826
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2570447   0.2312939   0.2827955
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.2463382   0.2228437   0.2698328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2351369   0.2130088   0.2572651
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4411765   0.2740509   0.6083021
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5333333   0.2805223   0.7861444
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.5161290   0.3399712   0.6922869
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.4318182   0.2852611   0.5783752
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.5555556   0.3930156   0.7180955
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.6111111   0.4516479   0.7705743
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.3333333   0.1851838   0.4814829
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.5882353   0.3539664   0.8225042
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.5714286   0.3594842   0.7833730
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.5862069   0.4067100   0.7657038
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.6097561   0.4602382   0.7592740
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.5600000   0.3651550   0.7548450
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4210526   0.2638809   0.5782243
0-6 months    ki1000108-IRC              INDIA                          2                    NA                0.4285714   0.2450478   0.6120950
0-6 months    ki1000108-IRC              INDIA                          3                    NA                0.5925926   0.4070306   0.7781546
0-6 months    ki1000108-IRC              INDIA                          4                    NA                0.4761905   0.2623225   0.6900585
0-6 months    ki1000108-IRC              INDIA                          5                    NA                0.5454545   0.3371326   0.7537765
0-6 months    ki1000108-IRC              INDIA                          6                    NA                0.5675676   0.4077423   0.7273928
0-6 months    ki1000108-IRC              INDIA                          7                    NA                0.6666667   0.5124892   0.8208441
0-6 months    ki1000108-IRC              INDIA                          8                    NA                0.5454545   0.3981487   0.6927604
0-6 months    ki1000108-IRC              INDIA                          9                    NA                0.4814815   0.2927830   0.6701800
0-6 months    ki1000108-IRC              INDIA                          10                   NA                0.6052632   0.4496621   0.7608642
0-6 months    ki1000108-IRC              INDIA                          11                   NA                0.5000000   0.3448619   0.6551381
0-6 months    ki1000108-IRC              INDIA                          12                   NA                0.6153846   0.4829921   0.7477771
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3888889   0.2761940   0.5015837
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3859649   0.2594824   0.5124474
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4067797   0.2813330   0.5322263
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.4117647   0.2765847   0.5469447
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.4081633   0.2704368   0.5458897
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.4000000   0.2641004   0.5358996
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4390244   0.2869970   0.5910518
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3846154   0.2318054   0.5374254
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3404255   0.2048468   0.4760043
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2653061   0.1415900   0.3890222
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2830189   0.1616461   0.4043916
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1818182   0.0798042   0.2838322
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1637427   0.1082684   0.2192170
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1685393   0.1135346   0.2235441
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1219512   0.0718591   0.1720433
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0736842   0.0365282   0.1108402
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0864865   0.0459744   0.1269986
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1265060   0.0759270   0.1770850
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1605505   0.1118073   0.2092936
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1637931   0.1161610   0.2114252
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1018519   0.0615087   0.1421950
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1760000   0.1287841   0.2232159
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1493213   0.1023225   0.1963200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1560976   0.1064033   0.2057918
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1626984   0.1171189   0.2082779
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1775701   0.1263589   0.2287813
0-6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1705426   0.1246397   0.2164456
0-6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1575758   0.1019718   0.2131797
0-6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1437126   0.0904973   0.1969278
0-6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.1702128   0.1081677   0.2322578
0-6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.2190476   0.1399207   0.2981745
0-6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1948718   0.1392651   0.2504785
0-6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1877934   0.1353343   0.2402525
0-6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1134021   0.0769632   0.1498409
0-6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.1462264   0.0986542   0.1937987
0-6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.1160714   0.0741164   0.1580265
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3053892   0.1600132   0.4507653
0-6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.2594810   0.1289767   0.3899854
0-6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.2586207   0.1337101   0.3835312
0-6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.2664234   0.1397313   0.3931154
0-6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.2606557   0.1355631   0.3857484
0-6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.2660256   0.1830419   0.3490094
0-6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.2790091   0.1868138   0.3712045
0-6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.2705736   0.1776282   0.3635189
0-6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.2605156   0.1716761   0.3493551
0-6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.2658537   0.1756686   0.3560387
0-6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.2220762   0.1442747   0.2998777
0-6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.2262857   0.1231831   0.3293883
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1701807   0.1499686   0.1903928
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1631679   0.1407952   0.1855407
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1655348   0.1443102   0.1867594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1454545   0.1234923   0.1674168
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1578431   0.1354676   0.1802187
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1982456   0.1751019   0.2213894
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2246127   0.2006168   0.2486086
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2022382   0.1799793   0.2244971
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1742835   0.1535895   0.1949775
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1828681   0.1593626   0.2063737
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1964437   0.1737834   0.2191040
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1829368   0.1612328   0.2046409
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1794872   0.1573372   0.2016372
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1931244   0.1658934   0.2203554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1700680   0.1464614   0.1936747
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2046784   0.1761941   0.2331626
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1803279   0.1495592   0.2110966
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1826087   0.1487045   0.2165129
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1484888   0.1219263   0.1750514
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1890639   0.1642848   0.2138431
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1946214   0.1719293   0.2173135
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1852617   0.1626481   0.2078753
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1781648   0.1579450   0.1983846
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1769437   0.1558857   0.1980017
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3421053   0.1910817   0.4931288
6-24 months   ki1000108-IRC              INDIA                          2                    NA                0.3214286   0.1482320   0.4946252
6-24 months   ki1000108-IRC              INDIA                          3                    NA                0.1851852   0.0384855   0.3318848
6-24 months   ki1000108-IRC              INDIA                          4                    NA                0.3809524   0.1729989   0.5889058
6-24 months   ki1000108-IRC              INDIA                          5                    NA                0.4090909   0.2033895   0.6147923
6-24 months   ki1000108-IRC              INDIA                          6                    NA                0.3243243   0.1733036   0.4753450
6-24 months   ki1000108-IRC              INDIA                          7                    NA                0.3611111   0.2040169   0.5182053
6-24 months   ki1000108-IRC              INDIA                          8                    NA                0.2954545   0.1604800   0.4304291
6-24 months   ki1000108-IRC              INDIA                          9                    NA                0.3703704   0.1879988   0.5527420
6-24 months   ki1000108-IRC              INDIA                          10                   NA                0.4210526   0.2638809   0.5782243
6-24 months   ki1000108-IRC              INDIA                          11                   NA                0.2000000   0.0758895   0.3241105
6-24 months   ki1000108-IRC              INDIA                          12                   NA                0.2115385   0.1004007   0.3226762
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4074074   0.2762341   0.5385807
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3333333   0.1998513   0.4668154
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3137255   0.1862612   0.4411898
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2325581   0.1061706   0.3589456
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2500000   0.1219369   0.3780631
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2727273   0.1410119   0.4044426
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.2820513   0.1406907   0.4234119
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3235294   0.1661341   0.4809247
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.1951220   0.0737059   0.3165380
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3023256   0.1649279   0.4397233
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2653061   0.1415751   0.3890372
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3137255   0.1862612   0.4411898
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2302158   0.1602154   0.3002162
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1250000   0.0724112   0.1775888
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1357143   0.0789686   0.1924600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1292517   0.0750065   0.1834969
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1543624   0.0963360   0.2123888
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1785714   0.1151140   0.2420289
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1428571   0.0938561   0.1918582
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1782178   0.1254300   0.2310057
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1684783   0.1143835   0.2225731
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1538462   0.1048015   0.2028908
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1666667   0.1139390   0.2193944
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1656805   0.1096126   0.2217484
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3321168   0.2763407   0.3878928
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3495935   0.2899952   0.4091918
6-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2720848   0.2202255   0.3239441
6-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.2513369   0.1891530   0.3135208
6-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.2604167   0.1983291   0.3225042
6-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.3181818   0.2446053   0.3917583
6-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.3333333   0.2537991   0.4128676
6-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.3348214   0.2730085   0.3966343
6-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.3276596   0.2676391   0.3876801
6-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3262195   0.2754732   0.3769658
6-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.2911392   0.2332918   0.3489867
6-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.3909465   0.3295829   0.4523101
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2916667   0.2300206   0.3533128
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2500000   0.1354080   0.3645920
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2653061   0.1427708   0.3878414
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3947368   0.2552665   0.5342072
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.1379310   0.0374737   0.2383884
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.2173913   0.1321346   0.3026480
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2500000   0.1216506   0.3783494
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2073171   0.1174944   0.2971398
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2391304   0.1457230   0.3325378
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1428571   0.0461902   0.2395241
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2567568   0.1328418   0.3806717
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.2197802   0.0721544   0.3674060
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1879195   0.1251733   0.2506656
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.0884956   0.0361120   0.1408792
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1709402   0.1027037   0.2391767
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.1287129   0.0633809   0.1940448
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1545455   0.0869727   0.2221182
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1445783   0.0688955   0.2202611
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1562500   0.0835933   0.2289067
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1239669   0.0652295   0.1827044
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1875000   0.1270012   0.2479988
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2207792   0.1552487   0.2863097
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2000000   0.1325025   0.2674975
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.1818182   0.1185813   0.2450550
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0989534   0.0809001   0.1170067
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0922330   0.0724754   0.1119907
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1124587   0.0918971   0.1330202
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.0921895   0.0718995   0.1124795
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1033592   0.0819114   0.1248069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.0933180   0.0739663   0.1126697
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.0831435   0.0648799   0.1014071
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0910064   0.0725600   0.1094528
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0612450   0.0463531   0.0761369
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1049936   0.0834937   0.1264935
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0979548   0.0788392   0.1170704
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1009269   0.0819790   0.1198747
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1642442   0.1356345   0.1928539
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1545139   0.1248800   0.1841478
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.1346939   0.1072143   0.1621735
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.1688742   0.1404214   0.1973269
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2102649   0.1719636   0.2485662
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1772358   0.1445362   0.2099354
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.1917591   0.1604937   0.2230246
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.1750973   0.1440269   0.2061677
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.1688943   0.1421786   0.1956100
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.1672727   0.1400491   0.1944963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.1483579   0.1242221   0.1724937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.1375000   0.1138389   0.1611611


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2362270   0.2192156   0.2532385
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3741007   0.3565437   0.3916578
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2308657   0.1897291   0.2720024
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4558824   0.3965849   0.5151798
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1884539   0.1687026   0.2082051
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2347371   0.2277008   0.2417734
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2643109   0.2552337   0.2733881
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1389816   0.1251275   0.1528358
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1592121   0.1446830   0.1737413
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810500   0.1746363   0.1874638
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1823042   0.1743031   0.1903054
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3170197   0.2995873   0.3344522
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2308657   0.1897291   0.2720024
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1666667   0.1476863   0.1856470
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939779   0.0884472   0.0995086
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1651666   0.1559963   0.1743368


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2                    1                 1.0487013   0.7006149   1.5697274
0-24 months   ki1000108-IRC              INDIA                          3                    1                 1.0875421   0.7312026   1.6175378
0-24 months   ki1000108-IRC              INDIA                          4                    1                 1.2337662   0.8408016   1.8103904
0-24 months   ki1000108-IRC              INDIA                          5                    1                 1.3347107   0.9369768   1.9012773
0-24 months   ki1000108-IRC              INDIA                          6                    1                 1.1203931   0.7811561   1.6069525
0-24 months   ki1000108-IRC              INDIA                          7                    1                 1.2954545   0.9306897   1.8031815
0-24 months   ki1000108-IRC              INDIA                          8                    1                 1.0991736   0.7732383   1.5624969
0-24 months   ki1000108-IRC              INDIA                          9                    1                 1.1515152   0.7868430   1.6851991
0-24 months   ki1000108-IRC              INDIA                          10                   1                 1.1818182   0.8352396   1.6722078
0-24 months   ki1000108-IRC              INDIA                          11                   1                 0.9931818   0.6787903   1.4531884
0-24 months   ki1000108-IRC              INDIA                          12                   1                 1.1625874   0.8348389   1.6190064
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9773777   0.6976016   1.3693590
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 1.0419269   0.7552158   1.4374853
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.8127530   0.5521643   1.1963241
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.8625134   0.5894403   1.2620946
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0373684   0.7400059   1.4542226
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.0776637   0.7599712   1.5281618
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9851552   0.6756072   1.4365311
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.7765957   0.5147055   1.1717399
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7448980   0.4917057   1.1284657
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9061569   0.6319810   1.2992801
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7684211   0.5193463   1.1369503
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9030337   0.6437346   1.2667797
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7090244   0.4851394   1.0362293
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5400000   0.3609541   0.8078590
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6285405   0.4285716   0.9218138
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7622892   0.5278239   1.1009066
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8471560   0.6099417   1.1766259
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8992241   0.6545876   1.2352877
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7441667   0.5275409   1.0497461
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9165600   0.6719512   1.2502131
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8356561   0.6014430   1.1610762
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8508293   0.6097523   1.1872206
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0286020   0.8375900   1.2631741
0-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8505747   0.6875712   1.0522216
0-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.8201970   0.6400083   1.0511163
0-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.8673348   0.6832577   1.1010042
0-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9491169   0.7433568   1.2118311
0-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9591587   0.7427275   1.2386582
0-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0488019   0.8514061   1.2919633
0-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.0186725   0.8278921   1.2534166
0-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.9134013   0.7483425   1.1148663
0-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8906018   0.7149644   1.1093861
0-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0935961   0.8955228   1.3354796
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.8571429   0.5452669   1.3474024
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9096210   0.5005904   1.6528688
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.3533835   0.9270926   1.9756891
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.4729064   0.2046459   1.0928170
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.7453416   0.4327843   1.2836283
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.8571429   0.5193632   1.4146051
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.7108014   0.4766605   1.0599549
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 0.8198758   0.5619256   1.1962372
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.4897959   0.2422219   0.9904143
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.8803089   0.5576863   1.3895693
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.7535322   0.3660818   1.5510490
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 1.2444444   0.6477334   2.3908634
0-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                 1.5400000   0.8145828   2.9114289
0-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                 1.4000000   0.7305167   2.6830324
0-24 months   ki1114097-CMIN             BANGLADESH                     5                    1                 0.7000000   0.2820603   1.7372172
0-24 months   ki1114097-CMIN             BANGLADESH                     6                    1                 1.4000000   0.6316574   3.1029480
0-24 months   ki1114097-CMIN             BANGLADESH                     7                    1                 0.8235294   0.3381706   2.0054989
0-24 months   ki1114097-CMIN             BANGLADESH                     8                    1                 1.1454545   0.5643848   2.3247722
0-24 months   ki1114097-CMIN             BANGLADESH                     9                    1                 0.8909091   0.4045109   1.9621698
0-24 months   ki1114097-CMIN             BANGLADESH                     10                   1                 1.6592593   0.9213837   2.9880508
0-24 months   ki1114097-CMIN             BANGLADESH                     11                   1                 1.7379310   0.9792319   3.0844627
0-24 months   ki1114097-CMIN             BANGLADESH                     12                   1                 1.5000000   0.8183151   2.7495522
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.5627329   0.3232859   0.9795302
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9788715   0.6298281   1.5213508
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.7190476   0.4265039   1.2122503
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.6933673   0.4149399   1.1586213
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7105882   0.4058508   1.2441409
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.7334286   0.4353482   1.2356029
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.5962834   0.3515269   1.0114556
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.8469763   0.5535392   1.2959676
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9956044   0.6620196   1.4972792
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.8502607   0.5444647   1.3278056
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.8688492   0.5617274   1.3438884
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.8718667   0.7005530   1.0850735
0-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.8598970   0.6973570   1.0603218
0-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.8744194   0.6416970   1.1915426
0-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.8710453   0.6692672   1.1336578
0-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.9037421   0.6348731   1.2864773
0-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.9264972   0.6544549   1.3116215
0-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.8941931   0.6725619   1.1888591
0-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.8669051   0.6462296   1.1629374
0-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.8944409   0.6552352   1.2209732
0-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.7367613   0.6035404   0.8993883
0-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.7562597   0.5840938   0.9791728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9366757   0.8045307   1.0905257
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0108188   0.8757119   1.1667704
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9129912   0.7806392   1.0677826
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9823468   0.8447313   1.1423812
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1149979   0.9690849   1.2828808
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1820179   1.0307471   1.3554890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1173927   0.9743676   1.2814122
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9160200   0.7922972   1.0590630
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0656051   0.9210434   1.2328563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.0959794   0.9531643   1.2601929
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0690512   0.9294814   1.2295785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0193743   0.8762086   1.1859321
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9101097   0.7841982   1.0562376
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.1670885   1.0138531   1.3434842
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.2550206   1.0823730   1.4552070
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.1358469   0.9693549   1.3309350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.0961044   0.9302123   1.2915814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.1509510   1.0092302   1.3125730
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0494563   0.9149879   1.2036865
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0066201   0.8721225   1.1618598
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9646922   0.8386584   1.1096665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9208266   0.8056783   1.0524320
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.2088889   0.6589602   2.2177553
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 1.1698925   0.7025891   1.9480069
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.9787879   0.5885706   1.6277158
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 1.2592593   0.7802649   2.0323020
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 1.3851852   0.8744517   2.1942185
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 0.7555556   0.4213521   1.3548388
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 1.3333333   0.7695380   2.3101884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 1.2952381   0.7622600   2.2008787
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 1.3287356   0.8163863   2.1626261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 1.3821138   0.8801697   2.1703072
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 1.2693333   0.7589149   2.1230407
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2                    1                 1.0178571   0.5767309   1.7963893
0-6 months    ki1000108-IRC              INDIA                          3                    1                 1.4074074   0.8646057   2.2909815
0-6 months    ki1000108-IRC              INDIA                          4                    1                 1.1309524   0.6306931   2.0280121
0-6 months    ki1000108-IRC              INDIA                          5                    1                 1.2954545   0.7594318   2.2098134
0-6 months    ki1000108-IRC              INDIA                          6                    1                 1.3479730   0.8445223   2.1515492
0-6 months    ki1000108-IRC              INDIA                          7                    1                 1.5833333   1.0206248   2.4562841
0-6 months    ki1000108-IRC              INDIA                          8                    1                 1.2954545   0.8172019   2.0535959
0-6 months    ki1000108-IRC              INDIA                          9                    1                 1.1435185   0.6655610   1.9647103
0-6 months    ki1000108-IRC              INDIA                          10                   1                 1.4375000   0.9136219   2.2617741
0-6 months    ki1000108-IRC              INDIA                          11                   1                 1.1875000   0.7308494   1.9294757
0-6 months    ki1000108-IRC              INDIA                          12                   1                 1.4615385   0.9499445   2.2486521
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9924812   0.6408229   1.5371156
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 1.0460048   0.6850927   1.5970483
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0588235   0.6833567   1.6405887
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0495627   0.6727287   1.6374830
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0285714   0.6581135   1.6075633
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.1289199   0.7187226   1.7732295
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9890110   0.6048285   1.6172234
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8753799   0.5349238   1.4325218
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.6822157   0.3939892   1.1812972
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7277628   0.4337183   1.2211583
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4675325   0.2486324   0.8791557
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0292937   0.6430442   1.6475472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7447735   0.4373067   1.2684177
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.4500000   0.2451200   0.8261261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.5281853   0.2962934   0.9415659
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7725904   0.4574636   1.3047943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9805046   0.6221296   1.5453200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0003079   0.6400721   1.5632863
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6220238   0.3693548   1.0475391
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0748571   0.6977070   1.6558783
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9119263   0.5742846   1.4480791
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9533101   0.5988705   1.5175237
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.0914064   0.7300819   1.6315539
0-6 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0482133   0.7107686   1.5458632
0-6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.9685144   0.6172090   1.5197772
0-6 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.8833066   0.5552111   1.4052862
0-6 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.0461858   0.6606171   1.6567913
0-6 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.3463415   0.8523635   2.1265988
0-6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.1977486   0.8029682   1.7866234
0-6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.1542425   0.7771075   1.7144035
0-6 months    ki1101329-Keneba           GAMBIA                         10                   1                 0.6970078   0.4550906   1.0675234
0-6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.8987575   0.5850421   1.3806956
0-6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.7134146   0.4515788   1.1270690
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8496732   0.6755045   1.0687487
0-6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.8468560   0.6837646   1.0488479
0-6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.8724059   0.6384613   1.1920724
0-6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.8535198   0.6505905   1.1197459
0-6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.8711036   0.6091878   1.2456281
0-6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.9136181   0.6426235   1.2988913
0-6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.8859958   0.6650089   1.1804180
0-6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.8530609   0.6375053   1.1415009
0-6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.8705404   0.6375292   1.1887151
0-6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.7271907   0.6071561   0.8709562
0-6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.7409748   0.5652053   0.9714058
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9587921   0.7997290   1.1494924
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9727001   0.8167245   1.1584634
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8547064   0.7053213   1.0357307
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9275030   0.7709012   1.1159172
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1649123   0.9862040   1.3760040
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.3198483   1.1249851   1.5484646
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1883732   1.0107172   1.3972562
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 1.0241084   0.8657840   1.2113852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0745526   0.9020328   1.2800681
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 1.1543240   0.9781899   1.3621730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0749563   0.9088322   1.2714458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0759786   0.8918526   1.2981181
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9475219   0.7836914   1.1456011
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.1403509   0.9560966   1.3601137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.0046838   0.8115949   1.2437111
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.0173913   0.8136062   1.2722188
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8272949   0.6664999   1.0268822
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0533563   0.8768144   1.2654439
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0843191   0.9136956   1.2868048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0321724   0.8668247   1.2290603
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9926323   0.8385263   1.1750602
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9858292   0.8390243   1.1583206
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2                    1                 0.9395604   0.4681705   1.8855818
6-24 months   ki1000108-IRC              INDIA                          3                    1                 0.5413105   0.2185720   1.3405977
6-24 months   ki1000108-IRC              INDIA                          4                    1                 1.1135531   0.5518458   2.2470054
6-24 months   ki1000108-IRC              INDIA                          5                    1                 1.1958042   0.6124451   2.3348178
6-24 months   ki1000108-IRC              INDIA                          6                    1                 0.9480249   0.4990647   1.8008712
6-24 months   ki1000108-IRC              INDIA                          7                    1                 1.0555556   0.5679528   1.9617783
6-24 months   ki1000108-IRC              INDIA                          8                    1                 0.8636364   0.4575433   1.6301579
6-24 months   ki1000108-IRC              INDIA                          9                    1                 1.0826211   0.5588169   2.0974105
6-24 months   ki1000108-IRC              INDIA                          10                   1                 1.2307692   0.6904034   2.1940694
6-24 months   ki1000108-IRC              INDIA                          11                   1                 0.5846154   0.2729801   1.2520147
6-24 months   ki1000108-IRC              INDIA                          12                   1                 0.6183432   0.3113194   1.2281544
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8181818   0.4894359   1.3677410
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7700535   0.4585456   1.2931808
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5708245   0.3035059   1.0735893
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6136364   0.3350792   1.1237628
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.6694215   0.3746426   1.1961402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.6923077   0.3815852   1.2560496
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7941176   0.4431211   1.4231388
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.4789357   0.2376849   0.9650568
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7420719   0.4251675   1.2951852
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.6512059   0.3694849   1.1477306
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7700535   0.4585456   1.2931808
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5429688   0.3231007   0.9124556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.5895089   0.3515296   0.9885959
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.5614371   0.3343676   0.9427096
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6705117   0.4134557   1.0873861
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7756696   0.4859149   1.2382074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.6205357   0.3923706   0.9813799
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7741337   0.5063653   1.1834992
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7318274   0.4702847   1.1388239
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.6682692   0.4301540   1.0381951
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7239583   0.4668169   1.1227436
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7196746   0.4566206   1.1342710
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0526222   0.8285969   1.3372164
6-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8192444   0.6354605   1.0561810
6-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.7567726   0.5611767   1.0205428
6-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.7841117   0.5857682   1.0496152
6-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.9580420   0.7198918   1.2749755
6-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.0036630   0.7496689   1.3437124
6-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0081436   0.7854783   1.2939296
6-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9865794   0.7694919   1.2649112
6-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 0.9822434   0.7812714   1.2349128
6-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8766171   0.6758088   1.1370930
6-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.1771356   0.9353935   1.4813533
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.8571429   0.5452669   1.3474024
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.9096210   0.5005904   1.6528688
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.3533835   0.9270926   1.9756891
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.4729064   0.2046459   1.0928170
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.7453416   0.4327843   1.2836283
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.8571429   0.5193632   1.4146051
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.7108014   0.4766605   1.0599549
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 0.8198758   0.5619256   1.1962372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.4897959   0.2422219   0.9904143
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.8803089   0.5576863   1.3895693
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.7535322   0.3660818   1.5510490
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.4709230   0.2386696   0.9291859
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9096459   0.5405766   1.5306910
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.6849364   0.3730712   1.2575020
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.8224026   0.4744146   1.4256435
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7693632   0.4135038   1.4314735
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.8314732   0.4690614   1.4738958
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.6596812   0.3694851   1.1777993
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.9977679   0.6271558   1.5873898
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.1748609   0.7515613   1.8365742
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0642857   0.6620297   1.7109567
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9675325   0.5974155   1.5669481
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9320855   0.7034857   1.2349695
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1364812   0.8777844   1.4714201
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9316458   0.6999980   1.2399520
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0445240   0.7923568   1.3769432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9430499   0.7154521   1.2430505
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.8402291   0.6315186   1.1179162
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9196899   0.7001737   1.2080282
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.6189276   0.4566881   0.8388032
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0610411   0.8065354   1.3958571
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9899085   0.7578349   1.2930506
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0199438   0.7850276   1.3251576
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9407571   0.7331263   1.2071918
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8200831   0.6261019   1.0741642
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 1.0281897   0.7998408   1.3217305
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 1.2801969   1.0066212   1.6281241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 1.0790992   0.8436987   1.3801789
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 1.1675245   0.9155688   1.4888161
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0660790   0.8535267   1.3315627
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0283121   0.8071009   1.3101531
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0184393   0.8057698   1.2872393
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9032762   0.7116963   1.1464271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.8371681   0.6584098   1.0644594


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0771502   -0.0719909    0.2262913
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0429838   -0.1507574    0.0647897
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0561706   -0.1215586    0.0092173
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0177912   -0.0704661    0.0348837
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0608009   -0.1261875    0.0045857
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.0987395   -0.0704417    0.2679207
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0433342   -0.1066955    0.0200271
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0412383   -0.1133456    0.0308690
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0079713   -0.0133287    0.0292713
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0089567   -0.0153397    0.0332531
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0778453   -0.0814746    0.2371651
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.1228498   -0.0269962    0.2726958
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0319757   -0.1377100    0.0737586
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0247611   -0.0779595    0.0284374
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0034863   -0.0466017    0.0396291
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0454827   -0.1174347    0.0264692
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0108693   -0.0084000    0.0301386
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0028170   -0.0186062    0.0242402
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0323492   -0.1758358    0.1111375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1135072   -0.2369892    0.0099747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0696608   -0.1366064   -0.0027153
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0150971   -0.0679384    0.0377443
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0608009   -0.1261875    0.0045857
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0212528   -0.0804615    0.0379559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0049754   -0.0220765    0.0121256
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0009224   -0.0259466    0.0277914


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1175895   -0.1421481    0.3182598
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0900064   -0.3408885    0.1139352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2377823   -0.5478204    0.0101532
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0475572   -0.1982678    0.0841980
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.2633605   -0.6085406    0.0077467
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                 0.2165899   -0.2586442    0.5123869
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2299459   -0.6161192    0.0639509
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1553028   -0.4313719    0.0675208
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0339583   -0.0611772    0.1205648
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0338870   -0.0626462    0.1216509
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1499846   -0.2201490    0.4078378
0-6 months    ki1000108-IRC              INDIA                          1                    NA                 0.2258674   -0.1059101    0.4581103
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0895896   -0.4300627    0.1698228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1781606   -0.6300782    0.1484688
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0218970   -0.3319690    0.2159927
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.1749966   -0.4535402    0.0501694
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0600349   -0.0526414    0.1606502
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0154524   -0.1092918    0.1261686
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1044343   -0.6799327    0.2739143
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3862101   -0.8776149   -0.0234146
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4338751   -0.9164352   -0.0728241
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0476219   -0.2282949    0.1064755
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.2633605   -0.6085406    0.0077467
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.1275168   -0.5448823    0.1770933
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0529427   -0.2515572    0.1141529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0055846   -0.1711661    0.1556602
