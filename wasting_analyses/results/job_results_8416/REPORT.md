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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        month    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       25     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       24     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       15     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       26     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       20     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       10     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       17     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       28     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       20     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       21     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       14     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       17     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                0       19     241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                0       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                0       14     241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                0        6     241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                0       15     241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                0       22     241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19     241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0     241
0-24 months   ki0047075b-MAL-ED          INDIA                          10               0       25     241
0-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22     241
0-24 months   ki0047075b-MAL-ED          INDIA                          11               1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          12               0       19     241
0-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       24     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       20     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       40     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           2                0       25     284
0-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           3                0       21     284
0-24 months   ki0047075b-MAL-ED          PERU                           3                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           4                0       20     284
0-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           5                0       24     284
0-24 months   ki0047075b-MAL-ED          PERU                           5                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           6                0       19     284
0-24 months   ki0047075b-MAL-ED          PERU                           6                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           7                0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           8                0       16     284
0-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           9                0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           9                1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           10               0       21     284
0-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           11               0       33     284
0-24 months   ki0047075b-MAL-ED          PERU                           11               1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           12               0       20     284
0-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       18     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       24     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       39     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        3     373
0-24 months   ki1000108-IRC              INDIA                          1                0       33     410
0-24 months   ki1000108-IRC              INDIA                          1                1        3     410
0-24 months   ki1000108-IRC              INDIA                          2                0       25     410
0-24 months   ki1000108-IRC              INDIA                          2                1        2     410
0-24 months   ki1000108-IRC              INDIA                          3                0       28     410
0-24 months   ki1000108-IRC              INDIA                          3                1        1     410
0-24 months   ki1000108-IRC              INDIA                          4                0       20     410
0-24 months   ki1000108-IRC              INDIA                          4                1        2     410
0-24 months   ki1000108-IRC              INDIA                          5                0       19     410
0-24 months   ki1000108-IRC              INDIA                          5                1        2     410
0-24 months   ki1000108-IRC              INDIA                          6                0       32     410
0-24 months   ki1000108-IRC              INDIA                          6                1        5     410
0-24 months   ki1000108-IRC              INDIA                          7                0       31     410
0-24 months   ki1000108-IRC              INDIA                          7                1        5     410
0-24 months   ki1000108-IRC              INDIA                          8                0       36     410
0-24 months   ki1000108-IRC              INDIA                          8                1        9     410
0-24 months   ki1000108-IRC              INDIA                          9                0       22     410
0-24 months   ki1000108-IRC              INDIA                          9                1        5     410
0-24 months   ki1000108-IRC              INDIA                          10               0       31     410
0-24 months   ki1000108-IRC              INDIA                          10               1        6     410
0-24 months   ki1000108-IRC              INDIA                          11               0       38     410
0-24 months   ki1000108-IRC              INDIA                          11               1        3     410
0-24 months   ki1000108-IRC              INDIA                          12               0       47     410
0-24 months   ki1000108-IRC              INDIA                          12               1        5     410
0-24 months   ki1000109-EE               PAKISTAN                       1                0      164     754
0-24 months   ki1000109-EE               PAKISTAN                       1                1       16     754
0-24 months   ki1000109-EE               PAKISTAN                       2                0      154     754
0-24 months   ki1000109-EE               PAKISTAN                       2                1        8     754
0-24 months   ki1000109-EE               PAKISTAN                       3                0       74     754
0-24 months   ki1000109-EE               PAKISTAN                       3                1       10     754
0-24 months   ki1000109-EE               PAKISTAN                       4                0       52     754
0-24 months   ki1000109-EE               PAKISTAN                       4                1        6     754
0-24 months   ki1000109-EE               PAKISTAN                       5                0        4     754
0-24 months   ki1000109-EE               PAKISTAN                       5                1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       6                0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       6                1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       7                0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       7                1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       8                0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       8                1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       9                0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       9                1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       10               0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       10               1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       11               0       92     754
0-24 months   ki1000109-EE               PAKISTAN                       11               1        6     754
0-24 months   ki1000109-EE               PAKISTAN                       12               0      158     754
0-24 months   ki1000109-EE               PAKISTAN                       12               1       10     754
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                0        9     251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                0       14     251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                1        0     251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                0       24     251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                1        6     251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                0       29     251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                0       44     251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3     251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                0       31     251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4     251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                0       28     251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                1        8     251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                0       21     251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                1        1     251
0-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       10               1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       11               1        1     251
0-24 months   ki1000109-ResPak           PAKISTAN                       12               0        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0     251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       81    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       13    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       74    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        6    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       73    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        7    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       71    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        7    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       70    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        9    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0      102    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        4    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0      105    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       11    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      138    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       15    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      154    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       14    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      139    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        9    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0      117    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       12    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      128    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        7    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       50     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        6     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       33     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       26     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0       19     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        4     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       14     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        9     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       23     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       42     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       46     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       15     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3     534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      168    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      149    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10    2166
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      113    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       13    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0       95    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1        9    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0       89    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       14    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0       87    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       12    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0       96    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       17    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      171    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       20    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      194    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       20    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      176    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      134    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       17    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      181    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       19    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0       77    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       11    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0       56    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       14    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        4    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      212    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       40    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      400    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       64    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0      366    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1       60    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0       24    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        4    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        6    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        2    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        2    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0    1184
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30     257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16     257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1     257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13     257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1     257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18     257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     257
0-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21     257
0-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40     257
0-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6     257
0-24 months   ki1114097-CMIN             BRAZIL                         1                0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                0        6     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10               0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10               1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11               0       12     119
0-24 months   ki1114097-CMIN             BRAZIL                         11               1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12               0       10     119
0-24 months   ki1114097-CMIN             BRAZIL                         12               1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       28    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      116    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      127    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0      189    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        8    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      145    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        3    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       75    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        2    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       64    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        3    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       61    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        5    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      122    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       39    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        2    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       52    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       99    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        2    1153
0-24 months   ki1114097-CMIN             PERU                           1                0       47     830
0-24 months   ki1114097-CMIN             PERU                           1                1        0     830
0-24 months   ki1114097-CMIN             PERU                           2                0      131     830
0-24 months   ki1114097-CMIN             PERU                           2                1        1     830
0-24 months   ki1114097-CMIN             PERU                           3                0      109     830
0-24 months   ki1114097-CMIN             PERU                           3                1        2     830
0-24 months   ki1114097-CMIN             PERU                           4                0       75     830
0-24 months   ki1114097-CMIN             PERU                           4                1        0     830
0-24 months   ki1114097-CMIN             PERU                           5                0       85     830
0-24 months   ki1114097-CMIN             PERU                           5                1        0     830
0-24 months   ki1114097-CMIN             PERU                           6                0       53     830
0-24 months   ki1114097-CMIN             PERU                           6                1        0     830
0-24 months   ki1114097-CMIN             PERU                           7                0       53     830
0-24 months   ki1114097-CMIN             PERU                           7                1        0     830
0-24 months   ki1114097-CMIN             PERU                           8                0       70     830
0-24 months   ki1114097-CMIN             PERU                           8                1        0     830
0-24 months   ki1114097-CMIN             PERU                           9                0       48     830
0-24 months   ki1114097-CMIN             PERU                           9                1        0     830
0-24 months   ki1114097-CMIN             PERU                           10               0       38     830
0-24 months   ki1114097-CMIN             PERU                           10               1        1     830
0-24 months   ki1114097-CMIN             PERU                           11               0       70     830
0-24 months   ki1114097-CMIN             PERU                           11               1        0     830
0-24 months   ki1114097-CMIN             PERU                           12               0       46     830
0-24 months   ki1114097-CMIN             PERU                           12               1        1     830
0-24 months   ki1114097-CONTENT          PERU                           1                0        9     215
0-24 months   ki1114097-CONTENT          PERU                           1                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                0       13     215
0-24 months   ki1114097-CONTENT          PERU                           2                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                0       27     215
0-24 months   ki1114097-CONTENT          PERU                           3                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4                0       18     215
0-24 months   ki1114097-CONTENT          PERU                           4                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                0       25     215
0-24 months   ki1114097-CONTENT          PERU                           5                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           6                0       14     215
0-24 months   ki1114097-CONTENT          PERU                           6                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                0       16     215
0-24 months   ki1114097-CONTENT          PERU                           7                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                0       26     215
0-24 months   ki1114097-CONTENT          PERU                           8                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           9                0       19     215
0-24 months   ki1114097-CONTENT          PERU                           9                1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10               0       23     215
0-24 months   ki1114097-CONTENT          PERU                           10               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           11               0       18     215
0-24 months   ki1114097-CONTENT          PERU                           11               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12               0        7     215
0-24 months   ki1114097-CONTENT          PERU                           12               1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                0     1135   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                1       13   16581
0-24 months   ki1119695-PROBIT           BELARUS                        2                0      978   16581
0-24 months   ki1119695-PROBIT           BELARUS                        2                1        8   16581
0-24 months   ki1119695-PROBIT           BELARUS                        3                0     1158   16581
0-24 months   ki1119695-PROBIT           BELARUS                        3                1       11   16581
0-24 months   ki1119695-PROBIT           BELARUS                        4                0     1106   16581
0-24 months   ki1119695-PROBIT           BELARUS                        4                1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        5                0     1120   16581
0-24 months   ki1119695-PROBIT           BELARUS                        5                1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        6                0     1171   16581
0-24 months   ki1119695-PROBIT           BELARUS                        6                1       20   16581
0-24 months   ki1119695-PROBIT           BELARUS                        7                0     1438   16581
0-24 months   ki1119695-PROBIT           BELARUS                        7                1       15   16581
0-24 months   ki1119695-PROBIT           BELARUS                        8                0     1567   16581
0-24 months   ki1119695-PROBIT           BELARUS                        8                1       14   16581
0-24 months   ki1119695-PROBIT           BELARUS                        9                0     1547   16581
0-24 months   ki1119695-PROBIT           BELARUS                        9                1       11   16581
0-24 months   ki1119695-PROBIT           BELARUS                        10               0     1748   16581
0-24 months   ki1119695-PROBIT           BELARUS                        10               1       15   16581
0-24 months   ki1119695-PROBIT           BELARUS                        11               0     1660   16581
0-24 months   ki1119695-PROBIT           BELARUS                        11               1       20   16581
0-24 months   ki1119695-PROBIT           BELARUS                        12               0     1794   16581
0-24 months   ki1119695-PROBIT           BELARUS                        12               1        8   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      904    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       25    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      662    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       10    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      746    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      708    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      677    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      765    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      761    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       15    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      814    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      852    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      637    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      754    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      865    9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       15    9312
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49     719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100     719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2     719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88     719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97     719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85     719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75     719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60     719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38     719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24     719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30     719
0-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41     719
0-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26     719
0-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2     719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     2426   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      118   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     2140   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      108   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0     2586   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1      152   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0     2110   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1      156   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0     2052   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1      110   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0     2024   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1      152   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0     2232   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1      138   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0     2542   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1      164   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0     2714   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1      172   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0     2902   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1      212   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0     2944   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1      160   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0     2890   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1      154   31358
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0      100   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        6   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      676   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       38   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      844   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       72   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0     1666   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1      144   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0     1118   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1      109   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      822   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       88   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0     1548   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1      178   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      976   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       65   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      776   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       59   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      543   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       32   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0      270   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1       30   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0      138   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        9   10307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       25     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0        8     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       19     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       24     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       22     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       21     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       16     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       26     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       13     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       26     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       10     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       20     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                0       10     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       17     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       28     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       14     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       17     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                0       20     240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                0       15     240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                0        7     240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                1        1     240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                0       14     240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                1        3     240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                0       21     240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          10               0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          10               1        3     240
0-6 months    ki0047075b-MAL-ED          INDIA                          11               0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          11               1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          12               0       20     240
0-6 months    ki0047075b-MAL-ED          INDIA                          12               1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       24     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                0       17     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                0       19     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                0       21     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                0       19     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                1        2     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                0       17     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               0       22     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               0       23     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               0       16     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       40     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           2                0       25     284
0-6 months    ki0047075b-MAL-ED          PERU                           2                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           3                0       21     284
0-6 months    ki0047075b-MAL-ED          PERU                           3                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           4                0       20     284
0-6 months    ki0047075b-MAL-ED          PERU                           4                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           5                0       24     284
0-6 months    ki0047075b-MAL-ED          PERU                           5                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           6                0       19     284
0-6 months    ki0047075b-MAL-ED          PERU                           6                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           7                0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           7                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           8                0       17     284
0-6 months    ki0047075b-MAL-ED          PERU                           8                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           9                0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           9                1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           10               0       21     284
0-6 months    ki0047075b-MAL-ED          PERU                           10               1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           11               0       33     284
0-6 months    ki0047075b-MAL-ED          PERU                           11               1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           12               0       20     284
0-6 months    ki0047075b-MAL-ED          PERU                           12               1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       33     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       26     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       27     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       18     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       21     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       22     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       35     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        7     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       29     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       28     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        5     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       17     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       34     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       23     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        6     358
0-6 months    ki1000108-IRC              INDIA                          1                0       30     402
0-6 months    ki1000108-IRC              INDIA                          1                1        5     402
0-6 months    ki1000108-IRC              INDIA                          2                0       23     402
0-6 months    ki1000108-IRC              INDIA                          2                1        4     402
0-6 months    ki1000108-IRC              INDIA                          3                0       24     402
0-6 months    ki1000108-IRC              INDIA                          3                1        5     402
0-6 months    ki1000108-IRC              INDIA                          4                0       20     402
0-6 months    ki1000108-IRC              INDIA                          4                1        2     402
0-6 months    ki1000108-IRC              INDIA                          5                0       18     402
0-6 months    ki1000108-IRC              INDIA                          5                1        2     402
0-6 months    ki1000108-IRC              INDIA                          6                0       29     402
0-6 months    ki1000108-IRC              INDIA                          6                1        7     402
0-6 months    ki1000108-IRC              INDIA                          7                0       29     402
0-6 months    ki1000108-IRC              INDIA                          7                1        6     402
0-6 months    ki1000108-IRC              INDIA                          8                0       36     402
0-6 months    ki1000108-IRC              INDIA                          8                1        9     402
0-6 months    ki1000108-IRC              INDIA                          9                0       23     402
0-6 months    ki1000108-IRC              INDIA                          9                1        2     402
0-6 months    ki1000108-IRC              INDIA                          10               0       29     402
0-6 months    ki1000108-IRC              INDIA                          10               1        8     402
0-6 months    ki1000108-IRC              INDIA                          11               0       36     402
0-6 months    ki1000108-IRC              INDIA                          11               1        4     402
0-6 months    ki1000108-IRC              INDIA                          12               0       41     402
0-6 months    ki1000108-IRC              INDIA                          12               1       10     402
0-6 months    ki1000109-EE               PAKISTAN                       1                0      152     732
0-6 months    ki1000109-EE               PAKISTAN                       1                1       22     732
0-6 months    ki1000109-EE               PAKISTAN                       2                0      142     732
0-6 months    ki1000109-EE               PAKISTAN                       2                1       14     732
0-6 months    ki1000109-EE               PAKISTAN                       3                0       78     732
0-6 months    ki1000109-EE               PAKISTAN                       3                1        4     732
0-6 months    ki1000109-EE               PAKISTAN                       4                0       52     732
0-6 months    ki1000109-EE               PAKISTAN                       4                1        4     732
0-6 months    ki1000109-EE               PAKISTAN                       5                0        4     732
0-6 months    ki1000109-EE               PAKISTAN                       5                1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       6                0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       6                1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       7                0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       7                1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       8                0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       8                1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       9                0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       9                1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       10               0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       10               1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       11               0       94     732
0-6 months    ki1000109-EE               PAKISTAN                       11               1        4     732
0-6 months    ki1000109-EE               PAKISTAN                       12               0      156     732
0-6 months    ki1000109-EE               PAKISTAN                       12               1        6     732
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                0       10     240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                0       13     240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                0       26     240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                1        4     240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                0       28     240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                1        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                0       42     240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                1        4     240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                0       30     240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                0       27     240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                1        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                0       20     240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       10               0        6     240
0-6 months    ki1000109-ResPak           PAKISTAN                       10               1        0     240
0-6 months    ki1000109-ResPak           PAKISTAN                       11               0        6     240
0-6 months    ki1000109-ResPak           PAKISTAN                       11               1        0     240
0-6 months    ki1000109-ResPak           PAKISTAN                       12               0        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       12               1        0     240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      193    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        9    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      130    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      155    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      135    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        3    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      156    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      145    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        2    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      147    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      191    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      195    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      192    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      199    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9    2061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                0      194    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                1       34    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      386    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                1       46    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                0      356    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                1       46    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               0       18    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        2    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        2    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0    1084
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       24     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1        3     234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                0       27     234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                0       17     234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                0       15     234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                1        2     234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                0       20     234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                0       10     234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                0       14     234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     10               0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     10               1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     11               0        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     11               1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     12               0       43     234
0-6 months    ki1114097-CMIN             BANGLADESH                     12               1        0     234
0-6 months    ki1114097-CMIN             PERU                           1                0       40     558
0-6 months    ki1114097-CMIN             PERU                           1                1        0     558
0-6 months    ki1114097-CMIN             PERU                           2                0       42     558
0-6 months    ki1114097-CMIN             PERU                           2                1        1     558
0-6 months    ki1114097-CMIN             PERU                           3                0       57     558
0-6 months    ki1114097-CMIN             PERU                           3                1        2     558
0-6 months    ki1114097-CMIN             PERU                           4                0       61     558
0-6 months    ki1114097-CMIN             PERU                           4                1        1     558
0-6 months    ki1114097-CMIN             PERU                           5                0       68     558
0-6 months    ki1114097-CMIN             PERU                           5                1        2     558
0-6 months    ki1114097-CMIN             PERU                           6                0       48     558
0-6 months    ki1114097-CMIN             PERU                           6                1        1     558
0-6 months    ki1114097-CMIN             PERU                           7                0       41     558
0-6 months    ki1114097-CMIN             PERU                           7                1        0     558
0-6 months    ki1114097-CMIN             PERU                           8                0       45     558
0-6 months    ki1114097-CMIN             PERU                           8                1        1     558
0-6 months    ki1114097-CMIN             PERU                           9                0       37     558
0-6 months    ki1114097-CMIN             PERU                           9                1        0     558
0-6 months    ki1114097-CMIN             PERU                           10               0       31     558
0-6 months    ki1114097-CMIN             PERU                           10               1        1     558
0-6 months    ki1114097-CMIN             PERU                           11               0       42     558
0-6 months    ki1114097-CMIN             PERU                           11               1        1     558
0-6 months    ki1114097-CMIN             PERU                           12               0       34     558
0-6 months    ki1114097-CMIN             PERU                           12               1        2     558
0-6 months    ki1114097-CONTENT          PERU                           1                0        9     215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                0       13     215
0-6 months    ki1114097-CONTENT          PERU                           2                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                0       27     215
0-6 months    ki1114097-CONTENT          PERU                           3                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                0       18     215
0-6 months    ki1114097-CONTENT          PERU                           4                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                0       25     215
0-6 months    ki1114097-CONTENT          PERU                           5                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                0       14     215
0-6 months    ki1114097-CONTENT          PERU                           6                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                0       16     215
0-6 months    ki1114097-CONTENT          PERU                           7                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                0       26     215
0-6 months    ki1114097-CONTENT          PERU                           8                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                0       19     215
0-6 months    ki1114097-CONTENT          PERU                           9                1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10               0       23     215
0-6 months    ki1114097-CONTENT          PERU                           10               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11               0       18     215
0-6 months    ki1114097-CONTENT          PERU                           11               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12               0        7     215
0-6 months    ki1114097-CONTENT          PERU                           12               1        0     215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       18     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       17     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       21     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       18     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       21     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       18     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       14     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       22     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       18     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0        9     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       18     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0        9     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       17     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       14     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       27     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       17     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       19     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       12     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1     197
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       16     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          2                0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          2                1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          3                0       19     231
6-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          4                0       13     231
6-24 months   ki0047075b-MAL-ED          INDIA                          4                1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          5                0        6     231
6-24 months   ki0047075b-MAL-ED          INDIA                          5                1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          6                0       15     231
6-24 months   ki0047075b-MAL-ED          INDIA                          6                1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          7                0       20     231
6-24 months   ki0047075b-MAL-ED          INDIA                          7                1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          8                0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          8                1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          9                0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          9                1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          10               0       24     231
6-24 months   ki0047075b-MAL-ED          INDIA                          10               1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          11               0       21     231
6-24 months   ki0047075b-MAL-ED          INDIA                          11               1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          12               0       19     231
6-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       24     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       15     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       19     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       19     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       21     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       19     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       16     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       22     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       22     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       35     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           2                0       22     251
6-24 months   ki0047075b-MAL-ED          PERU                           2                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           3                0       20     251
6-24 months   ki0047075b-MAL-ED          PERU                           3                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           4                0       18     251
6-24 months   ki0047075b-MAL-ED          PERU                           4                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           5                0       19     251
6-24 months   ki0047075b-MAL-ED          PERU                           5                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           6                0       18     251
6-24 months   ki0047075b-MAL-ED          PERU                           6                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           7                0       19     251
6-24 months   ki0047075b-MAL-ED          PERU                           7                1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           8                0       14     251
6-24 months   ki0047075b-MAL-ED          PERU                           8                1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           9                0       20     251
6-24 months   ki0047075b-MAL-ED          PERU                           9                1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           10               0       17     251
6-24 months   ki0047075b-MAL-ED          PERU                           10               1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           11               0       29     251
6-24 months   ki0047075b-MAL-ED          PERU                           11               1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           12               0       18     251
6-24 months   ki0047075b-MAL-ED          PERU                           12               1        0     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       33     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       26     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       18     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       12     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       16     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       23     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0        8     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       23     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       26     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       35     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       20     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       25     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       16     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       20     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       17     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       27     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       25     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0     238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       22     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       27     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       43     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       37     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       16     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       39     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       26     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        3     373
6-24 months   ki1000108-IRC              INDIA                          1                0       33     410
6-24 months   ki1000108-IRC              INDIA                          1                1        3     410
6-24 months   ki1000108-IRC              INDIA                          2                0       25     410
6-24 months   ki1000108-IRC              INDIA                          2                1        2     410
6-24 months   ki1000108-IRC              INDIA                          3                0       28     410
6-24 months   ki1000108-IRC              INDIA                          3                1        1     410
6-24 months   ki1000108-IRC              INDIA                          4                0       20     410
6-24 months   ki1000108-IRC              INDIA                          4                1        2     410
6-24 months   ki1000108-IRC              INDIA                          5                0       19     410
6-24 months   ki1000108-IRC              INDIA                          5                1        2     410
6-24 months   ki1000108-IRC              INDIA                          6                0       32     410
6-24 months   ki1000108-IRC              INDIA                          6                1        5     410
6-24 months   ki1000108-IRC              INDIA                          7                0       30     410
6-24 months   ki1000108-IRC              INDIA                          7                1        6     410
6-24 months   ki1000108-IRC              INDIA                          8                0       37     410
6-24 months   ki1000108-IRC              INDIA                          8                1        8     410
6-24 months   ki1000108-IRC              INDIA                          9                0       21     410
6-24 months   ki1000108-IRC              INDIA                          9                1        6     410
6-24 months   ki1000108-IRC              INDIA                          10               0       30     410
6-24 months   ki1000108-IRC              INDIA                          10               1        7     410
6-24 months   ki1000108-IRC              INDIA                          11               0       38     410
6-24 months   ki1000108-IRC              INDIA                          11               1        3     410
6-24 months   ki1000108-IRC              INDIA                          12               0       49     410
6-24 months   ki1000108-IRC              INDIA                          12               1        3     410
6-24 months   ki1000109-EE               PAKISTAN                       1                0      158     736
6-24 months   ki1000109-EE               PAKISTAN                       1                1       20     736
6-24 months   ki1000109-EE               PAKISTAN                       2                0      146     736
6-24 months   ki1000109-EE               PAKISTAN                       2                1       10     736
6-24 months   ki1000109-EE               PAKISTAN                       3                0       64     736
6-24 months   ki1000109-EE               PAKISTAN                       3                1       18     736
6-24 months   ki1000109-EE               PAKISTAN                       4                0       50     736
6-24 months   ki1000109-EE               PAKISTAN                       4                1        6     736
6-24 months   ki1000109-EE               PAKISTAN                       5                0        4     736
6-24 months   ki1000109-EE               PAKISTAN                       5                1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       6                0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       6                1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       7                0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       7                1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       8                0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       8                1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       9                0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       9                1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       10               0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       10               1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       11               0       84     736
6-24 months   ki1000109-EE               PAKISTAN                       11               1       10     736
6-24 months   ki1000109-EE               PAKISTAN                       12               0      144     736
6-24 months   ki1000109-EE               PAKISTAN                       12               1       22     736
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1        1     206
6-24 months   ki1000109-ResPak           PAKISTAN                       2                0        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       2                1        2     206
6-24 months   ki1000109-ResPak           PAKISTAN                       3                0       10     206
6-24 months   ki1000109-ResPak           PAKISTAN                       3                1        1     206
6-24 months   ki1000109-ResPak           PAKISTAN                       4                0       13     206
6-24 months   ki1000109-ResPak           PAKISTAN                       4                1        8     206
6-24 months   ki1000109-ResPak           PAKISTAN                       5                0       24     206
6-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5     206
6-24 months   ki1000109-ResPak           PAKISTAN                       6                0       38     206
6-24 months   ki1000109-ResPak           PAKISTAN                       6                1        6     206
6-24 months   ki1000109-ResPak           PAKISTAN                       7                0       20     206
6-24 months   ki1000109-ResPak           PAKISTAN                       7                1        6     206
6-24 months   ki1000109-ResPak           PAKISTAN                       8                0       26     206
6-24 months   ki1000109-ResPak           PAKISTAN                       8                1        6     206
6-24 months   ki1000109-ResPak           PAKISTAN                       9                0       15     206
6-24 months   ki1000109-ResPak           PAKISTAN                       9                1        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5     206
6-24 months   ki1000109-ResPak           PAKISTAN                       10               1        2     206
6-24 months   ki1000109-ResPak           PAKISTAN                       11               0        3     206
6-24 months   ki1000109-ResPak           PAKISTAN                       11               1        1     206
6-24 months   ki1000109-ResPak           PAKISTAN                       12               0        2     206
6-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0     206
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       67    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1       15    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       65    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1       10    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       55    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1       10    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       58    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1       12    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       57    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1       13    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0       82    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1       10    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0       87    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1       19    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0      115    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1       21    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0      115    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1       30    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0      115    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1       18    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0       90    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1       22    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0      110    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        8    1204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       45     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        8     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0       32     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        5     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0       23     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        8     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0       18     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        6     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0       20     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        7     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0       24     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        3     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0       12     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        1     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0       10     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        2     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0       22     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        3     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0       40     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        5     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       43     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1       11     348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       40     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       38     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        3     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       39     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       35     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       31     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        5     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       33     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       38     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       29     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       25     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       42     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       42     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        5     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       45     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        4     492
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      149    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      102    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        9    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      115    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      113    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        6    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      132    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      118    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      118    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        6    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      143    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        6    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      165    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        2    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      162    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        2    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      162    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      143    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       15    1706
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       10     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       16     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       16     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       15     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       25     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       31     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       21     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       15     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       24     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       16     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       19     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0     218
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                0      113    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                1       13    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                0       95    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                1        9    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                0       89    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                1       14    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                0       87    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                1       12    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                0       96    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                1       17    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                0      171    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                1       20    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                0      194    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                1       20    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                0      176    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                1       34    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                0      134    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                1       17    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               0      181    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10               1       19    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               0       77    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11               1       11    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               0       56    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12               1       14    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        4    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      184    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       64    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      380    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       72    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0      340    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1       72    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0       24    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        4    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        6    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        2    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        2    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0    1154
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       24     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2                0       28     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2                1        3     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3                0       19     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4                0       15     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6                0       21     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6                1        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10               0       18     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10               1        1     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12               0       36     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12               1       10     251
6-24 months   ki1114097-CMIN             BRAZIL                         1                0       13     117
6-24 months   ki1114097-CMIN             BRAZIL                         1                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         2                0        7     117
6-24 months   ki1114097-CMIN             BRAZIL                         2                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         3                0       14     117
6-24 months   ki1114097-CMIN             BRAZIL                         3                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         4                0       10     117
6-24 months   ki1114097-CMIN             BRAZIL                         4                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         5                0        5     117
6-24 months   ki1114097-CMIN             BRAZIL                         5                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         6                0        6     117
6-24 months   ki1114097-CMIN             BRAZIL                         6                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         7                0        3     117
6-24 months   ki1114097-CMIN             BRAZIL                         7                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         8                0       13     117
6-24 months   ki1114097-CMIN             BRAZIL                         8                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         9                0        9     117
6-24 months   ki1114097-CMIN             BRAZIL                         9                1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         10               0       15     117
6-24 months   ki1114097-CMIN             BRAZIL                         10               1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         11               0       12     117
6-24 months   ki1114097-CMIN             BRAZIL                         11               1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         12               0       10     117
6-24 months   ki1114097-CMIN             BRAZIL                         12               1        0     117
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       25     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        1     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0       97     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        7     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      118     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        2     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0      170     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        7     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      120     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        3     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       66     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        0     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       50     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        2     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       51     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        5     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      108     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        2     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       31     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        2     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       38     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       77     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        4     987
6-24 months   ki1114097-CMIN             PERU                           1                0       38     734
6-24 months   ki1114097-CMIN             PERU                           1                1        0     734
6-24 months   ki1114097-CMIN             PERU                           2                0      123     734
6-24 months   ki1114097-CMIN             PERU                           2                1        1     734
6-24 months   ki1114097-CMIN             PERU                           3                0       99     734
6-24 months   ki1114097-CMIN             PERU                           3                1        2     734
6-24 months   ki1114097-CMIN             PERU                           4                0       64     734
6-24 months   ki1114097-CMIN             PERU                           4                1        0     734
6-24 months   ki1114097-CMIN             PERU                           5                0       78     734
6-24 months   ki1114097-CMIN             PERU                           5                1        0     734
6-24 months   ki1114097-CMIN             PERU                           6                0       46     734
6-24 months   ki1114097-CMIN             PERU                           6                1        0     734
6-24 months   ki1114097-CMIN             PERU                           7                0       49     734
6-24 months   ki1114097-CMIN             PERU                           7                1        1     734
6-24 months   ki1114097-CMIN             PERU                           8                0       60     734
6-24 months   ki1114097-CMIN             PERU                           8                1        0     734
6-24 months   ki1114097-CMIN             PERU                           9                0       42     734
6-24 months   ki1114097-CMIN             PERU                           9                1        0     734
6-24 months   ki1114097-CMIN             PERU                           10               0       31     734
6-24 months   ki1114097-CMIN             PERU                           10               1        0     734
6-24 months   ki1114097-CMIN             PERU                           11               0       62     734
6-24 months   ki1114097-CMIN             PERU                           11               1        0     734
6-24 months   ki1114097-CMIN             PERU                           12               0       38     734
6-24 months   ki1114097-CMIN             PERU                           12               1        0     734
6-24 months   ki1114097-CONTENT          PERU                           1                0        9     215
6-24 months   ki1114097-CONTENT          PERU                           1                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                0       13     215
6-24 months   ki1114097-CONTENT          PERU                           2                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                0       27     215
6-24 months   ki1114097-CONTENT          PERU                           3                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                0       18     215
6-24 months   ki1114097-CONTENT          PERU                           4                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                0       25     215
6-24 months   ki1114097-CONTENT          PERU                           5                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           6                0       14     215
6-24 months   ki1114097-CONTENT          PERU                           6                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                0       16     215
6-24 months   ki1114097-CONTENT          PERU                           7                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                0       26     215
6-24 months   ki1114097-CONTENT          PERU                           8                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           9                0       19     215
6-24 months   ki1114097-CONTENT          PERU                           9                1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10               0       23     215
6-24 months   ki1114097-CONTENT          PERU                           10               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           11               0       18     215
6-24 months   ki1114097-CONTENT          PERU                           11               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12               0        7     215
6-24 months   ki1114097-CONTENT          PERU                           12               1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                0      385    7097
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        2                0      396    7097
6-24 months   ki1119695-PROBIT           BELARUS                        2                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        3                0      506    7097
6-24 months   ki1119695-PROBIT           BELARUS                        3                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        4                0      510    7097
6-24 months   ki1119695-PROBIT           BELARUS                        4                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        5                0      518    7097
6-24 months   ki1119695-PROBIT           BELARUS                        5                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        6                0      507    7097
6-24 months   ki1119695-PROBIT           BELARUS                        6                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        7                0      672    7097
6-24 months   ki1119695-PROBIT           BELARUS                        7                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        8                0      635    7097
6-24 months   ki1119695-PROBIT           BELARUS                        8                1        1    7097
6-24 months   ki1119695-PROBIT           BELARUS                        9                0      651    7097
6-24 months   ki1119695-PROBIT           BELARUS                        9                1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        10               0      796    7097
6-24 months   ki1119695-PROBIT           BELARUS                        10               1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        11               0      718    7097
6-24 months   ki1119695-PROBIT           BELARUS                        11               1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        12               0      801    7097
6-24 months   ki1119695-PROBIT           BELARUS                        12               1        1    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      238    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       11    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      207    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       10    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      253    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       11    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      232    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1       12    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      177    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        9    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      158    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1        7    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      119    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1        4    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      138    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1        6    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      135    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1        4    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      119    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1        5    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      151    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1        7    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      200    2222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1        9    2222
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0       48     695
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1        1     695
6-24 months   ki1148112-LCNI-5           MALAWI                         2                0       97     695
6-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2     695
6-24 months   ki1148112-LCNI-5           MALAWI                         3                0       85     695
6-24 months   ki1148112-LCNI-5           MALAWI                         3                1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         4                0       95     695
6-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         5                0       81     695
6-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         6                0       74     695
6-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1     695
6-24 months   ki1148112-LCNI-5           MALAWI                         7                0       54     695
6-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38     695
6-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         9                0       23     695
6-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30     695
6-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         11               0       38     695
6-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26     695
6-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2     695
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       96    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        6    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0      628    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1       50    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      774    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1       92    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0     1518    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1      206    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0     1050    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1      133    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      762    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1      108    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0     1438    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1      220    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      912    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1       83    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      732    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1       71    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0      521    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1       36    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0      248    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1       38    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0      126    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1       11    9859


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
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/893d76d9-eb43-425c-90a5-17f17c11ad91/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/893d76d9-eb43-425c-90a5-17f17c11ad91/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/893d76d9-eb43-425c-90a5-17f17c11ad91/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/893d76d9-eb43-425c-90a5-17f17c11ad91/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                0.1031746   -0.0251156   0.2314648
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    NA                0.0865385    0.0041394   0.1689376
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    NA                0.1359223    0.0632883   0.2085564
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    NA                0.1212121   -0.0299747   0.2723989
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    NA                0.1504425    0.0845608   0.2163241
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    NA                0.1047120    0.0312439   0.1781802
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    NA                0.0934579    0.0067666   0.1801493
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    NA                0.1619048    0.1001995   0.2236101
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    NA                0.1125828    0.0356469   0.1895187
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   NA                0.0950000    0.0120340   0.1779660
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   NA                0.1250000    0.0113568   0.2386432
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   NA                0.2000000    0.1445744   0.2554256
0-24 months   ki1119695-PROBIT          BELARUS        1                    NA                0.0113240    0.0010867   0.0215614
0-24 months   ki1119695-PROBIT          BELARUS        2                    NA                0.0081136    0.0009325   0.0152947
0-24 months   ki1119695-PROBIT          BELARUS        3                    NA                0.0094098    0.0008106   0.0180089
0-24 months   ki1119695-PROBIT          BELARUS        4                    NA                0.0107335    0.0039915   0.0174754
0-24 months   ki1119695-PROBIT          BELARUS        5                    NA                0.0106007    0.0001570   0.0210444
0-24 months   ki1119695-PROBIT          BELARUS        6                    NA                0.0167926    0.0083207   0.0252645
0-24 months   ki1119695-PROBIT          BELARUS        7                    NA                0.0103235    0.0029971   0.0176498
0-24 months   ki1119695-PROBIT          BELARUS        8                    NA                0.0088552    0.0017261   0.0159842
0-24 months   ki1119695-PROBIT          BELARUS        9                    NA                0.0070603    0.0008829   0.0132377
0-24 months   ki1119695-PROBIT          BELARUS        10                   NA                0.0085082    0.0022882   0.0147282
0-24 months   ki1119695-PROBIT          BELARUS        11                   NA                0.0119048    0.0046610   0.0191485
0-24 months   ki1119695-PROBIT          BELARUS        12                   NA                0.0044395   -0.0016465   0.0105255
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0269107    0.0165042   0.0373171
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    NA                0.0148810    0.0057262   0.0240357
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    NA                0.0286458    0.0168478   0.0404439
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    NA                0.0111732    0.0034737   0.0188727
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    NA                0.0116788    0.0036329   0.0197247
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    NA                0.0154440    0.0067732   0.0241149
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    NA                0.0193299    0.0096423   0.0290175
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    NA                0.0157195    0.0072414   0.0241975
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    NA                0.0161663    0.0077663   0.0245663
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   NA                0.0215054    0.0103616   0.0326492
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   NA                0.0143791    0.0059426   0.0228156
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   NA                0.0170455    0.0084928   0.0255981
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.0463836    0.0335536   0.0592137
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    NA                0.0480427    0.0342647   0.0618207
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    NA                0.0555150    0.0419663   0.0690637
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    NA                0.0688438    0.0531809   0.0845067
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    NA                0.0508788    0.0367213   0.0650363
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    NA                0.0698529    0.0511883   0.0885176
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    NA                0.0582278    0.0448088   0.0716468
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    NA                0.0606061    0.0465748   0.0746373
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    NA                0.0595981    0.0458736   0.0733225
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   NA                0.0680796    0.0547463   0.0814130
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   NA                0.0515464    0.0401910   0.0629018
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   NA                0.0505913    0.0392808   0.0619018
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0566038   -0.0396016   0.1528091
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    NA                0.0532213    0.0221675   0.0842751
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    NA                0.0786026    0.0457892   0.1114160
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    NA                0.0795580    0.0609153   0.0982007
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    NA                0.0888346    0.0638326   0.1138365
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    NA                0.0967033    0.0664137   0.1269929
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    NA                0.1031286    0.0790990   0.1271582
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    NA                0.0624400    0.0419075   0.0829724
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    NA                0.0706587    0.0490222   0.0922951
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   NA                0.0556522    0.0249621   0.0863422
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   NA                0.1000000    0.0524584   0.1475416
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   NA                0.0612245   -0.0196831   0.1421321
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1829268    0.1111344   0.2547193
6-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    NA                0.1333333    0.0636005   0.2030662
6-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    NA                0.1538462    0.0748214   0.2328709
6-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    NA                0.1714286    0.1029803   0.2398768
6-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    NA                0.1857143    0.0476534   0.3237752
6-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    NA                0.1086957    0.0295589   0.1878324
6-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    NA                0.1792453    0.1243556   0.2341349
6-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    NA                0.1544118    0.0658688   0.2429547
6-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    NA                0.2068966    0.1312375   0.2825556
6-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   NA                0.1353383    0.0710226   0.1996541
6-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   NA                0.1964286    0.1089608   0.2838963
6-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   NA                0.0677966    0.0309732   0.1046200
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                0.1031746   -0.0251156   0.2314648
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    NA                0.0865385    0.0041394   0.1689376
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    NA                0.1359223    0.0632883   0.2085564
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    NA                0.1212121   -0.0299747   0.2723989
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    NA                0.1504425    0.0845608   0.2163241
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    NA                0.1047120    0.0312439   0.1781802
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    NA                0.0934579    0.0067666   0.1801493
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    NA                0.1619048    0.1001995   0.2236101
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    NA                0.1125828    0.0356469   0.1895187
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   NA                0.0950000    0.0120340   0.1779660
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   NA                0.1250000    0.0113568   0.2386432
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   NA                0.2000000    0.1445744   0.2554256
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0588235   -0.0370898   0.1547369
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    NA                0.0737463    0.0380382   0.1094544
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    NA                0.1062356    0.0712423   0.1412288
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    NA                0.1194896    0.0950042   0.1439749
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    NA                0.1124260    0.0835500   0.1413021
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    NA                0.1241379    0.0755494   0.1727264
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    NA                0.1326900    0.1055619   0.1598181
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    NA                0.0834171    0.0586731   0.1081611
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    NA                0.0884184    0.0631434   0.1136935
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   NA                0.0646320    0.0318726   0.0973913
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   NA                0.1328671    0.0781363   0.1875980
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   NA                0.0802920   -0.0131559   0.1737399


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1119695-PROBIT          BELARUS        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0179338   0.0152382   0.0206295
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0572741   0.0531873   0.0613609
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0805278   0.0718757   0.0891799
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1069074   0.0961821   0.1176327


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    1                 0.8387576   0.1688396    4.1667617
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    1                 1.3174010   0.3363297    5.1602511
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    1                 1.1748252   0.2005119    6.8834521
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    1                 1.4581348   0.3738117    5.6877751
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    1                 1.0149013   0.2242300    4.5936084
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    1                 0.9058232   0.1805737    4.5439377
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    1                 1.5692308   0.4238967    5.8091632
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    1                 1.0911870   0.2082314    5.7181056
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   1                 0.9207693   0.2024908    4.1869367
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   1                 1.2115385   0.2162089    6.7889223
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   1                 1.9384615   0.5414145    6.9404002
0-24 months   ki1119695-PROBIT          BELARUS        1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1119695-PROBIT          BELARUS        2                    1                 0.7164924   0.2994582    1.7143007
0-24 months   ki1119695-PROBIT          BELARUS        3                    1                 0.8309535   0.2761792    2.5001290
0-24 months   ki1119695-PROBIT          BELARUS        4                    1                 0.9478464   0.3580057    2.5094933
0-24 months   ki1119695-PROBIT          BELARUS        5                    1                 0.9361239   0.3017788    2.9038758
0-24 months   ki1119695-PROBIT          BELARUS        6                    1                 1.4829167   0.6028643    3.6476570
0-24 months   ki1119695-PROBIT          BELARUS        7                    1                 0.9116417   0.3515855    2.3638365
0-24 months   ki1119695-PROBIT          BELARUS        8                    1                 0.7819783   0.3717019    1.6451090
0-24 months   ki1119695-PROBIT          BELARUS        9                    1                 0.6234818   0.2028102    1.9167155
0-24 months   ki1119695-PROBIT          BELARUS        10                   1                 0.7513417   0.3491740    1.6167135
0-24 months   ki1119695-PROBIT          BELARUS        11                   1                 1.0512821   0.4191211    2.6369325
0-24 months   ki1119695-PROBIT          BELARUS        12                   1                 0.3920430   0.1032044    1.4892558
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    1                 0.5529762   0.2673804    1.1436241
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    1                 1.0644792   0.6050384    1.8728001
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    1                 0.4151955   0.1883977    0.9150184
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    1                 0.4339854   0.1969539    0.9562811
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    1                 0.5738996   0.2902458    1.1347650
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    1                 0.7182990   0.3814069    1.3527638
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    1                 0.5841354   0.3008132    1.1343058
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    1                 0.6007390   0.3143337    1.1481028
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   1                 0.7991398   0.4186195    1.5255486
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   1                 0.5343268   0.2646251    1.0789043
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   1                 0.6334091   0.3361762    1.1934429
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    1                 1.0357681   0.6977408    1.5375561
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    1                 1.1968652   0.8429108    1.6994519
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    1                 1.4842251   1.0386778    2.1208928
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    1                 1.0969128   0.7302034    1.6477842
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    1                 1.5059820   1.0194079    2.2248030
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    1                 1.2553529   0.8777699    1.7953576
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    1                 1.3066256   0.9166414    1.8625281
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    1                 1.2848937   0.8922270    1.8503720
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   1                 1.4677509   1.0457146    2.0601152
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   1                 1.1113052   0.7850022    1.5732432
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   1                 1.0907147   0.7676613    1.5497180
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    1                 0.9402428   0.1562077    5.6594928
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    1                 1.3886463   0.2414954    7.9849908
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    1                 1.4055249   0.2522350    7.8319826
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    1                 1.5694105   0.2802518    8.7887015
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    1                 1.7084249   0.3125941    9.3370774
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    1                 1.8219390   0.3254770   10.1987598
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    1                 1.1031060   0.1984465    6.1318435
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    1                 1.2483034   0.2223171    7.0091847
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   1                 0.9831884   0.2004947    4.8213717
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   1                 1.7666667   0.3017468   10.3434781
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   1                 1.0816327   0.1261720    9.2724922
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    1                 0.7288889   0.3145831    1.6888352
6-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    1                 0.8410256   0.4422513    1.5993715
6-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    1                 0.9371429   0.5221179    1.6820658
6-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    1                 1.0152381   0.5116502    2.0144785
6-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    1                 0.5942029   0.2093459    1.6865729
6-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    1                 0.9798742   0.7812177    1.2290473
6-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    1                 0.8441176   0.5336647    1.3351729
6-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    1                 1.1310345   0.6507438    1.9658105
6-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   1                 0.7398496   0.3926981    1.3938888
6-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   1                 1.0738095   0.6287705    1.8338437
6-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   1                 0.3706215   0.1688890    0.8133171
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    1                 0.8387576   0.1688396    4.1667617
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    1                 1.3174010   0.3363297    5.1602511
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    1                 1.1748252   0.2005119    6.8834521
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    1                 1.4581348   0.3738117    5.6877751
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    1                 1.0149013   0.2242300    4.5936084
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    1                 0.9058232   0.1805737    4.5439377
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    1                 1.5692308   0.4238967    5.8091632
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    1                 1.0911870   0.2082314    5.7181056
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   1                 0.9207693   0.2024908    4.1869367
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   1                 1.2115385   0.2162089    6.7889223
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   1                 1.9384615   0.5414145    6.9404002
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     2                    1                 1.2536873   0.2293310    6.8535515
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     3                    1                 1.8060046   0.3427223    9.5168976
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     4                    1                 2.0313225   0.3916822   10.5347421
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     5                    1                 1.9112426   0.3667101    9.9611323
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     6                    1                 2.1103448   0.4034513   11.0386451
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     7                    1                 2.2557298   0.4333491   11.7418423
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     8                    1                 1.4180905   0.2731140    7.3631555
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     9                    1                 1.5031133   0.2876830    7.8536079
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     10                   1                 1.0987433   0.2341177    5.1565380
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     11                   1                 2.2587413   0.4191303   12.1726155
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     12                   1                 1.3649635   0.1850461   10.0684392


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
0-24 months   ki1119695-PROBIT          BELARUS        1                    NA                -0.0017348   -0.0093684   0.0058989
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0089768   -0.0186697   0.0007161
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0108904   -0.0014271   0.0232079
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0239240   -0.0708203   0.1186684
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0267806   -0.0898508   0.0362895
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.0166576   -0.1127007   0.1460159
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0480839   -0.0466576   0.1428254


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
0-24 months   ki1119695-PROBIT          BELARUS        1                    NA                -0.1809053   -1.2570620    0.3821449
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.5005511   -1.1440733   -0.0501757
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1901456   -0.0560649    0.3789547
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.2970902   -2.7717840    0.8690057
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.1715101   -0.6425463    0.1644461
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                 0.1390079   -2.0034569    0.7531820
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.4497712   -1.7721764    0.8907891
