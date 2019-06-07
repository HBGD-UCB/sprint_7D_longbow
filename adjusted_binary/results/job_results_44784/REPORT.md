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

agecat        studyid                    country                        brthmon    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  0       22    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  0       21    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  0       19    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  0        9    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  0       17    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  0       25    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  1        0    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 1        2    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 0       15    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 1        1    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 0       27    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 1        1    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       15    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  0       25    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  0       16    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  0       11    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  0       22    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  0        8    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  0       16    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  0       18    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  0       30    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 0       20    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 1        1    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 0       21    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 1        1    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 0       13    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 1        0    217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       18    241
0-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                  0       17    241
0-24 months   ki0047075b-MAL-ED          INDIA                          2                  1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                  0       20    241
0-24 months   ki0047075b-MAL-ED          INDIA                          3                  1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                  0       14    241
0-24 months   ki0047075b-MAL-ED          INDIA                          4                  1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                  0        7    241
0-24 months   ki0047075b-MAL-ED          INDIA                          5                  1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                  0       16    241
0-24 months   ki0047075b-MAL-ED          INDIA                          6                  1        3    241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                  0       21    241
0-24 months   ki0047075b-MAL-ED          INDIA                          7                  1        4    241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                  0       22    241
0-24 months   ki0047075b-MAL-ED          INDIA                          8                  1        1    241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                  0       20    241
0-24 months   ki0047075b-MAL-ED          INDIA                          9                  1        0    241
0-24 months   ki0047075b-MAL-ED          INDIA                          10                 0       24    241
0-24 months   ki0047075b-MAL-ED          INDIA                          10                 1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          11                 0       23    241
0-24 months   ki0047075b-MAL-ED          INDIA                          11                 1        2    241
0-24 months   ki0047075b-MAL-ED          INDIA                          12                 0       18    241
0-24 months   ki0047075b-MAL-ED          INDIA                          12                 1        1    241
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       19    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                  0       19    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          2                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                  0       17    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          3                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                  0       22    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          4                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                  0       20    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          5                  1        2    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                  0       18    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          6                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                  0       17    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          7                  1        1    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                  0       24    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          8                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                  0       16    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          9                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                 0       21    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          10                 1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                 0       24    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          11                 1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                 0       17    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          12                 1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           1                  0       41    284
0-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           2                  0       22    284
0-24 months   ki0047075b-MAL-ED          PERU                           2                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           3                  0       22    284
0-24 months   ki0047075b-MAL-ED          PERU                           3                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           4                  0       20    284
0-24 months   ki0047075b-MAL-ED          PERU                           4                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           5                  0       27    284
0-24 months   ki0047075b-MAL-ED          PERU                           5                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           6                  0       15    284
0-24 months   ki0047075b-MAL-ED          PERU                           6                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           7                  0       23    284
0-24 months   ki0047075b-MAL-ED          PERU                           7                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           8                  0       15    284
0-24 months   ki0047075b-MAL-ED          PERU                           8                  1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           9                  0       23    284
0-24 months   ki0047075b-MAL-ED          PERU                           9                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           10                 0       22    284
0-24 months   ki0047075b-MAL-ED          PERU                           10                 1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           11                 0       32    284
0-24 months   ki0047075b-MAL-ED          PERU                           11                 1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           12                 0       21    284
0-24 months   ki0047075b-MAL-ED          PERU                           12                 1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       37    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       24    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       15    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       13    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       19    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       25    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       10    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       23    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       26    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       28    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       36    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        0    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       20    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       30    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       18    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       20    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       19    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       23    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       23    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       27    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       31    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        0    253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       31    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       14    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       31    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        0    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       41    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        3    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       32    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        4    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       36    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       37    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       17    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       20    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       27    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       41    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1        2    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       23    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        2    373
0-24 months   ki1000108-IRC              INDIA                          1                  0       35    410
0-24 months   ki1000108-IRC              INDIA                          1                  1        3    410
0-24 months   ki1000108-IRC              INDIA                          2                  0       26    410
0-24 months   ki1000108-IRC              INDIA                          2                  1        2    410
0-24 months   ki1000108-IRC              INDIA                          3                  0       26    410
0-24 months   ki1000108-IRC              INDIA                          3                  1        1    410
0-24 months   ki1000108-IRC              INDIA                          4                  0       19    410
0-24 months   ki1000108-IRC              INDIA                          4                  1        2    410
0-24 months   ki1000108-IRC              INDIA                          5                  0       20    410
0-24 months   ki1000108-IRC              INDIA                          5                  1        2    410
0-24 months   ki1000108-IRC              INDIA                          6                  0       32    410
0-24 months   ki1000108-IRC              INDIA                          6                  1        5    410
0-24 months   ki1000108-IRC              INDIA                          7                  0       31    410
0-24 months   ki1000108-IRC              INDIA                          7                  1        5    410
0-24 months   ki1000108-IRC              INDIA                          8                  0       35    410
0-24 months   ki1000108-IRC              INDIA                          8                  1        9    410
0-24 months   ki1000108-IRC              INDIA                          9                  0       22    410
0-24 months   ki1000108-IRC              INDIA                          9                  1        5    410
0-24 months   ki1000108-IRC              INDIA                          10                 0       32    410
0-24 months   ki1000108-IRC              INDIA                          10                 1        6    410
0-24 months   ki1000108-IRC              INDIA                          11                 0       37    410
0-24 months   ki1000108-IRC              INDIA                          11                 1        3    410
0-24 months   ki1000108-IRC              INDIA                          12                 0       47    410
0-24 months   ki1000108-IRC              INDIA                          12                 1        5    410
0-24 months   ki1000109-EE               PAKISTAN                       1                  0       84    377
0-24 months   ki1000109-EE               PAKISTAN                       1                  1        8    377
0-24 months   ki1000109-EE               PAKISTAN                       2                  0       63    377
0-24 months   ki1000109-EE               PAKISTAN                       2                  1        4    377
0-24 months   ki1000109-EE               PAKISTAN                       3                  0       38    377
0-24 months   ki1000109-EE               PAKISTAN                       3                  1        5    377
0-24 months   ki1000109-EE               PAKISTAN                       4                  0       15    377
0-24 months   ki1000109-EE               PAKISTAN                       4                  1        1    377
0-24 months   ki1000109-EE               PAKISTAN                       5                  0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       5                  1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       6                  0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       6                  1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       7                  0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       7                  1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       8                  0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       8                  1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       9                  0        0    377
0-24 months   ki1000109-EE               PAKISTAN                       9                  1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       10                 0        4    377
0-24 months   ki1000109-EE               PAKISTAN                       10                 1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       11                 0       64    377
0-24 months   ki1000109-EE               PAKISTAN                       11                 1        6    377
0-24 months   ki1000109-EE               PAKISTAN                       12                 0       81    377
0-24 months   ki1000109-EE               PAKISTAN                       12                 1        4    377
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  0        8    251
0-24 months   ki1000109-ResPak           PAKISTAN                       1                  1        2    251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                  0       10    251
0-24 months   ki1000109-ResPak           PAKISTAN                       2                  1        1    251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                  0       17    251
0-24 months   ki1000109-ResPak           PAKISTAN                       3                  1        3    251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                  0       18    251
0-24 months   ki1000109-ResPak           PAKISTAN                       4                  1        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                  0       45    251
0-24 months   ki1000109-ResPak           PAKISTAN                       5                  1        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                  0       38    251
0-24 months   ki1000109-ResPak           PAKISTAN                       6                  1        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                  0       25    251
0-24 months   ki1000109-ResPak           PAKISTAN                       7                  1        3    251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                  0       28    251
0-24 months   ki1000109-ResPak           PAKISTAN                       8                  1        5    251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                  0       17    251
0-24 months   ki1000109-ResPak           PAKISTAN                       9                  1        3    251
0-24 months   ki1000109-ResPak           PAKISTAN                       10                 0        4    251
0-24 months   ki1000109-ResPak           PAKISTAN                       10                 1        1    251
0-24 months   ki1000109-ResPak           PAKISTAN                       11                 0        3    251
0-24 months   ki1000109-ResPak           PAKISTAN                       11                 1        0    251
0-24 months   ki1000109-ResPak           PAKISTAN                       12                 0        4    251
0-24 months   ki1000109-ResPak           PAKISTAN                       12                 1        1    251
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       42    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1        8    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  0       36    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  1        2    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  0       31    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  1        2    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  0       24    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  1        1    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  0       36    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  1        4    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  0       46    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  1        3    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  0        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  1        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  0        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  1        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  0        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  1        0    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 0       73    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 1        3    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 0       41    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 1        4    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 0       67    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 1        5    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        5     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0        7     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        6     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0       12     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0       14     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        9     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        1     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        2     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0        8     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       50    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  0       43    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  1        3    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  0       45    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  0       39    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  1        4    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  0       35    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  1        7    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  0       41    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  1        3    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  0       36    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  1        3    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  0       29    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  1        3    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  0       38    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  1        2    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 0       38    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 1        5    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 0       45    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 1        4    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 0       48    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 1        3    534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      145   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        6   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      159   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        5   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      151   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        2   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      156   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        6   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      164   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        3   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      150   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        3   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      198   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        5   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      205   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      194   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        1   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      215   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        8   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      197   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       10   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      174   2166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        5   2166
0-24 months   ki1101329-Keneba           GAMBIA                         1                  0      228   2441
0-24 months   ki1101329-Keneba           GAMBIA                         1                  1       15   2441
0-24 months   ki1101329-Keneba           GAMBIA                         2                  0      208   2441
0-24 months   ki1101329-Keneba           GAMBIA                         2                  1        9   2441
0-24 months   ki1101329-Keneba           GAMBIA                         3                  0      237   2441
0-24 months   ki1101329-Keneba           GAMBIA                         3                  1       18   2441
0-24 months   ki1101329-Keneba           GAMBIA                         4                  0      154   2441
0-24 months   ki1101329-Keneba           GAMBIA                         4                  1        9   2441
0-24 months   ki1101329-Keneba           GAMBIA                         5                  0      164   2441
0-24 months   ki1101329-Keneba           GAMBIA                         5                  1       11   2441
0-24 months   ki1101329-Keneba           GAMBIA                         6                  0      133   2441
0-24 months   ki1101329-Keneba           GAMBIA                         6                  1        7   2441
0-24 months   ki1101329-Keneba           GAMBIA                         7                  0      106   2441
0-24 months   ki1101329-Keneba           GAMBIA                         7                  1       11   2441
0-24 months   ki1101329-Keneba           GAMBIA                         8                  0      198   2441
0-24 months   ki1101329-Keneba           GAMBIA                         8                  1        7   2441
0-24 months   ki1101329-Keneba           GAMBIA                         9                  0      205   2441
0-24 months   ki1101329-Keneba           GAMBIA                         9                  1       10   2441
0-24 months   ki1101329-Keneba           GAMBIA                         10                 0      277   2441
0-24 months   ki1101329-Keneba           GAMBIA                         10                 1       12   2441
0-24 months   ki1101329-Keneba           GAMBIA                         11                 0      192   2441
0-24 months   ki1101329-Keneba           GAMBIA                         11                 1       15   2441
0-24 months   ki1101329-Keneba           GAMBIA                         12                 0      207   2441
0-24 months   ki1101329-Keneba           GAMBIA                         12                 1        8   2441
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       27    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       23    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       25    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       28    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       24    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       17    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       15    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       11    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       13    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       24    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       20    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 0       25    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        1    256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  0        1    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  0      107    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  1       19    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  0      199    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  1       33    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  0      200    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  1       33    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 1        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 0        0    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 1        0    592
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       26    257
0-24 months   ki1114097-CMIN             BANGLADESH                     1                  1        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                  0       23    257
0-24 months   ki1114097-CMIN             BANGLADESH                     2                  1        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                  0       16    257
0-24 months   ki1114097-CMIN             BANGLADESH                     3                  1        3    257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                  0       20    257
0-24 months   ki1114097-CMIN             BANGLADESH                     4                  1        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                  0       17    257
0-24 months   ki1114097-CMIN             BANGLADESH                     5                  1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                  0        9    257
0-24 months   ki1114097-CMIN             BANGLADESH                     6                  1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                  0       15    257
0-24 months   ki1114097-CMIN             BANGLADESH                     7                  1        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                  0       20    257
0-24 months   ki1114097-CMIN             BANGLADESH                     8                  1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                  0       20    257
0-24 months   ki1114097-CMIN             BANGLADESH                     9                  1        0    257
0-24 months   ki1114097-CMIN             BANGLADESH                     10                 0       22    257
0-24 months   ki1114097-CMIN             BANGLADESH                     10                 1        4    257
0-24 months   ki1114097-CMIN             BANGLADESH                     11                 0       24    257
0-24 months   ki1114097-CMIN             BANGLADESH                     11                 1        2    257
0-24 months   ki1114097-CMIN             BANGLADESH                     12                 0       25    257
0-24 months   ki1114097-CMIN             BANGLADESH                     12                 1        3    257
0-24 months   ki1114097-CMIN             BRAZIL                         1                  0       14    119
0-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         2                  0        7    119
0-24 months   ki1114097-CMIN             BRAZIL                         2                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         3                  0       13    119
0-24 months   ki1114097-CMIN             BRAZIL                         3                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         4                  0        9    119
0-24 months   ki1114097-CMIN             BRAZIL                         4                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         5                  0        5    119
0-24 months   ki1114097-CMIN             BRAZIL                         5                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         6                  0        7    119
0-24 months   ki1114097-CMIN             BRAZIL                         6                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         7                  0        4    119
0-24 months   ki1114097-CMIN             BRAZIL                         7                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         8                  0       14    119
0-24 months   ki1114097-CMIN             BRAZIL                         8                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         9                  0        8    119
0-24 months   ki1114097-CMIN             BRAZIL                         9                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         10                 0       16    119
0-24 months   ki1114097-CMIN             BRAZIL                         10                 1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         11                 0       11    119
0-24 months   ki1114097-CMIN             BRAZIL                         11                 1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         12                 0       11    119
0-24 months   ki1114097-CMIN             BRAZIL                         12                 1        0    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      129   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        2   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  0       82   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  1        1   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  0       87   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  1        4   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  0       63   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  1        4   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  0       79   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  1        3   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       66   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  1        1   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       70   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  1        2   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       85   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  1        1   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      121   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  1        4   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 0      116   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        5   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 0      102   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 1        4   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 0      117   1153
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 1        5   1153
0-24 months   ki1114097-CMIN             PERU                           1                  0       49    830
0-24 months   ki1114097-CMIN             PERU                           1                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           2                  0       73    830
0-24 months   ki1114097-CMIN             PERU                           2                  1        1    830
0-24 months   ki1114097-CMIN             PERU                           3                  0       83    830
0-24 months   ki1114097-CMIN             PERU                           3                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           4                  0       71    830
0-24 months   ki1114097-CMIN             PERU                           4                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           5                  0       77    830
0-24 months   ki1114097-CMIN             PERU                           5                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           6                  0       78    830
0-24 months   ki1114097-CMIN             PERU                           6                  1        1    830
0-24 months   ki1114097-CMIN             PERU                           7                  0       72    830
0-24 months   ki1114097-CMIN             PERU                           7                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           8                  0       85    830
0-24 months   ki1114097-CMIN             PERU                           8                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           9                  0       62    830
0-24 months   ki1114097-CMIN             PERU                           9                  1        0    830
0-24 months   ki1114097-CMIN             PERU                           10                 0       61    830
0-24 months   ki1114097-CMIN             PERU                           10                 1        1    830
0-24 months   ki1114097-CMIN             PERU                           11                 0       53    830
0-24 months   ki1114097-CMIN             PERU                           11                 1        1    830
0-24 months   ki1114097-CMIN             PERU                           12                 0       61    830
0-24 months   ki1114097-CMIN             PERU                           12                 1        1    830
0-24 months   ki1114097-CONTENT          PERU                           1                  0       10    215
0-24 months   ki1114097-CONTENT          PERU                           1                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           2                  0       18    215
0-24 months   ki1114097-CONTENT          PERU                           2                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           3                  0       30    215
0-24 months   ki1114097-CONTENT          PERU                           3                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           4                  0       19    215
0-24 months   ki1114097-CONTENT          PERU                           4                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           5                  0       14    215
0-24 months   ki1114097-CONTENT          PERU                           5                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           6                  0       13    215
0-24 months   ki1114097-CONTENT          PERU                           6                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           7                  0       28    215
0-24 months   ki1114097-CONTENT          PERU                           7                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           8                  0       23    215
0-24 months   ki1114097-CONTENT          PERU                           8                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           9                  0       26    215
0-24 months   ki1114097-CONTENT          PERU                           9                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           10                 0       14    215
0-24 months   ki1114097-CONTENT          PERU                           10                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           11                 0        9    215
0-24 months   ki1114097-CONTENT          PERU                           11                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           12                 0       11    215
0-24 months   ki1114097-CONTENT          PERU                           12                 1        0    215
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0      491   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1        7   7972
0-24 months   ki1119695-PROBIT           BELARUS                        2                  0      487   7972
0-24 months   ki1119695-PROBIT           BELARUS                        2                  1        7   7972
0-24 months   ki1119695-PROBIT           BELARUS                        3                  0      568   7972
0-24 months   ki1119695-PROBIT           BELARUS                        3                  1        4   7972
0-24 months   ki1119695-PROBIT           BELARUS                        4                  0      535   7972
0-24 months   ki1119695-PROBIT           BELARUS                        4                  1        6   7972
0-24 months   ki1119695-PROBIT           BELARUS                        5                  0      580   7972
0-24 months   ki1119695-PROBIT           BELARUS                        5                  1       10   7972
0-24 months   ki1119695-PROBIT           BELARUS                        6                  0      603   7972
0-24 months   ki1119695-PROBIT           BELARUS                        6                  1       11   7972
0-24 months   ki1119695-PROBIT           BELARUS                        7                  0      736   7972
0-24 months   ki1119695-PROBIT           BELARUS                        7                  1       12   7972
0-24 months   ki1119695-PROBIT           BELARUS                        8                  0      781   7972
0-24 months   ki1119695-PROBIT           BELARUS                        8                  1        6   7972
0-24 months   ki1119695-PROBIT           BELARUS                        9                  0      719   7972
0-24 months   ki1119695-PROBIT           BELARUS                        9                  1        3   7972
0-24 months   ki1119695-PROBIT           BELARUS                        10                 0      794   7972
0-24 months   ki1119695-PROBIT           BELARUS                        10                 1       16   7972
0-24 months   ki1119695-PROBIT           BELARUS                        11                 0      735   7972
0-24 months   ki1119695-PROBIT           BELARUS                        11                 1        7   7972
0-24 months   ki1119695-PROBIT           BELARUS                        12                 0      848   7972
0-24 months   ki1119695-PROBIT           BELARUS                        12                 1        6   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      890   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       25   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      680   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       10   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      779   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1       23   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      687   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1        8   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      685   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1        7   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      763   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       13   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      759   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       14   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      826   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       13   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      835   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       14   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      640   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       15   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      786   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       11   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      836   9333
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1       14   9333
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       57    719
0-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                  0       41    719
0-24 months   ki1148112-LCNI-5           MALAWI                         2                  1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                  0       23    719
0-24 months   ki1148112-LCNI-5           MALAWI                         3                  1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                  0       33    719
0-24 months   ki1148112-LCNI-5           MALAWI                         4                  1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                  0       36    719
0-24 months   ki1148112-LCNI-5           MALAWI                         5                  1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                  0       27    719
0-24 months   ki1148112-LCNI-5           MALAWI                         6                  1        2    719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                  0       56    719
0-24 months   ki1148112-LCNI-5           MALAWI                         7                  1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                  0       79    719
0-24 months   ki1148112-LCNI-5           MALAWI                         8                  1        1    719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                  0       84    719
0-24 months   ki1148112-LCNI-5           MALAWI                         9                  1        1    719
0-24 months   ki1148112-LCNI-5           MALAWI                         10                 0      117    719
0-24 months   ki1148112-LCNI-5           MALAWI                         10                 1        1    719
0-24 months   ki1148112-LCNI-5           MALAWI                         11                 0       82    719
0-24 months   ki1148112-LCNI-5           MALAWI                         11                 1        0    719
0-24 months   ki1148112-LCNI-5           MALAWI                         12                 0       78    719
0-24 months   ki1148112-LCNI-5           MALAWI                         12                 1        1    719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      595   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       28   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  0      504   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  1       29   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  0      639   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  1       44   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  0      518   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  1       42   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      520   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  1       29   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      520   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  1       39   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  0      557   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  1       29   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  0      644   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  1       42   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  0      701   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  1       41   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 0      698   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 1       55   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 0      740   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 1       32   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 0      673   7760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 1       41   7760
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0        0   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  0      206   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       14   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  0      237   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  1       19   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      178   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  1       18   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      163   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  1       19   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      104   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  1       16   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      134   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       13   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      129   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  1        3   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  0       84   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  1        4   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 0       31   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 1        6   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 0        0   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 1        0   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 0        0   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        0   1378
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                  0       21    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     2                  1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                  0       22    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     3                  1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                  0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     4                  1        2    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                  0       20    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     5                  1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                  0       10    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     6                  1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                  0       17    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     7                  1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                  0       25    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     8                  1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                  0       22    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     9                  1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                 0       21    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     10                 1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                 0       16    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     11                 1        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                 0       27    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     12                 1        1    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       15    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                  0       25    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         2                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                  0       16    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         3                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                  0       11    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         4                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                  0       22    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         5                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                  0        8    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         6                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                  0       16    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         7                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                  0       18    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         8                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                  0       30    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         9                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                 0       21    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         10                 1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                 0       21    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         11                 1        1    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                 0       13    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         12                 1        0    217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18    240
0-6 months    ki0047075b-MAL-ED          INDIA                          1                  1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                  0       17    240
0-6 months    ki0047075b-MAL-ED          INDIA                          2                  1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                  0       20    240
0-6 months    ki0047075b-MAL-ED          INDIA                          3                  1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                  0       14    240
0-6 months    ki0047075b-MAL-ED          INDIA                          4                  1        1    240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                  0        8    240
0-6 months    ki0047075b-MAL-ED          INDIA                          5                  1        0    240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                  0       15    240
0-6 months    ki0047075b-MAL-ED          INDIA                          6                  1        3    240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                  0       23    240
0-6 months    ki0047075b-MAL-ED          INDIA                          7                  1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                  0       21    240
0-6 months    ki0047075b-MAL-ED          INDIA                          8                  1        2    240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                  0       20    240
0-6 months    ki0047075b-MAL-ED          INDIA                          9                  1        0    240
0-6 months    ki0047075b-MAL-ED          INDIA                          10                 0       22    240
0-6 months    ki0047075b-MAL-ED          INDIA                          10                 1        4    240
0-6 months    ki0047075b-MAL-ED          INDIA                          11                 0       24    240
0-6 months    ki0047075b-MAL-ED          INDIA                          11                 1        1    240
0-6 months    ki0047075b-MAL-ED          INDIA                          12                 0       19    240
0-6 months    ki0047075b-MAL-ED          INDIA                          12                 1        0    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       19    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                  0       19    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          2                  1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                  0       16    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          3                  1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                  0       22    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          4                  1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                  0       21    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          5                  1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                  0       18    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          6                  1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                  0       16    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          7                  1        2    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                  0       23    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          8                  1        1    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                  0       16    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          9                  1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                 0       21    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          10                 1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                 0       24    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          11                 1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                 0       17    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          12                 1        0    237
0-6 months    ki0047075b-MAL-ED          PERU                           1                  0       41    284
0-6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           2                  0       22    284
0-6 months    ki0047075b-MAL-ED          PERU                           2                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           3                  0       22    284
0-6 months    ki0047075b-MAL-ED          PERU                           3                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           4                  0       20    284
0-6 months    ki0047075b-MAL-ED          PERU                           4                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           5                  0       27    284
0-6 months    ki0047075b-MAL-ED          PERU                           5                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           6                  0       15    284
0-6 months    ki0047075b-MAL-ED          PERU                           6                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           7                  0       23    284
0-6 months    ki0047075b-MAL-ED          PERU                           7                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           8                  0       16    284
0-6 months    ki0047075b-MAL-ED          PERU                           8                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           9                  0       23    284
0-6 months    ki0047075b-MAL-ED          PERU                           9                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           10                 0       22    284
0-6 months    ki0047075b-MAL-ED          PERU                           10                 1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           11                 0       32    284
0-6 months    ki0047075b-MAL-ED          PERU                           11                 1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           12                 0       21    284
0-6 months    ki0047075b-MAL-ED          PERU                           12                 1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       36    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       23    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       15    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       13    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       19    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       25    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       10    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       23    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       27    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       27    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        1    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       36    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       20    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       30    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       18    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       20    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       19    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       23    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       23    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       27    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       31    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        0    253
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       27    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        6    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       13    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        2    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       22    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        7    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       37    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        6    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       27    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        6    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       32    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        3    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       35    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        3    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       13    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        4    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       19    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        2    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       25    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        3    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       36    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                 1        5    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       22    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        3    358
0-6 months    ki1000108-IRC              INDIA                          1                  0       32    402
0-6 months    ki1000108-IRC              INDIA                          1                  1        5    402
0-6 months    ki1000108-IRC              INDIA                          2                  0       24    402
0-6 months    ki1000108-IRC              INDIA                          2                  1        4    402
0-6 months    ki1000108-IRC              INDIA                          3                  0       21    402
0-6 months    ki1000108-IRC              INDIA                          3                  1        6    402
0-6 months    ki1000108-IRC              INDIA                          4                  0       20    402
0-6 months    ki1000108-IRC              INDIA                          4                  1        1    402
0-6 months    ki1000108-IRC              INDIA                          5                  0       19    402
0-6 months    ki1000108-IRC              INDIA                          5                  1        2    402
0-6 months    ki1000108-IRC              INDIA                          6                  0       29    402
0-6 months    ki1000108-IRC              INDIA                          6                  1        7    402
0-6 months    ki1000108-IRC              INDIA                          7                  0       29    402
0-6 months    ki1000108-IRC              INDIA                          7                  1        6    402
0-6 months    ki1000108-IRC              INDIA                          8                  0       35    402
0-6 months    ki1000108-IRC              INDIA                          8                  1        9    402
0-6 months    ki1000108-IRC              INDIA                          9                  0       23    402
0-6 months    ki1000108-IRC              INDIA                          9                  1        2    402
0-6 months    ki1000108-IRC              INDIA                          10                 0       30    402
0-6 months    ki1000108-IRC              INDIA                          10                 1        8    402
0-6 months    ki1000108-IRC              INDIA                          11                 0       35    402
0-6 months    ki1000108-IRC              INDIA                          11                 1        4    402
0-6 months    ki1000108-IRC              INDIA                          12                 0       41    402
0-6 months    ki1000108-IRC              INDIA                          12                 1       10    402
0-6 months    ki1000109-EE               PAKISTAN                       1                  0       77    366
0-6 months    ki1000109-EE               PAKISTAN                       1                  1       12    366
0-6 months    ki1000109-EE               PAKISTAN                       2                  0       61    366
0-6 months    ki1000109-EE               PAKISTAN                       2                  1        4    366
0-6 months    ki1000109-EE               PAKISTAN                       3                  0       39    366
0-6 months    ki1000109-EE               PAKISTAN                       3                  1        3    366
0-6 months    ki1000109-EE               PAKISTAN                       4                  0       15    366
0-6 months    ki1000109-EE               PAKISTAN                       4                  1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       5                  0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       5                  1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       6                  0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       6                  1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       7                  0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       7                  1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       8                  0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       8                  1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       9                  0        0    366
0-6 months    ki1000109-EE               PAKISTAN                       9                  1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       10                 0        4    366
0-6 months    ki1000109-EE               PAKISTAN                       10                 1        0    366
0-6 months    ki1000109-EE               PAKISTAN                       11                 0       66    366
0-6 months    ki1000109-EE               PAKISTAN                       11                 1        4    366
0-6 months    ki1000109-EE               PAKISTAN                       12                 0       77    366
0-6 months    ki1000109-EE               PAKISTAN                       12                 1        4    366
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  0        8    240
0-6 months    ki1000109-ResPak           PAKISTAN                       1                  1        1    240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                  0       10    240
0-6 months    ki1000109-ResPak           PAKISTAN                       2                  1        1    240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                  0       16    240
0-6 months    ki1000109-ResPak           PAKISTAN                       3                  1        3    240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                  0       20    240
0-6 months    ki1000109-ResPak           PAKISTAN                       4                  1        3    240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                  0       40    240
0-6 months    ki1000109-ResPak           PAKISTAN                       5                  1        6    240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                  0       39    240
0-6 months    ki1000109-ResPak           PAKISTAN                       6                  1        2    240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                  0       25    240
0-6 months    ki1000109-ResPak           PAKISTAN                       7                  1        2    240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                  0       27    240
0-6 months    ki1000109-ResPak           PAKISTAN                       8                  1        5    240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                  0       17    240
0-6 months    ki1000109-ResPak           PAKISTAN                       9                  1        2    240
0-6 months    ki1000109-ResPak           PAKISTAN                       10                 0        5    240
0-6 months    ki1000109-ResPak           PAKISTAN                       10                 1        0    240
0-6 months    ki1000109-ResPak           PAKISTAN                       11                 0        3    240
0-6 months    ki1000109-ResPak           PAKISTAN                       11                 1        0    240
0-6 months    ki1000109-ResPak           PAKISTAN                       12                 0        5    240
0-6 months    ki1000109-ResPak           PAKISTAN                       12                 1        0    240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0       19    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1        5    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                  0       17    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     2                  1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                  0       18    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     3                  1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                  0       13    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     4                  1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                  0        9    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     5                  1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                  0       11    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     6                  1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                  0       10    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     7                  1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                  0        6    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     8                  1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                  0        9    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     9                  1        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                 0       13    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     10                 1        1    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                 0       21    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     11                 1        2    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                 0       12    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     12                 1        0    169
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      139   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      149   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        6   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      139   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      149   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        1   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      158   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        2   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      142   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      191   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        3   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      188   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      189   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        0   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      207   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        5   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      190   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       11   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      168   2061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        8   2061
0-6 months    ki1101329-Keneba           GAMBIA                         1                  0      201   2037
0-6 months    ki1101329-Keneba           GAMBIA                         1                  1        2   2037
0-6 months    ki1101329-Keneba           GAMBIA                         2                  0      174   2037
0-6 months    ki1101329-Keneba           GAMBIA                         2                  1        5   2037
0-6 months    ki1101329-Keneba           GAMBIA                         3                  0      216   2037
0-6 months    ki1101329-Keneba           GAMBIA                         3                  1        6   2037
0-6 months    ki1101329-Keneba           GAMBIA                         4                  0      136   2037
0-6 months    ki1101329-Keneba           GAMBIA                         4                  1        5   2037
0-6 months    ki1101329-Keneba           GAMBIA                         5                  0      137   2037
0-6 months    ki1101329-Keneba           GAMBIA                         5                  1        5   2037
0-6 months    ki1101329-Keneba           GAMBIA                         6                  0      120   2037
0-6 months    ki1101329-Keneba           GAMBIA                         6                  1        2   2037
0-6 months    ki1101329-Keneba           GAMBIA                         7                  0       88   2037
0-6 months    ki1101329-Keneba           GAMBIA                         7                  1        5   2037
0-6 months    ki1101329-Keneba           GAMBIA                         8                  0      170   2037
0-6 months    ki1101329-Keneba           GAMBIA                         8                  1        6   2037
0-6 months    ki1101329-Keneba           GAMBIA                         9                  0      175   2037
0-6 months    ki1101329-Keneba           GAMBIA                         9                  1        7   2037
0-6 months    ki1101329-Keneba           GAMBIA                         10                 0      236   2037
0-6 months    ki1101329-Keneba           GAMBIA                         10                 1        1   2037
0-6 months    ki1101329-Keneba           GAMBIA                         11                 0      163   2037
0-6 months    ki1101329-Keneba           GAMBIA                         11                 1        3   2037
0-6 months    ki1101329-Keneba           GAMBIA                         12                 0      170   2037
0-6 months    ki1101329-Keneba           GAMBIA                         12                 1        4   2037
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                  0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                  1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                  0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3                  1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                  0        1    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          4                  1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                  0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          5                  1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                  0       97    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          6                  1       16    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                  0      185    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          7                  1       23    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                  0      194    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          8                  1       26    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                  0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          9                  1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                 0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          10                 1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                 0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          11                 1        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                 0        0    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          12                 1        0    542
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  0       23    234
0-6 months    ki1114097-CMIN             BANGLADESH                     1                  1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                  0       22    234
0-6 months    ki1114097-CMIN             BANGLADESH                     2                  1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                  0       15    234
0-6 months    ki1114097-CMIN             BANGLADESH                     3                  1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                  0       18    234
0-6 months    ki1114097-CMIN             BANGLADESH                     4                  1        3    234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                  0       17    234
0-6 months    ki1114097-CMIN             BANGLADESH                     5                  1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                  0        8    234
0-6 months    ki1114097-CMIN             BANGLADESH                     6                  1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                  0       16    234
0-6 months    ki1114097-CMIN             BANGLADESH                     7                  1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                  0       17    234
0-6 months    ki1114097-CMIN             BANGLADESH                     8                  1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                  0       17    234
0-6 months    ki1114097-CMIN             BANGLADESH                     9                  1        1    234
0-6 months    ki1114097-CMIN             BANGLADESH                     10                 0       23    234
0-6 months    ki1114097-CMIN             BANGLADESH                     10                 1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     11                 0       26    234
0-6 months    ki1114097-CMIN             BANGLADESH                     11                 1        0    234
0-6 months    ki1114097-CMIN             BANGLADESH                     12                 0       23    234
0-6 months    ki1114097-CMIN             BANGLADESH                     12                 1        3    234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  0        4     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                  0        1     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  2                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                  0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  3                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                  0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  4                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                  0        2     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  5                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                  0        1     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  6                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                  0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  7                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                  0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  8                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                  0        3     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  9                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                 0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  10                 1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                 0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  11                 1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                 0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  12                 1        0     11
0-6 months    ki1114097-CMIN             PERU                           1                  0       39    558
0-6 months    ki1114097-CMIN             PERU                           1                  1        0    558
0-6 months    ki1114097-CMIN             PERU                           2                  0       54    558
0-6 months    ki1114097-CMIN             PERU                           2                  1        2    558
0-6 months    ki1114097-CMIN             PERU                           3                  0       61    558
0-6 months    ki1114097-CMIN             PERU                           3                  1        1    558
0-6 months    ki1114097-CMIN             PERU                           4                  0       57    558
0-6 months    ki1114097-CMIN             PERU                           4                  1        1    558
0-6 months    ki1114097-CMIN             PERU                           5                  0       53    558
0-6 months    ki1114097-CMIN             PERU                           5                  1        2    558
0-6 months    ki1114097-CMIN             PERU                           6                  0       55    558
0-6 months    ki1114097-CMIN             PERU                           6                  1        0    558
0-6 months    ki1114097-CMIN             PERU                           7                  0       38    558
0-6 months    ki1114097-CMIN             PERU                           7                  1        0    558
0-6 months    ki1114097-CMIN             PERU                           8                  0       46    558
0-6 months    ki1114097-CMIN             PERU                           8                  1        1    558
0-6 months    ki1114097-CMIN             PERU                           9                  0       31    558
0-6 months    ki1114097-CMIN             PERU                           9                  1        0    558
0-6 months    ki1114097-CMIN             PERU                           10                 0       44    558
0-6 months    ki1114097-CMIN             PERU                           10                 1        1    558
0-6 months    ki1114097-CMIN             PERU                           11                 0       31    558
0-6 months    ki1114097-CMIN             PERU                           11                 1        2    558
0-6 months    ki1114097-CMIN             PERU                           12                 0       37    558
0-6 months    ki1114097-CMIN             PERU                           12                 1        2    558
0-6 months    ki1114097-CONTENT          PERU                           1                  0       10    215
0-6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           2                  0       18    215
0-6 months    ki1114097-CONTENT          PERU                           2                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           3                  0       30    215
0-6 months    ki1114097-CONTENT          PERU                           3                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           4                  0       19    215
0-6 months    ki1114097-CONTENT          PERU                           4                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           5                  0       14    215
0-6 months    ki1114097-CONTENT          PERU                           5                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           6                  0       13    215
0-6 months    ki1114097-CONTENT          PERU                           6                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           7                  0       28    215
0-6 months    ki1114097-CONTENT          PERU                           7                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           8                  0       23    215
0-6 months    ki1114097-CONTENT          PERU                           8                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           9                  0       26    215
0-6 months    ki1114097-CONTENT          PERU                           9                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           10                 0       14    215
0-6 months    ki1114097-CONTENT          PERU                           10                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           11                 0        9    215
0-6 months    ki1114097-CONTENT          PERU                           11                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           12                 0       11    215
0-6 months    ki1114097-CONTENT          PERU                           12                 1        0    215
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0      380   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1       37   6657
0-6 months    ki1119695-PROBIT           BELARUS                        2                  0      363   6657
0-6 months    ki1119695-PROBIT           BELARUS                        2                  1       52   6657
0-6 months    ki1119695-PROBIT           BELARUS                        3                  0      424   6657
0-6 months    ki1119695-PROBIT           BELARUS                        3                  1       43   6657
0-6 months    ki1119695-PROBIT           BELARUS                        4                  0      416   6657
0-6 months    ki1119695-PROBIT           BELARUS                        4                  1       46   6657
0-6 months    ki1119695-PROBIT           BELARUS                        5                  0      422   6657
0-6 months    ki1119695-PROBIT           BELARUS                        5                  1       56   6657
0-6 months    ki1119695-PROBIT           BELARUS                        6                  0      458   6657
0-6 months    ki1119695-PROBIT           BELARUS                        6                  1       57   6657
0-6 months    ki1119695-PROBIT           BELARUS                        7                  0      545   6657
0-6 months    ki1119695-PROBIT           BELARUS                        7                  1       65   6657
0-6 months    ki1119695-PROBIT           BELARUS                        8                  0      599   6657
0-6 months    ki1119695-PROBIT           BELARUS                        8                  1       60   6657
0-6 months    ki1119695-PROBIT           BELARUS                        9                  0      563   6657
0-6 months    ki1119695-PROBIT           BELARUS                        9                  1       60   6657
0-6 months    ki1119695-PROBIT           BELARUS                        10                 0      616   6657
0-6 months    ki1119695-PROBIT           BELARUS                        10                 1       69   6657
0-6 months    ki1119695-PROBIT           BELARUS                        11                 0      562   6657
0-6 months    ki1119695-PROBIT           BELARUS                        11                 1       40   6657
0-6 months    ki1119695-PROBIT           BELARUS                        12                 0      682   6657
0-6 months    ki1119695-PROBIT           BELARUS                        12                 1       42   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0       82    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1        0    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                  0       57    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                  1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                  0       28    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                  1        2    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                  0       33    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                  1        0    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                  0       32    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                  1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                  0       60    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                  1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                  0       29    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                  1        2    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                  0       42    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                  1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                  0       74    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                  1        3    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                 0       42    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                 1        1    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                 0       73    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                 1        0    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                 0       44    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                 1        2    610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0        7     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                  0        6     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                  1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                  0        7     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                 0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                 1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                 0        2     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                 0        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                 1        0     25
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                  1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  0       22    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                  1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  0       21    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                  1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  0       19    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                  1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  0        9    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                  1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  0       17    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                  1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  0       25    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                  1        0    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                  1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 0       20    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                 1        2    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 0       15    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                 1        1    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 0       27    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                 1        1    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       15    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  0       25    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         2                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  0       16    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         3                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  0       11    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         4                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  0       22    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         5                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  0        8    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         6                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  0       16    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         7                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  0       18    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         8                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  0       30    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         9                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 0       20    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         10                 1        1    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 0       21    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         11                 1        1    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 0       13    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         12                 1        0    217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  0       18    241
6-24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          2                  0       17    241
6-24 months   ki0047075b-MAL-ED          INDIA                          2                  1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          3                  0       20    241
6-24 months   ki0047075b-MAL-ED          INDIA                          3                  1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          4                  0       14    241
6-24 months   ki0047075b-MAL-ED          INDIA                          4                  1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          5                  0        7    241
6-24 months   ki0047075b-MAL-ED          INDIA                          5                  1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          6                  0       16    241
6-24 months   ki0047075b-MAL-ED          INDIA                          6                  1        3    241
6-24 months   ki0047075b-MAL-ED          INDIA                          7                  0       21    241
6-24 months   ki0047075b-MAL-ED          INDIA                          7                  1        4    241
6-24 months   ki0047075b-MAL-ED          INDIA                          8                  0       22    241
6-24 months   ki0047075b-MAL-ED          INDIA                          8                  1        1    241
6-24 months   ki0047075b-MAL-ED          INDIA                          9                  0       20    241
6-24 months   ki0047075b-MAL-ED          INDIA                          9                  1        0    241
6-24 months   ki0047075b-MAL-ED          INDIA                          10                 0       24    241
6-24 months   ki0047075b-MAL-ED          INDIA                          10                 1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          11                 0       23    241
6-24 months   ki0047075b-MAL-ED          INDIA                          11                 1        2    241
6-24 months   ki0047075b-MAL-ED          INDIA                          12                 0       18    241
6-24 months   ki0047075b-MAL-ED          INDIA                          12                 1        1    241
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       19    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                  0       19    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          2                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                  0       17    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          3                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                  0       22    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          4                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                  0       20    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          5                  1        2    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                  0       18    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          6                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                  0       17    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          7                  1        1    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                  0       24    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          8                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                  0       16    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          9                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                 0       21    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          10                 1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                 0       24    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          11                 1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                 0       17    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          12                 1        0    238
6-24 months   ki0047075b-MAL-ED          PERU                           1                  0       41    284
6-24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           2                  0       22    284
6-24 months   ki0047075b-MAL-ED          PERU                           2                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           3                  0       22    284
6-24 months   ki0047075b-MAL-ED          PERU                           3                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           4                  0       20    284
6-24 months   ki0047075b-MAL-ED          PERU                           4                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           5                  0       27    284
6-24 months   ki0047075b-MAL-ED          PERU                           5                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           6                  0       15    284
6-24 months   ki0047075b-MAL-ED          PERU                           6                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           7                  0       23    284
6-24 months   ki0047075b-MAL-ED          PERU                           7                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           8                  0       15    284
6-24 months   ki0047075b-MAL-ED          PERU                           8                  1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           9                  0       23    284
6-24 months   ki0047075b-MAL-ED          PERU                           9                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           10                 0       22    284
6-24 months   ki0047075b-MAL-ED          PERU                           10                 1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           11                 0       32    284
6-24 months   ki0047075b-MAL-ED          PERU                           11                 1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           12                 0       21    284
6-24 months   ki0047075b-MAL-ED          PERU                           12                 1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       37    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  0       24    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  0       15    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  0       13    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  0       15    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  0       19    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  0       25    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  0       10    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  0       23    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 0       26    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                 1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 0       28    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                 1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 0       36    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                 1        0    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       20    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  0       30    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  0       18    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  0        9    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  0       20    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  0       19    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  0       23    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  0       12    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  0       21    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 0       23    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                 1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 0       27    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                 1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 0       31    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                 1        0    253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       31    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  0       14    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                  1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  0       31    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                  1        0    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  0       41    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                  1        3    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  0       32    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                  1        4    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  0       36    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                  1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  0       37    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                  1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  0       17    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                  1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  0       20    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                  1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 0       27    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                 1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 0       41    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                 1        2    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 0       23    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                 1        2    373
6-24 months   ki1000108-IRC              INDIA                          1                  0       35    410
6-24 months   ki1000108-IRC              INDIA                          1                  1        3    410
6-24 months   ki1000108-IRC              INDIA                          2                  0       26    410
6-24 months   ki1000108-IRC              INDIA                          2                  1        2    410
6-24 months   ki1000108-IRC              INDIA                          3                  0       26    410
6-24 months   ki1000108-IRC              INDIA                          3                  1        1    410
6-24 months   ki1000108-IRC              INDIA                          4                  0       19    410
6-24 months   ki1000108-IRC              INDIA                          4                  1        2    410
6-24 months   ki1000108-IRC              INDIA                          5                  0       20    410
6-24 months   ki1000108-IRC              INDIA                          5                  1        2    410
6-24 months   ki1000108-IRC              INDIA                          6                  0       32    410
6-24 months   ki1000108-IRC              INDIA                          6                  1        5    410
6-24 months   ki1000108-IRC              INDIA                          7                  0       31    410
6-24 months   ki1000108-IRC              INDIA                          7                  1        5    410
6-24 months   ki1000108-IRC              INDIA                          8                  0       35    410
6-24 months   ki1000108-IRC              INDIA                          8                  1        9    410
6-24 months   ki1000108-IRC              INDIA                          9                  0       22    410
6-24 months   ki1000108-IRC              INDIA                          9                  1        5    410
6-24 months   ki1000108-IRC              INDIA                          10                 0       32    410
6-24 months   ki1000108-IRC              INDIA                          10                 1        6    410
6-24 months   ki1000108-IRC              INDIA                          11                 0       37    410
6-24 months   ki1000108-IRC              INDIA                          11                 1        3    410
6-24 months   ki1000108-IRC              INDIA                          12                 0       47    410
6-24 months   ki1000108-IRC              INDIA                          12                 1        5    410
6-24 months   ki1000109-EE               PAKISTAN                       1                  0       84    377
6-24 months   ki1000109-EE               PAKISTAN                       1                  1        8    377
6-24 months   ki1000109-EE               PAKISTAN                       2                  0       63    377
6-24 months   ki1000109-EE               PAKISTAN                       2                  1        4    377
6-24 months   ki1000109-EE               PAKISTAN                       3                  0       38    377
6-24 months   ki1000109-EE               PAKISTAN                       3                  1        5    377
6-24 months   ki1000109-EE               PAKISTAN                       4                  0       15    377
6-24 months   ki1000109-EE               PAKISTAN                       4                  1        1    377
6-24 months   ki1000109-EE               PAKISTAN                       5                  0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       5                  1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       6                  0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       6                  1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       7                  0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       7                  1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       8                  0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       8                  1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       9                  0        0    377
6-24 months   ki1000109-EE               PAKISTAN                       9                  1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       10                 0        4    377
6-24 months   ki1000109-EE               PAKISTAN                       10                 1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       11                 0       64    377
6-24 months   ki1000109-EE               PAKISTAN                       11                 1        6    377
6-24 months   ki1000109-EE               PAKISTAN                       12                 0       81    377
6-24 months   ki1000109-EE               PAKISTAN                       12                 1        4    377
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  0        8    251
6-24 months   ki1000109-ResPak           PAKISTAN                       1                  1        2    251
6-24 months   ki1000109-ResPak           PAKISTAN                       2                  0       10    251
6-24 months   ki1000109-ResPak           PAKISTAN                       2                  1        1    251
6-24 months   ki1000109-ResPak           PAKISTAN                       3                  0       17    251
6-24 months   ki1000109-ResPak           PAKISTAN                       3                  1        3    251
6-24 months   ki1000109-ResPak           PAKISTAN                       4                  0       18    251
6-24 months   ki1000109-ResPak           PAKISTAN                       4                  1        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       5                  0       45    251
6-24 months   ki1000109-ResPak           PAKISTAN                       5                  1        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       6                  0       38    251
6-24 months   ki1000109-ResPak           PAKISTAN                       6                  1        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       7                  0       25    251
6-24 months   ki1000109-ResPak           PAKISTAN                       7                  1        3    251
6-24 months   ki1000109-ResPak           PAKISTAN                       8                  0       28    251
6-24 months   ki1000109-ResPak           PAKISTAN                       8                  1        5    251
6-24 months   ki1000109-ResPak           PAKISTAN                       9                  0       17    251
6-24 months   ki1000109-ResPak           PAKISTAN                       9                  1        3    251
6-24 months   ki1000109-ResPak           PAKISTAN                       10                 0        4    251
6-24 months   ki1000109-ResPak           PAKISTAN                       10                 1        1    251
6-24 months   ki1000109-ResPak           PAKISTAN                       11                 0        3    251
6-24 months   ki1000109-ResPak           PAKISTAN                       11                 1        0    251
6-24 months   ki1000109-ResPak           PAKISTAN                       12                 0        4    251
6-24 months   ki1000109-ResPak           PAKISTAN                       12                 1        1    251
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  0       42    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                  1        8    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  0       36    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                  1        2    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  0       31    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3                  1        2    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  0       24    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          4                  1        1    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  0       36    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          5                  1        4    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  0       46    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          6                  1        3    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  0        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          7                  1        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  0        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          8                  1        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  0        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          9                  1        0    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 0       73    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          10                 1        3    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 0       41    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          11                 1        4    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 0       67    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          12                 1        5    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        5     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  0        7     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                  1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  0        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3                  1        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  0        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4                  1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  0        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5                  1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  0        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6                  1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  0        6     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7                  1        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  0       12     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8                  1        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  0       14     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9                  1        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 0        9     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10                 1        1     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 0        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11                 1        2     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 0        8     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12                 1        0     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0       50    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  0       43    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                  1        3    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  0       45    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                  1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  0       39    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                  1        4    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  0       35    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                  1        7    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  0       41    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                  1        3    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  0       36    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                  1        3    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  0       29    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                  1        3    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  0       38    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                  1        2    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 0       38    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                 1        5    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 0       45    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                 1        4    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 0       48    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                 1        3    534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      145   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        6   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  0      159   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                  1        5   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  0      151   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                  1        2   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  0      156   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                  1        6   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  0      164   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                  1        3   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  0      150   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                  1        3   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  0      198   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                  1        5   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  0      205   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                  1        4   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  0      194   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                  1        1   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 0      215   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                 1        8   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 0      197   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                 1       10   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 0      174   2166
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                 1        5   2166
6-24 months   ki1101329-Keneba           GAMBIA                         1                  0      228   2441
6-24 months   ki1101329-Keneba           GAMBIA                         1                  1       15   2441
6-24 months   ki1101329-Keneba           GAMBIA                         2                  0      208   2441
6-24 months   ki1101329-Keneba           GAMBIA                         2                  1        9   2441
6-24 months   ki1101329-Keneba           GAMBIA                         3                  0      237   2441
6-24 months   ki1101329-Keneba           GAMBIA                         3                  1       18   2441
6-24 months   ki1101329-Keneba           GAMBIA                         4                  0      154   2441
6-24 months   ki1101329-Keneba           GAMBIA                         4                  1        9   2441
6-24 months   ki1101329-Keneba           GAMBIA                         5                  0      164   2441
6-24 months   ki1101329-Keneba           GAMBIA                         5                  1       11   2441
6-24 months   ki1101329-Keneba           GAMBIA                         6                  0      133   2441
6-24 months   ki1101329-Keneba           GAMBIA                         6                  1        7   2441
6-24 months   ki1101329-Keneba           GAMBIA                         7                  0      106   2441
6-24 months   ki1101329-Keneba           GAMBIA                         7                  1       11   2441
6-24 months   ki1101329-Keneba           GAMBIA                         8                  0      198   2441
6-24 months   ki1101329-Keneba           GAMBIA                         8                  1        7   2441
6-24 months   ki1101329-Keneba           GAMBIA                         9                  0      205   2441
6-24 months   ki1101329-Keneba           GAMBIA                         9                  1       10   2441
6-24 months   ki1101329-Keneba           GAMBIA                         10                 0      277   2441
6-24 months   ki1101329-Keneba           GAMBIA                         10                 1       12   2441
6-24 months   ki1101329-Keneba           GAMBIA                         11                 0      192   2441
6-24 months   ki1101329-Keneba           GAMBIA                         11                 1       15   2441
6-24 months   ki1101329-Keneba           GAMBIA                         12                 0      207   2441
6-24 months   ki1101329-Keneba           GAMBIA                         12                 1        8   2441
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  0       27    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  0       23    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      2                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  0       25    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      3                  1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  0       28    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      4                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  0       24    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      5                  1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  0       17    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      6                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  0       15    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      7                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  0       11    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      8                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  0       13    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      9                  1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 0       24    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      10                 1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 0       20    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      11                 1        0    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 0       25    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      12                 1        1    256
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                  1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3                  1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  0        1    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          4                  1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          5                  1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  0      107    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          6                  1       19    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  0      199    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          7                  1       33    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  0      200    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          8                  1       33    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          9                  1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          10                 1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          11                 1        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 0        0    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          12                 1        0    592
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  0       26    257
6-24 months   ki1114097-CMIN             BANGLADESH                     1                  1        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     2                  0       23    257
6-24 months   ki1114097-CMIN             BANGLADESH                     2                  1        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     3                  0       16    257
6-24 months   ki1114097-CMIN             BANGLADESH                     3                  1        3    257
6-24 months   ki1114097-CMIN             BANGLADESH                     4                  0       20    257
6-24 months   ki1114097-CMIN             BANGLADESH                     4                  1        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     5                  0       17    257
6-24 months   ki1114097-CMIN             BANGLADESH                     5                  1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     6                  0        9    257
6-24 months   ki1114097-CMIN             BANGLADESH                     6                  1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     7                  0       15    257
6-24 months   ki1114097-CMIN             BANGLADESH                     7                  1        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     8                  0       20    257
6-24 months   ki1114097-CMIN             BANGLADESH                     8                  1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     9                  0       20    257
6-24 months   ki1114097-CMIN             BANGLADESH                     9                  1        0    257
6-24 months   ki1114097-CMIN             BANGLADESH                     10                 0       22    257
6-24 months   ki1114097-CMIN             BANGLADESH                     10                 1        4    257
6-24 months   ki1114097-CMIN             BANGLADESH                     11                 0       24    257
6-24 months   ki1114097-CMIN             BANGLADESH                     11                 1        2    257
6-24 months   ki1114097-CMIN             BANGLADESH                     12                 0       25    257
6-24 months   ki1114097-CMIN             BANGLADESH                     12                 1        3    257
6-24 months   ki1114097-CMIN             BRAZIL                         1                  0       14    119
6-24 months   ki1114097-CMIN             BRAZIL                         1                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         2                  0        7    119
6-24 months   ki1114097-CMIN             BRAZIL                         2                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         3                  0       13    119
6-24 months   ki1114097-CMIN             BRAZIL                         3                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         4                  0        9    119
6-24 months   ki1114097-CMIN             BRAZIL                         4                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         5                  0        5    119
6-24 months   ki1114097-CMIN             BRAZIL                         5                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         6                  0        7    119
6-24 months   ki1114097-CMIN             BRAZIL                         6                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         7                  0        4    119
6-24 months   ki1114097-CMIN             BRAZIL                         7                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         8                  0       14    119
6-24 months   ki1114097-CMIN             BRAZIL                         8                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         9                  0        8    119
6-24 months   ki1114097-CMIN             BRAZIL                         9                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         10                 0       16    119
6-24 months   ki1114097-CMIN             BRAZIL                         10                 1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         11                 0       11    119
6-24 months   ki1114097-CMIN             BRAZIL                         11                 1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         12                 0       11    119
6-24 months   ki1114097-CMIN             BRAZIL                         12                 1        0    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  0      129   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                  1        2   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  0       82   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                  1        1   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  0       87   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                  1        4   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  0       63   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                  1        4   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  0       79   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                  1        3   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  0       66   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                  1        1   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  0       70   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                  1        2   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  0       85   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                  1        1   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  0      121   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                  1        4   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 0      116   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                 1        5   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 0      102   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                 1        4   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 0      117   1153
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                 1        5   1153
6-24 months   ki1114097-CMIN             PERU                           1                  0       49    830
6-24 months   ki1114097-CMIN             PERU                           1                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           2                  0       73    830
6-24 months   ki1114097-CMIN             PERU                           2                  1        1    830
6-24 months   ki1114097-CMIN             PERU                           3                  0       83    830
6-24 months   ki1114097-CMIN             PERU                           3                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           4                  0       71    830
6-24 months   ki1114097-CMIN             PERU                           4                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           5                  0       77    830
6-24 months   ki1114097-CMIN             PERU                           5                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           6                  0       78    830
6-24 months   ki1114097-CMIN             PERU                           6                  1        1    830
6-24 months   ki1114097-CMIN             PERU                           7                  0       72    830
6-24 months   ki1114097-CMIN             PERU                           7                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           8                  0       85    830
6-24 months   ki1114097-CMIN             PERU                           8                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           9                  0       62    830
6-24 months   ki1114097-CMIN             PERU                           9                  1        0    830
6-24 months   ki1114097-CMIN             PERU                           10                 0       61    830
6-24 months   ki1114097-CMIN             PERU                           10                 1        1    830
6-24 months   ki1114097-CMIN             PERU                           11                 0       53    830
6-24 months   ki1114097-CMIN             PERU                           11                 1        1    830
6-24 months   ki1114097-CMIN             PERU                           12                 0       61    830
6-24 months   ki1114097-CMIN             PERU                           12                 1        1    830
6-24 months   ki1114097-CONTENT          PERU                           1                  0       10    215
6-24 months   ki1114097-CONTENT          PERU                           1                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           2                  0       18    215
6-24 months   ki1114097-CONTENT          PERU                           2                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           3                  0       30    215
6-24 months   ki1114097-CONTENT          PERU                           3                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           4                  0       19    215
6-24 months   ki1114097-CONTENT          PERU                           4                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           5                  0       14    215
6-24 months   ki1114097-CONTENT          PERU                           5                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           6                  0       13    215
6-24 months   ki1114097-CONTENT          PERU                           6                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           7                  0       28    215
6-24 months   ki1114097-CONTENT          PERU                           7                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           8                  0       23    215
6-24 months   ki1114097-CONTENT          PERU                           8                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           9                  0       26    215
6-24 months   ki1114097-CONTENT          PERU                           9                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           10                 0       14    215
6-24 months   ki1114097-CONTENT          PERU                           10                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           11                 0        9    215
6-24 months   ki1114097-CONTENT          PERU                           11                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           12                 0       11    215
6-24 months   ki1114097-CONTENT          PERU                           12                 1        0    215
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0      491   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        7   7972
6-24 months   ki1119695-PROBIT           BELARUS                        2                  0      487   7972
6-24 months   ki1119695-PROBIT           BELARUS                        2                  1        7   7972
6-24 months   ki1119695-PROBIT           BELARUS                        3                  0      568   7972
6-24 months   ki1119695-PROBIT           BELARUS                        3                  1        4   7972
6-24 months   ki1119695-PROBIT           BELARUS                        4                  0      535   7972
6-24 months   ki1119695-PROBIT           BELARUS                        4                  1        6   7972
6-24 months   ki1119695-PROBIT           BELARUS                        5                  0      580   7972
6-24 months   ki1119695-PROBIT           BELARUS                        5                  1       10   7972
6-24 months   ki1119695-PROBIT           BELARUS                        6                  0      603   7972
6-24 months   ki1119695-PROBIT           BELARUS                        6                  1       11   7972
6-24 months   ki1119695-PROBIT           BELARUS                        7                  0      736   7972
6-24 months   ki1119695-PROBIT           BELARUS                        7                  1       12   7972
6-24 months   ki1119695-PROBIT           BELARUS                        8                  0      781   7972
6-24 months   ki1119695-PROBIT           BELARUS                        8                  1        6   7972
6-24 months   ki1119695-PROBIT           BELARUS                        9                  0      719   7972
6-24 months   ki1119695-PROBIT           BELARUS                        9                  1        3   7972
6-24 months   ki1119695-PROBIT           BELARUS                        10                 0      794   7972
6-24 months   ki1119695-PROBIT           BELARUS                        10                 1       16   7972
6-24 months   ki1119695-PROBIT           BELARUS                        11                 0      735   7972
6-24 months   ki1119695-PROBIT           BELARUS                        11                 1        7   7972
6-24 months   ki1119695-PROBIT           BELARUS                        12                 0      848   7972
6-24 months   ki1119695-PROBIT           BELARUS                        12                 1        6   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      890   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       25   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  0      680   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                  1       10   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  0      779   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                  1       23   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  0      687   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                  1        8   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  0      685   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                  1        7   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  0      763   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                  1       13   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  0      759   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                  1       14   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  0      826   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                  1       13   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  0      835   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                  1       14   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 0      640   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                 1       15   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 0      786   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                 1       11   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 0      836   9333
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                 1       14   9333
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  0       57    719
6-24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         2                  0       41    719
6-24 months   ki1148112-LCNI-5           MALAWI                         2                  1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         3                  0       23    719
6-24 months   ki1148112-LCNI-5           MALAWI                         3                  1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         4                  0       33    719
6-24 months   ki1148112-LCNI-5           MALAWI                         4                  1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         5                  0       36    719
6-24 months   ki1148112-LCNI-5           MALAWI                         5                  1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         6                  0       27    719
6-24 months   ki1148112-LCNI-5           MALAWI                         6                  1        2    719
6-24 months   ki1148112-LCNI-5           MALAWI                         7                  0       56    719
6-24 months   ki1148112-LCNI-5           MALAWI                         7                  1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         8                  0       79    719
6-24 months   ki1148112-LCNI-5           MALAWI                         8                  1        1    719
6-24 months   ki1148112-LCNI-5           MALAWI                         9                  0       84    719
6-24 months   ki1148112-LCNI-5           MALAWI                         9                  1        1    719
6-24 months   ki1148112-LCNI-5           MALAWI                         10                 0      117    719
6-24 months   ki1148112-LCNI-5           MALAWI                         10                 1        1    719
6-24 months   ki1148112-LCNI-5           MALAWI                         11                 0       82    719
6-24 months   ki1148112-LCNI-5           MALAWI                         11                 1        0    719
6-24 months   ki1148112-LCNI-5           MALAWI                         12                 0       78    719
6-24 months   ki1148112-LCNI-5           MALAWI                         12                 1        1    719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      595   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       28   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  0      504   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                  1       29   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  0      639   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                  1       44   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  0      518   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                  1       42   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  0      520   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                  1       29   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  0      520   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                  1       39   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  0      557   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                  1       29   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  0      644   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                  1       42   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  0      701   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                  1       41   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 0      698   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                 1       55   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 0      740   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                 1       32   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 0      673   7760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                 1       41   7760
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0        0   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1        0   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  0      206   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                  1       14   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  0      237   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                  1       19   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  0      178   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                  1       18   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  0      163   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                  1       19   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  0      104   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                  1       16   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  0      134   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                  1       13   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  0      129   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                  1        3   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  0       84   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                  1        4   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 0       31   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                 1        6   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 0        0   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                 1        0   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 0        0   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                 1        0   1378


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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/0ada1e08-29a1-4e3b-8feb-e800221f9ec3/96aafbc7-800c-4071-9dbe-44c7cf3a0c9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0ada1e08-29a1-4e3b-8feb-e800221f9ec3/96aafbc7-800c-4071-9dbe-44c7cf3a0c9d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0ada1e08-29a1-4e3b-8feb-e800221f9ec3/96aafbc7-800c-4071-9dbe-44c7cf3a0c9d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0ada1e08-29a1-4e3b-8feb-e800221f9ec3/96aafbc7-800c-4071-9dbe-44c7cf3a0c9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0617284   0.0314634   0.0919934
0-24 months   ki1101329-Keneba     GAMBIA       2                    NA                0.0414747   0.0149408   0.0680085
0-24 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0705882   0.0391443   0.1020322
0-24 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0552147   0.0201446   0.0902848
0-24 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0628571   0.0268906   0.0988236
0-24 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0500000   0.0138906   0.0861094
0-24 months   ki1101329-Keneba     GAMBIA       7                    NA                0.0940171   0.0411230   0.1469112
0-24 months   ki1101329-Keneba     GAMBIA       8                    NA                0.0341463   0.0092814   0.0590113
0-24 months   ki1101329-Keneba     GAMBIA       9                    NA                0.0465116   0.0183566   0.0746667
0-24 months   ki1101329-Keneba     GAMBIA       10                   NA                0.0415225   0.0185176   0.0645274
0-24 months   ki1101329-Keneba     GAMBIA       11                   NA                0.0724638   0.0371391   0.1077884
0-24 months   ki1101329-Keneba     GAMBIA       12                   NA                0.0372093   0.0119041   0.0625145
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0273224   0.0167590   0.0378858
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0144928   0.0055751   0.0234104
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0286783   0.0171267   0.0402299
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0115108   0.0035800   0.0194416
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0101156   0.0026596   0.0175716
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0167526   0.0077221   0.0257831
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0181113   0.0087100   0.0275125
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0154946   0.0071369   0.0238524
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0164900   0.0079232   0.0250568
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0229008   0.0114444   0.0343571
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0138018   0.0057016   0.0219019
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0164706   0.0079138   0.0250274
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0449438   0.0274238   0.0624638
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0544090   0.0322201   0.0765979
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0644217   0.0424079   0.0864355
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0750000   0.0508148   0.0991852
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0528233   0.0343712   0.0712755
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0697674   0.0439809   0.0955540
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0494881   0.0328038   0.0661724
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0612245   0.0416133   0.0808357
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0552561   0.0392823   0.0712299
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0730412   0.0544768   0.0916055
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0414508   0.0265491   0.0563525
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0574230   0.0399889   0.0748571
0-6 months    ki1119695-PROBIT     BELARUS      1                    NA                0.0887290   0.0292698   0.1481882
0-6 months    ki1119695-PROBIT     BELARUS      2                    NA                0.1253012   0.0352937   0.2153087
0-6 months    ki1119695-PROBIT     BELARUS      3                    NA                0.0920771   0.0367611   0.1473931
0-6 months    ki1119695-PROBIT     BELARUS      4                    NA                0.0995671   0.0408011   0.1583331
0-6 months    ki1119695-PROBIT     BELARUS      5                    NA                0.1171548   0.0203866   0.2139231
0-6 months    ki1119695-PROBIT     BELARUS      6                    NA                0.1106796   0.0579125   0.1634467
0-6 months    ki1119695-PROBIT     BELARUS      7                    NA                0.1065574   0.0487001   0.1644147
0-6 months    ki1119695-PROBIT     BELARUS      8                    NA                0.0910470   0.0470332   0.1350609
0-6 months    ki1119695-PROBIT     BELARUS      9                    NA                0.0963082   0.0314694   0.1611470
0-6 months    ki1119695-PROBIT     BELARUS      10                   NA                0.1007299   0.0563710   0.1450889
0-6 months    ki1119695-PROBIT     BELARUS      11                   NA                0.0664452   0.0276431   0.1052473
0-6 months    ki1119695-PROBIT     BELARUS      12                   NA                0.0580110   0.0248043   0.0912178
6-24 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0617284   0.0314634   0.0919934
6-24 months   ki1101329-Keneba     GAMBIA       2                    NA                0.0414747   0.0149408   0.0680085
6-24 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0705882   0.0391443   0.1020322
6-24 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0552147   0.0201446   0.0902848
6-24 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0628571   0.0268906   0.0988236
6-24 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0500000   0.0138906   0.0861094
6-24 months   ki1101329-Keneba     GAMBIA       7                    NA                0.0940171   0.0411230   0.1469112
6-24 months   ki1101329-Keneba     GAMBIA       8                    NA                0.0341463   0.0092814   0.0590113
6-24 months   ki1101329-Keneba     GAMBIA       9                    NA                0.0465116   0.0183566   0.0746667
6-24 months   ki1101329-Keneba     GAMBIA       10                   NA                0.0415225   0.0185176   0.0645274
6-24 months   ki1101329-Keneba     GAMBIA       11                   NA                0.0724638   0.0371391   0.1077884
6-24 months   ki1101329-Keneba     GAMBIA       12                   NA                0.0372093   0.0119041   0.0625145
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0273224   0.0167590   0.0378858
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0144928   0.0055751   0.0234104
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0286783   0.0171267   0.0402299
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0115108   0.0035800   0.0194416
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0101156   0.0026596   0.0175716
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0167526   0.0077221   0.0257831
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0181113   0.0087100   0.0275125
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0154946   0.0071369   0.0238524
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0164900   0.0079232   0.0250568
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0229008   0.0114444   0.0343571
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0138018   0.0057016   0.0219019
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0164706   0.0079138   0.0250274
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0449438   0.0274238   0.0624638
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0544090   0.0322201   0.0765979
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0644217   0.0424079   0.0864355
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0750000   0.0508148   0.0991852
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0528233   0.0343712   0.0712755
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0697674   0.0439809   0.0955540
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0494881   0.0328038   0.0661724
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0612245   0.0416133   0.0808357
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0552561   0.0392823   0.0712299
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0730412   0.0544768   0.0916055
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0414508   0.0265491   0.0563525
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0574230   0.0399889   0.0748571


