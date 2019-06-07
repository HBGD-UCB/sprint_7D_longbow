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

agecat        studyid                    country                        month    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       25    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       19    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       24    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       15    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       26    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       18    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       20    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       10    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       17    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       18    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       28    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       20    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       21    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       14    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1    217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                0       17    241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                0       19    241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                0       21    241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                0       14    241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                0        6    241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                0       15    241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                1        3    241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                0       22    241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                1        3    241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19    241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21    241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0    241
0-24 months   ki0047075b-MAL-ED          INDIA                          10               0       25    241
0-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22    241
0-24 months   ki0047075b-MAL-ED          INDIA                          11               1        3    241
0-24 months   ki0047075b-MAL-ED          INDIA                          12               0       19    241
0-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1    241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       24    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       19    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       21    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       20    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       19    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       17    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       22    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           1                0       40    284
0-24 months   ki0047075b-MAL-ED          PERU                           1                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           2                0       25    284
0-24 months   ki0047075b-MAL-ED          PERU                           2                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           3                0       21    284
0-24 months   ki0047075b-MAL-ED          PERU                           3                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           4                0       20    284
0-24 months   ki0047075b-MAL-ED          PERU                           4                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           5                0       24    284
0-24 months   ki0047075b-MAL-ED          PERU                           5                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           6                0       19    284
0-24 months   ki0047075b-MAL-ED          PERU                           6                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           7                0       22    284
0-24 months   ki0047075b-MAL-ED          PERU                           7                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           8                0       16    284
0-24 months   ki0047075b-MAL-ED          PERU                           8                1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           9                0       22    284
0-24 months   ki0047075b-MAL-ED          PERU                           9                1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           10               0       21    284
0-24 months   ki0047075b-MAL-ED          PERU                           10               1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           11               0       33    284
0-24 months   ki0047075b-MAL-ED          PERU                           11               1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           12               0       20    284
0-24 months   ki0047075b-MAL-ED          PERU                           12               1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       18    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0    253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       26    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       43    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       32    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       24    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       39    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       26    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        3    373
0-24 months   ki1000108-IRC              INDIA                          1                0       33    410
0-24 months   ki1000108-IRC              INDIA                          1                1        3    410
0-24 months   ki1000108-IRC              INDIA                          2                0       25    410
0-24 months   ki1000108-IRC              INDIA                          2                1        2    410
0-24 months   ki1000108-IRC              INDIA                          3                0       28    410
0-24 months   ki1000108-IRC              INDIA                          3                1        1    410
0-24 months   ki1000108-IRC              INDIA                          4                0       20    410
0-24 months   ki1000108-IRC              INDIA                          4                1        2    410
0-24 months   ki1000108-IRC              INDIA                          5                0       19    410
0-24 months   ki1000108-IRC              INDIA                          5                1        2    410
0-24 months   ki1000108-IRC              INDIA                          6                0       32    410
0-24 months   ki1000108-IRC              INDIA                          6                1        5    410
0-24 months   ki1000108-IRC              INDIA                          7                0       31    410
0-24 months   ki1000108-IRC              INDIA                          7                1        5    410
0-24 months   ki1000108-IRC              INDIA                          8                0       36    410
0-24 months   ki1000108-IRC              INDIA                          8                1        9    410
0-24 months   ki1000108-IRC              INDIA                          9                0       22    410
0-24 months   ki1000108-IRC              INDIA                          9                1        5    410
0-24 months   ki1000108-IRC              INDIA                          10               0       31    410
0-24 months   ki1000108-IRC              INDIA                          10               1        6    410
0-24 months   ki1000108-IRC              INDIA                          11               0       38    410
0-24 months   ki1000108-IRC              INDIA                          11               1        3    410
0-24 months   ki1000108-IRC              INDIA                          12               0       47    410
0-24 months   ki1000108-IRC              INDIA                          12               1        5    410
0-24 months   ki1000109-EE               PAKISTAN                       1                0       82    377
0-24 months   ki1000109-EE               PAKISTAN                       1                1        8    377
0-24 months   ki1000109-EE               PAKISTAN                       2                0       77    377
0-24 months   ki1000109-EE               PAKISTAN                       2                1        4    377
0-24 months   ki1000109-EE               PAKISTAN                       3                0       37    377
0-24 months   ki1000109-EE               PAKISTAN                       3                1        5    377
0-24 months   ki1000109-EE               PAKISTAN                       4                0       26    377
0-24 months   ki1000109-EE               PAKISTAN                       4                1        3    377
0-24 months   ki1000109-EE               PAKISTAN                       5                0        2    377
0-24 months   ki1000109-EE               PAKISTAN                       5                1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       6                0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       6                1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       7                0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       7                1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       8                0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       8                1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       9                0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       9                1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       10               0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       10               1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       11               0       46    377
0-24 months   ki1000109-EE               PAKISTAN                       11               1        3    377
0-24 months   ki1000109-EE               PAKISTAN                       12               0       79    377
0-24 months   ki1000109-EE               PAKISTAN                       12               1        5    377
0-24 months   ki1000109-ResPak           PAKISTAN                       1                0        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                1        2    251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                0        9    251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                1        2    251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                0       14    251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                1        0    251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                0       24    251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                1        6    251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                0       29    251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                0       44    251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3    251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                0       31    251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4    251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                0       28    251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                1        8    251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                0       21    251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                1        1    251
0-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       10               1        2    251
0-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       11               1        1    251
0-24 months   ki1000109-ResPak           PAKISTAN                       12               0        2    251
0-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0    251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       42    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1        9    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       34    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        1    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       37    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        3    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       29    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        1    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       30    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        4    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0       50    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        1    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0        4    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1        2    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0       61    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        2    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0       37    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1        5    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0       72    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        4    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       13     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0        7     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0        6     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0        7     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0        6     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0        5     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0        5     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0        8     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       13     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1        4     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3    534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      168   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      149   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10   2166
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0    256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        2    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      106    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       20    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      200    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       32    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0      183    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1       30    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0       12    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        2    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        3    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        1    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        1    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0    592
0-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25    257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3    257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30    257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20    257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16    257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3    257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20    257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20    257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3    257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12    257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1    257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13    257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1    257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18    257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1    257
0-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21    257
0-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40    257
0-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6    257
0-24 months   ki1114097-CMIN             BRAZIL                         1                0       13    119
0-24 months   ki1114097-CMIN             BRAZIL                         1                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         2                0        7    119
0-24 months   ki1114097-CMIN             BRAZIL                         2                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         3                0       14    119
0-24 months   ki1114097-CMIN             BRAZIL                         3                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         4                0       10    119
0-24 months   ki1114097-CMIN             BRAZIL                         4                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         5                0        5    119
0-24 months   ki1114097-CMIN             BRAZIL                         5                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         6                0        6    119
0-24 months   ki1114097-CMIN             BRAZIL                         6                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         7                0        4    119
0-24 months   ki1114097-CMIN             BRAZIL                         7                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         8                0       13    119
0-24 months   ki1114097-CMIN             BRAZIL                         8                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         9                0        9    119
0-24 months   ki1114097-CMIN             BRAZIL                         9                1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         10               0       16    119
0-24 months   ki1114097-CMIN             BRAZIL                         10               1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         11               0       12    119
0-24 months   ki1114097-CMIN             BRAZIL                         11               1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         12               0       10    119
0-24 months   ki1114097-CMIN             BRAZIL                         12               1        0    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       28   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        1   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      116   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        4   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      127   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        4   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0      189   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        8   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      145   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        3   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       75   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        2   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       64   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        3   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       61   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        5   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      122   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       39   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        2   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       52   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       99   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        2   1153
0-24 months   ki1114097-CMIN             PERU                           1                0       47    830
0-24 months   ki1114097-CMIN             PERU                           1                1        0    830
0-24 months   ki1114097-CMIN             PERU                           2                0      131    830
0-24 months   ki1114097-CMIN             PERU                           2                1        1    830
0-24 months   ki1114097-CMIN             PERU                           3                0      109    830
0-24 months   ki1114097-CMIN             PERU                           3                1        2    830
0-24 months   ki1114097-CMIN             PERU                           4                0       75    830
0-24 months   ki1114097-CMIN             PERU                           4                1        0    830
0-24 months   ki1114097-CMIN             PERU                           5                0       85    830
0-24 months   ki1114097-CMIN             PERU                           5                1        0    830
0-24 months   ki1114097-CMIN             PERU                           6                0       53    830
0-24 months   ki1114097-CMIN             PERU                           6                1        0    830
0-24 months   ki1114097-CMIN             PERU                           7                0       53    830
0-24 months   ki1114097-CMIN             PERU                           7                1        0    830
0-24 months   ki1114097-CMIN             PERU                           8                0       70    830
0-24 months   ki1114097-CMIN             PERU                           8                1        0    830
0-24 months   ki1114097-CMIN             PERU                           9                0       48    830
0-24 months   ki1114097-CMIN             PERU                           9                1        0    830
0-24 months   ki1114097-CMIN             PERU                           10               0       38    830
0-24 months   ki1114097-CMIN             PERU                           10               1        1    830
0-24 months   ki1114097-CMIN             PERU                           11               0       70    830
0-24 months   ki1114097-CMIN             PERU                           11               1        0    830
0-24 months   ki1114097-CMIN             PERU                           12               0       46    830
0-24 months   ki1114097-CMIN             PERU                           12               1        1    830
0-24 months   ki1114097-CONTENT          PERU                           1                0        9    215
0-24 months   ki1114097-CONTENT          PERU                           1                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           2                0       13    215
0-24 months   ki1114097-CONTENT          PERU                           2                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           3                0       27    215
0-24 months   ki1114097-CONTENT          PERU                           3                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           4                0       18    215
0-24 months   ki1114097-CONTENT          PERU                           4                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           5                0       25    215
0-24 months   ki1114097-CONTENT          PERU                           5                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           6                0       14    215
0-24 months   ki1114097-CONTENT          PERU                           6                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           7                0       16    215
0-24 months   ki1114097-CONTENT          PERU                           7                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           8                0       26    215
0-24 months   ki1114097-CONTENT          PERU                           8                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           9                0       19    215
0-24 months   ki1114097-CONTENT          PERU                           9                1        0    215
0-24 months   ki1114097-CONTENT          PERU                           10               0       23    215
0-24 months   ki1114097-CONTENT          PERU                           10               1        0    215
0-24 months   ki1114097-CONTENT          PERU                           11               0       18    215
0-24 months   ki1114097-CONTENT          PERU                           11               1        0    215
0-24 months   ki1114097-CONTENT          PERU                           12               0        7    215
0-24 months   ki1114097-CONTENT          PERU                           12               1        0    215
0-24 months   ki1119695-PROBIT           BELARUS                        1                0      552   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                1        8   7972
0-24 months   ki1119695-PROBIT           BELARUS                        2                0      487   7972
0-24 months   ki1119695-PROBIT           BELARUS                        2                1        6   7972
0-24 months   ki1119695-PROBIT           BELARUS                        3                0      584   7972
0-24 months   ki1119695-PROBIT           BELARUS                        3                1        5   7972
0-24 months   ki1119695-PROBIT           BELARUS                        4                0      535   7972
0-24 months   ki1119695-PROBIT           BELARUS                        4                1        6   7972
0-24 months   ki1119695-PROBIT           BELARUS                        5                0      551   7972
0-24 months   ki1119695-PROBIT           BELARUS                        5                1        8   7972
0-24 months   ki1119695-PROBIT           BELARUS                        6                0      609   7972
0-24 months   ki1119695-PROBIT           BELARUS                        6                1       12   7972
0-24 months   ki1119695-PROBIT           BELARUS                        7                0      690   7972
0-24 months   ki1119695-PROBIT           BELARUS                        7                1       10   7972
0-24 months   ki1119695-PROBIT           BELARUS                        8                0      791   7972
0-24 months   ki1119695-PROBIT           BELARUS                        8                1        9   7972
0-24 months   ki1119695-PROBIT           BELARUS                        9                0      739   7972
0-24 months   ki1119695-PROBIT           BELARUS                        9                1        2   7972
0-24 months   ki1119695-PROBIT           BELARUS                        10               0      797   7972
0-24 months   ki1119695-PROBIT           BELARUS                        10               1       11   7972
0-24 months   ki1119695-PROBIT           BELARUS                        11               0      703   7972
0-24 months   ki1119695-PROBIT           BELARUS                        11               1       14   7972
0-24 months   ki1119695-PROBIT           BELARUS                        12               0      839   7972
0-24 months   ki1119695-PROBIT           BELARUS                        12               1        4   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      904   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       25   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      662   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       10   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      746   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      708   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      677   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      765   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      761   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       15   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      814   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      852   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      637   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      754   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      865   9312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       15   9312
0-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49    719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100    719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2    719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88    719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1    719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97    719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85    719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75    719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1    719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60    719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38    719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24    719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30    719
0-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41    719
0-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26    719
0-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2    719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      608   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       26   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0      503   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       30   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0      645   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       41   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0      527   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       48   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0      526   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       27   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0      511   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       38   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0      551   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       30   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0      649   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       41   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0      681   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       41   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0      682   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1       53   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0      728   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       36   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0      698   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       40   7760
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       19   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        2   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0       92   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1        5   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      110   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1        7   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      229   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       18   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      152   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       20   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      111   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       14   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      200   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       19   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      122   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1        8   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      102   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1        8   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0       70   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1        9   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0       41   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        1   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0       18   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        1   1378
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                0       25    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                1        2    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                0        8    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                0       19    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                0       24    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                0       22    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               0       21    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10               1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               0       16    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11               1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               0       26    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12               1        1    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       13    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                0       26    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                0       18    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                0       10    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                0       20    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                0       10    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                0       17    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                0       18    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                0       28    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               0       21    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10               1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               0       21    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11               1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               0       14    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12               1        1    217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                0       17    240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                0       19    240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                0       20    240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                0       15    240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                1        0    240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                0        7    240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                1        1    240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                0       14    240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                1        3    240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                0       23    240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                0       19    240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                0       21    240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                1        0    240
0-6 months    ki0047075b-MAL-ED          INDIA                          10               0       23    240
0-6 months    ki0047075b-MAL-ED          INDIA                          10               1        3    240
0-6 months    ki0047075b-MAL-ED          INDIA                          11               0       23    240
0-6 months    ki0047075b-MAL-ED          INDIA                          11               1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          12               0       20    240
0-6 months    ki0047075b-MAL-ED          INDIA                          12               1        0    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                0       24    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                0       17    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                0       19    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                0       18    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                0       21    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                0       18    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                0       19    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                1        2    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                0       18    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                0       17    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               0       22    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10               1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               0       23    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11               1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               0       16    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12               1        0    237
0-6 months    ki0047075b-MAL-ED          PERU                           1                0       40    284
0-6 months    ki0047075b-MAL-ED          PERU                           1                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           2                0       25    284
0-6 months    ki0047075b-MAL-ED          PERU                           2                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           3                0       21    284
0-6 months    ki0047075b-MAL-ED          PERU                           3                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           4                0       20    284
0-6 months    ki0047075b-MAL-ED          PERU                           4                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           5                0       24    284
0-6 months    ki0047075b-MAL-ED          PERU                           5                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           6                0       19    284
0-6 months    ki0047075b-MAL-ED          PERU                           6                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           7                0       22    284
0-6 months    ki0047075b-MAL-ED          PERU                           7                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           8                0       17    284
0-6 months    ki0047075b-MAL-ED          PERU                           8                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           9                0       22    284
0-6 months    ki0047075b-MAL-ED          PERU                           9                1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           10               0       21    284
0-6 months    ki0047075b-MAL-ED          PERU                           10               1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           11               0       33    284
0-6 months    ki0047075b-MAL-ED          PERU                           11               1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           12               0       20    284
0-6 months    ki0047075b-MAL-ED          PERU                           12               1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       33    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       17    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       25    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       26    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        1    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0    253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0       27    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                0       18    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                1        6    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                0       21    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                1        4    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                0       22    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                1        6    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                0       35    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                1        7    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                0       29    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                1        3    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                0       28    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                1        5    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                0       37    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                1        3    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                0       17    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                1        4    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               0       34    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11               1        4    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               0       23    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12               1        6    358
0-6 months    ki1000108-IRC              INDIA                          1                0       30    402
0-6 months    ki1000108-IRC              INDIA                          1                1        5    402
0-6 months    ki1000108-IRC              INDIA                          2                0       23    402
0-6 months    ki1000108-IRC              INDIA                          2                1        4    402
0-6 months    ki1000108-IRC              INDIA                          3                0       24    402
0-6 months    ki1000108-IRC              INDIA                          3                1        5    402
0-6 months    ki1000108-IRC              INDIA                          4                0       20    402
0-6 months    ki1000108-IRC              INDIA                          4                1        2    402
0-6 months    ki1000108-IRC              INDIA                          5                0       18    402
0-6 months    ki1000108-IRC              INDIA                          5                1        2    402
0-6 months    ki1000108-IRC              INDIA                          6                0       29    402
0-6 months    ki1000108-IRC              INDIA                          6                1        7    402
0-6 months    ki1000108-IRC              INDIA                          7                0       29    402
0-6 months    ki1000108-IRC              INDIA                          7                1        6    402
0-6 months    ki1000108-IRC              INDIA                          8                0       36    402
0-6 months    ki1000108-IRC              INDIA                          8                1        9    402
0-6 months    ki1000108-IRC              INDIA                          9                0       23    402
0-6 months    ki1000108-IRC              INDIA                          9                1        2    402
0-6 months    ki1000108-IRC              INDIA                          10               0       29    402
0-6 months    ki1000108-IRC              INDIA                          10               1        8    402
0-6 months    ki1000108-IRC              INDIA                          11               0       36    402
0-6 months    ki1000108-IRC              INDIA                          11               1        4    402
0-6 months    ki1000108-IRC              INDIA                          12               0       41    402
0-6 months    ki1000108-IRC              INDIA                          12               1       10    402
0-6 months    ki1000109-EE               PAKISTAN                       1                0       76    366
0-6 months    ki1000109-EE               PAKISTAN                       1                1       11    366
0-6 months    ki1000109-EE               PAKISTAN                       2                0       71    366
0-6 months    ki1000109-EE               PAKISTAN                       2                1        7    366
0-6 months    ki1000109-EE               PAKISTAN                       3                0       39    366
0-6 months    ki1000109-EE               PAKISTAN                       3                1        2    366
0-6 months    ki1000109-EE               PAKISTAN                       4                0       26    366
0-6 months    ki1000109-EE               PAKISTAN                       4                1        2    366
0-6 months    ki1000109-EE               PAKISTAN                       5                0        2    366
0-6 months    ki1000109-EE               PAKISTAN                       5                1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       6                0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       6                1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       7                0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       7                1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       8                0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       8                1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       9                0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       9                1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       10               0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       10               1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       11               0       47    366
0-6 months    ki1000109-EE               PAKISTAN                       11               1        2    366
0-6 months    ki1000109-EE               PAKISTAN                       12               0       78    366
0-6 months    ki1000109-EE               PAKISTAN                       12               1        3    366
0-6 months    ki1000109-ResPak           PAKISTAN                       1                0        5    240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                1        1    240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                0       10    240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                1        1    240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                0       13    240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                1        1    240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                0       26    240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                1        4    240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                0       28    240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                1        5    240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                0       42    240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                1        4    240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                0       30    240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                1        2    240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                0       27    240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                1        5    240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                0       20    240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                1        2    240
0-6 months    ki1000109-ResPak           PAKISTAN                       10               0        6    240
0-6 months    ki1000109-ResPak           PAKISTAN                       10               1        0    240
0-6 months    ki1000109-ResPak           PAKISTAN                       11               0        6    240
0-6 months    ki1000109-ResPak           PAKISTAN                       11               1        0    240
0-6 months    ki1000109-ResPak           PAKISTAN                       12               0        2    240
0-6 months    ki1000109-ResPak           PAKISTAN                       12               1        0    240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                0       17    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                1        4    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                0       18    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                0       17    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                0       15    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                0        7    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                0       13    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                0       10    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                0        7    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                0        6    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               0       15    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10               1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               0       19    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11               1        2    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               0       14    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12               1        0    169
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      193   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        9   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      130   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        5   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      155   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      135   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        3   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      156   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      145   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        2   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      147   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      171   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      191   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      195   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      192   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      199   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1        9   2061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                0       97    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                1       17    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                0      193    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                1       23    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                0      178    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                1       23    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               0        9    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10               1        1    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11               1        1    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12               1        0    542
0-6 months    ki1114097-CMIN             BANGLADESH                     1                0       24    234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                1        3    234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                0       27    234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                0       18    234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                0       17    234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                0       15    234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                1        2    234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                0       20    234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                0       10    234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                0       14    234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                0       18    234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     10               0       18    234
0-6 months    ki1114097-CMIN             BANGLADESH                     10               1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     11               0        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     11               1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     12               0       43    234
0-6 months    ki1114097-CMIN             BANGLADESH                     12               1        0    234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                0        4     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                0        1     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                0        3     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                0        2     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10               1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               0        1     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11               1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12               1        0     11
0-6 months    ki1114097-CMIN             PERU                           1                0       40    558
0-6 months    ki1114097-CMIN             PERU                           1                1        0    558
0-6 months    ki1114097-CMIN             PERU                           2                0       42    558
0-6 months    ki1114097-CMIN             PERU                           2                1        1    558
0-6 months    ki1114097-CMIN             PERU                           3                0       57    558
0-6 months    ki1114097-CMIN             PERU                           3                1        2    558
0-6 months    ki1114097-CMIN             PERU                           4                0       61    558
0-6 months    ki1114097-CMIN             PERU                           4                1        1    558
0-6 months    ki1114097-CMIN             PERU                           5                0       68    558
0-6 months    ki1114097-CMIN             PERU                           5                1        2    558
0-6 months    ki1114097-CMIN             PERU                           6                0       48    558
0-6 months    ki1114097-CMIN             PERU                           6                1        1    558
0-6 months    ki1114097-CMIN             PERU                           7                0       41    558
0-6 months    ki1114097-CMIN             PERU                           7                1        0    558
0-6 months    ki1114097-CMIN             PERU                           8                0       45    558
0-6 months    ki1114097-CMIN             PERU                           8                1        1    558
0-6 months    ki1114097-CMIN             PERU                           9                0       37    558
0-6 months    ki1114097-CMIN             PERU                           9                1        0    558
0-6 months    ki1114097-CMIN             PERU                           10               0       31    558
0-6 months    ki1114097-CMIN             PERU                           10               1        1    558
0-6 months    ki1114097-CMIN             PERU                           11               0       42    558
0-6 months    ki1114097-CMIN             PERU                           11               1        1    558
0-6 months    ki1114097-CMIN             PERU                           12               0       34    558
0-6 months    ki1114097-CMIN             PERU                           12               1        2    558
0-6 months    ki1114097-CONTENT          PERU                           1                0        9    215
0-6 months    ki1114097-CONTENT          PERU                           1                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           2                0       13    215
0-6 months    ki1114097-CONTENT          PERU                           2                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           3                0       27    215
0-6 months    ki1114097-CONTENT          PERU                           3                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           4                0       18    215
0-6 months    ki1114097-CONTENT          PERU                           4                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           5                0       25    215
0-6 months    ki1114097-CONTENT          PERU                           5                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           6                0       14    215
0-6 months    ki1114097-CONTENT          PERU                           6                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           7                0       16    215
0-6 months    ki1114097-CONTENT          PERU                           7                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           8                0       26    215
0-6 months    ki1114097-CONTENT          PERU                           8                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           9                0       19    215
0-6 months    ki1114097-CONTENT          PERU                           9                1        0    215
0-6 months    ki1114097-CONTENT          PERU                           10               0       23    215
0-6 months    ki1114097-CONTENT          PERU                           10               1        0    215
0-6 months    ki1114097-CONTENT          PERU                           11               0       18    215
0-6 months    ki1114097-CONTENT          PERU                           11               1        0    215
0-6 months    ki1114097-CONTENT          PERU                           12               0        7    215
0-6 months    ki1114097-CONTENT          PERU                           12               1        0    215
0-6 months    ki1119695-PROBIT           BELARUS                        1                0      398   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                1       37   6657
0-6 months    ki1119695-PROBIT           BELARUS                        2                0      358   6657
0-6 months    ki1119695-PROBIT           BELARUS                        2                1       49   6657
0-6 months    ki1119695-PROBIT           BELARUS                        3                0      438   6657
0-6 months    ki1119695-PROBIT           BELARUS                        3                1       45   6657
0-6 months    ki1119695-PROBIT           BELARUS                        4                0      407   6657
0-6 months    ki1119695-PROBIT           BELARUS                        4                1       46   6657
0-6 months    ki1119695-PROBIT           BELARUS                        5                0      419   6657
0-6 months    ki1119695-PROBIT           BELARUS                        5                1       57   6657
0-6 months    ki1119695-PROBIT           BELARUS                        6                0      462   6657
0-6 months    ki1119695-PROBIT           BELARUS                        6                1       57   6657
0-6 months    ki1119695-PROBIT           BELARUS                        7                0      538   6657
0-6 months    ki1119695-PROBIT           BELARUS                        7                1       62   6657
0-6 months    ki1119695-PROBIT           BELARUS                        8                0      602   6657
0-6 months    ki1119695-PROBIT           BELARUS                        8                1       62   6657
0-6 months    ki1119695-PROBIT           BELARUS                        9                0      554   6657
0-6 months    ki1119695-PROBIT           BELARUS                        9                1       60   6657
0-6 months    ki1119695-PROBIT           BELARUS                        10               0      621   6657
0-6 months    ki1119695-PROBIT           BELARUS                        10               1       68   6657
0-6 months    ki1119695-PROBIT           BELARUS                        11               0      567   6657
0-6 months    ki1119695-PROBIT           BELARUS                        11               1       42   6657
0-6 months    ki1119695-PROBIT           BELARUS                        12               0      666   6657
0-6 months    ki1119695-PROBIT           BELARUS                        12               1       42   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0       83    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1        0    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0       57    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                0       27    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                1        2    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                0       34    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                1        0    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                0       32    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                0       60    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                0       23    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                1        2    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                0       44    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                0       77    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                1        3    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               0       42    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10               1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               0       69    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11               1        0    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               0       48    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12               1        2    610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0        7     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0        7     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                0        7     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10               1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               0        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11               1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12               1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                0       19    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                0       25    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                0       21    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                0       19    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                0        7    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                0       19    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                0       24    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                1        0    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10               1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               0       15    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11               1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               0       26    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12               1        1    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       13    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                0       26    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                0       18    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                0       10    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                0       20    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                0       10    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                0       17    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                0       18    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                0       28    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               0       20    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10               1        1    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               0       21    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11               1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               0       14    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12               1        1    217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                0       17    241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          2                0       19    241
6-24 months   ki0047075b-MAL-ED          INDIA                          2                1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          3                0       21    241
6-24 months   ki0047075b-MAL-ED          INDIA                          3                1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          4                0       14    241
6-24 months   ki0047075b-MAL-ED          INDIA                          4                1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          5                0        6    241
6-24 months   ki0047075b-MAL-ED          INDIA                          5                1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          6                0       15    241
6-24 months   ki0047075b-MAL-ED          INDIA                          6                1        3    241
6-24 months   ki0047075b-MAL-ED          INDIA                          7                0       22    241
6-24 months   ki0047075b-MAL-ED          INDIA                          7                1        3    241
6-24 months   ki0047075b-MAL-ED          INDIA                          8                0       19    241
6-24 months   ki0047075b-MAL-ED          INDIA                          8                1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          9                0       21    241
6-24 months   ki0047075b-MAL-ED          INDIA                          9                1        0    241
6-24 months   ki0047075b-MAL-ED          INDIA                          10               0       25    241
6-24 months   ki0047075b-MAL-ED          INDIA                          10               1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          11               0       22    241
6-24 months   ki0047075b-MAL-ED          INDIA                          11               1        3    241
6-24 months   ki0047075b-MAL-ED          INDIA                          12               0       19    241
6-24 months   ki0047075b-MAL-ED          INDIA                          12               1        1    241
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                0       24    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                1        1    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                0       17    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                0       19    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                0       19    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                0       21    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                1        1    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                0       17    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                1        1    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                0       20    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                1        1    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                0       19    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                0       17    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               0       22    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          10               1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               0       23    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          11               1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               0       16    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          12               1        0    238
6-24 months   ki0047075b-MAL-ED          PERU                           1                0       40    284
6-24 months   ki0047075b-MAL-ED          PERU                           1                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           2                0       25    284
6-24 months   ki0047075b-MAL-ED          PERU                           2                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           3                0       21    284
6-24 months   ki0047075b-MAL-ED          PERU                           3                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           4                0       20    284
6-24 months   ki0047075b-MAL-ED          PERU                           4                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           5                0       24    284
6-24 months   ki0047075b-MAL-ED          PERU                           5                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           6                0       19    284
6-24 months   ki0047075b-MAL-ED          PERU                           6                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           7                0       22    284
6-24 months   ki0047075b-MAL-ED          PERU                           7                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           8                0       16    284
6-24 months   ki0047075b-MAL-ED          PERU                           8                1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           9                0       22    284
6-24 months   ki0047075b-MAL-ED          PERU                           9                1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           10               0       21    284
6-24 months   ki0047075b-MAL-ED          PERU                           10               1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           11               0       33    284
6-24 months   ki0047075b-MAL-ED          PERU                           11               1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           12               0       20    284
6-24 months   ki0047075b-MAL-ED          PERU                           12               1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       34    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                0       27    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                0       18    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                0       12    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                0       14    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                0       18    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                0       25    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                0       10    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                0       25    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               0       24    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10               1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               0       27    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11               1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               0       37    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12               1        0    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       23    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                0       27    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                0       22    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                0       10    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                0       17    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                0       19    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                0       25    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                0       12    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                0       21    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               0       18    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10               1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               0       30    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11               1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               0       29    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12               1        0    253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       26    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                0       21    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                1        3    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                0       23    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                0       28    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                0       43    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                0       32    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                1        4    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                0       31    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                0       40    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                0       24    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               0       17    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10               1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               0       39    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11               1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               0       26    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12               1        3    373
6-24 months   ki1000108-IRC              INDIA                          1                0       33    410
6-24 months   ki1000108-IRC              INDIA                          1                1        3    410
6-24 months   ki1000108-IRC              INDIA                          2                0       25    410
6-24 months   ki1000108-IRC              INDIA                          2                1        2    410
6-24 months   ki1000108-IRC              INDIA                          3                0       28    410
6-24 months   ki1000108-IRC              INDIA                          3                1        1    410
6-24 months   ki1000108-IRC              INDIA                          4                0       20    410
6-24 months   ki1000108-IRC              INDIA                          4                1        2    410
6-24 months   ki1000108-IRC              INDIA                          5                0       19    410
6-24 months   ki1000108-IRC              INDIA                          5                1        2    410
6-24 months   ki1000108-IRC              INDIA                          6                0       32    410
6-24 months   ki1000108-IRC              INDIA                          6                1        5    410
6-24 months   ki1000108-IRC              INDIA                          7                0       31    410
6-24 months   ki1000108-IRC              INDIA                          7                1        5    410
6-24 months   ki1000108-IRC              INDIA                          8                0       36    410
6-24 months   ki1000108-IRC              INDIA                          8                1        9    410
6-24 months   ki1000108-IRC              INDIA                          9                0       22    410
6-24 months   ki1000108-IRC              INDIA                          9                1        5    410
6-24 months   ki1000108-IRC              INDIA                          10               0       31    410
6-24 months   ki1000108-IRC              INDIA                          10               1        6    410
6-24 months   ki1000108-IRC              INDIA                          11               0       38    410
6-24 months   ki1000108-IRC              INDIA                          11               1        3    410
6-24 months   ki1000108-IRC              INDIA                          12               0       47    410
6-24 months   ki1000108-IRC              INDIA                          12               1        5    410
6-24 months   ki1000109-EE               PAKISTAN                       1                0       82    377
6-24 months   ki1000109-EE               PAKISTAN                       1                1        8    377
6-24 months   ki1000109-EE               PAKISTAN                       2                0       77    377
6-24 months   ki1000109-EE               PAKISTAN                       2                1        4    377
6-24 months   ki1000109-EE               PAKISTAN                       3                0       37    377
6-24 months   ki1000109-EE               PAKISTAN                       3                1        5    377
6-24 months   ki1000109-EE               PAKISTAN                       4                0       26    377
6-24 months   ki1000109-EE               PAKISTAN                       4                1        3    377
6-24 months   ki1000109-EE               PAKISTAN                       5                0        2    377
6-24 months   ki1000109-EE               PAKISTAN                       5                1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       6                0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       6                1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       7                0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       7                1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       8                0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       8                1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       9                0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       9                1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       10               0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       10               1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       11               0       46    377
6-24 months   ki1000109-EE               PAKISTAN                       11               1        3    377
6-24 months   ki1000109-EE               PAKISTAN                       12               0       79    377
6-24 months   ki1000109-EE               PAKISTAN                       12               1        5    377
6-24 months   ki1000109-ResPak           PAKISTAN                       1                0        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                1        2    251
6-24 months   ki1000109-ResPak           PAKISTAN                       2                0        9    251
6-24 months   ki1000109-ResPak           PAKISTAN                       2                1        2    251
6-24 months   ki1000109-ResPak           PAKISTAN                       3                0       14    251
6-24 months   ki1000109-ResPak           PAKISTAN                       3                1        0    251
6-24 months   ki1000109-ResPak           PAKISTAN                       4                0       24    251
6-24 months   ki1000109-ResPak           PAKISTAN                       4                1        6    251
6-24 months   ki1000109-ResPak           PAKISTAN                       5                0       29    251
6-24 months   ki1000109-ResPak           PAKISTAN                       5                1        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       6                0       44    251
6-24 months   ki1000109-ResPak           PAKISTAN                       6                1        3    251
6-24 months   ki1000109-ResPak           PAKISTAN                       7                0       31    251
6-24 months   ki1000109-ResPak           PAKISTAN                       7                1        4    251
6-24 months   ki1000109-ResPak           PAKISTAN                       8                0       28    251
6-24 months   ki1000109-ResPak           PAKISTAN                       8                1        8    251
6-24 months   ki1000109-ResPak           PAKISTAN                       9                0       21    251
6-24 months   ki1000109-ResPak           PAKISTAN                       9                1        1    251
6-24 months   ki1000109-ResPak           PAKISTAN                       10               0        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       10               1        2    251
6-24 months   ki1000109-ResPak           PAKISTAN                       11               0        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       11               1        1    251
6-24 months   ki1000109-ResPak           PAKISTAN                       12               0        2    251
6-24 months   ki1000109-ResPak           PAKISTAN                       12               1        0    251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                0       42    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                1        9    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                0       34    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                1        1    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                0       37    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                1        3    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                0       29    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                1        1    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                0       30    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                1        4    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                0       50    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                1        1    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                0        4    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                1        2    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                0        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                1        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                0        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                1        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               0       61    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10               1        2    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               0       37    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11               1        5    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               0       72    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12               1        4    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                0       13     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                1        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                0        7     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                0        6     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                1        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                0        7     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                0        6     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                0        5     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                1        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                0        5     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                0        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                0        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               0        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10               1        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               0        8     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11               1        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               0       13     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12               1        4     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                0       49    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                0       44    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                1        2    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                0       45    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                0       40    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                0       34    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                1        6    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                0       36    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                1        4    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                0       42    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                1        3    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                0       32    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                1        3    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                0       27    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                1        2    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               0       47    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10               1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               0       44    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11               1        4    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               0       47    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12               1        3    534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      199   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        8   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      136   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        4   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                0      162   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                1        5   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                0      148   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                1        2   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                0      168   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                1        5   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                0      149   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                1        6   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                0      157   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                1        2   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                0      177   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                1        5   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                0      202   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                1        4   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               0      207   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10               1        0   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               0      197   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11               1        7   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               0      206   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12               1       10   2166
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                0       14    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                0       18    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                0       18    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                0       19    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                0       28    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                0       35    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                0       23    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                0       17    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                0       30    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               0       21    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10               1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               0       22    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11               1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               0        7    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12               1        0    256
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                0        2    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                0      106    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                1       20    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                0      200    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                1       32    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                0      183    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                1       30    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               0       12    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10               1        2    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               0        3    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11               1        1    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               0        1    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12               1        0    592
6-24 months   ki1114097-CMIN             BANGLADESH                     1                0       25    257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                1        3    257
6-24 months   ki1114097-CMIN             BANGLADESH                     2                0       30    257
6-24 months   ki1114097-CMIN             BANGLADESH                     2                1        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     3                0       20    257
6-24 months   ki1114097-CMIN             BANGLADESH                     3                1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     4                0       16    257
6-24 months   ki1114097-CMIN             BANGLADESH                     4                1        3    257
6-24 months   ki1114097-CMIN             BANGLADESH                     5                0       20    257
6-24 months   ki1114097-CMIN             BANGLADESH                     5                1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     6                0       20    257
6-24 months   ki1114097-CMIN             BANGLADESH                     6                1        3    257
6-24 months   ki1114097-CMIN             BANGLADESH                     7                0       12    257
6-24 months   ki1114097-CMIN             BANGLADESH                     7                1        1    257
6-24 months   ki1114097-CMIN             BANGLADESH                     8                0       13    257
6-24 months   ki1114097-CMIN             BANGLADESH                     8                1        1    257
6-24 months   ki1114097-CMIN             BANGLADESH                     9                0       18    257
6-24 months   ki1114097-CMIN             BANGLADESH                     9                1        1    257
6-24 months   ki1114097-CMIN             BANGLADESH                     10               0       21    257
6-24 months   ki1114097-CMIN             BANGLADESH                     10               1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     11               0        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     11               1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     12               0       40    257
6-24 months   ki1114097-CMIN             BANGLADESH                     12               1        6    257
6-24 months   ki1114097-CMIN             BRAZIL                         1                0       13    119
6-24 months   ki1114097-CMIN             BRAZIL                         1                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         2                0        7    119
6-24 months   ki1114097-CMIN             BRAZIL                         2                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         3                0       14    119
6-24 months   ki1114097-CMIN             BRAZIL                         3                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         4                0       10    119
6-24 months   ki1114097-CMIN             BRAZIL                         4                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         5                0        5    119
6-24 months   ki1114097-CMIN             BRAZIL                         5                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         6                0        6    119
6-24 months   ki1114097-CMIN             BRAZIL                         6                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         7                0        4    119
6-24 months   ki1114097-CMIN             BRAZIL                         7                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         8                0       13    119
6-24 months   ki1114097-CMIN             BRAZIL                         8                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         9                0        9    119
6-24 months   ki1114097-CMIN             BRAZIL                         9                1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         10               0       16    119
6-24 months   ki1114097-CMIN             BRAZIL                         10               1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         11               0       12    119
6-24 months   ki1114097-CMIN             BRAZIL                         11               1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         12               0       10    119
6-24 months   ki1114097-CMIN             BRAZIL                         12               1        0    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                0       28   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                1        1   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                0      116   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                1        4   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                0      127   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                1        4   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                0      189   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                1        8   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                0      145   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                1        3   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                0       75   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                1        2   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                0       64   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                1        3   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                0       61   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                1        5   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                0      122   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                1        1   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               0       39   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10               1        2   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               0       52   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11               1        1   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               0       99   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12               1        2   1153
6-24 months   ki1114097-CMIN             PERU                           1                0       47    830
6-24 months   ki1114097-CMIN             PERU                           1                1        0    830
6-24 months   ki1114097-CMIN             PERU                           2                0      131    830
6-24 months   ki1114097-CMIN             PERU                           2                1        1    830
6-24 months   ki1114097-CMIN             PERU                           3                0      109    830
6-24 months   ki1114097-CMIN             PERU                           3                1        2    830
6-24 months   ki1114097-CMIN             PERU                           4                0       75    830
6-24 months   ki1114097-CMIN             PERU                           4                1        0    830
6-24 months   ki1114097-CMIN             PERU                           5                0       85    830
6-24 months   ki1114097-CMIN             PERU                           5                1        0    830
6-24 months   ki1114097-CMIN             PERU                           6                0       53    830
6-24 months   ki1114097-CMIN             PERU                           6                1        0    830
6-24 months   ki1114097-CMIN             PERU                           7                0       53    830
6-24 months   ki1114097-CMIN             PERU                           7                1        0    830
6-24 months   ki1114097-CMIN             PERU                           8                0       70    830
6-24 months   ki1114097-CMIN             PERU                           8                1        0    830
6-24 months   ki1114097-CMIN             PERU                           9                0       48    830
6-24 months   ki1114097-CMIN             PERU                           9                1        0    830
6-24 months   ki1114097-CMIN             PERU                           10               0       38    830
6-24 months   ki1114097-CMIN             PERU                           10               1        1    830
6-24 months   ki1114097-CMIN             PERU                           11               0       70    830
6-24 months   ki1114097-CMIN             PERU                           11               1        0    830
6-24 months   ki1114097-CMIN             PERU                           12               0       46    830
6-24 months   ki1114097-CMIN             PERU                           12               1        1    830
6-24 months   ki1114097-CONTENT          PERU                           1                0        9    215
6-24 months   ki1114097-CONTENT          PERU                           1                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           2                0       13    215
6-24 months   ki1114097-CONTENT          PERU                           2                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           3                0       27    215
6-24 months   ki1114097-CONTENT          PERU                           3                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           4                0       18    215
6-24 months   ki1114097-CONTENT          PERU                           4                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           5                0       25    215
6-24 months   ki1114097-CONTENT          PERU                           5                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           6                0       14    215
6-24 months   ki1114097-CONTENT          PERU                           6                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           7                0       16    215
6-24 months   ki1114097-CONTENT          PERU                           7                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           8                0       26    215
6-24 months   ki1114097-CONTENT          PERU                           8                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           9                0       19    215
6-24 months   ki1114097-CONTENT          PERU                           9                1        0    215
6-24 months   ki1114097-CONTENT          PERU                           10               0       23    215
6-24 months   ki1114097-CONTENT          PERU                           10               1        0    215
6-24 months   ki1114097-CONTENT          PERU                           11               0       18    215
6-24 months   ki1114097-CONTENT          PERU                           11               1        0    215
6-24 months   ki1114097-CONTENT          PERU                           12               0        7    215
6-24 months   ki1114097-CONTENT          PERU                           12               1        0    215
6-24 months   ki1119695-PROBIT           BELARUS                        1                0      552   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                1        8   7972
6-24 months   ki1119695-PROBIT           BELARUS                        2                0      487   7972
6-24 months   ki1119695-PROBIT           BELARUS                        2                1        6   7972
6-24 months   ki1119695-PROBIT           BELARUS                        3                0      584   7972
6-24 months   ki1119695-PROBIT           BELARUS                        3                1        5   7972
6-24 months   ki1119695-PROBIT           BELARUS                        4                0      535   7972
6-24 months   ki1119695-PROBIT           BELARUS                        4                1        6   7972
6-24 months   ki1119695-PROBIT           BELARUS                        5                0      551   7972
6-24 months   ki1119695-PROBIT           BELARUS                        5                1        8   7972
6-24 months   ki1119695-PROBIT           BELARUS                        6                0      609   7972
6-24 months   ki1119695-PROBIT           BELARUS                        6                1       12   7972
6-24 months   ki1119695-PROBIT           BELARUS                        7                0      690   7972
6-24 months   ki1119695-PROBIT           BELARUS                        7                1       10   7972
6-24 months   ki1119695-PROBIT           BELARUS                        8                0      791   7972
6-24 months   ki1119695-PROBIT           BELARUS                        8                1        9   7972
6-24 months   ki1119695-PROBIT           BELARUS                        9                0      739   7972
6-24 months   ki1119695-PROBIT           BELARUS                        9                1        2   7972
6-24 months   ki1119695-PROBIT           BELARUS                        10               0      797   7972
6-24 months   ki1119695-PROBIT           BELARUS                        10               1       11   7972
6-24 months   ki1119695-PROBIT           BELARUS                        11               0      703   7972
6-24 months   ki1119695-PROBIT           BELARUS                        11               1       14   7972
6-24 months   ki1119695-PROBIT           BELARUS                        12               0      839   7972
6-24 months   ki1119695-PROBIT           BELARUS                        12               1        4   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      904   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       25   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0      662   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       10   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                0      746   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                1       22   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                0      708   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                1        8   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                0      677   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                1        8   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                0      765   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                1       12   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                0      761   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                1       15   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                0      814   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                1       13   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                0      852   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                1       14   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               0      637   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10               1       14   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               0      754   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11               1       11   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               0      865   9312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12               1       15   9312
6-24 months   ki1148112-LCNI-5           MALAWI                         1                0       49    719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         2                0      100    719
6-24 months   ki1148112-LCNI-5           MALAWI                         2                1        2    719
6-24 months   ki1148112-LCNI-5           MALAWI                         3                0       88    719
6-24 months   ki1148112-LCNI-5           MALAWI                         3                1        1    719
6-24 months   ki1148112-LCNI-5           MALAWI                         4                0       97    719
6-24 months   ki1148112-LCNI-5           MALAWI                         4                1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         5                0       85    719
6-24 months   ki1148112-LCNI-5           MALAWI                         5                1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         6                0       75    719
6-24 months   ki1148112-LCNI-5           MALAWI                         6                1        1    719
6-24 months   ki1148112-LCNI-5           MALAWI                         7                0       60    719
6-24 months   ki1148112-LCNI-5           MALAWI                         7                1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         8                0       38    719
6-24 months   ki1148112-LCNI-5           MALAWI                         8                1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         9                0       24    719
6-24 months   ki1148112-LCNI-5           MALAWI                         9                1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         10               0       30    719
6-24 months   ki1148112-LCNI-5           MALAWI                         10               1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         11               0       41    719
6-24 months   ki1148112-LCNI-5           MALAWI                         11               1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         12               0       26    719
6-24 months   ki1148112-LCNI-5           MALAWI                         12               1        2    719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      608   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1       26   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0      503   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1       30   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                0      645   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                1       41   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                0      527   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                1       48   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                0      526   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                1       27   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                0      511   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                1       38   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                0      551   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                1       30   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                0      649   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                1       41   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                0      681   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                1       41   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               0      682   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10               1       53   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               0      728   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11               1       36   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               0      698   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12               1       40   7760
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0       19   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        2   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                0       92   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                1        5   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                0      110   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                1        7   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                0      229   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                1       18   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                0      152   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                1       20   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                0      111   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                1       14   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                0      200   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                1       19   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                0      122   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                1        8   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                0      102   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                1        8   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               0       70   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10               1        9   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               0       41   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11               1        1   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               0       18   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12               1        1   1378


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/222b05f7-3909-406f-9aca-084669126c5f/33d332a9-e775-4e2c-a165-a34050a08f35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/222b05f7-3909-406f-9aca-084669126c5f/33d332a9-e775-4e2c-a165-a34050a08f35/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/222b05f7-3909-406f-9aca-084669126c5f/33d332a9-e775-4e2c-a165-a34050a08f35/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/222b05f7-3909-406f-9aca-084669126c5f/33d332a9-e775-4e2c-a165-a34050a08f35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0269107   0.0165042   0.0373171
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0148810   0.0057262   0.0240357
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0286458   0.0168478   0.0404439
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0111732   0.0034737   0.0188727
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0116788   0.0036329   0.0197247
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0154440   0.0067732   0.0241149
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0193299   0.0096423   0.0290175
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0157195   0.0072414   0.0241975
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0161663   0.0077663   0.0245663
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0215054   0.0103616   0.0326492
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0143791   0.0059426   0.0228156
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0170455   0.0084928   0.0255981
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0410095   0.0244665   0.0575524
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0562852   0.0332326   0.0793377
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0597668   0.0387015   0.0808320
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0834783   0.0593205   0.1076361
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0488246   0.0301045   0.0675447
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0692168   0.0425353   0.0958982
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0516351   0.0354509   0.0678193
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0594203   0.0404142   0.0784264
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0567867   0.0398982   0.0736753
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0721088   0.0526696   0.0915481
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0471204   0.0314148   0.0628260
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0542005   0.0373612   0.0710398
0-6 months    ki1119695-PROBIT     BELARUS      1                    NA                0.0850575   0.0285236   0.1415913
0-6 months    ki1119695-PROBIT     BELARUS      2                    NA                0.1203931   0.0349339   0.2058523
0-6 months    ki1119695-PROBIT     BELARUS      3                    NA                0.0931677   0.0346597   0.1516757
0-6 months    ki1119695-PROBIT     BELARUS      4                    NA                0.1015453   0.0467029   0.1563876
0-6 months    ki1119695-PROBIT     BELARUS      5                    NA                0.1197479   0.0187465   0.2207493
0-6 months    ki1119695-PROBIT     BELARUS      6                    NA                0.1098266   0.0565604   0.1630927
0-6 months    ki1119695-PROBIT     BELARUS      7                    NA                0.1033333   0.0486790   0.1579876
0-6 months    ki1119695-PROBIT     BELARUS      8                    NA                0.0933735   0.0474015   0.1393455
0-6 months    ki1119695-PROBIT     BELARUS      9                    NA                0.0977199   0.0312507   0.1641891
0-6 months    ki1119695-PROBIT     BELARUS      10                   NA                0.0986938   0.0520343   0.1453532
0-6 months    ki1119695-PROBIT     BELARUS      11                   NA                0.0689655   0.0313129   0.1066181
0-6 months    ki1119695-PROBIT     BELARUS      12                   NA                0.0593220   0.0254658   0.0931782
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0269107   0.0165042   0.0373171
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0148810   0.0057262   0.0240357
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0286458   0.0168478   0.0404439
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0111732   0.0034737   0.0188727
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0116788   0.0036329   0.0197247
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0154440   0.0067732   0.0241149
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0193299   0.0096423   0.0290175
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0157195   0.0072414   0.0241975
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0161663   0.0077663   0.0245663
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0215054   0.0103616   0.0326492
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0143791   0.0059426   0.0228156
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0170455   0.0084928   0.0255981
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0410095   0.0244665   0.0575524
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0562852   0.0332326   0.0793377
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0597668   0.0387015   0.0808320
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0834783   0.0593205   0.1076361
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0488246   0.0301045   0.0675447
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0692168   0.0425353   0.0958982
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0516351   0.0354509   0.0678193
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0594203   0.0404142   0.0784264
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0567867   0.0398982   0.0736753
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0721088   0.0526696   0.0915481
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0471204   0.0314148   0.0628260
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0542005   0.0373612   0.0710398


