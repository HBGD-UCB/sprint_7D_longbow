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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        brthmon    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  0       22     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  0       21     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  0       19     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  0        9     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  0       17     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  0       25     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  1        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 1        2     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 0       15     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 1        1     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 0       27     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 1        1     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       15     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  0       25     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  0       16     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  0       11     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  0       22     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  0        8     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  0       16     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  0       18     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  0       30     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 0       20     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 0       21     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 0       13     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       18     241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                  0       17     241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                  1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                  0       20     241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                  1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                  0       14     241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                  1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                  0        7     241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                  1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                  0       16     241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                  1        3     241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                  0       21     241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                  1        4     241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                  0       22     241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                  1        1     241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                  0       20     241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                  1        0     241
0-24 months   ki0047075b-MAL-ED          INDIA                          10                 0       24     241
0-24 months   ki0047075b-MAL-ED          INDIA                          10                 1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          11                 0       23     241
0-24 months   ki0047075b-MAL-ED          INDIA                          11                 1        2     241
0-24 months   ki0047075b-MAL-ED          INDIA                          12                 0       18     241
0-24 months   ki0047075b-MAL-ED          INDIA                          12                 1        1     241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                  0       19     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                  1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                  0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                  1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                  0       22     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                  1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                  0       20     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                  1        2     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                  0       18     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                  1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                  0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                  1        1     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                  0       24     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                  1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                  0       16     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                  1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                 0       21     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                 1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                 0       24     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                 1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                 0       17     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       41     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           2                  0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           2                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           3                  0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           3                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           4                  0       20     284
0-24 months   ki0047075b-MAL-ED          PERU                           4                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           5                  0       27     284
0-24 months   ki0047075b-MAL-ED          PERU                           5                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           6                  0       15     284
0-24 months   ki0047075b-MAL-ED          PERU                           6                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           7                  0       23     284
0-24 months   ki0047075b-MAL-ED          PERU                           7                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           8                  0       15     284
0-24 months   ki0047075b-MAL-ED          PERU                           8                  1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           9                  0       23     284
0-24 months   ki0047075b-MAL-ED          PERU                           9                  1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           10                 0       22     284
0-24 months   ki0047075b-MAL-ED          PERU                           10                 1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           11                 0       32     284
0-24 months   ki0047075b-MAL-ED          PERU                           11                 1        0     284
0-24 months   ki0047075b-MAL-ED          PERU                           12                 0       21     284
0-24 months   ki0047075b-MAL-ED          PERU                           12                 1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       37     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       24     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       15     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       13     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       19     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       25     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       10     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       23     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       26     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       28     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       36     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        0     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       20     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       30     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       18     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       20     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       19     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       23     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       23     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       27     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       31     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        0     253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       14     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       31     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        0     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       41     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       32     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       27     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       41     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1        2     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       23     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        2     373
0-24 months   ki1000108-IRC              INDIA                          1                  0       35     410
0-24 months   ki1000108-IRC              INDIA                          1                  1        3     410
0-24 months   ki1000108-IRC              INDIA                          2                  0       26     410
0-24 months   ki1000108-IRC              INDIA                          2                  1        2     410
0-24 months   ki1000108-IRC              INDIA                          3                  0       26     410
0-24 months   ki1000108-IRC              INDIA                          3                  1        1     410
0-24 months   ki1000108-IRC              INDIA                          4                  0       19     410
0-24 months   ki1000108-IRC              INDIA                          4                  1        2     410
0-24 months   ki1000108-IRC              INDIA                          5                  0       20     410
0-24 months   ki1000108-IRC              INDIA                          5                  1        2     410
0-24 months   ki1000108-IRC              INDIA                          6                  0       32     410
0-24 months   ki1000108-IRC              INDIA                          6                  1        5     410
0-24 months   ki1000108-IRC              INDIA                          7                  0       31     410
0-24 months   ki1000108-IRC              INDIA                          7                  1        5     410
0-24 months   ki1000108-IRC              INDIA                          8                  0       35     410
0-24 months   ki1000108-IRC              INDIA                          8                  1        9     410
0-24 months   ki1000108-IRC              INDIA                          9                  0       22     410
0-24 months   ki1000108-IRC              INDIA                          9                  1        5     410
0-24 months   ki1000108-IRC              INDIA                          10                 0       32     410
0-24 months   ki1000108-IRC              INDIA                          10                 1        6     410
0-24 months   ki1000108-IRC              INDIA                          11                 0       37     410
0-24 months   ki1000108-IRC              INDIA                          11                 1        3     410
0-24 months   ki1000108-IRC              INDIA                          12                 0       47     410
0-24 months   ki1000108-IRC              INDIA                          12                 1        5     410
0-24 months   ki1000109-EE               PAKISTAN                       1                  0      168     754
0-24 months   ki1000109-EE               PAKISTAN                       1                  1       16     754
0-24 months   ki1000109-EE               PAKISTAN                       2                  0      126     754
0-24 months   ki1000109-EE               PAKISTAN                       2                  1        8     754
0-24 months   ki1000109-EE               PAKISTAN                       3                  0       76     754
0-24 months   ki1000109-EE               PAKISTAN                       3                  1       10     754
0-24 months   ki1000109-EE               PAKISTAN                       4                  0       30     754
0-24 months   ki1000109-EE               PAKISTAN                       4                  1        2     754
0-24 months   ki1000109-EE               PAKISTAN                       5                  0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       5                  1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       6                  0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       6                  1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       7                  0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       7                  1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       8                  0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       8                  1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       9                  0        0     754
0-24 months   ki1000109-EE               PAKISTAN                       9                  1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       10                 0        8     754
0-24 months   ki1000109-EE               PAKISTAN                       10                 1        0     754
0-24 months   ki1000109-EE               PAKISTAN                       11                 0      128     754
0-24 months   ki1000109-EE               PAKISTAN                       11                 1       12     754
0-24 months   ki1000109-EE               PAKISTAN                       12                 0      162     754
0-24 months   ki1000109-EE               PAKISTAN                       12                 1        8     754
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  0        8     251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  1        2     251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                  0       10     251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                  1        1     251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                  0       17     251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                  1        3     251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                  0       18     251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                  1        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                  0       45     251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                  1        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                  0       38     251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                  1        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                  0       25     251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                  1        3     251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                  0       28     251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                  1        5     251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                  0       17     251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                  1        3     251
0-24 months   ki1000109-ResPak           PAKISTAN                       10                 0        4     251
0-24 months   ki1000109-ResPak           PAKISTAN                       10                 1        1     251
0-24 months   ki1000109-ResPak           PAKISTAN                       11                 0        3     251
0-24 months   ki1000109-ResPak           PAKISTAN                       11                 1        0     251
0-24 months   ki1000109-ResPak           PAKISTAN                       12                 0        4     251
0-24 months   ki1000109-ResPak           PAKISTAN                       12                 1        1     251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       82    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       12    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  0       72    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  1        7    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  0       69    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  1        6    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  0       62    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  1        5    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  0       83    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  1        8    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  0       93    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  1        6    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  0      110    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  1       14    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  0      153    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  1       13    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  0      159    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  1       14    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 0      138    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 1       10    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 0      110    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 1       12    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 0      121    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 1        7    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       22     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        2     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       25     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        5     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       16     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        4     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        1     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        3     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       22     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        2     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0       30     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        4     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0       50     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1       13     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0       48     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        8     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0       39     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        7     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       24     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        6     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       23     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1       10     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       50     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  0       43     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  0       45     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  0       39     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  1        4     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  0       35     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  1        7     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  0       41     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  0       36     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  0       29     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  1        3     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  0       38     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  1        2     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 0       38     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 1        5     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 0       45     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 1        4     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 0       48     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 1        3     534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      145    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        6    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      159    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      151    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        2    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      156    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        6    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      164    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        3    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      150    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        3    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      198    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        5    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      205    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      194    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        1    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      215    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        8    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      197    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       10    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      174    2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        5    2166
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      228    2441
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1       15    2441
0-24 months   ki1101329-Keneba           GAMBIA                         2                  0      208    2441
0-24 months   ki1101329-Keneba           GAMBIA                         2                  1        9    2441
0-24 months   ki1101329-Keneba           GAMBIA                         3                  0      237    2441
0-24 months   ki1101329-Keneba           GAMBIA                         3                  1       18    2441
0-24 months   ki1101329-Keneba           GAMBIA                         4                  0      154    2441
0-24 months   ki1101329-Keneba           GAMBIA                         4                  1        9    2441
0-24 months   ki1101329-Keneba           GAMBIA                         5                  0      164    2441
0-24 months   ki1101329-Keneba           GAMBIA                         5                  1       11    2441
0-24 months   ki1101329-Keneba           GAMBIA                         6                  0      133    2441
0-24 months   ki1101329-Keneba           GAMBIA                         6                  1        7    2441
0-24 months   ki1101329-Keneba           GAMBIA                         7                  0      106    2441
0-24 months   ki1101329-Keneba           GAMBIA                         7                  1       11    2441
0-24 months   ki1101329-Keneba           GAMBIA                         8                  0      198    2441
0-24 months   ki1101329-Keneba           GAMBIA                         8                  1        7    2441
0-24 months   ki1101329-Keneba           GAMBIA                         9                  0      205    2441
0-24 months   ki1101329-Keneba           GAMBIA                         9                  1       10    2441
0-24 months   ki1101329-Keneba           GAMBIA                         10                 0      277    2441
0-24 months   ki1101329-Keneba           GAMBIA                         10                 1       12    2441
0-24 months   ki1101329-Keneba           GAMBIA                         11                 0      192    2441
0-24 months   ki1101329-Keneba           GAMBIA                         11                 1       15    2441
0-24 months   ki1101329-Keneba           GAMBIA                         12                 0      207    2441
0-24 months   ki1101329-Keneba           GAMBIA                         12                 1        8    2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       27     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       23     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       25     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       28     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       24     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       17     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       15     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       11     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       13     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       24     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       20     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 0       25     256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        1     256
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      148    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       21    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0       67    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1        8    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0       83    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1       17    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0      108    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1       12    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0       93    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1       12    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0       82    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1       12    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0       80    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1       11    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0      121    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1       17    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0      198    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1       26    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0      178    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1       26    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0      161    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1       24    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0      150    1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1       14    1669
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  0        2    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  0      214    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  1       38    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  0      398    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  1       66    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  0      400    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  1       66    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 1        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 0        0    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 1        0    1184
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       26     257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                  0       23     257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                  1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                  0       16     257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                  1        3     257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                  0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                  1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                  0       17     257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                  1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                  0        9     257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                  1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                  0       15     257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                  1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                  0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                  1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                  0       20     257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                  1        0     257
0-24 months   ki1114097-CMIN             BANGLADESH                     10                 0       22     257
0-24 months   ki1114097-CMIN             BANGLADESH                     10                 1        4     257
0-24 months   ki1114097-CMIN             BANGLADESH                     11                 0       24     257
0-24 months   ki1114097-CMIN             BANGLADESH                     11                 1        2     257
0-24 months   ki1114097-CMIN             BANGLADESH                     12                 0       25     257
0-24 months   ki1114097-CMIN             BANGLADESH                     12                 1        3     257
0-24 months   ki1114097-CMIN             BRAZIL                         1                  0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                  0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         2                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                  0       13     119
0-24 months   ki1114097-CMIN             BRAZIL                         3                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                  0        9     119
0-24 months   ki1114097-CMIN             BRAZIL                         4                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                  0        5     119
0-24 months   ki1114097-CMIN             BRAZIL                         5                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                  0        7     119
0-24 months   ki1114097-CMIN             BRAZIL                         6                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                  0        4     119
0-24 months   ki1114097-CMIN             BRAZIL                         7                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                  0       14     119
0-24 months   ki1114097-CMIN             BRAZIL                         8                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                  0        8     119
0-24 months   ki1114097-CMIN             BRAZIL                         9                  1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                 0       16     119
0-24 months   ki1114097-CMIN             BRAZIL                         10                 1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                 0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         11                 1        0     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                 0       11     119
0-24 months   ki1114097-CMIN             BRAZIL                         12                 1        0     119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      129    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        2    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  0       82    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  0       87    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  0       63    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  0       79    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  1        3    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       66    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       70    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  1        2    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       85    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  1        1    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      121    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 0      116    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        5    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 0      102    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 1        4    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 0      117    1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 1        5    1153
0-24 months   ki1114097-CMIN             PERU                           1                  0       49     830
0-24 months   ki1114097-CMIN             PERU                           1                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           2                  0       73     830
0-24 months   ki1114097-CMIN             PERU                           2                  1        1     830
0-24 months   ki1114097-CMIN             PERU                           3                  0       83     830
0-24 months   ki1114097-CMIN             PERU                           3                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           4                  0       71     830
0-24 months   ki1114097-CMIN             PERU                           4                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           5                  0       77     830
0-24 months   ki1114097-CMIN             PERU                           5                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           6                  0       78     830
0-24 months   ki1114097-CMIN             PERU                           6                  1        1     830
0-24 months   ki1114097-CMIN             PERU                           7                  0       72     830
0-24 months   ki1114097-CMIN             PERU                           7                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           8                  0       85     830
0-24 months   ki1114097-CMIN             PERU                           8                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           9                  0       62     830
0-24 months   ki1114097-CMIN             PERU                           9                  1        0     830
0-24 months   ki1114097-CMIN             PERU                           10                 0       61     830
0-24 months   ki1114097-CMIN             PERU                           10                 1        1     830
0-24 months   ki1114097-CMIN             PERU                           11                 0       53     830
0-24 months   ki1114097-CMIN             PERU                           11                 1        1     830
0-24 months   ki1114097-CMIN             PERU                           12                 0       61     830
0-24 months   ki1114097-CMIN             PERU                           12                 1        1     830
0-24 months   ki1114097-CONTENT          PERU                           1                  0       10     215
0-24 months   ki1114097-CONTENT          PERU                           1                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           2                  0       18     215
0-24 months   ki1114097-CONTENT          PERU                           2                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           3                  0       30     215
0-24 months   ki1114097-CONTENT          PERU                           3                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           4                  0       19     215
0-24 months   ki1114097-CONTENT          PERU                           4                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           5                  0       14     215
0-24 months   ki1114097-CONTENT          PERU                           5                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           6                  0       13     215
0-24 months   ki1114097-CONTENT          PERU                           6                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           7                  0       28     215
0-24 months   ki1114097-CONTENT          PERU                           7                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           8                  0       23     215
0-24 months   ki1114097-CONTENT          PERU                           8                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           9                  0       26     215
0-24 months   ki1114097-CONTENT          PERU                           9                  1        0     215
0-24 months   ki1114097-CONTENT          PERU                           10                 0       14     215
0-24 months   ki1114097-CONTENT          PERU                           10                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           11                 0        9     215
0-24 months   ki1114097-CONTENT          PERU                           11                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           12                 0       11     215
0-24 months   ki1114097-CONTENT          PERU                           12                 1        0     215
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0      999   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        2                  0      960   16581
0-24 months   ki1119695-PROBIT           BELARUS                        2                  1       10   16581
0-24 months   ki1119695-PROBIT           BELARUS                        3                  0     1119   16581
0-24 months   ki1119695-PROBIT           BELARUS                        3                  1        9   16581
0-24 months   ki1119695-PROBIT           BELARUS                        4                  0     1130   16581
0-24 months   ki1119695-PROBIT           BELARUS                        4                  1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        5                  0     1128   16581
0-24 months   ki1119695-PROBIT           BELARUS                        5                  1       17   16581
0-24 months   ki1119695-PROBIT           BELARUS                        6                  0     1176   16581
0-24 months   ki1119695-PROBIT           BELARUS                        6                  1       15   16581
0-24 months   ki1119695-PROBIT           BELARUS                        7                  0     1535   16581
0-24 months   ki1119695-PROBIT           BELARUS                        7                  1       18   16581
0-24 months   ki1119695-PROBIT           BELARUS                        8                  0     1547   16581
0-24 months   ki1119695-PROBIT           BELARUS                        8                  1       11   16581
0-24 months   ki1119695-PROBIT           BELARUS                        9                  0     1572   16581
0-24 months   ki1119695-PROBIT           BELARUS                        9                  1       11   16581
0-24 months   ki1119695-PROBIT           BELARUS                        10                 0     1766   16581
0-24 months   ki1119695-PROBIT           BELARUS                        10                 1       21   16581
0-24 months   ki1119695-PROBIT           BELARUS                        11                 0     1661   16581
0-24 months   ki1119695-PROBIT           BELARUS                        11                 1       13   16581
0-24 months   ki1119695-PROBIT           BELARUS                        12                 0     1829   16581
0-24 months   ki1119695-PROBIT           BELARUS                        12                 1       10   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      890    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       25    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      680    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       10    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      779    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1       23    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      687    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1        8    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      685    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1        7    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      763    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       13    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      759    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       14    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      826    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       13    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      835    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       14    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      640    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       15    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      786    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       11    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      836    9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1       14    9333
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       57     719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                  0       41     719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                  1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                  0       23     719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                  1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                  0       33     719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                  1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                  0       36     719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                  1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                  0       27     719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                  1        2     719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                  0       56     719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                  1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                  0       79     719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                  1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                  0       84     719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                  1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         10                 0      117     719
0-24 months   ki1148112-LCNI-5           MALAWI                         10                 1        1     719
0-24 months   ki1148112-LCNI-5           MALAWI                         11                 0       82     719
0-24 months   ki1148112-LCNI-5           MALAWI                         11                 1        0     719
0-24 months   ki1148112-LCNI-5           MALAWI                         12                 0       78     719
0-24 months   ki1148112-LCNI-5           MALAWI                         12                 1        1     719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2402   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      122   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  0     2082   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  1      112   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  0     2576   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  1      152   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  0     2090   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  1      148   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  0     1994   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  1      112   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  0     2092   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  1      158   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  0     2270   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  1      132   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  0     2564   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  1      170   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  0     2798   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  1      172   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 0     2886   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 1      216   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 0     3014   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 1      164   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 0     2794   31358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 1      138   31358
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0        0   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  0     1512   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  1      127   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  0     1742   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  1      142   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  0     1339   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  1      129   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  0     1112   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  1      107   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      802   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  1      100   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      971   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       90   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  0     1037   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  1       52   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  0      717   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  1       66   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 0      245   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       17   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 0        0   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 1        0   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 0        0   10307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        0   10307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                  0       21     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                  1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                  0       22     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                  1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                  0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                  1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                  0       20     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                  1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                  0       10     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                  1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                  0       17     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                  1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                  0       25     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                  1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                  0       22     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                  1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                 0       21     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                 1        1     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                 0       16     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                 1        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                 0       27     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                 1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       15     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                  0       25     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                  0       16     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                  0       11     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                  0       22     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                  0        8     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                  0       16     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                  0       18     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                  0       30     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                  1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                 0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                 1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                 0       21     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                 1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                 0       13     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                 1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                  0       17     240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                  1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                  0       20     240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                  1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                  0       14     240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                  1        1     240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                  0        8     240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                  1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                  0       15     240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                  1        3     240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                  0       23     240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                  1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                  0       21     240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                  1        2     240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                  0       20     240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                  1        0     240
0-6 months    ki0047075b-MAL-ED          INDIA                          10                 0       22     240
0-6 months    ki0047075b-MAL-ED          INDIA                          10                 1        4     240
0-6 months    ki0047075b-MAL-ED          INDIA                          11                 0       24     240
0-6 months    ki0047075b-MAL-ED          INDIA                          11                 1        1     240
0-6 months    ki0047075b-MAL-ED          INDIA                          12                 0       19     240
0-6 months    ki0047075b-MAL-ED          INDIA                          12                 1        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       19     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                  0       19     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                  1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                  0       16     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                  1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                  0       22     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                  1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                  0       21     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                  1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                  0       18     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                  1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                  0       16     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                  1        2     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                  0       23     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                  1        1     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                  0       16     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                  1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                 0       21     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                 1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                 0       24     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                 1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                 0       17     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                 1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       41     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           2                  0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           2                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           3                  0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           3                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           4                  0       20     284
0-6 months    ki0047075b-MAL-ED          PERU                           4                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           5                  0       27     284
0-6 months    ki0047075b-MAL-ED          PERU                           5                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           6                  0       15     284
0-6 months    ki0047075b-MAL-ED          PERU                           6                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           7                  0       23     284
0-6 months    ki0047075b-MAL-ED          PERU                           7                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           8                  0       16     284
0-6 months    ki0047075b-MAL-ED          PERU                           8                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           9                  0       23     284
0-6 months    ki0047075b-MAL-ED          PERU                           9                  1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           10                 0       22     284
0-6 months    ki0047075b-MAL-ED          PERU                           10                 1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           11                 0       32     284
0-6 months    ki0047075b-MAL-ED          PERU                           11                 1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           12                 0       21     284
0-6 months    ki0047075b-MAL-ED          PERU                           12                 1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       36     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       23     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       15     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       13     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       19     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       25     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       10     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       23     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       27     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       27     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        1     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       36     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       20     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       30     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       18     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       20     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       19     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       23     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       23     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       27     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       31     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        0     253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       27     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       13     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        2     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       22     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        7     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       37     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       27     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       32     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       35     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       13     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        4     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       19     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        2     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       25     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        3     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       36     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                 1        5     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       22     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        3     358
0-6 months    ki1000108-IRC              INDIA                          1                  0       32     402
0-6 months    ki1000108-IRC              INDIA                          1                  1        5     402
0-6 months    ki1000108-IRC              INDIA                          2                  0       24     402
0-6 months    ki1000108-IRC              INDIA                          2                  1        4     402
0-6 months    ki1000108-IRC              INDIA                          3                  0       21     402
0-6 months    ki1000108-IRC              INDIA                          3                  1        6     402
0-6 months    ki1000108-IRC              INDIA                          4                  0       20     402
0-6 months    ki1000108-IRC              INDIA                          4                  1        1     402
0-6 months    ki1000108-IRC              INDIA                          5                  0       19     402
0-6 months    ki1000108-IRC              INDIA                          5                  1        2     402
0-6 months    ki1000108-IRC              INDIA                          6                  0       29     402
0-6 months    ki1000108-IRC              INDIA                          6                  1        7     402
0-6 months    ki1000108-IRC              INDIA                          7                  0       29     402
0-6 months    ki1000108-IRC              INDIA                          7                  1        6     402
0-6 months    ki1000108-IRC              INDIA                          8                  0       35     402
0-6 months    ki1000108-IRC              INDIA                          8                  1        9     402
0-6 months    ki1000108-IRC              INDIA                          9                  0       23     402
0-6 months    ki1000108-IRC              INDIA                          9                  1        2     402
0-6 months    ki1000108-IRC              INDIA                          10                 0       30     402
0-6 months    ki1000108-IRC              INDIA                          10                 1        8     402
0-6 months    ki1000108-IRC              INDIA                          11                 0       35     402
0-6 months    ki1000108-IRC              INDIA                          11                 1        4     402
0-6 months    ki1000108-IRC              INDIA                          12                 0       41     402
0-6 months    ki1000108-IRC              INDIA                          12                 1       10     402
0-6 months    ki1000109-EE               PAKISTAN                       1                  0      154     732
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       24     732
0-6 months    ki1000109-EE               PAKISTAN                       2                  0      122     732
0-6 months    ki1000109-EE               PAKISTAN                       2                  1        8     732
0-6 months    ki1000109-EE               PAKISTAN                       3                  0       78     732
0-6 months    ki1000109-EE               PAKISTAN                       3                  1        6     732
0-6 months    ki1000109-EE               PAKISTAN                       4                  0       30     732
0-6 months    ki1000109-EE               PAKISTAN                       4                  1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       5                  0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       5                  1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       6                  0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       6                  1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       7                  0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       7                  1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       8                  0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       8                  1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       9                  0        0     732
0-6 months    ki1000109-EE               PAKISTAN                       9                  1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       10                 0        8     732
0-6 months    ki1000109-EE               PAKISTAN                       10                 1        0     732
0-6 months    ki1000109-EE               PAKISTAN                       11                 0      132     732
0-6 months    ki1000109-EE               PAKISTAN                       11                 1        8     732
0-6 months    ki1000109-EE               PAKISTAN                       12                 0      154     732
0-6 months    ki1000109-EE               PAKISTAN                       12                 1        8     732
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  0        8     240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                  0       10     240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                  1        1     240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                  0       16     240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                  1        3     240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                  0       20     240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                  1        3     240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                  0       40     240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                  1        6     240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                  0       39     240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                  1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                  0       25     240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                  1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                  0       27     240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                  1        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                  0       17     240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                  1        2     240
0-6 months    ki1000109-ResPak           PAKISTAN                       10                 0        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       10                 1        0     240
0-6 months    ki1000109-ResPak           PAKISTAN                       11                 0        3     240
0-6 months    ki1000109-ResPak           PAKISTAN                       11                 1        0     240
0-6 months    ki1000109-ResPak           PAKISTAN                       12                 0        5     240
0-6 months    ki1000109-ResPak           PAKISTAN                       12                 1        0     240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      139    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      149    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        6    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      139    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      149    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        1    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      158    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        2    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      142    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      191    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        3    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      188    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      189    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        0    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      207    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        5    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      190    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       11    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      168    2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        8    2061
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      201    2037
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1        2    2037
0-6 months    ki1101329-Keneba           GAMBIA                         2                  0      174    2037
0-6 months    ki1101329-Keneba           GAMBIA                         2                  1        5    2037
0-6 months    ki1101329-Keneba           GAMBIA                         3                  0      216    2037
0-6 months    ki1101329-Keneba           GAMBIA                         3                  1        6    2037
0-6 months    ki1101329-Keneba           GAMBIA                         4                  0      136    2037
0-6 months    ki1101329-Keneba           GAMBIA                         4                  1        5    2037
0-6 months    ki1101329-Keneba           GAMBIA                         5                  0      137    2037
0-6 months    ki1101329-Keneba           GAMBIA                         5                  1        5    2037
0-6 months    ki1101329-Keneba           GAMBIA                         6                  0      120    2037
0-6 months    ki1101329-Keneba           GAMBIA                         6                  1        2    2037
0-6 months    ki1101329-Keneba           GAMBIA                         7                  0       88    2037
0-6 months    ki1101329-Keneba           GAMBIA                         7                  1        5    2037
0-6 months    ki1101329-Keneba           GAMBIA                         8                  0      170    2037
0-6 months    ki1101329-Keneba           GAMBIA                         8                  1        6    2037
0-6 months    ki1101329-Keneba           GAMBIA                         9                  0      175    2037
0-6 months    ki1101329-Keneba           GAMBIA                         9                  1        7    2037
0-6 months    ki1101329-Keneba           GAMBIA                         10                 0      236    2037
0-6 months    ki1101329-Keneba           GAMBIA                         10                 1        1    2037
0-6 months    ki1101329-Keneba           GAMBIA                         11                 0      163    2037
0-6 months    ki1101329-Keneba           GAMBIA                         11                 1        3    2037
0-6 months    ki1101329-Keneba           GAMBIA                         12                 0      170    2037
0-6 months    ki1101329-Keneba           GAMBIA                         12                 1        4    2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                  0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                  1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                  0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                  1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                  0        2    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                  1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                  0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                  1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                  0      194    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                  1       32    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                  0      370    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                  1       46    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                  0      388    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                  1       52    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                  0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                  1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                 0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                 1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                 0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                 1        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                 0        0    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                 1        0    1084
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  0       23     234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                  0       22     234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                  1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                  0       15     234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                  1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                  0       18     234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                  1        3     234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                  0       17     234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                  1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                  0        8     234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                  1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                  0       16     234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                  1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                  0       17     234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                  1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                  0       17     234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                  1        1     234
0-6 months    ki1114097-CMIN             BANGLADESH                     10                 0       23     234
0-6 months    ki1114097-CMIN             BANGLADESH                     10                 1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     11                 0       26     234
0-6 months    ki1114097-CMIN             BANGLADESH                     11                 1        0     234
0-6 months    ki1114097-CMIN             BANGLADESH                     12                 0       23     234
0-6 months    ki1114097-CMIN             BANGLADESH                     12                 1        3     234
0-6 months    ki1114097-CMIN             PERU                           1                  0       39     558
0-6 months    ki1114097-CMIN             PERU                           1                  1        0     558
0-6 months    ki1114097-CMIN             PERU                           2                  0       54     558
0-6 months    ki1114097-CMIN             PERU                           2                  1        2     558
0-6 months    ki1114097-CMIN             PERU                           3                  0       61     558
0-6 months    ki1114097-CMIN             PERU                           3                  1        1     558
0-6 months    ki1114097-CMIN             PERU                           4                  0       57     558
0-6 months    ki1114097-CMIN             PERU                           4                  1        1     558
0-6 months    ki1114097-CMIN             PERU                           5                  0       53     558
0-6 months    ki1114097-CMIN             PERU                           5                  1        2     558
0-6 months    ki1114097-CMIN             PERU                           6                  0       55     558
0-6 months    ki1114097-CMIN             PERU                           6                  1        0     558
0-6 months    ki1114097-CMIN             PERU                           7                  0       38     558
0-6 months    ki1114097-CMIN             PERU                           7                  1        0     558
0-6 months    ki1114097-CMIN             PERU                           8                  0       46     558
0-6 months    ki1114097-CMIN             PERU                           8                  1        1     558
0-6 months    ki1114097-CMIN             PERU                           9                  0       31     558
0-6 months    ki1114097-CMIN             PERU                           9                  1        0     558
0-6 months    ki1114097-CMIN             PERU                           10                 0       44     558
0-6 months    ki1114097-CMIN             PERU                           10                 1        1     558
0-6 months    ki1114097-CMIN             PERU                           11                 0       31     558
0-6 months    ki1114097-CMIN             PERU                           11                 1        2     558
0-6 months    ki1114097-CMIN             PERU                           12                 0       37     558
0-6 months    ki1114097-CMIN             PERU                           12                 1        2     558
0-6 months    ki1114097-CONTENT          PERU                           1                  0       10     215
0-6 months    ki1114097-CONTENT          PERU                           1                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           2                  0       18     215
0-6 months    ki1114097-CONTENT          PERU                           2                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           3                  0       30     215
0-6 months    ki1114097-CONTENT          PERU                           3                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           4                  0       19     215
0-6 months    ki1114097-CONTENT          PERU                           4                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           5                  0       14     215
0-6 months    ki1114097-CONTENT          PERU                           5                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           6                  0       13     215
0-6 months    ki1114097-CONTENT          PERU                           6                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           7                  0       28     215
0-6 months    ki1114097-CONTENT          PERU                           7                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           8                  0       23     215
0-6 months    ki1114097-CONTENT          PERU                           8                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           9                  0       26     215
0-6 months    ki1114097-CONTENT          PERU                           9                  1        0     215
0-6 months    ki1114097-CONTENT          PERU                           10                 0       14     215
0-6 months    ki1114097-CONTENT          PERU                           10                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           11                 0        9     215
0-6 months    ki1114097-CONTENT          PERU                           11                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           12                 0       11     215
0-6 months    ki1114097-CONTENT          PERU                           12                 1        0     215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       18     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  0       17     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  0       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  0       19     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  0       18     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  0        9     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  1        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  0       17     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  1        1     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  0       22     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  1        0     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  0       17     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 1        2     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 0       14     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 1        1     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 0       27     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 1        1     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       15     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  0       21     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  0       16     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  0       10     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  0       20     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  0        7     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  0       16     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  0       13     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  0       30     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 0       16     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 0       20     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 1        1     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 0       11     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 1        0     197
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     231
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          2                  0       15     231
6-24 months   ki0047075b-MAL-ED          INDIA                          2                  1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          3                  0       18     231
6-24 months   ki0047075b-MAL-ED          INDIA                          3                  1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          4                  0       13     231
6-24 months   ki0047075b-MAL-ED          INDIA                          4                  1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          5                  0        7     231
6-24 months   ki0047075b-MAL-ED          INDIA                          5                  1        1     231
6-24 months   ki0047075b-MAL-ED          INDIA                          6                  0       16     231
6-24 months   ki0047075b-MAL-ED          INDIA                          6                  1        3     231
6-24 months   ki0047075b-MAL-ED          INDIA                          7                  0       19     231
6-24 months   ki0047075b-MAL-ED          INDIA                          7                  1        4     231
6-24 months   ki0047075b-MAL-ED          INDIA                          8                  0       20     231
6-24 months   ki0047075b-MAL-ED          INDIA                          8                  1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          9                  0       15     231
6-24 months   ki0047075b-MAL-ED          INDIA                          9                  1        4     231
6-24 months   ki0047075b-MAL-ED          INDIA                          10                 0       24     231
6-24 months   ki0047075b-MAL-ED          INDIA                          10                 1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          11                 0       22     231
6-24 months   ki0047075b-MAL-ED          INDIA                          11                 1        2     231
6-24 months   ki0047075b-MAL-ED          INDIA                          12                 0       18     231
6-24 months   ki0047075b-MAL-ED          INDIA                          12                 1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       19     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                  0       17     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                  0       17     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                  0       22     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                  0       18     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                  1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                  0       18     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                  0       18     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                  0       24     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                  0       15     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                  1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                 0       20     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                 1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                 0       24     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                 1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                 0       17     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                 1        0     231
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       36     251
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           2                  0       19     251
6-24 months   ki0047075b-MAL-ED          PERU                           2                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           3                  0       21     251
6-24 months   ki0047075b-MAL-ED          PERU                           3                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           4                  0       17     251
6-24 months   ki0047075b-MAL-ED          PERU                           4                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           5                  0       22     251
6-24 months   ki0047075b-MAL-ED          PERU                           5                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           6                  0       15     251
6-24 months   ki0047075b-MAL-ED          PERU                           6                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           7                  0       20     251
6-24 months   ki0047075b-MAL-ED          PERU                           7                  1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           8                  0       13     251
6-24 months   ki0047075b-MAL-ED          PERU                           8                  1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           9                  0       21     251
6-24 months   ki0047075b-MAL-ED          PERU                           9                  1        1     251
6-24 months   ki0047075b-MAL-ED          PERU                           10                 0       17     251
6-24 months   ki0047075b-MAL-ED          PERU                           10                 1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           11                 0       29     251
6-24 months   ki0047075b-MAL-ED          PERU                           11                 1        0     251
6-24 months   ki0047075b-MAL-ED          PERU                           12                 0       19     251
6-24 months   ki0047075b-MAL-ED          PERU                           12                 1        0     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       36     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       23     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       15     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       13     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       13     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       17     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       22     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0        9     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       19     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       25     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        1     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       26     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        0     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       35     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       16     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       29     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       18     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       19     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       19     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       23     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       20     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       20     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       26     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       27     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        0     238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       32     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       14     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        0     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       41     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        3     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       31     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       34     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       16     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       27     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       41     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1        2     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       23     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        2     373
6-24 months   ki1000108-IRC              INDIA                          1                  0       35     410
6-24 months   ki1000108-IRC              INDIA                          1                  1        3     410
6-24 months   ki1000108-IRC              INDIA                          2                  0       26     410
6-24 months   ki1000108-IRC              INDIA                          2                  1        2     410
6-24 months   ki1000108-IRC              INDIA                          3                  0       26     410
6-24 months   ki1000108-IRC              INDIA                          3                  1        1     410
6-24 months   ki1000108-IRC              INDIA                          4                  0       19     410
6-24 months   ki1000108-IRC              INDIA                          4                  1        2     410
6-24 months   ki1000108-IRC              INDIA                          5                  0       20     410
6-24 months   ki1000108-IRC              INDIA                          5                  1        2     410
6-24 months   ki1000108-IRC              INDIA                          6                  0       32     410
6-24 months   ki1000108-IRC              INDIA                          6                  1        5     410
6-24 months   ki1000108-IRC              INDIA                          7                  0       30     410
6-24 months   ki1000108-IRC              INDIA                          7                  1        6     410
6-24 months   ki1000108-IRC              INDIA                          8                  0       36     410
6-24 months   ki1000108-IRC              INDIA                          8                  1        8     410
6-24 months   ki1000108-IRC              INDIA                          9                  0       21     410
6-24 months   ki1000108-IRC              INDIA                          9                  1        6     410
6-24 months   ki1000108-IRC              INDIA                          10                 0       31     410
6-24 months   ki1000108-IRC              INDIA                          10                 1        7     410
6-24 months   ki1000108-IRC              INDIA                          11                 0       37     410
6-24 months   ki1000108-IRC              INDIA                          11                 1        3     410
6-24 months   ki1000108-IRC              INDIA                          12                 0       49     410
6-24 months   ki1000108-IRC              INDIA                          12                 1        3     410
6-24 months   ki1000109-EE               PAKISTAN                       1                  0      162     736
6-24 months   ki1000109-EE               PAKISTAN                       1                  1       20     736
6-24 months   ki1000109-EE               PAKISTAN                       2                  0      116     736
6-24 months   ki1000109-EE               PAKISTAN                       2                  1       14     736
6-24 months   ki1000109-EE               PAKISTAN                       3                  0       68     736
6-24 months   ki1000109-EE               PAKISTAN                       3                  1       14     736
6-24 months   ki1000109-EE               PAKISTAN                       4                  0       30     736
6-24 months   ki1000109-EE               PAKISTAN                       4                  1        2     736
6-24 months   ki1000109-EE               PAKISTAN                       5                  0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       5                  1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       6                  0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       6                  1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       7                  0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       7                  1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       8                  0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       8                  1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       9                  0        0     736
6-24 months   ki1000109-EE               PAKISTAN                       9                  1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       10                 0        8     736
6-24 months   ki1000109-EE               PAKISTAN                       10                 1        0     736
6-24 months   ki1000109-EE               PAKISTAN                       11                 0      114     736
6-24 months   ki1000109-EE               PAKISTAN                       11                 1       22     736
6-24 months   ki1000109-EE               PAKISTAN                       12                 0      152     736
6-24 months   ki1000109-EE               PAKISTAN                       12                 1       14     736
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  0        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  1        1     206
6-24 months   ki1000109-ResPak           PAKISTAN                       2                  0        7     206
6-24 months   ki1000109-ResPak           PAKISTAN                       2                  1        2     206
6-24 months   ki1000109-ResPak           PAKISTAN                       3                  0       11     206
6-24 months   ki1000109-ResPak           PAKISTAN                       3                  1        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       4                  0        9     206
6-24 months   ki1000109-ResPak           PAKISTAN                       4                  1        5     206
6-24 months   ki1000109-ResPak           PAKISTAN                       5                  0       38     206
6-24 months   ki1000109-ResPak           PAKISTAN                       5                  1        7     206
6-24 months   ki1000109-ResPak           PAKISTAN                       6                  0       31     206
6-24 months   ki1000109-ResPak           PAKISTAN                       6                  1        8     206
6-24 months   ki1000109-ResPak           PAKISTAN                       7                  0       17     206
6-24 months   ki1000109-ResPak           PAKISTAN                       7                  1        3     206
6-24 months   ki1000109-ResPak           PAKISTAN                       8                  0       25     206
6-24 months   ki1000109-ResPak           PAKISTAN                       8                  1        5     206
6-24 months   ki1000109-ResPak           PAKISTAN                       9                  0       13     206
6-24 months   ki1000109-ResPak           PAKISTAN                       9                  1        5     206
6-24 months   ki1000109-ResPak           PAKISTAN                       10                 0        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       10                 1        1     206
6-24 months   ki1000109-ResPak           PAKISTAN                       11                 0        1     206
6-24 months   ki1000109-ResPak           PAKISTAN                       11                 1        0     206
6-24 months   ki1000109-ResPak           PAKISTAN                       12                 0        4     206
6-24 months   ki1000109-ResPak           PAKISTAN                       12                 1        1     206
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       69    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1       17    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  0       63    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  1        8    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  0       55    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  1        8    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  0       48    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  1       11    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  0       68    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  1       14    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  0       73    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  1       14    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  0       92    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  1       22    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  0      127    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  1       19    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  0      120    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  1       28    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 0      113    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 1       18    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 0       88    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 1       21    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 0      100    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 1        8    1204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0       17     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        5     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0       24     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        4     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0       16     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        2     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        2     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        9     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        2     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0       21     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        2     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0       29     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        4     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0       47     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        8     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0       43     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1       11     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0       37     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        7     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0       22     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        6     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0       22     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        8     348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       40     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  0       38     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  1        4     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  0       38     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  0       34     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  1        5     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  0       32     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  0       38     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  1        4     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  0       33     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  1        5     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  0       26     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  1        3     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  0       35     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  1        2     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 0       34     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 1        5     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 0       42     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 1        6     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 0       47     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 1        3     492
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      100    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       11    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      122    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        6    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      119    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        5    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      123    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      125    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      113    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        7    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      164    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        3    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      165    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        3    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      151    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        3    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      174    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1       10    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      138    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       14    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      128    1706
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        8    1706
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      189    2232
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       24    2232
6-24 months   ki1101329-Keneba           GAMBIA                         2                  0      191    2232
6-24 months   ki1101329-Keneba           GAMBIA                         2                  1       14    2232
6-24 months   ki1101329-Keneba           GAMBIA                         3                  0      211    2232
6-24 months   ki1101329-Keneba           GAMBIA                         3                  1       22    2232
6-24 months   ki1101329-Keneba           GAMBIA                         4                  0      137    2232
6-24 months   ki1101329-Keneba           GAMBIA                         4                  1       13    2232
6-24 months   ki1101329-Keneba           GAMBIA                         5                  0      151    2232
6-24 months   ki1101329-Keneba           GAMBIA                         5                  1       12    2232
6-24 months   ki1101329-Keneba           GAMBIA                         6                  0      118    2232
6-24 months   ki1101329-Keneba           GAMBIA                         6                  1        9    2232
6-24 months   ki1101329-Keneba           GAMBIA                         7                  0       94    2232
6-24 months   ki1101329-Keneba           GAMBIA                         7                  1       14    2232
6-24 months   ki1101329-Keneba           GAMBIA                         8                  0      176    2232
6-24 months   ki1101329-Keneba           GAMBIA                         8                  1       13    2232
6-24 months   ki1101329-Keneba           GAMBIA                         9                  0      175    2232
6-24 months   ki1101329-Keneba           GAMBIA                         9                  1       15    2232
6-24 months   ki1101329-Keneba           GAMBIA                         10                 0      238    2232
6-24 months   ki1101329-Keneba           GAMBIA                         10                 1       25    2232
6-24 months   ki1101329-Keneba           GAMBIA                         11                 0      173    2232
6-24 months   ki1101329-Keneba           GAMBIA                         11                 1       23    2232
6-24 months   ki1101329-Keneba           GAMBIA                         12                 0      180    2232
6-24 months   ki1101329-Keneba           GAMBIA                         12                 1       15    2232
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       22     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       21     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       22     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        1     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       24     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       19     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       13     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       13     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  0        8     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       12     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       21     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       17     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 0       23     218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        1     218
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  0      148    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                  1       21    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  0       67    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                  1        8    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  0       83    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                  1       17    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  0      108    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                  1       12    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  0       93    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                  1       12    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  0       82    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                  1       12    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  0       80    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                  1       11    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  0      121    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                  1       17    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  0      198    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                  1       26    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 0      178    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                 1       26    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 0      161    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                 1       24    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 0      150    1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                 1       14    1669
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  1        2    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  0      190    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  1       60    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  0      382    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  1       70    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  0      368    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  1       82    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 1        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 0        0    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 1        0    1154
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       25     251
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  1        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2                  0       23     251
6-24 months   ki1114097-CMIN             BANGLADESH                     2                  1        1     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3                  0       15     251
6-24 months   ki1114097-CMIN             BANGLADESH                     3                  1        3     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4                  0       20     251
6-24 months   ki1114097-CMIN             BANGLADESH                     4                  1        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5                  0       17     251
6-24 months   ki1114097-CMIN             BANGLADESH                     5                  1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6                  0        9     251
6-24 months   ki1114097-CMIN             BANGLADESH                     6                  1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7                  0       14     251
6-24 months   ki1114097-CMIN             BANGLADESH                     7                  1        2     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8                  0       19     251
6-24 months   ki1114097-CMIN             BANGLADESH                     8                  1        0     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9                  0       19     251
6-24 months   ki1114097-CMIN             BANGLADESH                     9                  1        1     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10                 0       20     251
6-24 months   ki1114097-CMIN             BANGLADESH                     10                 1        6     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11                 0       22     251
6-24 months   ki1114097-CMIN             BANGLADESH                     11                 1        4     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12                 0       23     251
6-24 months   ki1114097-CMIN             BANGLADESH                     12                 1        4     251
6-24 months   ki1114097-CMIN             BRAZIL                         1                  0       14     117
6-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         2                  0        7     117
6-24 months   ki1114097-CMIN             BRAZIL                         2                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         3                  0       13     117
6-24 months   ki1114097-CMIN             BRAZIL                         3                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         4                  0        9     117
6-24 months   ki1114097-CMIN             BRAZIL                         4                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         5                  0        5     117
6-24 months   ki1114097-CMIN             BRAZIL                         5                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         6                  0        7     117
6-24 months   ki1114097-CMIN             BRAZIL                         6                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         7                  0        3     117
6-24 months   ki1114097-CMIN             BRAZIL                         7                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         8                  0       14     117
6-24 months   ki1114097-CMIN             BRAZIL                         8                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         9                  0        8     117
6-24 months   ki1114097-CMIN             BRAZIL                         9                  1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         10                 0       15     117
6-24 months   ki1114097-CMIN             BRAZIL                         10                 1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         11                 0       11     117
6-24 months   ki1114097-CMIN             BRAZIL                         11                 1        0     117
6-24 months   ki1114097-CMIN             BRAZIL                         12                 0       11     117
6-24 months   ki1114097-CMIN             BRAZIL                         12                 1        0     117
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      108     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        4     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  0       70     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  1        1     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  0       75     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  1        4     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  0       53     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  1        2     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  0       64     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  1        3     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       53     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  1        1     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       61     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  1        2     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       74     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  1        1     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      103     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  1        7     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 0      100     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        4     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 0       91     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 1        4     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 0       99     987
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 1        3     987
6-24 months   ki1114097-CMIN             PERU                           1                  0       41     734
6-24 months   ki1114097-CMIN             PERU                           1                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           2                  0       61     734
6-24 months   ki1114097-CMIN             PERU                           2                  1        1     734
6-24 months   ki1114097-CMIN             PERU                           3                  0       71     734
6-24 months   ki1114097-CMIN             PERU                           3                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           4                  0       64     734
6-24 months   ki1114097-CMIN             PERU                           4                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           5                  0       72     734
6-24 months   ki1114097-CMIN             PERU                           5                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           6                  0       70     734
6-24 months   ki1114097-CMIN             PERU                           6                  1        2     734
6-24 months   ki1114097-CMIN             PERU                           7                  0       65     734
6-24 months   ki1114097-CMIN             PERU                           7                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           8                  0       76     734
6-24 months   ki1114097-CMIN             PERU                           8                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           9                  0       55     734
6-24 months   ki1114097-CMIN             PERU                           9                  1        0     734
6-24 months   ki1114097-CMIN             PERU                           10                 0       52     734
6-24 months   ki1114097-CMIN             PERU                           10                 1        0     734
6-24 months   ki1114097-CMIN             PERU                           11                 0       48     734
6-24 months   ki1114097-CMIN             PERU                           11                 1        1     734
6-24 months   ki1114097-CMIN             PERU                           12                 0       55     734
6-24 months   ki1114097-CMIN             PERU                           12                 1        0     734
6-24 months   ki1114097-CONTENT          PERU                           1                  0       10     215
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           2                  0       18     215
6-24 months   ki1114097-CONTENT          PERU                           2                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           3                  0       30     215
6-24 months   ki1114097-CONTENT          PERU                           3                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           4                  0       19     215
6-24 months   ki1114097-CONTENT          PERU                           4                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           5                  0       14     215
6-24 months   ki1114097-CONTENT          PERU                           5                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           6                  0       13     215
6-24 months   ki1114097-CONTENT          PERU                           6                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           7                  0       28     215
6-24 months   ki1114097-CONTENT          PERU                           7                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           8                  0       23     215
6-24 months   ki1114097-CONTENT          PERU                           8                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           9                  0       26     215
6-24 months   ki1114097-CONTENT          PERU                           9                  1        0     215
6-24 months   ki1114097-CONTENT          PERU                           10                 0       14     215
6-24 months   ki1114097-CONTENT          PERU                           10                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           11                 0        9     215
6-24 months   ki1114097-CONTENT          PERU                           11                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           12                 0       11     215
6-24 months   ki1114097-CONTENT          PERU                           12                 1        0     215
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0      367    7097
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        2                  0      407    7097
6-24 months   ki1119695-PROBIT           BELARUS                        2                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        3                  0      490    7097
6-24 months   ki1119695-PROBIT           BELARUS                        3                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        4                  0      518    7097
6-24 months   ki1119695-PROBIT           BELARUS                        4                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        5                  0      519    7097
6-24 months   ki1119695-PROBIT           BELARUS                        5                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        6                  0      513    7097
6-24 months   ki1119695-PROBIT           BELARUS                        6                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        7                  0      683    7097
6-24 months   ki1119695-PROBIT           BELARUS                        7                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        8                  0      626    7097
6-24 months   ki1119695-PROBIT           BELARUS                        8                  1        1    7097
6-24 months   ki1119695-PROBIT           BELARUS                        9                  0      658    7097
6-24 months   ki1119695-PROBIT           BELARUS                        9                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        10                 0      790    7097
6-24 months   ki1119695-PROBIT           BELARUS                        10                 1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        11                 0      712    7097
6-24 months   ki1119695-PROBIT           BELARUS                        11                 1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        12                 0      812    7097
6-24 months   ki1119695-PROBIT           BELARUS                        12                 1        1    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      233    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       11    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      216    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       10    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      262    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1       12    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      228    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1       13    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      178    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1        8    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      156    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1        8    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      117    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1        2    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      139    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1        6    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      130    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1        4    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      117    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1        5    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      160    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1        8    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      195    2226
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1        8    2226
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       51     695
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         2                  0       41     695
6-24 months   ki1148112-LCNI-5           MALAWI                         2                  1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         3                  0       22     695
6-24 months   ki1148112-LCNI-5           MALAWI                         3                  1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         4                  0       33     695
6-24 months   ki1148112-LCNI-5           MALAWI                         4                  1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         5                  0       33     695
6-24 months   ki1148112-LCNI-5           MALAWI                         5                  1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         6                  0       27     695
6-24 months   ki1148112-LCNI-5           MALAWI                         6                  1        2     695
6-24 months   ki1148112-LCNI-5           MALAWI                         7                  0       56     695
6-24 months   ki1148112-LCNI-5           MALAWI                         7                  1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         8                  0       76     695
6-24 months   ki1148112-LCNI-5           MALAWI                         8                  1        2     695
6-24 months   ki1148112-LCNI-5           MALAWI                         9                  0       80     695
6-24 months   ki1148112-LCNI-5           MALAWI                         9                  1        1     695
6-24 months   ki1148112-LCNI-5           MALAWI                         10                 0      115     695
6-24 months   ki1148112-LCNI-5           MALAWI                         10                 1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         11                 0       78     695
6-24 months   ki1148112-LCNI-5           MALAWI                         11                 1        0     695
6-24 months   ki1148112-LCNI-5           MALAWI                         12                 0       77     695
6-24 months   ki1148112-LCNI-5           MALAWI                         12                 1        1     695
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0        0    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  0     1410    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  1      165    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  0     1598    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  1      176    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  0     1233    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  1      165    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  0     1038    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  1      135    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      744    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  1      118    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      905    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  1      124    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      969    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  1       74    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  0      671    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  1       78    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 0      237    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 1       19    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 0        0    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 1        0    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 0        0    9859
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        0    9859


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
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/c10060f6-17aa-470a-a92e-f48fb21b20df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c10060f6-17aa-470a-a92e-f48fb21b20df/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c10060f6-17aa-470a-a92e-f48fb21b20df/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c10060f6-17aa-470a-a92e-f48fb21b20df/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1276596    0.0518982   0.2034209
0-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    NA                0.0886076    0.0209423   0.1562729
0-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    NA                0.0800000    0.0129668   0.1470332
0-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    NA                0.0746269    0.0159259   0.1333278
0-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    NA                0.0879121    0.0399586   0.1358655
0-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    NA                0.0606061    0.0252223   0.0959898
0-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    NA                0.1129032    0.0569096   0.1688969
0-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    NA                0.0783133    0.0127024   0.1439241
0-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    NA                0.0809249    0.0584622   0.1033875
0-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   NA                0.0675676    0.0107438   0.1243913
0-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   NA                0.0983607    0.0497335   0.1469878
0-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   NA                0.0546875    0.0152003   0.0941747
0-24 months   ki1101329-Keneba          GAMBIA         1                    NA                0.0617284    0.0314634   0.0919934
0-24 months   ki1101329-Keneba          GAMBIA         2                    NA                0.0414747    0.0149408   0.0680085
0-24 months   ki1101329-Keneba          GAMBIA         3                    NA                0.0705882    0.0391443   0.1020322
0-24 months   ki1101329-Keneba          GAMBIA         4                    NA                0.0552147    0.0201446   0.0902848
0-24 months   ki1101329-Keneba          GAMBIA         5                    NA                0.0628571    0.0268906   0.0988236
0-24 months   ki1101329-Keneba          GAMBIA         6                    NA                0.0500000    0.0138906   0.0861094
0-24 months   ki1101329-Keneba          GAMBIA         7                    NA                0.0940171    0.0411230   0.1469112
0-24 months   ki1101329-Keneba          GAMBIA         8                    NA                0.0341463    0.0092814   0.0590113
0-24 months   ki1101329-Keneba          GAMBIA         9                    NA                0.0465116    0.0183566   0.0746667
0-24 months   ki1101329-Keneba          GAMBIA         10                   NA                0.0415225    0.0185176   0.0645274
0-24 months   ki1101329-Keneba          GAMBIA         11                   NA                0.0724638    0.0371391   0.1077884
0-24 months   ki1101329-Keneba          GAMBIA         12                   NA                0.0372093    0.0119041   0.0625145
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                0.1242604    0.0519852   0.1965355
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    NA                0.1066667    0.0332501   0.1800833
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    NA                0.1700000    0.0900929   0.2499071
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    NA                0.1000000   -0.0529678   0.2529678
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    NA                0.1142857    0.0183912   0.2101802
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    NA                0.1276596    0.0495349   0.2057843
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    NA                0.1208791   -0.0312476   0.2730059
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    NA                0.1231884   -0.0072348   0.2536116
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    NA                0.1160714    0.0377125   0.1944303
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   NA                0.1274510    0.0700414   0.1848606
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   NA                0.1297297    0.0707601   0.1886994
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   NA                0.0853659    0.0053251   0.1654067
0-24 months   ki1119695-PROBIT          BELARUS        1                    NA                0.0118694    0.0027166   0.0210223
0-24 months   ki1119695-PROBIT          BELARUS        2                    NA                0.0103093    0.0035057   0.0171129
0-24 months   ki1119695-PROBIT          BELARUS        3                    NA                0.0079787   -0.0001068   0.0160643
0-24 months   ki1119695-PROBIT          BELARUS        4                    NA                0.0105079    0.0036942   0.0173216
0-24 months   ki1119695-PROBIT          BELARUS        5                    NA                0.0148472    0.0049471   0.0247473
0-24 months   ki1119695-PROBIT          BELARUS        6                    NA                0.0125945    0.0055762   0.0196127
0-24 months   ki1119695-PROBIT          BELARUS        7                    NA                0.0115905    0.0018539   0.0213270
0-24 months   ki1119695-PROBIT          BELARUS        8                    NA                0.0070603    0.0011766   0.0129441
0-24 months   ki1119695-PROBIT          BELARUS        9                    NA                0.0069488    0.0009848   0.0129129
0-24 months   ki1119695-PROBIT          BELARUS        10                   NA                0.0117515    0.0032435   0.0202596
0-24 months   ki1119695-PROBIT          BELARUS        11                   NA                0.0077658    0.0014581   0.0140736
0-24 months   ki1119695-PROBIT          BELARUS        12                   NA                0.0054377   -0.0008214   0.0116969
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0273224    0.0167590   0.0378858
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    NA                0.0144928    0.0055751   0.0234104
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    NA                0.0286783    0.0171267   0.0402299
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    NA                0.0115108    0.0035800   0.0194416
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    NA                0.0101156    0.0026596   0.0175716
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    NA                0.0167526    0.0077221   0.0257831
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    NA                0.0181113    0.0087100   0.0275125
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    NA                0.0154946    0.0071369   0.0238524
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    NA                0.0164900    0.0079232   0.0250568
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   NA                0.0229008    0.0114444   0.0343571
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   NA                0.0138018    0.0057016   0.0219019
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   NA                0.0164706    0.0079138   0.0250274
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.0483360    0.0350008   0.0616712
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    NA                0.0510483    0.0367948   0.0653018
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    NA                0.0557185    0.0417371   0.0696999
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    NA                0.0661305    0.0509247   0.0813363
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    NA                0.0531814    0.0389190   0.0674438
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    NA                0.0702222    0.0518022   0.0886423
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    NA                0.0549542    0.0420183   0.0678901
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    NA                0.0621800    0.0480973   0.0762626
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    NA                0.0579125    0.0450480   0.0707769
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   NA                0.0696325    0.0567607   0.0825043
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   NA                0.0516048    0.0402102   0.0629994
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   NA                0.0470668    0.0361475   0.0579862
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1976744    0.1560453   0.2393035
6-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    NA                0.1126761    0.0270809   0.1982712
6-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    NA                0.1269841    0.0415181   0.2124501
6-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    NA                0.1864407    0.1152237   0.2576576
6-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    NA                0.1707317    0.0550843   0.2863791
6-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    NA                0.1609195    0.0837196   0.2381195
6-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    NA                0.1929825    0.1183840   0.2675810
6-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    NA                0.1301370    0.0599905   0.2002834
6-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    NA                0.1891892    0.1391083   0.2392701
6-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   NA                0.1374046    0.0696376   0.2051715
6-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   NA                0.1926606    0.0941302   0.2911909
6-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   NA                0.0740741    0.0350018   0.1131463
6-24 months   ki1101329-Keneba          GAMBIA         1                    NA                0.1126761    0.0702031   0.1551490
6-24 months   ki1101329-Keneba          GAMBIA         2                    NA                0.0682927    0.0337548   0.1028305
6-24 months   ki1101329-Keneba          GAMBIA         3                    NA                0.0944206    0.0568659   0.1319753
6-24 months   ki1101329-Keneba          GAMBIA         4                    NA                0.0866667    0.0416327   0.1317007
6-24 months   ki1101329-Keneba          GAMBIA         5                    NA                0.0736196    0.0335198   0.1137195
6-24 months   ki1101329-Keneba          GAMBIA         6                    NA                0.0708661    0.0262284   0.1155039
6-24 months   ki1101329-Keneba          GAMBIA         7                    NA                0.1296296    0.0662663   0.1929929
6-24 months   ki1101329-Keneba          GAMBIA         8                    NA                0.0687831    0.0326936   0.1048726
6-24 months   ki1101329-Keneba          GAMBIA         9                    NA                0.0789474    0.0405961   0.1172986
6-24 months   ki1101329-Keneba          GAMBIA         10                   NA                0.0950570    0.0596026   0.1305114
6-24 months   ki1101329-Keneba          GAMBIA         11                   NA                0.1173469    0.0722810   0.1624129
6-24 months   ki1101329-Keneba          GAMBIA         12                   NA                0.0769231    0.0395141   0.1143320
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                0.1242604    0.0519852   0.1965355
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    NA                0.1066667    0.0332501   0.1800833
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    NA                0.1700000    0.0900929   0.2499071
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    NA                0.1000000   -0.0529678   0.2529678
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    NA                0.1142857    0.0183912   0.2101802
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    NA                0.1276596    0.0495349   0.2057843
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    NA                0.1208791   -0.0312476   0.2730059
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    NA                0.1231884   -0.0072348   0.2536116
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    NA                0.1160714    0.0377125   0.1944303
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   NA                0.1274510    0.0700414   0.1848606
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   NA                0.1297297    0.0707601   0.1886994
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   NA                0.0853659    0.0053251   0.1654067


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1101329-Keneba          GAMBIA         NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   ki1119695-PROBIT          BELARUS        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0572741   0.0531873   0.0613609
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1101329-Keneba          GAMBIA         NA                   NA                0.0891577   0.0773328   0.1009827
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    1                 0.6940928   0.2580130   1.8672113
0-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    1                 0.6266667   0.2775058   1.4151457
0-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    1                 0.5845771   0.1897451   1.8009968
0-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    1                 0.6886447   0.2477755   1.9139564
0-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    1                 0.4747475   0.1735473   1.2986961
0-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    1                 0.8844086   0.7376488   1.0603672
0-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    1                 0.6134538   0.3805286   0.9889547
0-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    1                 0.6339114   0.4157629   0.9665212
0-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   1                 0.5292793   0.1749374   1.6013534
0-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   1                 0.7704918   0.4348151   1.3653105
0-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   1                 0.4283854   0.2233101   0.8217902
0-24 months   ki1101329-Keneba          GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA         2                    1                 0.6718894   0.3000850   1.5043583
0-24 months   ki1101329-Keneba          GAMBIA         3                    1                 1.1435294   0.5895981   2.2178830
0-24 months   ki1101329-Keneba          GAMBIA         4                    1                 0.8944785   0.4009596   1.9954426
0-24 months   ki1101329-Keneba          GAMBIA         5                    1                 1.0182857   0.4793135   2.1633143
0-24 months   ki1101329-Keneba          GAMBIA         6                    1                 0.8100000   0.3383705   1.9389987
0-24 months   ki1101329-Keneba          GAMBIA         7                    1                 1.5230769   0.7221447   3.2123248
0-24 months   ki1101329-Keneba          GAMBIA         8                    1                 0.5531707   0.2299363   1.3307938
0-24 months   ki1101329-Keneba          GAMBIA         9                    1                 0.7534884   0.3457547   1.6420448
0-24 months   ki1101329-Keneba          GAMBIA         10                   1                 0.6726644   0.3209934   1.4096157
0-24 months   ki1101329-Keneba          GAMBIA         11                   1                 1.1739130   0.5879871   2.3437109
0-24 months   ki1101329-Keneba          GAMBIA         12                   1                 0.6027907   0.2606513   1.3940333
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    1                 0.8584127   0.3999918   1.8422188
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    1                 1.3680952   0.6385273   2.9312524
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    1                 0.8047619   0.1612593   4.0161510
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    1                 0.9197279   0.3190452   2.6513469
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    1                 1.0273556   0.4471675   2.3603226
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    1                 0.9727891   0.2344867   4.0357037
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    1                 0.9913734   0.2775306   3.5413073
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    1                 0.9340986   0.3801840   2.2950475
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   1                 1.0256769   0.5015178   2.0976587
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   1                 1.0440154   0.5464228   1.9947342
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   1                 0.6869921   0.2221687   2.1243229
0-24 months   ki1119695-PROBIT          BELARUS        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS        2                    1                 0.8685567   0.4254717   1.7730691
0-24 months   ki1119695-PROBIT          BELARUS        3                    1                 0.6722074   0.2351087   1.9219319
0-24 months   ki1119695-PROBIT          BELARUS        4                    1                 0.8852890   0.3481410   2.2512043
0-24 months   ki1119695-PROBIT          BELARUS        5                    1                 1.2508734   0.5329783   2.9357373
0-24 months   ki1119695-PROBIT          BELARUS        6                    1                 1.0610831   0.4101370   2.7451737
0-24 months   ki1119695-PROBIT          BELARUS        7                    1                 0.9764971   0.4539028   2.1007728
0-24 months   ki1119695-PROBIT          BELARUS        8                    1                 0.5948331   0.2542525   1.3916341
0-24 months   ki1119695-PROBIT          BELARUS        9                    1                 0.5854391   0.1894806   1.8088340
0-24 months   ki1119695-PROBIT          BELARUS        10                   1                 0.9900672   0.4455746   2.1999301
0-24 months   ki1119695-PROBIT          BELARUS        11                   1                 0.6542712   0.2052167   2.0859452
0-24 months   ki1119695-PROBIT          BELARUS        12                   1                 0.4581296   0.1552461   1.3519363
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       2                    1                 0.5304348   0.2564658   1.0970703
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       3                    1                 1.0496259   0.6005627   1.8344706
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       4                    1                 0.4212950   0.1911926   0.9283280
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       5                    1                 0.3702312   0.1610643   0.8510335
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       6                    1                 0.6131443   0.3158397   1.1903061
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       7                    1                 0.6628719   0.3470044   1.2662641
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       8                    1                 0.5671037   0.2920417   1.1012352
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       9                    1                 0.6035336   0.3158330   1.1533080
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       10                   1                 0.8381679   0.4453998   1.5772920
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       11                   1                 0.5051443   0.2501478   1.0200798
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       12                   1                 0.6028235   0.3154602   1.1519559
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     2                    1                 1.0561143   0.7179269   1.5536085
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     3                    1                 1.1527330   0.8092654   1.6419749
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     4                    1                 1.3681419   0.9498845   1.9705683
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     5                    1                 1.1002444   0.7417873   1.6319204
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     6                    1                 1.4527942   0.9847754   2.1432408
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     7                    1                 1.1369214   0.7961795   1.6234911
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     8                    1                 1.2864115   0.9048728   1.8288256
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     9                    1                 1.1981233   0.8389449   1.7110771
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     10                   1                 1.4405936   1.0329910   2.0090300
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     11                   1                 1.0676268   0.7527448   1.5142276
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     12                   1                 0.9737437   0.6963111   1.3617143
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          2                    1                 0.5700083   0.2684917   1.2101283
6-24 months   ki1000304b-SAS-CompFeed   INDIA          3                    1                 0.6423903   0.3262824   1.2647488
6-24 months   ki1000304b-SAS-CompFeed   INDIA          4                    1                 0.9431705   0.5803498   1.5328178
6-24 months   ki1000304b-SAS-CompFeed   INDIA          5                    1                 0.8637016   0.4621677   1.6140905
6-24 months   ki1000304b-SAS-CompFeed   INDIA          6                    1                 0.8140636   0.4446922   1.4902432
6-24 months   ki1000304b-SAS-CompFeed   INDIA          7                    1                 0.9762642   0.7239517   1.3165129
6-24 months   ki1000304b-SAS-CompFeed   INDIA          8                    1                 0.6583400   0.4239838   1.0222364
6-24 months   ki1000304b-SAS-CompFeed   INDIA          9                    1                 0.9570747   0.6937840   1.3202841
6-24 months   ki1000304b-SAS-CompFeed   INDIA          10                   1                 0.6951055   0.4237568   1.1402097
6-24 months   ki1000304b-SAS-CompFeed   INDIA          11                   1                 0.9746357   0.5577458   1.7031320
6-24 months   ki1000304b-SAS-CompFeed   INDIA          12                   1                 0.3747277   0.1986008   0.7070508
6-24 months   ki1101329-Keneba          GAMBIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA         2                    1                 0.6060976   0.3225581   1.1388776
6-24 months   ki1101329-Keneba          GAMBIA         3                    1                 0.8379828   0.4844503   1.4495093
6-24 months   ki1101329-Keneba          GAMBIA         4                    1                 0.7691667   0.4047864   1.4615545
6-24 months   ki1101329-Keneba          GAMBIA         5                    1                 0.6533742   0.3368871   1.2671838
6-24 months   ki1101329-Keneba          GAMBIA         6                    1                 0.6289370   0.3018615   1.3104082
6-24 months   ki1101329-Keneba          GAMBIA         7                    1                 1.1504630   0.6205795   2.1327889
6-24 months   ki1101329-Keneba          GAMBIA         8                    1                 0.6104497   0.3199430   1.1647350
6-24 months   ki1101329-Keneba          GAMBIA         9                    1                 0.7006579   0.3788508   1.2958176
6-24 months   ki1101329-Keneba          GAMBIA         10                   1                 0.8436312   0.4964232   1.4336830
6-24 months   ki1101329-Keneba          GAMBIA         11                   1                 1.0414541   0.6080459   1.7837907
6-24 months   ki1101329-Keneba          GAMBIA         12                   1                 0.6826923   0.3689810   1.2631239
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   2                    1                 0.8584127   0.3999918   1.8422188
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   3                    1                 1.3680952   0.6385273   2.9312524
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   4                    1                 0.8047619   0.1612593   4.0161510
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   5                    1                 0.9197279   0.3190452   2.6513469
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   6                    1                 1.0273556   0.4471675   2.3603226
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   7                    1                 0.9727891   0.2344867   4.0357037
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   8                    1                 0.9913734   0.2775306   3.5413073
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   9                    1                 0.9340986   0.3801840   2.2950475
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   10                   1                 1.0256769   0.5015178   2.0976587
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   11                   1                 1.0440154   0.5464228   1.9947342
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   12                   1                 0.6869921   0.2221687   2.1243229


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0442042   -0.1031855    0.0147770
0-24 months   ki1101329-Keneba          GAMBIA         1                    NA                -0.0076522   -0.0361852    0.0208808
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                -0.0044281   -0.0733800    0.0645237
0-24 months   ki1119695-PROBIT          BELARUS        1                    NA                -0.0022801   -0.0096241    0.0050638
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.0094289   -0.0192747    0.0004169
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.0089381   -0.0037075    0.0215836
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0415282   -0.0704705   -0.0125860
6-24 months   ki1101329-Keneba          GAMBIA         1                    NA                -0.0235184   -0.0635118    0.0164751
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                -0.0044281   -0.0733800    0.0645237


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.5296753   -1.3014705   -0.0167006
0-24 months   ki1101329-Keneba          GAMBIA         1                    NA                -0.1415077   -0.8115572    0.2807074
0-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                -0.0369526   -0.8069159    0.4049138
0-24 months   ki1119695-PROBIT          BELARUS        1                    NA                -0.2377806   -1.2762681    0.3269243
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                -0.5269461   -1.1816552   -0.0687135
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                 0.1560582   -0.0968401    0.3506457
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.2659574   -0.4439367   -0.1099159
6-24 months   ki1101329-Keneba          GAMBIA         1                    NA                -0.2637837   -0.8008143    0.1130961
6-24 months   ki1112895-iLiNS-Zinc      BURKINA FASO   1                    NA                -0.0369526   -0.8069159    0.4049138