### Parameter: E(Y)


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.0540762   0.0451022   0.0630502
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0178935   0.0152039   0.0205831
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0581186   0.0523097   0.0639274
0-6 months    ki1119695-PROBIT     BELARUS      NA                   NA                0.0941866   0.0454872   0.1428859
6-24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.0540762   0.0451022   0.0630502
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0178935   0.0152039   0.0205831
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0581186   0.0523097   0.0639274


### Parameter: RR


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba     GAMBIA       2                    1                 0.6718894   0.3000850   1.5043583
0-24 months   ki1101329-Keneba     GAMBIA       3                    1                 1.1435294   0.5895981   2.2178830
0-24 months   ki1101329-Keneba     GAMBIA       4                    1                 0.8944785   0.4009596   1.9954426
0-24 months   ki1101329-Keneba     GAMBIA       5                    1                 1.0182857   0.4793135   2.1633143
0-24 months   ki1101329-Keneba     GAMBIA       6                    1                 0.8100000   0.3383705   1.9389987
0-24 months   ki1101329-Keneba     GAMBIA       7                    1                 1.5230769   0.7221447   3.2123248
0-24 months   ki1101329-Keneba     GAMBIA       8                    1                 0.5531707   0.2299363   1.3307938
0-24 months   ki1101329-Keneba     GAMBIA       9                    1                 0.7534884   0.3457547   1.6420448
0-24 months   ki1101329-Keneba     GAMBIA       10                   1                 0.6726644   0.3209934   1.4096157
0-24 months   ki1101329-Keneba     GAMBIA       11                   1                 1.1739130   0.5879871   2.3437109
0-24 months   ki1101329-Keneba     GAMBIA       12                   1                 0.6027907   0.2606513   1.3940333
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.5304348   0.2564658   1.0970703
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0496259   0.6005627   1.8344706
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.4212950   0.1911926   0.9283280
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.3702312   0.1610643   0.8510335
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.6131443   0.3158397   1.1903061
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.6628719   0.3470044   1.2662641
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.5671037   0.2920417   1.1012352
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.6035336   0.3158330   1.1533080
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.8381679   0.4453998   1.5772920
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.5051443   0.2501478   1.0200798
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.6028235   0.3154602   1.1519559
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.2106003   0.6924743   2.1164010
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.4333821   0.8510451   2.4141896
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.6687500   0.9960643   2.7957297
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.1753187   0.6950407   1.9874722
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.5523255   0.8961216   2.6890488
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.1011092   0.6705079   1.8082434
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.3622449   0.8364947   2.2184372
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.2294474   0.7657923   1.9738261
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.6251660   1.0231776   2.5813352
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 0.9222798   0.5403988   1.5740229
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.2776610   0.8081917   2.0198397
0-6 months    ki1119695-PROBIT     BELARUS      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT     BELARUS      2                    1                 1.4121784   0.9377281   2.1266804
0-6 months    ki1119695-PROBIT     BELARUS      3                    1                 1.0377337   0.6492255   1.6587320
0-6 months    ki1119695-PROBIT     BELARUS      4                    1                 1.1221481   0.7190509   1.7512200
0-6 months    ki1119695-PROBIT     BELARUS      5                    1                 1.3203664   0.7609904   2.2909191
0-6 months    ki1119695-PROBIT     BELARUS      6                    1                 1.2473891   0.8266840   1.8821941
0-6 months    ki1119695-PROBIT     BELARUS      7                    1                 1.2009304   0.7780249   1.8537117
0-6 months    ki1119695-PROBIT     BELARUS      8                    1                 1.0261248   0.6111776   1.7227923
0-6 months    ki1119695-PROBIT     BELARUS      9                    1                 1.0854193   0.6897408   1.7080838
0-6 months    ki1119695-PROBIT     BELARUS      10                   1                 1.1352535   0.6569476   1.9618012
0-6 months    ki1119695-PROBIT     BELARUS      11                   1                 0.7488552   0.5374722   1.0433731
0-6 months    ki1119695-PROBIT     BELARUS      12                   1                 0.6538002   0.3252254   1.3143338
6-24 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba     GAMBIA       2                    1                 0.6718894   0.3000850   1.5043583
6-24 months   ki1101329-Keneba     GAMBIA       3                    1                 1.1435294   0.5895981   2.2178830
6-24 months   ki1101329-Keneba     GAMBIA       4                    1                 0.8944785   0.4009596   1.9954426
6-24 months   ki1101329-Keneba     GAMBIA       5                    1                 1.0182857   0.4793135   2.1633143
6-24 months   ki1101329-Keneba     GAMBIA       6                    1                 0.8100000   0.3383705   1.9389987
6-24 months   ki1101329-Keneba     GAMBIA       7                    1                 1.5230769   0.7221447   3.2123248
6-24 months   ki1101329-Keneba     GAMBIA       8                    1                 0.5531707   0.2299363   1.3307938
6-24 months   ki1101329-Keneba     GAMBIA       9                    1                 0.7534884   0.3457547   1.6420448
6-24 months   ki1101329-Keneba     GAMBIA       10                   1                 0.6726644   0.3209934   1.4096157
6-24 months   ki1101329-Keneba     GAMBIA       11                   1                 1.1739130   0.5879871   2.3437109
6-24 months   ki1101329-Keneba     GAMBIA       12                   1                 0.6027907   0.2606513   1.3940333
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.5304348   0.2564658   1.0970703
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.0496259   0.6005627   1.8344706
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.4212950   0.1911926   0.9283280
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.3702312   0.1610643   0.8510335
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.6131443   0.3158397   1.1903061
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.6628719   0.3470044   1.2662641
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.5671037   0.2920417   1.1012352
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.6035336   0.3158330   1.1533080
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.8381679   0.4453998   1.5772920
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.5051443   0.2501478   1.0200798
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.6028235   0.3154602   1.1519559
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.2106003   0.6924743   2.1164010
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.4333821   0.8510451   2.4141896
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 1.6687500   0.9960643   2.7957297
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.1753187   0.6950407   1.9874722
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 1.5523255   0.8961216   2.6890488
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 1.1011092   0.6705079   1.8082434
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 1.3622449   0.8364947   2.2184372
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.2294474   0.7657923   1.9738261
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.6251660   1.0231776   2.5813352
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 0.9222798   0.5403988   1.5740229
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.2776610   0.8081917   2.0198397


### Parameter: PAR


agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1101329-Keneba     GAMBIA       1                    NA                -0.0076522   -0.0361852   0.0208808
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0094289   -0.0192747   0.0004169
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0131747   -0.0035443   0.0298938
0-6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.0054576   -0.0263514   0.0372665
6-24 months   ki1101329-Keneba     GAMBIA       1                    NA                -0.0076522   -0.0361852   0.0208808
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0094289   -0.0192747   0.0004169
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0131747   -0.0035443   0.0298938


### Parameter: PAF


agecat        studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1101329-Keneba     GAMBIA       1                    NA                -0.1415077   -0.8115572    0.2807074
0-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.5269461   -1.1816552   -0.0687135
0-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2266872   -0.1220171    0.4670201
0-6 months    ki1119695-PROBIT     BELARUS      1                    NA                 0.0579441   -0.3522405    0.3437045
6-24 months   ki1101329-Keneba     GAMBIA       1                    NA                -0.1415077   -0.8115572    0.2807074
6-24 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.5269461   -1.1816552   -0.0687135
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.2266872   -0.1220171    0.4670201
