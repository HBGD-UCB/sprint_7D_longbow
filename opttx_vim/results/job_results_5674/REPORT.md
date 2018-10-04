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
0-24 months   ki1000109-EE               PAKISTAN                       1                     0       14     758
0-24 months   ki1000109-EE               PAKISTAN                       1                     1      176     758
0-24 months   ki1000109-EE               PAKISTAN                       2                     0       16     758
0-24 months   ki1000109-EE               PAKISTAN                       2                     1      118     758
0-24 months   ki1000109-EE               PAKISTAN                       3                     0       10     758
0-24 months   ki1000109-EE               PAKISTAN                       3                     1       74     758
0-24 months   ki1000109-EE               PAKISTAN                       4                     0        2     758
0-24 months   ki1000109-EE               PAKISTAN                       4                     1       30     758
0-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     758
0-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     758
0-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     758
0-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     758
0-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     758
0-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     758
0-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     758
0-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     758
0-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     758
0-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     758
0-24 months   ki1000109-EE               PAKISTAN                       10                    0        2     758
0-24 months   ki1000109-EE               PAKISTAN                       10                    1        6     758
0-24 months   ki1000109-EE               PAKISTAN                       11                    0       12     758
0-24 months   ki1000109-EE               PAKISTAN                       11                    1      128     758
0-24 months   ki1000109-EE               PAKISTAN                       12                    0       10     758
0-24 months   ki1000109-EE               PAKISTAN                       12                    1      160     758
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        2    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       78    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1      180    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      142    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1      328    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      172    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1      302    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0    1204
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2445   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2628   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     2112   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1     2023   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     2726   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1     2136   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     2002   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1     1546   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1367   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1     1282   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1481   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1     1317   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1679   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1     1471   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     2219   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1     2087   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     2943   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1     2649   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     2883   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1     3046   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     2714   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1     3375   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     2963   54413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1     3319   54413
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      733   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      974   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      813   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1     1147   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      583   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      921   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      534   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      722   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      364   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      550   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      388   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      683   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      459   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      646   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      385   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1      411   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0      141   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1      123   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0   10577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0   10577
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
0-6 months    ki1000109-EE               PAKISTAN                       1                     0       38     758
0-6 months    ki1000109-EE               PAKISTAN                       1                     1      152     758
0-6 months    ki1000109-EE               PAKISTAN                       2                     0       38     758
0-6 months    ki1000109-EE               PAKISTAN                       2                     1       96     758
0-6 months    ki1000109-EE               PAKISTAN                       3                     0       36     758
0-6 months    ki1000109-EE               PAKISTAN                       3                     1       48     758
0-6 months    ki1000109-EE               PAKISTAN                       4                     0        4     758
0-6 months    ki1000109-EE               PAKISTAN                       4                     1       28     758
0-6 months    ki1000109-EE               PAKISTAN                       5                     0        0     758
0-6 months    ki1000109-EE               PAKISTAN                       5                     1        0     758
0-6 months    ki1000109-EE               PAKISTAN                       6                     0        0     758
0-6 months    ki1000109-EE               PAKISTAN                       6                     1        0     758
0-6 months    ki1000109-EE               PAKISTAN                       7                     0        0     758
0-6 months    ki1000109-EE               PAKISTAN                       7                     1        0     758
0-6 months    ki1000109-EE               PAKISTAN                       8                     0        0     758
0-6 months    ki1000109-EE               PAKISTAN                       8                     1        0     758
0-6 months    ki1000109-EE               PAKISTAN                       9                     0        0     758
0-6 months    ki1000109-EE               PAKISTAN                       9                     1        0     758
0-6 months    ki1000109-EE               PAKISTAN                       10                    0        4     758
0-6 months    ki1000109-EE               PAKISTAN                       10                    1        4     758
0-6 months    ki1000109-EE               PAKISTAN                       11                    0       36     758
0-6 months    ki1000109-EE               PAKISTAN                       11                    1      104     758
0-6 months    ki1000109-EE               PAKISTAN                       12                    0       42     758
0-6 months    ki1000109-EE               PAKISTAN                       12                    1      128     758
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                     1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                     1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                     1        2    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                     1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     0      192    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                     1       66    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     0      334    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                     1      136    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     0      344    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                     1      130    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                     1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                    1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                    1        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    0        0    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                    1        0    1204
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2846   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2220   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     0     2514   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                     1     1618   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     0     3096   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                     1     1760   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     0     2306   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                     1     1238   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1684   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                     1      956   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1846   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                     1      944   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     0     2060   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                     1     1088   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     0     2604   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                     1     1700   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     0     3322   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                     1     2264   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    0     3270   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                    1     2648   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    0     3114   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                    1     2964   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    0     3356   54340
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                    1     2922   54340
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     0      998   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     2                     1      580   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     0     1200   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     3                     1      670   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     0      928   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     4                     1      532   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     0      810   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     5                     1      418   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     0      602   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     6                     1      306   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     0      686   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     7                     1      382   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     0      748   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     8                     1      352   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     0      532   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     9                     1      254   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    0      188   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     10                    1       74   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0   10260
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0   10260
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
6-24 months   ki1000109-EE               PAKISTAN                       1                     0       12     194
6-24 months   ki1000109-EE               PAKISTAN                       1                     1       24     194
6-24 months   ki1000109-EE               PAKISTAN                       2                     0       16     194
6-24 months   ki1000109-EE               PAKISTAN                       2                     1       22     194
6-24 months   ki1000109-EE               PAKISTAN                       3                     0        8     194
6-24 months   ki1000109-EE               PAKISTAN                       3                     1       26     194
6-24 months   ki1000109-EE               PAKISTAN                       4                     0        2     194
6-24 months   ki1000109-EE               PAKISTAN                       4                     1        2     194
6-24 months   ki1000109-EE               PAKISTAN                       5                     0        0     194
6-24 months   ki1000109-EE               PAKISTAN                       5                     1        0     194
6-24 months   ki1000109-EE               PAKISTAN                       6                     0        0     194
6-24 months   ki1000109-EE               PAKISTAN                       6                     1        0     194
6-24 months   ki1000109-EE               PAKISTAN                       7                     0        0     194
6-24 months   ki1000109-EE               PAKISTAN                       7                     1        0     194
6-24 months   ki1000109-EE               PAKISTAN                       8                     0        0     194
6-24 months   ki1000109-EE               PAKISTAN                       8                     1        0     194
6-24 months   ki1000109-EE               PAKISTAN                       9                     0        0     194
6-24 months   ki1000109-EE               PAKISTAN                       9                     1        0     194
6-24 months   ki1000109-EE               PAKISTAN                       10                    0        2     194
6-24 months   ki1000109-EE               PAKISTAN                       10                    1        2     194
6-24 months   ki1000109-EE               PAKISTAN                       11                    0       12     194
6-24 months   ki1000109-EE               PAKISTAN                       11                    1       24     194
6-24 months   ki1000109-EE               PAKISTAN                       12                    0       10     194
6-24 months   ki1000109-EE               PAKISTAN                       12                    1       32     194
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                     1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                     1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                     1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                     1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     0       72     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                     1      114     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     0      138     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                     1      192     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     0      164     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                     1      172     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                     1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                    1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                    1        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    0        0     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                    1        0     852
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1229   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      408   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     0     1058   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                     1      405   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     0     1498   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                     1      376   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     0     1260   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                     1      308   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     0     1181   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                     1      326   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     0     1303   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                     1      373   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     0     1387   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                     1      383   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     0     1585   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                     1      387   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     0     1607   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                     1      385   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    0     1537   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                    1      398   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    0     1430   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                    1      411   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    0     1361   20993
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                    1      397   20993
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0        0    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1        0    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     0      733    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                     1      394    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     0      805    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                     1      477    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     0      583    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                     1      389    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     0      530    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                     1      304    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     0      362    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                     1      244    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     0      388    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                     1      301    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     0      459    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                     1      294    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     0      381    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                     1      157    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    0      141    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                    1       49    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    0        0    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                    1        0    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    0        0    6991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                    1        0    6991


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
![](/tmp/b311acf7-1c57-4eca-82d8-7df276eeeae2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b311acf7-1c57-4eca-82d8-7df276eeeae2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6083784   0.3667468   0.8500100
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4205489   0.2348462   0.6062515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6297783   0.5477349   0.7118218
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.6645071   0.5269854   0.8020287
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2988923   0.2317025   0.3660820
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4646075   0.4076857   0.5215293
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3129793   0.2306060   0.3953525
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.4284154   0.3492913   0.5075395
0-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3059739   0.1788751   0.4330727
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1407266   0.1115089   0.1699443
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3397804   0.3141032   0.3654576
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6367808   0.4844651   0.7890964
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4360570   0.4118604   0.4602535
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3594365   0.2171009   0.5017721
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4251973   0.2326770   0.6177176
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3273623   0.2867121   0.3680125
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2164430   0.1072040   0.3256821
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1569807   0.1023157   0.2116456
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2682338   0.2091187   0.3273489
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0818798   0.0572488   0.1065108
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2013036   0.1795676   0.2230395
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3383918   0.3105855   0.3661982
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3905072   0.2995407   0.4814737
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5746643   0.3692846   0.7800440
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1708686   0.1038622   0.2378750
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3088158   0.2458422   0.3717894
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3178568   0.2354890   0.4002246
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.3706860   0.2818476   0.4595244
6-24 months   ki1114097-CMIN             PERU                           optimal              NA                0.3453014   0.2440351   0.4465677
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0609647   0.0382723   0.0836571
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2181126   0.1847062   0.2515190
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5985142   0.4638853   0.7331431
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1931700   0.1649088   0.2214313


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6069889   0.5480869   0.6658909
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6221700   0.5674395   0.6769006
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6911251   0.6507213   0.7315289
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6636797   0.6267525   0.7006070
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3462319   0.3271808   0.3652830
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5125153   0.4943670   0.5306637
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3610388   0.3117896   0.4102879
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.4283613   0.4033670   0.4533555
0-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3932831   0.3618603   0.4247058
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1673889   0.1487083   0.1860695
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3966656   0.3885828   0.4047483
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6368553   0.6043155   0.6693951
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4939770   0.4861417   0.5018124
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5109771   0.4598346   0.5621197
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4254375   0.3775377   0.4733372
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4251807   0.3974107   0.4529507
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3499445   0.3126460   0.3872429
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1951121   0.1792473   0.2109768
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3124009   0.2941013   0.3307004
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0991439   0.0860993   0.1121885
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2580272   0.2507926   0.2652618
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4108507   0.4034114   0.4182900
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5029858   0.4587599   0.5472117
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5748123   0.5225557   0.6270689
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2260454   0.2055595   0.2465313
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3588708   0.3379313   0.3798102
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3624113   0.3131621   0.4116605
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3721265   0.3463032   0.3979499
6-24 months   ki1114097-CMIN             PERU                           observed             NA                0.3453797   0.3123553   0.3784041
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0765816   0.0626163   0.0905469
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2460002   0.2365373   0.2554630
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5998768   0.5643145   0.6354391
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2170569   0.2076986   0.2264153


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          1.0022891   0.6870825   1.4621003
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.6759388   0.4427672   1.0319040
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9112364   0.8124801   1.0219964
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          1.0012466   0.8218148   1.2198548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8632718   0.6948918   1.0724522
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9065241   0.8070501   1.0182588
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8668854   0.6770851   1.1098906
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          1.0001263   0.8362299   1.1961455
0-24 months   ki1114097-CMIN             PERU                           optimal              observed          0.7779992   0.5186371   1.1670641
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8407165   0.7145523   0.9891567
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8565916   0.7969006   0.9207537
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9998829   0.7944226   1.2584811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8827474   0.8380908   0.9297834
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.7034297   0.4835240   1.0233481
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          0.9994354   0.6484530   1.5403911
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7699369   0.6990447   0.8480184
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.6185068   0.3795071   1.0080198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8045668   0.5740620   1.1276271
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          0.8586206   0.6950052   1.0607536
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.8258687   0.6421150   1.0622071
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7801642   0.7033179   0.8654069
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8236369   0.7606971   0.8917842
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7763782   0.6353409   0.9487238
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.9997425   0.7110814   1.4055845
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7559039   0.5170017   1.1052009
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.8605210   0.7087610   1.0447759
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8770610   0.6877849   1.1184252
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.9961289   0.7909959   1.2544601
6-24 months   ki1114097-CMIN             PERU                           optimal              observed          0.9997731   0.7517466   1.3296320
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.7960744   0.6007599   1.0548880
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8866359   0.7647521   1.0279452
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9977286   0.8027828   1.2400145
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8899510   0.7751443   1.0217617