### Parameter: E(Y)


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0179338   0.0152382   0.0206295
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0581186   0.0523097   0.0639274
0-6 months    ki1119695-PROBIT     BELARUS      NA                   NA                0.0941866   0.0454872   0.1428859
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0179338   0.0152382   0.0206295
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0581186   0.0523097   0.0639274


### Parameter: RR


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.5529762   0.2673804   1.1436241
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0644792   0.6050384   1.8728001
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.4151955   0.1883977   0.9150184
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.4339854   0.1969539   0.9562811
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.5738996   0.2902458   1.1347650
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.7182990   0.3814069   1.3527638
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.5841354   0.3008132   1.1343058
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.6007390   0.3143337   1.1481028
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.7991398   0.4186195   1.5255486
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.5343268   0.2646251   1.0789043
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.6334091   0.3361762   1.1934429
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.3724923   0.7757726   2.4282051
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.4573894   0.8538090   2.4876569
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 2.0355851   1.2121416   3.4184181
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.1905688   0.6714765   2.1109511
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.6878238   0.9619935   2.9612979
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.2591022   0.7621072   2.0802038
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.4489408   0.8815967   2.3813942
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.3847218   0.8489123   2.2587190
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.7583462   1.0874010   2.8432762
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.1490132   0.6820965   1.9355491
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.3216592   0.7888566   2.2143228
0-6 months    ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT     BELARUS      2                    1                 1.4154326   0.9165360   2.1858930
0-6 months    ki1119695-PROBIT     BELARUS      3                    1                 1.0953500   0.7188813   1.6689704
0-6 months    ki1119695-PROBIT     BELARUS      4                    1                 1.1938428   0.7900747   1.8039570
0-6 months    ki1119695-PROBIT     BELARUS      5                    1                 1.4078469   0.7915262   2.5040648
0-6 months    ki1119695-PROBIT     BELARUS      6                    1                 1.2912045   0.8700137   1.9163020
0-6 months    ki1119695-PROBIT     BELARUS      7                    1                 1.2148649   0.7995177   1.8459838
0-6 months    ki1119695-PROBIT     BELARUS      8                    1                 1.0977695   0.6620963   1.8201247
0-6 months    ki1119695-PROBIT     BELARUS      9                    1                 1.1488687   0.7301773   1.8076423
0-6 months    ki1119695-PROBIT     BELARUS      10                   1                 1.1603185   0.6877784   1.9575188
0-6 months    ki1119695-PROBIT     BELARUS      11                   1                 0.8108108   0.5548865   1.1847723
0-6 months    ki1119695-PROBIT     BELARUS      12                   1                 0.6974347   0.3492770   1.3926343
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.5529762   0.2673804   1.1436241
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0644792   0.6050384   1.8728001
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.4151955   0.1883977   0.9150184
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.4339854   0.1969539   0.9562811
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.5738996   0.2902458   1.1347650
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.7182990   0.3814069   1.3527638
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.5841354   0.3008132   1.1343058
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.6007390   0.3143337   1.1481028
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.7991398   0.4186195   1.5255486
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.5343268   0.2646251   1.0789043
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.6334091   0.3361762   1.1934429
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.3724923   0.7757726   2.4282051
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.4573894   0.8538090   2.4876569
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 2.0355851   1.2121416   3.4184181
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.1905688   0.6714765   2.1109511
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.6878238   0.9619935   2.9612979
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.2591022   0.7621072   2.0802038
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.4489408   0.8815967   2.3813942
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.3847218   0.8489123   2.2587190
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.7583462   1.0874010   2.8432762
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.1490132   0.6820965   1.9355491
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.3216592   0.7888566   2.2143228


### Parameter: PAR


agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0089768   -0.0186697   0.0007161
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0171091    0.0008910   0.0333272
0-6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.0091291   -0.0206251   0.0388833
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0089768   -0.0186697   0.0007161
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0171091    0.0008910   0.0333272


### Parameter: PAF


agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.5005511   -1.1440733   -0.0501757
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2943826   -0.0448415    0.5234722
0-6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.0969257   -0.2854184    0.3655426
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.5005511   -1.1440733   -0.0501757
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2943826   -0.0448415    0.5234722
